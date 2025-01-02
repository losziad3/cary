import 'package:cary/core/utils/assets.dart';


class HomeDataModel{
  int activeState=0;
  List banner =[
    AppAssets.carousal1,
    AppAssets.carousal2,
    AppAssets.carousal3,

  ];

  List carPart =[
    AppAssets.tachometer,
    AppAssets.crankshaft,
    AppAssets.alternator,
  ];

}
class ServiceModel {
  final String imagePath;
  final String name;

  ServiceModel({required this.imagePath, required this.name});
}


List<ServiceModel> serviceModel = [
  ServiceModel(imagePath: AppAssets.caRescue, name: 'Car Rescue'),
  ServiceModel(imagePath: AppAssets.callAmbulance, name: 'Call Ambulance'),
  ServiceModel(imagePath: AppAssets.reportAccident, name: 'Report an Accident'),
];

class CarPartModel{
  final String imagePath;
  final  String name;
  final  double price;
  final  double oldPrice;

  CarPartModel({required this.name, required this.price, required this.oldPrice, required this.imagePath});
}

List<CarPartModel> carModel = [
  CarPartModel(imagePath: AppAssets.tachometer,name: 'Tachometer',oldPrice: 90,price: 80),
  CarPartModel(imagePath: AppAssets.crankshaft,name: 'Crankshaft',oldPrice: 150,price: 100),
  CarPartModel(imagePath: AppAssets.alternator,name: 'Alternator',oldPrice: 80,price: 50),

];