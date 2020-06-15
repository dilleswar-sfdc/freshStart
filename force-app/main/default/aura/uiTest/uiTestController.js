({
	doInit : function(component, event, helper) {
		var action = component.get("c.accdata");
         action.setCallback(this, function(response) {debugger;
			var state = response.getState();
             if (state === "SUCCESS"){
                 var data = response.getReturnValue();
                 component.set("v.acc",data[0]);
             }
            
        });
        $A.enqueueAction(action);
	}
})