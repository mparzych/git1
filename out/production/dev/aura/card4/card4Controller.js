/**
 * Created by mparzych004 on 18.10.2019.
 */

({
    hideOrShow: function(component) {
        if (component.get("v.at1")) {
        component.set("v.at1", false);
        }
        else {

        component.set("v.at1", true);
        var evt = $A.get("");
        }
    },

    showAlert: function(component, event, helper) {
        helper.alertFunction();
    },


});