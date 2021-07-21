public class LastPlayerAddUpdater {

    public static void updateById(List<String> parentsId){
    List<Team__c> teams = [SELECT ID, Last_player_add__c FROM Team__c WHERE ID IN: parentsId];
    
    for(Team__c team_i : teams){
        team_i.last_player_add__c=System.now();
    }
    
    update teams;
    }
    
}