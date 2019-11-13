/**
 * Created by mparzych004 on 11.10.2019.
 */

({
    buttonTrueAct : function(c) {
        c.set("v.at1", true);

    },
    buttonFalseAct : function(c) {
        c.set("v.at1", false);
    },
    showChart : function(c, e) {
        c.set("v.chartBool", true);
    },
        handleChange: function (cmp, event) {
            var changeValue = event.getParam("value");
            alert(changeValue);
        }
});