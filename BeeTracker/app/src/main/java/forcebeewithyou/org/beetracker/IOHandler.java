package forcebeewithyou.org.beetracker;

import android.content.Context;
import android.util.Log;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.PriorityQueue;

/**
 * Created by Gergely on 2015.11.08..
 */
public class IOHandler {
    final String tag = IOHandler.class.getName();
    public static final String FILE_NAME = "bees.cache.json";
    public static final String WEB_URL = "http://fbwu.rob4001.co.uk/api/";

    static PriorityQueue<String> output = new PriorityQueue<>();
    Context ctx;

    public IOHandler(Context ctx){
        this.ctx = ctx;
    }

    public void writeData(String line){

        output.add(line);

        /*
        try {
            FileOutputStream fileOS = ctx.openFileOutput(FILE_NAME, Context.MODE_APPEND);
            OutputStreamWriter writer = new OutputStreamWriter(fileOS);
            writer.write(line + "\n");
            writer.close();

            Log.i(tag, "Wrote: " + line);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }*/
    }

    public String readData(){
        /*try {
            FileInputStream fileIS = ctx.openFileInput(FILE_NAME);
            InputStreamReader isr = new InputStreamReader(fileIS);
            BufferedReader reader = new BufferedReader(isr);

            ArrayList<String> lines = new ArrayList<>();

            String line = null;

            if ((line = reader.readLine()) != null){
                lines.add(line);
            }

            FileOutputStream fileOS = ctx.openFileOutput(FILE_NAME, Context.MODE_PRIVATE);
            OutputStreamWriter writer = new OutputStreamWriter(fileOS);

            for (int i = 1; i < lines.size(); i++) {
                writer.write(line + "\n");
            }

            writer.close();

            return lines.get(0);

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;*/
        return output.poll();

    }


}
