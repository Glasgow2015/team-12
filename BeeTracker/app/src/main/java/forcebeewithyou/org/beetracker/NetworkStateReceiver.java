package forcebeewithyou.org.beetracker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;

/**
 * Created by Gergely on 2015.11.08..
 */
public class NetworkStateReceiver extends BroadcastReceiver {
    final String tag = NetworkStateReceiver.class.getName();

    @Override
    public void onReceive(Context context, Intent intent) {
        Log.d(tag, "Network State Changing");


        if (intent.getExtras() != null){
            NetworkInfo ni = (NetworkInfo) intent.getExtras().get(ConnectivityManager.EXTRA_NETWORK_INFO);
            if(ni!=null && ni.getState() == NetworkInfo.State.CONNECTED){
                MainActivity.netSync.notify();
                Log.i(tag, "Device is connected!");
            }
            else if(intent.getBooleanExtra(ConnectivityManager.EXTRA_NO_CONNECTIVITY, Boolean.FALSE)){
                try {
                    MainActivity.netSync.wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Log.i(tag, "Device is disconnected!");
            }
        }
    }
}
