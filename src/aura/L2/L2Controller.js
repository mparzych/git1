/**
 * Created by mparzych004 on 08.11.2019.
 */

({
    handleSampleEvent: function(component, event, helper) {
        var ev1 = component.getEvent("sampleComponentEvent");
        ev1.setParams({
            "nazwaAtrybutu" : "jakikolwiek String"
        });
        ev1.fire();

    }
});