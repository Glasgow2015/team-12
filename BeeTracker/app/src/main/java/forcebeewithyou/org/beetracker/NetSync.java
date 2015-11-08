package forcebeewithyou.org.beetracker;

import android.content.Context;
import android.util.Log;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;

import java.io.IOException;
import java.net.URL;

/**
 * Created by Gergely on 2015.11.08..
 */
class NetSync extends Thread{
    final String tag = NetSync.class.getName();
    Context context;

    public NetSync(Context ctx){
        context = ctx;
    }

    @Override
    public void run() {
        while (true){
            try {

                IOHandler handler = new IOHandler(context);

                String data = handler.readData();

                if(data != null) {

                    String[] split = data.split("\\|");

                    Log.i(tag, "Data post to: " + IOHandler.WEB_URL + split[0] + ", Data: " + split[1]);

                    HttpClient client = new DefaultHttpClient();

                    HttpPost httpPost = new HttpPost(IOHandler.WEB_URL + split[0]);
                    httpPost.setEntity(new StringEntity(split[1]));

                    HttpResponse response = client.execute(httpPost);

                    StatusLine statusLine = response.getStatusLine();

                    if (statusLine.getStatusCode() == HttpStatus.SC_OK) {
                        Log.i(tag, "Data sent to " + IOHandler.WEB_URL + split[0] + ": " + split[1]);
                    } else {
                        Log.e(tag, "Data could not be sent to: " + IOHandler.WEB_URL + split[0] + ", code " + statusLine.getStatusCode());
                    }

                    sleep(3000);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (ClientProtocolException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
