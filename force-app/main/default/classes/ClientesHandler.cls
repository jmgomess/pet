public without sharing class ClientesHandler {

    public void ClientesHandler{

    }

    public void enviarEmailAniversariantes(){
            enviarEmail(listaEmailsAniversariantes(ClienteSelector.obterEmailsAniversariantes()));
    }

    private void enviarEmail(List<String> emails){
        System.debug('Entrou no enviarEmailMassa');
        if(!emails.isEmpty()){
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setToAddresses(emails);
            email.setSubject('Aniversariante');
            email.setHtmlBody('Feliz aniversário');
            Messaging.sendEmail(email);
        }else{
            System.debug('Nenhum aniversariante encontrado no dia de hoje:' + System.today());  
        }
    }

    private List<String> listaEmailsAniversariantes(List<Cliente__c> listaClientesAniversariantes){
        List<String> emails;
        if(!listaClientesAniversariantes.isEmpty()){
            for(Cliente__c cliente : listaClientesAniversariantes){
                emails.add(cliente.Email__c);
            }
        }
        return emails;
    }

}