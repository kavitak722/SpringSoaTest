public class numOfContactsHandler {

    public static void countContacts(List<Contact> newList, List<Contact> oldList)
    {
        Set<id> accountIds=new Set<id>();
        
        if(newList!=null)
        {
        for(contact c:newList)
        {
            if(c.accountId!=null)
            {
                accountIds.add(c.accountId);
            }
        }
        }
        
                if(oldList!=null)
                {

        for(contact c:oldList)
        {
            if(c.accountId!=null)
            {
                accountIds.add(c.accountId);
            }
        }
                }
        List<Account> accounts=[SELECT Id,Number_of_Contacts__c,(SELECT Id FROM Contacts) FROM Account WHERE Id in:accountIds];
    if(!accounts.isEmpty())
    {
        for(Account acc:accounts)
        {
            acc.Number_of_Contacts__c=acc.contacts.size();
        }
    }
        update accounts;
    }
    
}