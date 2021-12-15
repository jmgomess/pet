public with sharing class ClienteSelector {

    public static List<Cliente__c> obterEmailsAniversariantes(){
        return [
            SELECT 
                Email__c
            FROM Cliente__c
            WHERE Aniversario__c = true
        ];
    }

}