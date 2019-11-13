

//}A developer has the following code:try {List nameList;Account a;String s = a.Name;nameList.add(s);
//} catch (ListException le ) {System.debug(' List Exception ');
//} catch (NullPointerException npe) {System.debug(' NullPointer Exception ');
//} catch (Exception e) {System.debug(' Generic Exception ');
//} What message will be logged?


public class Ap345 {
    public void m() {
//        List nameLists = new List();

        List<Account> l = new List<Account>([select Id, Name from Account]);
//        l.add(new Account(Name='abc d'));




    }
}