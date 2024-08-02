import 'package:flutter/material.dart';
import 'loginpage.dart';

class comeback extends StatefulWidget {
  const comeback({Key? key}) : super(key: key);

  @override
  State<comeback> createState() => _comebackState();
}

class _comebackState extends State<comeback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sidebar(),
      body:  Container(
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
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(top: 30,left:20),
                        child: IconButton(
                          onPressed: (){},
                          icon:Icon(Icons.menu,),
                        )
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      margin: EdgeInsets.only(top: 30, left: 280),
                      child: Icon(Icons.more_vert_sharp),
                    ),
                  ],
                ),
                Container(
                  height: 130,
                  width: 330,
                  margin: EdgeInsets.only(top: 55),

                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/dog4.jpg",),fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(left: 260,top: 10),
                        child: Icon(Icons.more_vert_sharp,),
                      ),
                      Container(
                        height: 27,
                        width: 52,
                        margin: EdgeInsets.only(top: 70,left: 250),
                        color: Colors.blueAccent,
                        child: Row(
                          children: [
                            Icon(Icons.battery_saver_rounded),
                            Text("99%")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 270),
                  child: Text("Bella", style: TextStyle(fontSize: 20),),
                ),
                Container(
                  height: 130,
                  width: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/dog3.jpg",),fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(left: 260,top: 10),
                        child: Icon(Icons.more_vert_sharp,),
                      ),
                      Container(
                        height: 27,
                        width: 52,
                        margin: EdgeInsets.only(top: 60,left: 250),
                        color: Colors.blueAccent,
                        child: Row(
                          children: [
                            Icon(Icons.battery_saver_rounded),
                            Text("99%")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 270),
                  child: Text("Duke", style: TextStyle(fontSize: 20),),
                ),
                Container(
                  height: 130,
                  width: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/dog2.jpg",),fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(left: 260,top: 10),
                        child: Icon(Icons.more_vert_sharp,),
                      ),
                      Container(
                        height: 27,
                        width: 52,
                        margin: EdgeInsets.only(top: 60,left: 250),
                        color: Colors.blueAccent,
                        child: Row(
                          children: [
                            Icon(Icons.battery_saver_rounded),
                            Text("99%")
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.only(right: 270),
                  child: Text("Charlie", style: TextStyle(fontSize: 20),),
                ),
                Container(
                  height: 110,
                  width: 330,
                  color: Colors.white38,
                  margin: EdgeInsets.only(top: 50),
                  child: Center(child: Icon(Icons.add, size: 30,)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class sidebar extends StatefulWidget {
  const sidebar({Key? key}) : super(key: key);

  @override
  State<sidebar> createState() => _sidebarState();
}

class _sidebarState extends State<sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/back.png",
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 200),
                      child: CircleAvatar (
                        child: ClipOval(
                          child: Image.asset('assets/image/spiderman.png'),

                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Shahzaib"
                      ), color: Colors.white,),
                    Container(
                      margin: EdgeInsets.only(left: 20),

                      child: Text("SHahzaib1234@gmail.com"),color: Colors.white, ),
                  ],
                )
              ],
            ),
          ),

          ListTile(
            title: Text("login page"),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>text()));
            },

          ),


        ],
      ),

    );
  }
}

