import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kowi/Videos.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,
          size: 25,
          color: Colors.redAccent,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Back',
              style: TextStyle(
                color: Colors.redAccent,
              ),
            ),
            Icon(Icons.drag_indicator_outlined,
              color: Colors.redAccent,
              size: 25,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.redAccent,
                      )
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/vipul1.jpg'),
                  ),
                ),
                Column(
                  children: [
                    Text('10',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text('videos',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('155',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text('followers',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('122',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text('following',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 30),
              child: Text('Shantanu',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 30),
              child: Text('Be Yourself, Everyone Else Is Already Taken',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 30),
              child: Text('shantanu@gmail.com',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Follow',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Message',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Videos(),
          ],
        ),
      ),
    );
  }
}

