/**
 * Created by mparzych004 on 30.10.2019.
 */

public with sharing class schedul2234 {
    public void m() {
        schedul223 s = new schedul223();
        System.schedule('abcd schedule', '10 * * * *', '0 * * *');
    }

}