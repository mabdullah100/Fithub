import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/booking.dart';
import 'package:flutter_catalog/pages/time.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Gym Profile",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 3150,
            child: Column(
              children: [
                Hero(
                  tag: Key(catalog.id.toString()),
                  child: Container(child: Image.network(catalog.image)),
                ),
                VxArc(
                  height: 20.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(MyTheme.darkBluishColor)
                            .bold
                            .make(),
                        catalog.desc.text
                            .textStyle(context.captionStyle)
                            .xl
                            .center
                            .make(),
                        10.heightBox,
                        Text(
                          "Facilities",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          height: 100,
                          child: Row(
                            children: [
                              Image.network(catalog.f1).wh15(context).px16(),
                              Image.network(catalog.f2).wh15(context).px16(),
                              Image.network(catalog.f3).wh15(context).px16(),
                              Image.network(catalog.f4).wh15(context).px16(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                          child: Text(
                            "Gym Images",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: new Image.network(catalog.gi2,
                              height: 200, width: 310, fit: BoxFit.fill),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: new Image.network(catalog.gi3,
                              height: 200, width: 310, fit: BoxFit.fill),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          child: new Image.network(catalog.gi5,
                              height: 200, width: 310, fit: BoxFit.fill),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                          child: Text(
                            "Gym Plans",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 400,
                          width: 320,
                          child: Column(
                            children: [
                              Card(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.shopping_cart,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                  trailing: Text(
                                    "Rs: ${catalog.pl1p}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  title: Text(
                                    catalog.pl1t,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "\* ${catalog.pl1d}",
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Time(),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.shopping_cart,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                  trailing: Text(
                                    "Rs: ${catalog.pl2p}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  title: Text(
                                    catalog.pl2t,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "\* ${catalog.pl2d}",
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Time(),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.shopping_cart,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                  trailing: Text(
                                    "Rs: ${catalog.pl3p}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  title: Text(
                                    catalog.pl3t,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "\* ${catalog.pl3d}",
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Time(),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.shopping_cart,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                  trailing: Text(
                                    "Rs: ${catalog.pl4p}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  title: Text(
                                    catalog.pl4t,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "\* ${catalog.pl4d}",
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Time(),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                          child: Text(
                            "Gym Trainers",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          child: Container(
                            width: 320,
                            child: Row(
                              children: [
                                Container(
                                  width: 200,
                                  child: ListTile(
                                    title: Text(
                                      catalog.t1n,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "${catalog.t1d}",
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Image.network(
                                  catalog.t1i,
                                  height: 200,
                                  width: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            width: 320,
                            child: Row(
                              children: [
                                Container(
                                  width: 200,
                                  child: ListTile(
                                    title: Text(
                                      catalog.t2n,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "${catalog.t2d}",
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Image.network(
                                  catalog.t2i,
                                  height: 200,
                                  width: 95,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                          child: Text(
                            "Gym Details",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          child: Container(
                            width: 320,
                            child: Column(children: [
                              Icon(CupertinoIcons.location),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "      ${catalog.address}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Icon(CupertinoIcons.clock),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "      ${catalog.time}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Icon(Icons.phone_outlined),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "      ${catalog.phone}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                          child: Text(
                            "Gym Reviews",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: 320,
                          child: Column(
                            children: [
                              Card(
                                child: ListTile(
                                  trailing: Text(
                                    "${catalog.reviews}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  title: Text(
                                    catalog.reviewt,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "${catalog.reviewd}",
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  trailing: Text(
                                    "${catalog.review1s}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  title: Text(
                                    catalog.review1t,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "${catalog.review1d}",
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  trailing: Text(
                                    "${catalog.review2s}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  title: Text(
                                    catalog.review2t,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "${catalog.review2d}",
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                          child: Text(
                            "Gym Location",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                            onTap: () {}, child: Image.network(catalog.map)),
                      ],
                    ).py64(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
