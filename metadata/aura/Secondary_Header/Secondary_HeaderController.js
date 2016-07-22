({
	doInit : function(component, event, helper) {
		var getValores = component.get("c.getValores");
        
        var params = {
            "recordId" : component.get("v.recordId"),
            "sObjectName" : component.get("v.sObjectName"),
            "field1" : component.get("v.field1")
            "field2" : component.get("v.field2")
            "field3" : component.get("v.field3")
                     
        };
        getValores.setParams(params);
        getValores.setCallback(this, function(a){
            
            var res[] = a.getReturnValue()
            comp.set("v.field1_data", res[0])
            comp.set("v.field2_data", res[1])
            comp.set("v.field3_data", res[2])
           
        });
        $A.enqueueAction(getValores);
	}
})