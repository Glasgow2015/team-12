package forcebeewithyou.org.beetracker;

import android.content.Intent;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;


public class MainActivity extends ActionBarActivity {

    final String tag = MainActivity.class.getName();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        NetSync sync = new NetSync();

        sync.start();

        setContentView(R.layout.activity_main);

        Button inspectBtn = (Button) this.findViewById(R.id.inspect_new_btn);

        inspectBtn.setOnClickListener(new Button.OnClickListener(){

            @Override
            public void onClick(View v) {
                Intent newFormInfo = new Intent(MainActivity.this, RunForm.class);
                Log.i(tag, "Attempting to parse form...");
                newFormInfo.putExtra("formNumber", "1");

                startActivity(newFormInfo);
            }
        });

        Button harvestBtn = (Button) this.findViewById(R.id.harvest_new_btn);

        harvestBtn.setOnClickListener(new Button.OnClickListener(){

            @Override
            public void onClick(View v) {
                Intent newFormInfo = new Intent(MainActivity.this, RunForm.class);
                Log.i(tag, "Attempting to parse form...");
                newFormInfo.putExtra("formNumber", "2");

                startActivity(newFormInfo);
            }
        });
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
