/**
 * Created by mparzych004 on 30.10.2019.
 */

({
    handleClick: function(component, e, helper) {
        helper.alertF();


    },
    executeQ: function(component, event, helper) {
        var action = component.get("c.ex");
        action.setCallback(this, function(a) {
            component.set("", a.getReturnValue());
        });
        $A.enqueueAction(action);
    },
});