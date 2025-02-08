public class AccountService {
    public static void createRestrictedAccount(Account acc) {
        if (UserInfo.getProfileId() != [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1].Id) {
            throw new System.DmlException('Only System Administrators can create accounts.');
        }
        insert acc;
    }
}