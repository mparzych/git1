/**
 * Created by mparzych004 on 27.09.2019.
 */

trigger Trig on Account (before insert) {


    Main main = new Main();
    main.powOf(2,3);

    System.debug(Trigger.new);
    System.debug(Trigger.newMap);






}