({
	secondAction : function(component, event, helper) {
		var nm = event.getParams('Name');
        component.set('v.concate', nm);
	}
})