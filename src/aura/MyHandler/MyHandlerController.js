({
    handleApplicationEvent : function(cmp, event) {
        var message = event.getParam("message");
        cmp.set("v.messageFromEvent", message);
        var numEventsHandled = parseInt(cmp.get("v.numEvents")) + 1;
        cmp.set("v.numEvents", numEventsHandled);
    },
    fireEvent1 : function(component, event) {
        var m = event.getParam("atrybutWEvencie");
        component.set("v.atrybutWEvencie", m);
    }
})