({
    foodFun : function(component, event, helper) {
        var met=component.get('c.showFood');
        $A.enqueueAction(met,true);
        met.setCallback(this,function(response){
            var rgr=response.getReturnValue();
            if(rgr!=null){
                component.set('v.foodCollection',rgr);
                var mtol=component.get('v.foodCollection')['results'];
                component.set('v.recipes',mtol);
            }
        });
        
    }
})