# How to Use this FindDuplicateGeneric class

MyObject__c myObjectInstance = new MyObject__c(Name='TestRecord');
List<MyObject__c> duplicates = FindDuplicateGeneric.findDuplicateRecords(myObjectInstance);
if(duplicates.size() == 0){
    //no duplicates
    insert myObjectInstance;
} else{
    //desired update
}

