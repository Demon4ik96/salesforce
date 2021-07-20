trigger AddOrUpdatePlayer on Player__c (after insert, after update) {
    
   
    List<String> teamsId = new List<String>();

     for(Player__c player_i : Trigger.new){
        teamsId.add(player_i.team__c);
    }
  
    
 
	LastPlayerAddUpdater.updateById(teamsId);
}