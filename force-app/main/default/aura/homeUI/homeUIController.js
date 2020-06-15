({
	doInit : function(component, event, helper) {debugger;
		var action = component.get("c.acc");
        action.setCallback(this, function(response) {debugger;
            var state = response.getState();
            if (state === "SUCCESS"){
                var data = response.getReturnValue();
                component.set("v.accData",data[0]);
            }
        });
	$A.enqueueAction(action);
	}
})