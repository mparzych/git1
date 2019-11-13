/**
 * Created by mparzych004 on 07.10.2019.
 */

({
        // Load expenses from Salesforce
        doInit: function(component, event, helper) {
            // Create the action
            var action = component.get("c.getAcc");
            // Add callback behavior for when response is received
            action.setCallback(this, function(response) {
                var state = response.getState();
                if (state === "SUCCESS") {
                    component.set("v.expenses", response.getReturnValue());
                }
                else {
                    console.log("Failed with state: " + state);
                }
            });
            // Send action off to be executed
            $A.enqueueAction(action);
        },
        f1: function(c) {
            c.set("v.at1", "xxxxxxxxx")
        },
        mapClass: function(arr, cssClass) {
            for (var c in arr) {
                $A.util.toggleClass(arr[c], cssClass);
            }
        }
});