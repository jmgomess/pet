public with sharing class EnvioEmailSchedulable implements Schedulable {
    public void execute(SchedulableContext sc) {
        Database.executeBatch(new ClientesHandler().enviarEmailAniversariantes(), 50);
    }
}
