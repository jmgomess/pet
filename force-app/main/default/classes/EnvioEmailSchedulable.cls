public with sharing class EnvioEmailSchedulable implements Schedulable {
    public void execute(SchedulableContext sc) {
        ClientesHandler.enviarEmailAniversariantes();
    }
}
