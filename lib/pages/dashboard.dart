import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ice_man/pages/model/model.dart';
import 'package:ice_man/pages/widgets/itemCard.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool fav = false;

  List<ProductModel> productList = [
    ProductModel(
        fav: false,
        imageUrl: "asset/products/gown (1).jpg",
        productName: "valentino gown",
        price: "\$200",
        offerdPrice: "\$100"),
    ProductModel(
        fav: true,
        imageUrl: "asset/products/gown (2).jpg",
        productName: "isi ewu gown",
        price: "\$1200",
        offerdPrice: "\$1000"),
    ProductModel(
        fav: false,
        imageUrl: "asset/products/shoe (1).jpg",
        productName: "Galzy shoe",
        price: "\$2000",
        offerdPrice: "\$1900"),
    ProductModel(
        fav: false,
        imageUrl: "asset/products/gown (1).jpg",
        productName: "valentino gown",
        price: "\$200",
        offerdPrice: "\$100"),
    ProductModel(
        fav: true,
        imageUrl: "asset/products/gown (2).jpg",
        productName: "isi ewu gown",
        price: "\$1200",
        offerdPrice: "\$1000"),
    ProductModel(
        fav: false,
        imageUrl: "asset/products/shoe (1).jpg",
        productName: "Galzy shoe",
        price: "\$2000",
        offerdPrice: "\$1900"),
    ProductModel(
        fav: true,
        imageUrl: "asset/products/shoe (2).jpg",
        productName: "nike",
        price: "\$2500",
        offerdPrice: "\$2100"),
    ProductModel(
        fav: false,
        imageUrl: "asset/products/shoe (3).jpg",
        productName: "mugu",
        price: "\$200",
        offerdPrice: "\$100"),
    ProductModel(
        fav: true,
        imageUrl: "asset/products/shoe (2).jpg",
        productName: "nike",
        price: "\$2500",
        offerdPrice: "\$2100"),
    ProductModel(
        fav: false,
        imageUrl: "asset/products/shoe (3).jpg",
        productName: "mugu",
        price: "\$200",
        offerdPrice: "\$100")
  ];

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 3,
                    shadowColor: Colors.amber,
                    color: Colors.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("asset/lucas.jpg"),
                          ),
                          Text(
                            "Adamu",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ]),
                  )),
              Expanded(

                child: GridView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: productList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20),
                    itemBuilder: (context, index) => ItemCard(fav: productList[index].fav, imageUrl: productList[index].imageUrl, productName: productList[index].productName, price: productList[index].price, offerdPrice: productList[index].offerdPrice)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
