import 'package:flutter/material.dart';
import 'home2.dart';
import 'home3.dart';
import 'homefile1.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentTab=0;
  final List<Widget> screens = [
    comeback(),
    shop(),
    profile(),
  ];
  final PageStorageBucket bucket= PageStorageBucket();
  Widget currentScreen= comeback();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageStorage(
        child:  currentScreen ,
        bucket:bucket ,
      ),
      bottomNavigationBar:BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen=comeback();
                      currentTab=0;
                    });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(Icons.dashboard,
                              color: Colors.blue
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Comeback"),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen=shop();
                      currentTab=1;
                    });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Icon(Icons.shopping_cart,
                              color: Colors.blue
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text("Shop"),
                        ),
                      ],
                    ),

                  ),
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen=profile();
                      currentTab=2;
                    });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Icon(Icons.account_circle_rounded,
                              color: Colors.blue
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("Profile"),
                        ),
                      ],
                    ),

                  ),
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
