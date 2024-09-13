import 'package:flutter/material.dart';
import 'package:list_of_products/model/Product.dart';

class ProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> allProducts = [];
    allProducts.add(Product(
        name: 'Samsung Galaxy S23 FE',
        decription: 'affordable version of the flagship S23 series.',
        img:
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRXebRvJ-LGAy5QpfCF9kYy2UcNStwc-iwdQ7hKNcgnb7-mDuI_BHNCRcOFWNUf",
        price: 3400));
    allProducts.add(Product(
        name: 'Samsung Galaxy S23 FE',
        decription: 'affordable version of the flagship S23 series.',
        img:
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRXebRvJ-LGAy5QpfCF9kYy2UcNStwc-iwdQ7hKNcgnb7-mDuI_BHNCRcOFWNUf",
        price: 3300));
    allProducts.add(Product(
        name: 'Samsung Galaxy S23 FE',
        decription: 'affordable version of the flagship S23 series.',
        img:
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRXebRvJ-LGAy5QpfCF9kYy2UcNStwc-iwdQ7hKNcgnb7-mDuI_BHNCRcOFWNUf",
        price: 2450));
    allProducts.add(Product(
        name: 'Samsung Galaxy S23 FE',
        decription: 'affordable version of the flagship S23 series.',
        img:
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRXebRvJ-LGAy5QpfCF9kYy2UcNStwc-iwdQ7hKNcgnb7-mDuI_BHNCRcOFWNUf",
        price: 3500));
    allProducts.add(Product(
        name: 'Samsung Galaxy S23 FE',
        decription: 'affordable version of the flagship S23 series.',
        img:
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRXebRvJ-LGAy5QpfCF9kYy2UcNStwc-iwdQ7hKNcgnb7-mDuI_BHNCRcOFWNUf",
        price: 3570));
    allProducts.add(Product(
        name: 'Samsung Galaxy S23 FE',
        decription: 'affordable version of the flagship S23 series.',
        img:
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRXebRvJ-LGAy5QpfCF9kYy2UcNStwc-iwdQ7hKNcgnb7-mDuI_BHNCRcOFWNUf",
        price: 3780));
    allProducts.add(Product(
        name: 'Samsung Galaxy S23 FE',
        decription: 'affordable version of the flagship S23 series.',
        img:
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRXebRvJ-LGAy5QpfCF9kYy2UcNStwc-iwdQ7hKNcgnb7-mDuI_BHNCRcOFWNUf",
        price: 3670));
    allProducts.add(Product(
        name: 'Samsung Galaxy S23 FE',
        decription: 'affordable version of the flagship S23 series.',
        img:
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRXebRvJ-LGAy5QpfCF9kYy2UcNStwc-iwdQ7hKNcgnb7-mDuI_BHNCRcOFWNUf",
        price: 3890));
    allProducts.add(Product(
        name: 'Samsung Galaxy S23 FE',
        decription: 'affordable version of the flagship S23 series.',
        img:
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRXebRvJ-LGAy5QpfCF9kYy2UcNStwc-iwdQ7hKNcgnb7-mDuI_BHNCRcOFWNUf",
        price: 3340));

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: allProducts.map((x) => buildWithList(context, x)).toList(),
        ),
      ),
    ));
  }

  Widget buildWithList(BuildContext context, Product p) {
    return Container(
        child: ListTile(
      leading: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage((p.img)), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10)),
      ),
      title: Text(
        p.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //bellow title
        children: [
          //descrption
          Container(
            child: Text(
              p.decription,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price
                Container(
                  child: Column(
                    children: [
                      Text(
                        "\$${p.price}",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.grey,
                            color: Colors.grey),
                      ),
                      Text(
                        "\$${p.price - p.calculate()}",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ],
                  ),
                ),

                //color
                Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Color"),

                        //square of colors
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //first color
                              Icon(
                                Icons.square,
                                color: Colors.black12,
                              ),
                              //Container(height: 20,width: 20,color: Colors.lightBlue,),
                              //second color
                              Icon(
                                Icons.square,
                                color: Colors.black54,
                              ),
                              Icon(
                                Icons.square,
                                color: Colors.brown,
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
