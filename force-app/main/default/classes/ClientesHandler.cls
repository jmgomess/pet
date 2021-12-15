public without sharing class ClientesHandler {

    public static void enviarEmailAniversariantes(){
            enviarEmail(listaEmailsAniversariantes(ClienteSelector.obterEmailsAniversariantes()));
    }

    private static void enviarEmail(List<String> listaEmails){
        if(!listaEmails.isEmpty()){
            Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
            message.setBccAddresses(listaEmails);
            message.setSubject('Aniversariante do dia');
            message.setHtmlBody('Feliz aniversário');
            List<Messaging.SingleEmailMessage> messages = new List<Messaging.SingleEmailMessage>{message};
            Messaging.sendEmail(messages);
        }
    }

    private static List<String> listaEmailsAniversariantes(List<Cliente__c> listaClientesAniversariantes){
        List<String> emails = new List<String>();
        if(!listaClientesAniversariantes.isEmpty()){
            for(Cliente__c cliente : listaClientesAniversariantes){
                emails.add(cliente.Email__c);
            }
        }
        return emails;
    }

}