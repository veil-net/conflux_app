package app.veilnet.conflux

import android.content.Intent
import android.net.VpnService
import android.os.ParcelFileDescriptor
import android.util.Log
import kotlinx.coroutines.*
import anchor.Anchor_
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.os.Build
import androidx.core.app.NotificationCompat

class VeilNetVPNService : VpnService() {
    private var tunInterface: ParcelFileDescriptor? = null
    private var anchor: Anchor_? = null
    private var superVisorJob = SupervisorJob()
    private var startScope: CoroutineScope = CoroutineScope(Dispatchers.IO  + superVisorJob)

    override fun onRevoke() {
        superVisorJob.cancel()
        anchor?.stop()
        tunInterface?.close()
        stopSelf()
    }

    override fun onStartCommand(intent: Intent, flags: Int, startId: Int): Int {
        if (intent.action == "Stop") {
            superVisorJob.cancel()
            anchor?.stop()
            tunInterface?.close()
            stopSelf()
            return START_NOT_STICKY
        }

        val guardian = intent.getStringExtra("guardian")
        val token = intent.getStringExtra("token")

        if (guardian == null || token == null) {
            Log.e("VeilNet", "Guardian Url or VeilNet token is missing")
            stopSelf()
            return START_NOT_STICKY
        }

        val notification = buildNotification()
        startForeground(1, notification)
        startVeilNet(guardian, token)

        return START_STICKY
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val serviceChannel = NotificationChannel(
                "VeilNet",
                "VeilNet", // User-visible name
                NotificationManager.IMPORTANCE_DEFAULT // Or IMPORTANCE_LOW if less intrusive
            ).apply { description = "VeilNet Service Channel" }
            val manager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            manager.createNotificationChannel(serviceChannel)
        }
    }


    private fun buildNotification(message: String = "VeilNet is active"): Notification {

        createNotificationChannel()

        val notificationIntent = Intent(this, MainActivity::class.java) // Assuming MainActivity is your entry point
        val pendingIntentFlags =
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        val pendingIntent = PendingIntent.getActivity(
            this,
            0,
            notificationIntent,
            pendingIntentFlags
        )

        val builder = NotificationCompat.Builder(this, "VeilNet")
            .setContentTitle("VeilNet")
            .setContentText(message)
            .setSmallIcon(R.drawable.ic_launcher_monochrome)
            .setContentIntent(pendingIntent)
            .setOngoing(true)

        return builder.build()
    }

    private fun startVeilNet(guardian: String, token: String) {
        startScope.launch {
            try {
                anchor = Anchor_()
                anchor!!.start(guardian, token, "", false, false)
                val (ip, mask) = anchor!!.cidr.split("/")
                val builder = Builder()
                    .setSession("VeilNet")
                    .addAddress(ip, mask.toInt())
                    .addDnsServer("10.128.0.1")
                    .addRoute("0.0.0.0", 0)
                    .setMtu(1500)
                    .addDisallowedApplication(applicationContext.packageName)
                tunInterface = builder.establish()
                anchor!!.attachWithFileDescriptor(tunInterface!!.detachFd().toLong() )

            } catch (e: Exception) {
                Log.e("VeilNet", "Failed to start VeilNet service")
                return@launch
            }
        }
    }
}