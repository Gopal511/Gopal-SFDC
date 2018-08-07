@isTest
public class TestVerifyDate {
    @isTest 
    static void testCheckDates() {
        Date dte=VerifyDate.CheckDates(Date.valueOf('2017-11-30'),Date.valueOf('2017-12-10'));
        system.assertEquals(dte,Date.valueOf('2017-12-10'));
    }
    @isTest 
    static void testDateWithin30Days() {
        Date dte=VerifyDate.CheckDates(Date.valueOf('2017-11-30'),Date.valueOf('2018-01-30'));
        system.assertEquals(dte,Date.valueOf('2017-11-30'));
    }
    @isTest 
    static void testSetEndOfMonthDate(){
     	Date dte=VerifyDate.CheckDates(Date.valueOf('2017-11-30'),Date.valueOf('2017-10-30'));
         system.assertEquals(dte,Date.valueOf('2017-11-30'));
    }
}