/**
 * Created by mparzych004 on 04.10.2019.
 */

({
    action1 : function(component) {
        var newMessage = event.getSource().get("v.label");
        component.set("v.message", newMessage);
    }
});