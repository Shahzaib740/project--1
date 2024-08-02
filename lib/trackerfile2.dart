import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shahzaib/permissionpage.dart';

import 'accountsuccessful.dart';

class id extends StatefulWidget {
  const id({Key? key}) : super(key: key);

  @override
  State<id> createState() => _idState();
}

class _idState extends State<id> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 290, 0),
                  child: Container(
                    height: 45,
                    width: 37,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7),),
                      color: Colors.black38,),
                    child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>permission() ),);
                    }, icon: Icon(Icons.arrow_back_ios_new, size: 25,color: Colors.white,)),
                  ),
                ),
                Container(
                  height: 50,
                  width: 270,
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text("Enter Tracker ID",
                      style: TextStyle(fontSize:35, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(

                  height:60,
                  width: 290,

                  margin: EdgeInsets.only(top: 20),

                  child: RichText(text: TextSpan(
                    style: new TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                    ),
                    children: <TextSpan>[
                      new TextSpan(text: " Lorem Ipsum is simply dummy text of the printing and typesetting industry.",

                        style: TextStyle(color: Colors.black54,),),
                    ],
                  ),
                    textAlign:  TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100,top: 70),
                      child: SizedBox(height: 10,
                        width: 30,
                        child:TextFormField(
                          cursorColor: Colors.blue,
                          onChanged: (value){ if (value.length==1 ) {
                            FocusScope.of(context).nextFocus();
                          }
                          },
                          onSaved: (pin1){},
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ) ,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 70),
                      child: SizedBox(height: 10,
                        width: 30,
                        child:TextFormField(
                          onChanged: (value){ if (value.length==1 ) {
                            FocusScope.of(context).nextFocus();
                          }
                          },
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ) ,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 70),
                      child: SizedBox(height: 10,
                        width: 30,

                        child:TextFormField(
                          onChanged: (value){ if (value.length==1 ) {
                            FocusScope.of(context).nextFocus();
                          }
                          },
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 70),
                      child: SizedBox(height: 10,
                        width: 30,
                        child:TextFormField(
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ) ,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> account ()) );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 0,left: 6, top: 100),
                    width: 330,
                    height: 58,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14),),
                      color: Color.fromRGBO(0, 0, 255,5 ),


                    ),
                    child: Center(
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          color: Colors.white, fontSize: 20,),
                      ),
                    ),

                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}


