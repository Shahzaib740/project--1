import 'package:flutter/material.dart';
class shop extends StatefulWidget {
  const shop({Key? key}) : super(key: key);

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Container(
        height: 850,
        width: 400,
        child: Stack(
          children: [
            Container(
              height: 850,
              width: 400,
              child: Image.asset("assets/image/grey.png",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 10),
                      child: Icon(Icons.circle_outlined),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(" order detail"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 180),
                      child: Icon(Icons.favorite_border_sharp, size: 30,),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Icon(Icons.shopping_bag_outlined, size: 30,),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Search categories',
                      prefixIcon:Icon( Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.white)
                      ),
                    ),
                  ),
                ),
                Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 8, top: 15),
                          height: 120,
                          width: 155,

                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/image/dog3.jpg",),fit: BoxFit.fill
                              ),
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 5, top: 15),
                          height: 120,
                          width: 155,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/image/dog4.jpg",),fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                      ),
                    ]
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text("ComeBack"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 105),
                      child: Text("Tracking aufladen"),
                    )
                  ],
                ),
                Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 8, top: 15),
                          height: 120,
                          width: 155,

                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/image/dog2.jpg",),fit: BoxFit.fill
                              ),
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 5, top: 15),
                          height: 120,
                          width: 155,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/image/dog.png",),fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                      ),
                    ]
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text("Accessories"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 105),
                      child: Text("Comeback Verbind...."),
                    )
                  ],
                ),
                Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 8, top: 15),
                          height: 120,
                          width: 155,

                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/image/footprint.png",),
                              ),
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                      ),
                    ]
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text("View All"),
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
