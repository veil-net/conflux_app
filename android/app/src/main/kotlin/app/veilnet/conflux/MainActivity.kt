package app.veilnet.conflux

import android.app.Activity
import android.content.Intent
import android.net.VpnService
import androidx.core.content.ContextCompat
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val channel = "veilnet/service"

    companion object {
        private var guardian: String? = null
        private var token: String? = null
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel)
            .setMethodCallHandler { call, result ->
                when (call.method) {

                    "start" -> {
                        try {
                            guardian = call.argument<String>("guardian")
                            token = call.argument<String>("token")
                            if (guardian == null || token == null) {
                                result.error(
                                    "Missing argument",
                                    "Guardian Url or VeilNet token is missing",
                                    null
                                )
                            }
                            val vpnIntent = VpnService.prepare(context)
                            if (vpnIntent != null) {
                                startActivityForResult(vpnIntent, 1001)
                                result.success(true)
                            } else {
                                val veilnetIntent = Intent(context, VeilNet::class.java)
                                veilnetIntent.putExtra("guardian", guardian)
                                veilnetIntent.putExtra("token", token)
                                ContextCompat.startForegroundService(this, veilnetIntent)
                                result.success(true)
                            }
                        } catch (e: Exception) {
                            result.error("Fail to start", e.message, null)
                        }
                    }

                    "stop" -> {
                        try {
                            VeilNet.stop()
                            result.success(true)
                        } catch (e: Exception) {
                            result.error("Fail to stop", e.message, null)
                        }
                    }

                    "metrics" -> {
                        val name = call.argument<String>("name")
                        if (name == null) {
                            result.error(
                                "Missing argument",
                                "Metrics name is missing",
                                null
                            )
                        } else {
                            val metric = VeilNet.metrics(name)
                            if (metric == null) {
                                result.error("Invalid argument", "Metrics name is invalid", null)
                            } else {
                                result.success(metric)
                            }
                        }
                    }

                    else -> result.notImplemented()
                }
            }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        when (requestCode) {
            1001 -> {
                if (resultCode == RESULT_OK) {
                    val veilnetIntent = Intent(context, VeilNet::class.java)
                    veilnetIntent.putExtra("guardian", guardian)
                    veilnetIntent.putExtra("token", token)
                    ContextCompat.startForegroundService(this, veilnetIntent)
                }
            }

            else -> super.onActivityResult(requestCode, resultCode, data)
        }
    }
}