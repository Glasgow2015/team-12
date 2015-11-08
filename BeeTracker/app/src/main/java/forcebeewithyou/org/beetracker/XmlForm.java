package forcebeewithyou.org.beetracker;

import android.content.Context;
import android.util.Log;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Vector;

/**
 * Created by Gergely on 2015.11.07..
 */
public class XmlForm {
    final String tag = XmlForm.class.getName();


    private String formName;
    private String formNo;
    private Vector<XmlFormField> fields;

    public XmlForm(){
        this.fields = new Vector();
        formName="";
        formNo="";
    }

    public String getFormName() {
        return formName;
    }

    public void setFormName(String formName) {
        this.formName = formName;
    }

    public Vector<XmlFormField> getFields() {
        return fields;
    }

    public void setFields(Vector<XmlFormField> fields) {
        this.fields = fields;
    }

    public String getFormNo() {

        return formNo;
    }

    public void setFormNo(String formNo) {
        this.formNo = formNo;
    }

    public void persistForm(Context ctx) {

        StringBuilder stringBuilder = new StringBuilder();

        for (int i = 0; i < fields.size(); i++) {
            stringBuilder.append(fields.get(i).toString());

            if (i < fields.size() - 1) {
                stringBuilder.append(", ");
            }
        }

        IOHandler handler = new IOHandler(ctx);

        String formString = formName + "|{" + stringBuilder.toString() + "}";

        FileOutputStream fileOS = null;
        try {
            fileOS = ctx.openFileOutput(IOHandler.FILE_NAME, Context.MODE_APPEND);

            OutputStreamWriter writer = new OutputStreamWriter(fileOS);
            writer.write(formString + "\n");
            writer.close();

            handler.writeData(formString);

            Log.i(tag, "Wrote: " + formString);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
