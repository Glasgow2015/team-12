package forcebeewithyou.org.beetracker;

import android.content.Context;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;

/**
 * Created by Gergely on 2015.11.07..
 */
public class XmlEditSelect extends LinearLayout {

    final String tag = XmlEditText.class.getName();

    TextView label;
    ArrayAdapter<String> options;
    Spinner spinner;

    public XmlEditSelect(Context context, String label, String options) {
        super(context);

        this.label = new TextView(context);
        this.label.setText(label);
        spinner = new Spinner(context);
        String[] split = options.split("\\|");

        this.options = new ArrayAdapter<String>(context,
                android.R.layout.simple_spinner_item,
                split);

        spinner.setAdapter(this.options);
        this.addView(this.label);
        this.addView(spinner);
    }

    public String getValue(){
        return (String) spinner.getSelectedItem().toString();
    }
}
