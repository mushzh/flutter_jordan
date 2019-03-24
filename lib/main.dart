import 'package:flutter/material.dart';
import 'utils.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF696D77), Color(0xFF292C36)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.clamp)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: screenAwareSize(20.0, context),
                ),
                onPressed: () {},
              ),
              title: Text(
                  "Energy Cloud",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenAwareSize(18.0, context),
                      fontFamily: "Montserrat-Bold")),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: screenAwareSize(20.0, context),
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            body: Column(
              children: <Widget>[
                ProductScreenTopPart(), ProductScreenBottomPart()
              ],
            )


        ));
  }
}

// stf + ProductScreenTopPart
class ProductScreenTopPart extends StatefulWidget {
  @override
  _ProductScreenTopPartState createState() => _ProductScreenTopPartState();
}

class _ProductScreenTopPartState extends State<ProductScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenAwareSize(245.0, context),
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset("assets/images/jordan.jpg",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover),
              ),

              Padding(
                padding: const EdgeInsets.only(top:60.0, right: 35.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: screenAwareSize(50.0, context),
                    height: screenAwareSize(50.0, context),
                    decoration: BoxDecoration(
                        color: Colors.black26, shape: BoxShape.circle),
                    child: Image.asset("assets/images/360.png"),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: screenAwareSize(10.0, context),
            bottom: screenAwareSize(15.0, context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Rating",
                    style: TextStyle(
                        color: Color(0xFF949598),
                        fontSize: screenAwareSize(10.0, context),
                        fontFamily: "Montserrat-SemiBold")),
                SizedBox(
                  height: screenAwareSize(8.0, context),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(Icons.star, color: Color(0xFFFFE600)),
                    SizedBox(width: screenAwareSize(5.0, context),),
                    Text("4.5",
                        style: TextStyle(color: Color(0xFFFFE600))),
                    SizedBox(width: screenAwareSize(5.0, context),),
                    Text("(378 People)",
                        style: TextStyle(color: Colors.black, fontSize: 14.0))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


class ProductScreenBottomPart extends StatefulWidget {
  @override
  _ProductScreenBottomPartState createState() => _ProductScreenBottomPartState();
}

class _ProductScreenBottomPartState extends State<ProductScreenBottomPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(18.0, context)),
            child: Text(
              "Product Description",
              style: TextStyle(
                  color: Color(0xFF949598),
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: "Montserrat-SemiBold"),
            ),
          )
        ],
      ),
    );
  }
}
