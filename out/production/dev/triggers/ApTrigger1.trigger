
trigger ApTrigger1 on Account (after insert) {
    for (Account a : Trigger.new) {
        a.addError('abcd');
    }

    Trigger.new



}