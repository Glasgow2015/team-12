package forcebeewithyou.org.beetracker;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.renderscript.RenderScript;
import android.util.Log;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.PriorityQueue;
import java.util.Queue;

/**
 * Created by Gergely on 2015.11.08..
 */
public class Synchroniser {
    final String tag = Synchroniser.class.getName();

    BufferedReader localStorage;
    PriorityQueue<String> buffer;
    Context syncCtx;
    NetSync netSync;

    public Synchroniser(Context ctx){
        syncCtx = ctx;
        refreshBuffer();
        netSync = new NetSync();


    }

    public void start(){
        //Checking network connectivity

        if(buffer.size() > 0) {

            ConnectivityManager cmc = (ConnectivityManager) syncCtx.getSystemService(Context.CONNECTIVITY_SERVICE);

            NetworkInfo ni = cmc.getActiveNetworkInfo();

            if (ni != null && ni.isConnected()) {

            }
        }
    }

    public void synchronise(){
    }

    public void refreshBuffer(){
        try {
            FileInputStream fis = syncCtx.openFileInput(XmlForm.FILE_NAME);
            InputStreamReader isr = new InputStreamReader(fis);
            localStorage = new BufferedReader(isr);
            PriorityQueue<String> newQueue = new PriorityQueue<>();

            String line = null;
            while ((line = localStorage.readLine()) != null){
                newQueue.add(line);
            }

            buffer = newQueue;

        } catch (FileNotFoundException e) {
            Log.e(tag, "File Could not be read");
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
