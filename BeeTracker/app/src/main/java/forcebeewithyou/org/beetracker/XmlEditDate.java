package forcebeewithyou.org.beetracker;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.Calendar;

/**
 * Created by Gergely on 2015.11.07..
 */
public class XmlEditDate extends LinearLayout {

    TextView label;
    Button showDialogBtn;
    DatePickerDialog datePickerDialog;

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    int year, month, day;

    public XmlEditDate(final Context context, String label) {
        super(context);
        this.label = new TextView(context);
        this.label.setText(label);

        //Get calendar stuff
        Calendar calendar = Calendar.getInstance();

        year = calendar.get(Calendar.YEAR);
        month = calendar.get(Calendar.MONTH);
        day = calendar.get(Calendar.DAY_OF_MONTH);

        showDialogBtn = new Button(context);
        setDate(year, month, day);

        showDialogBtn.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                showDatePicker(context);
            }
        });

        this.addView(this.label);
        this.addView(showDialogBtn);

        }

    private void showDatePicker(Context context) {
        DialogFragment datePicker = new DatePickerFragment(){
            @NonNull
            @Override
            public Dialog onCreateDialog(Bundle savedInstanceState) {
                //Get calendar stuff
                Calendar calendar = Calendar.getInstance();
                int year, month, day;
                year = calendar.get(Calendar.YEAR);
                month = calendar.get(Calendar.MONTH);
                day = calendar.get(Calendar.DAY_OF_MONTH);

                return new DatePickerDialog(getActivity(), this, year, month+1, day);
            }

            @Override
            public void onDateSet(DatePicker view, int year, int monthOfYear, int dayOfMonth) {
                setDate(year, monthOfYear, dayOfMonth);
            }
        };
        datePicker.show(((FragmentActivity) context).getSupportFragmentManager(), "datePicker");

    }

    public void setDate(int year, int month, int day){
        this.year = year;
        this.month = month;
        this.day = day;
        showDialogBtn.setText(new StringBuilder().append(day).append("/").append(month+1).append("/").append(year));
    }
}
