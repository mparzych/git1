/**
 * Created by mparzych004 on 07.11.2019.
 */

({
    fireEvent: function(component, event) {
        var ev = component.get(xEvent1);
        ev.fire();
    }
});