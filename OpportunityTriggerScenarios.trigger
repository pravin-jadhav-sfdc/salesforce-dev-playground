trigger OpportunityTriggerScenarios on SOBJECT (before insert) {

/*Scenario — Prevent Updating Opportunity Close Date to a
Past Date
Requirement:
Users should not change Opportunity.CloseDate to any
date earlier than today.
*/
if(Trigger.isUpdate){
    if(Trigger.isBefore){
        OpportunityTriggerScenariosHandler.handleBeforeUpdate(Trigger.new, Trigger.oldMap);
    }
}
}
