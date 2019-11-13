


({
    setString: function(component)  {
//        component.set("v.stringP", );

        var action = component.get("c.returnString");

        action.setCallback(this, function(a) {
            component.set("v.stringP", a.getReturnValue());
        })
        $A.enqueueAction(action);

    },


});