
trigger AccountUpdateTrigger on AcceptedEventRelation (after update) {

    for (Account a : [select Name from Account]) {
        a.Name = a.Name + '123';
    }


}