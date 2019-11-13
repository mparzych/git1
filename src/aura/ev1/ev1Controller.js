({
    clickReimbursed: function(component, event, helper) {
        var expense = component.get("v.expense");
        var updateEvent = component.getEvent("updateExpense");
        updateEvent.setParams({ "expense": expense });
        updateEvent.fire();
    },
    ac: function(component, event, helper) {
        var c = component.get("v.at1");
        console.log(c);
    },
    ac2 : function(component, event) {
        var fired = event.getSource();
        console.log(fired.get("v.label"));

    },
    setNewButtonLabel : function(component, event) {
        var c = component.get('v.buttonName');
//        component.set(component.get("v.buttonName"), "newName");
    },

})