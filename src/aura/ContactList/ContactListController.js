 ({

//     first: function(c) {
//         c.set("v.at1", true)
//
//     }


     doInit : function(component, event) {
         var action = component.get("c.findAll");



         action.setCallback(this, function(a) {
             component.set("v.contacts", a.getReturnValue());
         });
         $A.enqueueAction(action);


     },

     retOpp: function(component, event) {
         var action = component.get("c.returnOpportunities");
         action.setCallback(this, function(a){
             component.set("v.contacts", a.getReturnValue());
         });
         $A.enqueueAction(action);
     },


     activate : function(component, event) {
         var ac = component.get("c.retStrings");
         action.setCallback(this, function(a) {
             component.set("v.strings", a.getReturnValue());
         });
         $A.enqueueAction(ac);
     },

     setAt: function(component, event) {
         alert('alert');
         var action = component.get("c.climbInteger");
//         action.setParams({});
         action.setCallback(this, function(a)
         {

               component.set("v.at3",a.getReturnValue());

         });
         $A.enqueueAction(action);
     },

     retLeads : function(component, event) {
         var action = component.get("c.returnLeads");
         action.setCallback(this, function(a) {
             component.set("v.contacts", a.getReturnValue());
         });
         $A.enqueueAction(action);
         var x = document.getElementById("id55")
         x.style.color= "green";
         x.style.fontSize = "44px";
     },

     showAlert : function(c) {
         alert("alert");
     },

     doInit2 : function(component) {
         var action = component.get("c.showAccounts");

         action.setCallback(this, function(a) {
             component.set("v.contacts", a.getReturnValue());
         });
         $A.enqueueAction(action);
     },

     xxx : function(component) {
         component.set("v.at1", "abc");
     },

     ccc : function(component) {
         var ac = component.get("c.climbS");
          console.log(ac);

         component.set("v.at1", Number(ac) + "a");
     },
     returnString : function(component) {
         var st = component.get("c.retStrings");
         component.set("v.at1", st );

     },


    applyCSS: function(cmp, event) {
        var cmpTarget = cmp.find('changeIt');
        $A.util.addClass(cmpTarget, 'changeMe');
    },
    applyCSS2: function(component, event) {
        var cmp = component.find('changeIt');
        $A.util.addClass(cmp, 'change')
    },
    applyCSSToAll: function(component, event) {
        var cmp = component.find('changeAllButtons');
        $A.util.addClass(cmp, 'all');
    },


    removeCSS: function(cmp, event) {
        var cmpTarget = cmp.find('changeIt');
        $A.util.removeClass(cmpTarget, 'changeMe');
    },

    removeCSS2: function(cmp, event) {
            var cmpTarget = cmp.find('changeIt');

            $A.util.removeClass(cmpTarget, 'change');
            $A.util.removeClass(cmpTarget, 'changeMe');

            var cmp2 = cmp.find("changeAllButtons");
            $A.util.removeClass(cmp2, 'all');

        },


    searchKeyChange: function(component, event) {
         var searchKey = event.getParam("searchKey");
         var action = component.get("c.findByName");
         action.setParams({
           "searchKey": searchKey
         });
         action.setCallback(this, function(a) {
         	component.set("v.contacts", a.getReturnValue());
         });
         $A.enqueueAction(action);
     }




//     change : function(component)  {
//         var ac2 = component.get("c.climbS");
//
//         ac2.setCallback(this, function(a) {
//             component.set("v.at2", a.getReturnValue());
//         });
//         $A.enqueueAction(ac2);
//
////         c.set("v.at2", "vdfsd")
////         alert("abc");
//     }

 })
