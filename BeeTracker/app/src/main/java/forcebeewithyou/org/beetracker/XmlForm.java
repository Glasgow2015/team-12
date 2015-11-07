package forcebeewithyou.org.beetracker;

import java.util.Vector;

/**
 * Created by Gergely on 2015.11.07..
 */
public class XmlForm {

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
}
