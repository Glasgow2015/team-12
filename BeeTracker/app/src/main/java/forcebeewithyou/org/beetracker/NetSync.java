package forcebeewithyou.org.beetracker;

import android.util.Log;

import java.io.InputStream;

/**
 * Created by Gergely on 2015.11.07..
 */
public class NetSync extends Thread {
    final String tag = NetSync.class.getName();

    @Override
    public void run() {
        while(true) {
            Log.i(tag, "Device sleeping: " + System.currentTimeMillis());
            try {
                sleep(3000);

            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

    }
}
