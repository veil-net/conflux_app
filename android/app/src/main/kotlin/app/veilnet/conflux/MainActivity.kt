package app.veilnet.conflux

import android.content.Intent
import android.net.VpnService
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.os.ResultReceiver
import androidx.core.content.ContextCompat
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val channel = "veilnet/service"

    private var pendingResult: MethodChannel.Result? = null


    companion object {

        const val RESULT_SUCCESS = 1
        const val RESULT_FAILURE = 0
        private var guardian: String? = null
        private var token: String? = null
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel)
            .setMethodCallHandler { call, result ->
                when (call.method) {

                    "start" -> {
                        pendingResult = result
                        try {
                            guardian = call.argument<String>("guardian")
                            token = call.argument<String>("token")
                            if (guardian == null || token == null) {

                                result.error(
                                    "VEILNET",
                                    "Guardian Url or VeilNet token is missing",
                                    null
                                )
                                return@setMethodCallHandler
                            }
                            val vpnIntent = VpnService.prepare(context)
                            if (vpnIntent != null) {
                                startActivityForResult(vpnIntent, 1001)
                            } else {
                                callVeilNetService(action = "Start")
                            }
                        } catch (e: Exception) {

                            result.error("VEILNET", e.message, null)
                        }
                    }

                    "stop" -> {
                        pendingResult = result
                        try {
                            callVeilNetService("Stop")
                        } catch (e: Exception) {
                            result.error("VEILNET", e.message, null)
                        }
                    }

                    "ID" -> {
                        try {
                            val id = VeilNetVPNService.anchor?.id
                            result.success(id)
                        } catch (e: Exception) {
                            result.error("VEILNET", e.message ?: "Failed to get anchor ID", null)
                        }
                    }

                    "isRunning" -> {
                        try {
                            if (VeilNetVPNService.anchor != null) {
                                result.success(true)
                            } else {
                                result.success(false)
                            }
                        } catch (e: Exception){
                            result.error("VEILNET", e.message ?: "Failed to check anchor status", null)
                        }
                    }

                    else -> result.notImplemented()
                }
            }
    }

    private fun callVeilNetService(action: String) {
        val receiver = object : ResultReceiver(Handler(Looper.getMainLooper())) {
            override fun onReceiveResult(resultCode: Int, resultData: Bundle?) {

                if (pendingResult == null) {
                    return
                }

                when (resultCode) {
                    RESULT_SUCCESS -> when (action) {
                        "Start" -> {
                            pendingResult?.success(true)
                        }

                        "Stop" -> {
                            pendingResult?.success(true)
                        }
                    }
                    RESULT_FAILURE -> {
                        val message = resultData?.getString("error") ?: "VeilNet Service failed for action $action"
                        pendingResult?.error("VEILNET", message, null)
                    }
                }
            }
        }

        val intent = Intent(context, VeilNetVPNService::class.java)
        intent.putExtra("guardian", guardian)
        intent.putExtra("token", token)
        intent.putExtra("result_receiver", receiver)
        intent.action = action
        ContextCompat.startForegroundService(this, intent)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        when (requestCode) {
            1001 -> {
                if (resultCode == RESULT_OK) {
                    callVeilNetService(action = "Start")
                }
            }
            else -> super.onActivityResult(requestCode, resultCode, data)
        }
    }
}
