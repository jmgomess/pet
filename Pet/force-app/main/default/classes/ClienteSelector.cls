public with sharing class ClienteSelector {

    public static List<String> obterEmailsAniversariantes(){
        return [
            SELECT 
                Email__c
            FROM Cliente__c
            WHERE Aniversario__c = true
        ];
    }

}