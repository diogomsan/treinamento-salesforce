
@isTest
public class VisitFixtureFactory {

    public static Visita__c buildVisit ( String zipCode ) {
        Visita__c visit = new Visita__c();
        visit.Endereco__c = 'Rua Diogo';
        visit.Bairro__c = 'Bairro Vaz';
        visit.Cep__c = zipCode;
        visit.Cidade__c = 'Marilia';
        return visit;
    }
    public static Visita__c buildVisit ( Account account, String zipCode ) {
        
        Visita__c visit = buildVisit ( zipCode );
        visit.Account__c = account.Id;
        return visit;
    }

    public static Visita__c create ( String zipCode ) {
         return create ( buildVisit(zipCode) );
    }

    public static Visita__c create ( Account account, String zipCode ) {
         return create ( buildVisit(account, zipCode) );
    }

    public static Visita__c create ( Visita__c visita ) {
        insert visita;
        return visita;
    }
}