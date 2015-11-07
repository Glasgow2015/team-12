package forcebeewithyou.org.beetracker;

import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * Created by Gergely on 2015.11.07..
 */
public class XmlEditCheckBox extends LinearLayout {

    TextView label;
    CheckBox checkBox;

    public XmlEditCheckBox(Context context, String label, boolean checked) {
        super(context);

        this.label = new TextView(context);
        this.label.setText(label);

        checkBox = new CheckBox(context);
        checkBox.setChecked(checked);

        this.addView(this.label);
        this.addView(checkBox);
    }

    public boolean getValue(){
        return checkBox.isChecked();
    }
}
