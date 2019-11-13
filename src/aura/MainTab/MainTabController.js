/**
 * Created by mparzych004 on 25.10.2019.
 */

({
    showContacts: function(component) {
        var action = component.get("c.getContactsMethod");
        action.setCallback(this, function(a) {
            component.set("v.contacts1", a.getReturnValue());

        });
        $A.enqueueAction(action);
    },

    logFunction: function() {
        $A.log("abc");
    },

    eventFunc: function(component, event) {
        var target = event.getSource();
        target.setParam("v.label", "cccccccccc");

//        component.set("v.randomText", target.get("v.value"));

    },
    setBooleanValue: function(component, event) {
        var c = component.getEvent("ebe");

    }


});