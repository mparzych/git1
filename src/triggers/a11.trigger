/**
 * Created by mparzych004 on 06.11.2019.
 */

trigger a11 on Account (before insert) {

    for (Account a : Trigger.new) {
        if (a.Name.equals('INVALID')) {
            a.addError('INVALID NAME');
            a.addError('INVALID NAME 2');
            a.addError('INVALID NAME 3');
        }
    }

}