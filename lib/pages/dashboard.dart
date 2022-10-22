import 'dart:ui';

import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool fav = false;

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
                    elevation: 5,
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

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) => Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.amber,
                    elevation: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GridTile(
                        header: Container(
                          height: 40,
                          color: Colors.black.withOpacity(0.4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        fav = !fav;
                                      });
                                    },
                                    icon: fav == true
                                        ? Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          )
                                        : Icon(
                                            Icons.favorite_border_rounded,
                                            color: Colors.white,
                                          )),
                                SizedBox(
                                  width: 20,
                                )
                              ]),
                        ),
                        footer: Container(
                          height: 40,
                          color: Colors.black.withOpacity(0.7),
                          child: Column(children: [
                            Text(
                              "adad",
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,right: 20),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text(
                                    "\$1200",
                                    style: TextStyle(color: Colors.white60,decoration: TextDecoration.lineThrough,),

                                  ),   Text(
                                    "\$1200",
                                    style: TextStyle(color: Colors.green),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                        child: Image.asset(
                          "asset/lucas.jpg",
                          fit: BoxFit.fill,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
