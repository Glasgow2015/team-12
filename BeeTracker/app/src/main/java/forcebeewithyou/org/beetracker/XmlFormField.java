package forcebeewithyou.org.beetracker;

/**
 * Created by Gergely on 2015.11.07..
 */
public class XmlFormField {

    public String name;
    public String label;
    public String type;

    public String getOptions() {
        return options;
    }

    public void setOptions(String options) {
        this.options = options;
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }

    public String options; //Reserved for multiple choice fields

    Object obj; //Holds the UI implementation

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "\"" +name + "\":\"" +obj.toString()+"\"";
    }
}
