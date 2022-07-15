import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {



  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var size,height,width;
    // getting the size of the window
    // size = MediaQuery.of(context).size;
    // height = size.height;
    // width = size.width;

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Deshboard",style: TextStyle(fontSize: 20)),
          leading: Icon(Icons.tv_off),
          actions: [
            IconButton(onPressed: (){print("sajib press");}, icon: Icon(Icons.camera)),
            IconButton(onPressed: null, icon: Icon(Icons.phone))
            ],
          ),
          body:
          Container(
            child: Column(
              children: [
                Text("data"),
                Container(
                  child: Text("this is from second container"),
                )
              ],
            ),

          ),

        ),
      )


    );
  }
}


