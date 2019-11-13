/**
 * Created by mparzych004 on 04.10.2019.
 */

@isTest private  class StackTest {

    static Stack st;

    @isTest public static void isEmptyTest() {
        List<SObject> objects = Test.loadData()
        st = new Stack();
        System.assert(st.isEmpty() == true);
        st.add(2);
        System.assert(st.isEmpty() == false);

//        System.assert(2>1);
    }

    @isTest public static void add() {

        st.add(3);
        System.assert(st.peek() == 3);
    }
    @isTest public static void popTest() {
        st = new Stack();
        st.add(2);
        st.add(4);
        st.pop();
        System.assert(st.peek() == 2);


    }

}