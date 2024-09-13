
class Product{
  late String name,decription,img;
  late double price;
  static double diccountRate = 0.15;

  Product({required this.name,required this.decription,required this.img,required this.price});

  static double get DisscountRate=> diccountRate;
  double calculate()=>this.price*DisscountRate;
}