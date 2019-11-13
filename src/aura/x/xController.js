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

     hide: function(component) {
            var e = document.getElementById("divToHide");
            e[0].style.display = "none";
     },


     returnContacts: function(component) {
         var ac = component.get("c.retContacts");
         component.set("v.bool1", true);

         ac.setCallback(this, function(a) {
             component.set("v.contacts", a.getReturnValue());
         });
         $A.enqueueAction(ac);
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
     },

     retValue: function(component, event) {
//         var ac = component.find('changeIt'); // aura:id
         var mes = alert("message");
         var message = document.getElementById("mes").value;
         alert( message );
     },
     returnAlert: function(component, event, helper ) {
         helper.returnAlertFunction();
     },

     return2ndAlert: function(component, event, helper) {
         helper.return2ndAlert();
     },
     returnTwoAlerts: function(component, e, h) {
        var b =  Date();
        component.set("v.date1", b);
        h.displaySMH();
     },
     f1: function(c, e, h) {
         h.help1();

     },
     f2: function(c, e, h) {
         h.help2();

     },

     showSmth1: function(component) {
         component.set("v.bool2", true);
     },
     hideSmth2: function(component) {
         component.set("v.bool2", false);
     },
     f3: function(component) {
         if(component.get("v.bool3") == true) {
         component.set("v.bool3", false);
//         component.set("changeButtonLabel", "hide");
         }
         else {
         component.set("v.bool3", true);
         }
     },
     hideEverything: function(component) {
         component.set("v.bool3", false);
         component.set("v.bool2", false);
         component.set("v.bool1", false);
         component.set("v.bool5", false);
         component.set("v.enableChatter", false);
         component.set("v.publishersBool", false);


     },

     hide2: function(component) {
         if (component.get("v.bool3") == false) {
             component.set("v.bool3", true);
         }
         else {
             component.set("v.bool3", false);
         }

     },

     enableChatter: function(component) {
         component.set("v.enableChatter", true);
     },

     changeColor: function(component) {
         var cmp = component.find('changeButton3');
         $A.util.addClass(cmp, 'changeStyle');

     },

     changeToAcc: function(component) {
          var action = component.get("c.showAcc");

          action.setCallback(this, function(a) {
              component.set("v.contacts", a.getReturnValue());
          }) ;
          $A.enqueueAction(action);


     },

     changeTo3Acc: function(component) {
         var action = component.get("c.showAcc3");
         action.setCallback(this, function(a) {
             component.set("v.contacts", a.getReturnValue());
         });
         $A.enqueueAction(action);
     }




//     c_UpdateUserTargetList : function(component, event, helper){
//         action.setCallback(this, function(a) {
//             //var id=component.get("v.UTList.Id");
//             if (a.getState() === "SUCCESS") {
//
//                 var source=event.getSource();
//                 source.set('v.label','New Label');
//             } else if (a.getState() === "ERROR") {
//                 debugger;
//                 $A.log("Errors", a.getError());
//             }
//         })
//     },










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
