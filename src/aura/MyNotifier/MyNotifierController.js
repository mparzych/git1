({
    fireApplicationEvent : function(cmp, event) {
        var appEvent = $A.get("e.c:MyEvent");
        appEvent.setParams({
            "message" : "An application event fired me. "
        });
        appEvent.fire();
//
        var ev2 = $A.get("e.c:event3");
        ev2.setParams({"eventName" : "event odpalony"});
        ev2.fire();
    }
})
