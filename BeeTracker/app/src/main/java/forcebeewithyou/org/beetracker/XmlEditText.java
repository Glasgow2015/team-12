package forcebeewithyou.org.beetracker;

import android.content.Context;
import android.text.method.DigitsKeyListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * Created by Gergely on 2015.11.07..
 */
public class XmlEditText extends LinearLayout{

    TextView label;
    EditText input;

    public XmlEditText(Context context, String label, String initText) {
        super(context);

        this.label = new TextView(context);
        this.label.setText(label);

        input = new EditText(context);
        input.setText(initText);

        input.setLayoutParams(new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.FILL_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
        ));

        this.addView(this.label);
        this.addView(input);
    }

    public void makeNumeric()
    {
        DigitsKeyListener dkl = new DigitsKeyListener(true,true);
        input.setKeyListener(dkl);
    }
    public String getValue()
    {
        return input.getText().toString();
    }
    public void setValue(String v)
    {
        input.setText(v);
    }


}
