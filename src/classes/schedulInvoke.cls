/**
 * Created by mparzych004 on 24.10.2019.
 */

public with sharing class schedulInvoke {
    public void invokeSchedulClass() {
        System.schedule('scheduled', '0 15 * * *', new schedul2());
    }

}