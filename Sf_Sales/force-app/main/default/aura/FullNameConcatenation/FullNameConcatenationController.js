({
	fullName : function(component, event, helper) {
        var fn =component.get('v.fname')
        var ln =component.get('v.lname')
        var fnm = fn+ln;
        component.set('v.flname',fnm)
	}
})