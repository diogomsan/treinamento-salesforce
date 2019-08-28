
@isTest
private class VisitRepositoryTest {

    @isTest
    public static void findByZipCodeTest () {

        Account acc = AccountFixtureFactory.create( 'Diogo' );

        Visita__c visit = VisitFixtureFactory.create(acc, '17513322');

        VisitRepository repository = new VisitRepository();

        List<Visita__c> visits = repository.findByZipCode('%322');

        System.assert ( !visits.isEmpty());
        System.assertEquals ( visit.Id , visits.get(0).Id );
    }

    @isTest
    public static void notFindByZipCodeTest () {

        Visita__c visit = VisitFixtureFactory.create('Diogo');

        VisitRepository repository = new VisitRepository();

        List<Visita__c> visits = repository.findByZipCode('%322');

        System.assert ( !visits.isEmpty() );
        
    }

}