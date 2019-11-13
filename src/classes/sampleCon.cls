
/*** Controller: ***/
public class sampleCon {
    String[] countries = new String[]{};
    //If multiselect is false, countries must be of type String
    //String countries;

    public PageReference test() {
        return null;
    }

    public List<SelectOption> getItems() {



        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('US','US'));
        options.add(new SelectOption('CANADA','Canada'));
        options.add(new SelectOption('MEXICO','Mexico'));
        return options;
    }

    public String[] getCountries() {
        //If multiselect is false, countries must be of type String
        return countries;
    }

    public void setCountries(String[] countries) {
        //If multiselect is false, countries must be of type String
        this.countries = countries;
    }

    public List<SelectOption> getEverything() {
        List<SelectOption> l = new List<SelectOption>();
        for (Account acc: [select Name, Id from Account]) {
            l.add(new selectOption(acc.Name, acc.Id));
        }
        return l;

    }

    public PageReference returnString() {
        PageReference pageRef = new PageReference('partialURL');
        return pageRef;


    }
}