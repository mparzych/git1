/**
 * Created by mparzych004 on 15.10.2019.
 */

({
    returnAlertFunction : function() {
        alert("alert returned");
    },

    return5Alerts: function() {
        for(var a = 0; a < 5; a++) {
            this.returnAlertFunction();
        }
    },



    displaySMH: function(component, e) {

        var sum = 0;
        label1:
        for (var a = 0; a < 10; a++) {
            if (a == 1) {
//                continue label3;
            }
            label2:
            for (var b = 0; b < 5; b++) {
                if (b == 3) {
                    continue label1;
                }
                sum += a;
                label3:
                for(var c = 1; c < 3; c++) {
                    sum += c;
                 }
                 continue;
            }


        }
        alert(sum);

    },

    help1: function() {
        alert('abcefg');
    },
    help2: function() {
        alert('mmm');
    },



});