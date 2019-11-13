/**
 * Created by mparzych004 on 05.11.2019.
 */

@IsTest
private class MathsTest {

    static Maths m = new Maths();

    @IsTest
    static void add() {
        System.assertEquals(5, m.add(1,4));
    }
}