public class HelloWorldApexMethod {
    @AuraEnabled
    public static String sayHelloString()
    {
        return 'Hello World';
    }

}
