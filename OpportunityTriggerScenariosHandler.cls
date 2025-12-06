public with sharing class OpportunityTriggerScenariosHandler {
    
    public static void handleBeforeUpdate(List <Opportunity> newOppList, Map<Id,Opprtunity> oldOppMap){

        for(Opportunity opp: newOppList){

            Opportunity oldOpp = oldOppMap.get(opp.Id);
            if(opp.CloseDate!=oldOpp.CloseDate && opp.CloseDate < Date.today()){
                opp.addError('Close Date cannot be set to a past date.');
            }
        }

    }
}
