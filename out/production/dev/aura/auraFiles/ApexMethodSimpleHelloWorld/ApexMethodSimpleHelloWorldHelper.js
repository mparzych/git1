({
	fetchStringHelper : function(component) {
	 var action = component.get("c.sayHelloString");
         action.setParams({});
         action.setCallback(this, function(response)
         {
         	var state = response.getState();
         	if (state === "SUCCESS") 
         	{
               component.set("v.StringData",response.getReturnValue());
         	}
         	else
         	{
                // do something
         	}    
         });
         $A.enqueueAction(action);	
	}
})
