public with sharing class ClientesHandler {

    public void enviarEmailAniversariantes(){
            enviarEmail(ClienteSelector.obterEmailsAniversariantes());
    }

    private void enviarEmail(List<String> emails){
        System.debug('Entrou no enviarEmailMassa');
        if(emails.size() > 0){
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setToAddresses(emails);
            email.setSubject('Aniversariante');
            email.setHtmlBody('Feliz aniversário');
            Messaging.sendEmail(email);
        }else{
            System.debug('Nenhum aniversariante encontrado no dia de hoje:' + System.today());  
        }
    }

}