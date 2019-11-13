/**
 * Created by mparzych004 on 24.10.2019.
 */

trigger UpdateAssetNameTrigger on Asset (after update) {

//     =  new Asset();
//    List<Asset> l =  [select Name from Asset];
//    for (Asset a : l) {
//        a.Name = a.Name + '1';
//    }
//    update l;



    Asset a = new Asset(Name='cvb');
    insert a;


}