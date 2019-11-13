
({
    alertFunction: function(component, e, helper) {
//        helper.alert1();
        var action = component.get("c.abc");

        action.setCallback(this, function(a) {
            component.set("v.at1", a.getReturnValue());
        });
        $A.enqueueAction(action);
    },

    setSecondFunction: function(component, event, helper) {
        var action = component.get("c.retString");
        action.setParams({});
        action.setCallback(this, function(response) {


            component.set("v.at2", response.getReturnValue()); // set
        });
        $A.enqueueAction(action);


    },

    setStrings: function(component) {
        var action = component.get("c.returnListOfStrings");

        action.setCallback(this, function(a) {
            component.set("v.strings", a.getReturnValue());
        });
        $A.enqueueAction(action);
    },











    thirdFunction: function(component) {
        var action = component.get("c.add");


        action.setCallback(this, function(a) {
            component.set("v.at3", a.getReturnValue());
        });

        $A.enqueueAction(action);


    }



});