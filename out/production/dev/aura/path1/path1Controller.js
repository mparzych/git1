/**
 * Created by mparzych004 on 18.10.2019.
 */

({
    handleSelect : function (component, event, helper) {
         var stepName = event.getParam("detail").value;
         var toastEvent = $A.get("e.force:showToast");
         toastEvent.setParams({
           "title": "Success!",
            "message": "Toast from " + stepName
            });
            toastEvent.fire();

            }
});