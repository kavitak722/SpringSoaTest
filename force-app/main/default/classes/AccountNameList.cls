public class AccountNameList {

    @AuraEnabled
        public static list<Account> fetchAccountRecords(){
          return [Select Name,Rating,Phone from Account Order By createdDate ASC LIMIT 10];        
        }
    }