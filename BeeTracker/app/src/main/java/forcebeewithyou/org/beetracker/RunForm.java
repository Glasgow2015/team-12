package forcebeewithyou.org.beetracker;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Handler;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
/**
 * Created by Gergely on 2015.11.07..
 */
public class RunForm extends FragmentActivity {
    String tag = RunForm.class.getName();

    XmlForm newForm;
    ProgressDialog progDial;
    Handler progressHandler;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String formNumber;

        Intent i = getIntent();
        if (i == null) {
            Log.e(tag, "Intent was null");
            finish();
            return;
        }

        formNumber = i.getStringExtra("formNumber");

        if (getFormData(formNumber)) {
            displayForm();
        }

    }

    private boolean displayForm() {

        try {

            ScrollView sv = new ScrollView(this);

            //Creating linear layout for the form
            final LinearLayout linearLayout = new LinearLayout(this);

            sv.addView(linearLayout);
            linearLayout.setOrientation(LinearLayout.VERTICAL);

            //Adding all elements

            int i;
            for (i = 0; i < newForm.getFields().size(); i++) {
                String fieldType = newForm.getFields().elementAt(i).getType();
                String fieldLabel = newForm.getFields().elementAt(i).getLabel();
                View newView = null;
                if (fieldType.equals("text")) {
                    newView = new XmlEditText(this, fieldLabel, "");

                } else if (fieldType.equals("number")) {
                    newView = new XmlEditText(this, fieldLabel, "");
                    ((XmlEditText) newView).makeNumeric();

                } else if (fieldType.equals("checkbox")) {
                    newView = new XmlEditCheckBox(this, fieldLabel, false);

                } else if (fieldType.equals("date")) {
                    newView = new XmlEditDate(this, fieldLabel);

                } else if (fieldType.equals("select")) {
                    newView = new XmlEditSelect(this, fieldLabel, newForm.getFields().elementAt(i).getOptions());
                }

                newForm.getFields().elementAt(i).setObj(newView);
                linearLayout.addView(newView);
            }

            Button submitBtn = new Button(this);

            submitBtn.setLayoutParams(new ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT
            ));

            linearLayout.addView(submitBtn);

            submitBtn.setText("Submit");

            submitBtn.setOnClickListener(new Button.OnClickListener() {
                @Override
                public void onClick(View v) {
                    persistData();
                }
            });

            setContentView(sv);
            setTitle(newForm.getFormName());

            return true;
        } catch (Exception e) {
            Log.e(tag, "Display error");
            return false;
        }
    }

    private void persistData() {
    }

    private boolean getFormData(String formNumber) {


        try {
            Resources res = this.getResources();
            InputStream is = res.openRawResource(R.raw.forms);

            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = dbf.newDocumentBuilder();
            Document dom = db.parse(is);

            Element root = dom.getDocumentElement();

            NodeList forms = root.getElementsByTagName("form");

            if(forms.getLength() < 1){
                Log.e(tag, "No forms in XML file");
                return false;
            }

            Node form = forms.item(0);

            newForm = new XmlForm();

            NamedNodeMap map = form.getAttributes();
            newForm.setFormName(map.getNamedItem("name").getNodeValue());
            newForm.setFormNo(map.getNamedItem("id").getNodeValue());

            NodeList fields = root.getElementsByTagName("field");

            for (int i = 0; i < fields.getLength(); i++) {
                Node fieldNode = fields.item(i);
                NamedNodeMap attr = fieldNode.getAttributes();

                XmlFormField tempField = new XmlFormField();

                tempField.setName(attr.getNamedItem("name").getNodeValue());
                tempField.setLabel(attr.getNamedItem("label").getNodeValue());
                tempField.setType(attr.getNamedItem("type").getNodeValue());
                tempField.setOptions(attr.getNamedItem("options").getNodeValue());

                newForm.getFields().add(tempField);
            }

            return true;

        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (SAXException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return false;
    }
}
