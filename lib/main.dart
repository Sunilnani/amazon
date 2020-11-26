import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> text=["Agriculture","Camera","Music","Prime Video","Mobiles","Notes","Computers","Womens Fashion","Agriculture","Camera","Music","Prime Video",];
  List<IconData> icon=[Icons.agriculture_rounded,Icons.camera_alt_outlined,Icons.headset_mic_outlined,Icons.video_collection_rounded,Icons.mobile_friendly,Icons.speaker_notes_outlined,Icons.computer,Icons.face_retouching_natural,Icons.agriculture_rounded,Icons.camera_alt_outlined,Icons.headset_mic_outlined,Icons.video_collection_rounded];
  List<IconData> icon1=[Icons.add,Icons.add,Icons.add,Icons.add,Icons.add,Icons.add,Icons.add,Icons.add,Icons.add,Icons.add,Icons.add,Icons.add];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: Column(
              children: [
                Container(
                  height: 150,
                  color: Colors.cyanAccent,
                  child: Column(
                    children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset("img/sidebar.png",height: 20,),
                                SizedBox(width: 10,),
                                Image.asset("img/amazon.png",height: 70,)
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Image.asset("img/voice.png",height: 20,),
                                Image.asset("img/shopping.png",height: 50,)
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 65,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                suffixIcon: Icon(Icons.camera_alt_outlined),
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.black),
                                hintText: "Continue with Email",
                                fillColor: Colors.white),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right:158.0),
                  child: Text("Explore All Categories",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:EdgeInsets.only(left:10),
                      height: 450,
                       width: 350,
                       child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: text.length,
                          itemBuilder: (context,index){
                            return Amazon(
                              text: text[index],
                              icon: icon[index],
                              icon1: icon1[index],
                            );
                          },
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Amazon extends StatelessWidget {
  const Amazon({
    this.icon,
    this.text,
    this.icon1,
    Key key,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final IconData icon1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Icon(icon,size: 30,color: Colors.black54,),
                  SizedBox(width: 25,),
                  Text(text,style: TextStyle(color: Colors.black,fontSize: 18),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Icon(icon1,size: 40,color: Colors.black54,),
            ),
          ],
        ),
        Container(
          color: Colors.black26,
          height: 2,
          width: 400,
        )
      ],
    );
  }
}
