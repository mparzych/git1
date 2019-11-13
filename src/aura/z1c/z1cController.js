/**
 * Created by mparzych004 on 08.11.2019.
 */

({
    fireAnEvent: function(component, event) {
        var event1 = component.getEvent("event1");
        event1.setParams(
            {"z1Atrybut" : "jakis tekst"}
        );
    },
});