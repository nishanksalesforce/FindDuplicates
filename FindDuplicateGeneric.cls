public class FindDuplicateGeneric{
  public static List<SObject> findDuplicateRecords(sObject record){
      List<record> sObjectList = new List<record>();
      sObjectList.add(record);
  
      List<Datacloud.FindDuplicatesResult > findDuplicatesResult = Datacloud.FindDuplicates.findDuplicates(sObjectList);
          
      Datacloud.DuplicateResult duplicateResult = findDuplicatesResult.get(0).getDuplicateResults().get(0);
      Datacloud.MatchResult matchResult = duplicateResult.getMatchResults()[0];
      List<Datacloud.MatchRecord> matchRecords = matchResult.getMatchRecords();
      
      List<SObject> duplicates = new List<SObject>();
      for(Datacloud.MatchRecord matchRecord : matchRecords){
          SObject duplicate = matchRecord.getRecord();
          System.debug('Match Record: ' + duplicate);
          duplicates.add(duplicate);
      }
      return duplicates;
  }
}
