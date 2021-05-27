import 'package:cabrider/datamodels/Adres.dart';
import 'package:flutter/cupertino.dart';


class AppData extends ChangeNotifier{

  Adres pickupAddress;

  Adres destinationAddress;

  void updatePickupAddress(Adres pickup){
    pickupAddress=pickup;
    notifyListeners();
  }

  void updateDestinationAddress(Adres destination){
    destinationAddress= destination;
    notifyListeners();
  }

}