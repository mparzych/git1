/**
 * Created by mparzych004 on 30.10.2019.
 */

public with sharing class Klas1 {


    public Integer revInt(Integer x) {
        Integer x2 = x;
        Integer sum = 0;

        // 123
        while (x2 > 0) {
            sum = sum * 10 + Math.mod(x2, 10);
            x2 /= 10;
        }
        return sum;
    }


    public Integer revRec(Integer x, Integer sum) {
        if (x == 0) return sum;
        return revRec(x / 10, sum * 10 + Math.mod(x, 10));
    }

//    Integer x = 0, sum = 0;

    public void m() {
//        Integer x = revInt(123);

        Integer x = revRec(123, 0);
        System.debug(x);
    }

    public void m2() {
//        Pattern MyPattern = Pattern.compile('a*b');
// First, instantiate a new Pattern object "MyPattern"
        Pattern ex = Pattern.compile('a*b');

// Then instantiate a new Matcher object "MyMatcher"
        Matcher ex2 = ex.matcher('aaaaab');

// You can use the system static method assert to verify the match
//        System.assert(MyMatcher.matches());


        Pattern p = Pattern.compile('[ab]');
        String s = 'abcd';
        Matcher m = p.matcher(s);
        Boolean b = m.matches();
//        System.debug(b);


//        String s = 'abcd';
////        System.debug(ex.matches('a*b', s));
//        Boolean b = Pattern.matches('a*b', s);
//        System.debug(b);
//        System.debug(ex2.matches());

    }


    public Integer revInt2(Integer x, Integer sum) {
        if (x == 0) {
            return sum;
        }
        return revInt2(x / 10, sum * 10 + Math.mod(x, 10));
    }

    public Integer trailingZeroes(Integer n, Integer zeroes) {
        if (n == 0) {
            return zeroes;
        }
        return trailingZeroes(n / 5, zeroes + n / 5);
    }



    public Integer powOf(Integer x, Integer y, Integer score) {
        if (y == 0) {
            return score;
        }
        return powOf(x, y - 1, score * x);
    }
}