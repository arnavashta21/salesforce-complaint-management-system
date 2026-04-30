trigger ComplaintPriorityTrigger on Complaint__c (before insert, before update) {

    for (Complaint__c comp : Trigger.new) {

        if (comp.Type__c == 'Technical') {
            comp.Priority__c = 'High';
        } 
        else if (comp.Type__c == 'Billing') {
            comp.Priority__c = 'Medium';
        } 
        else {
            comp.Priority__c = 'Low';
        }
    }
}
