/**
 * Created by mparzych004 on 31.10.2019.
 */

trigger t45 on Account (before insert) {
    List<Account> l = Trigger.new;


    Q1 q1 = new Q1();
    System.enqueueJob(q1);






}