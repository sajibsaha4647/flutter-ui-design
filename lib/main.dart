import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
      
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size,height,width;
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return SafeArea(
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: height*0.2,
                        width: 200,
                        color:Colors.amberAccent,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 200,
                        width: 200,
                        color:Colors.amberAccent,
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 200,
                        width: 200,
                        color:Colors.amberAccent,
                      ),
                      SizedBox(width: 10,),
                    ],

                  ),
                ),
                Expanded(
                    child:ListView(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color:Colors.amberAccent,
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 200,
                              width: 200,
                              color:Colors.amberAccent,
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 200,
                              width: 200,
                              color:Colors.amberAccent,
                            ),
                            SizedBox(height: 10,),
                          ],
                        )
                      ],
                    )
                ),
                Expanded(child: ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(child:Icon( Icons.message)),
                      title: Text("this is a title"),
                      subtitle: Text("this is subtitle text"),
                      trailing: CircleAvatar(child:Icon( Icons.camera)),
                    ),
                    ListTile(
                      leading: CircleAvatar(child:Icon( Icons.message)),
                      title: Text("this is a title"),
                      subtitle: Text("this is subtitle text"),
                      trailing: CircleAvatar(child:Icon( Icons.camera)),
                    ),
                    ListTile(
                      leading: CircleAvatar(child:Icon( Icons.message)),
                      title: Text("this is a title"),
                      subtitle: Text("this is subtitle text"),
                      trailing: CircleAvatar(child:Icon( Icons.camera)),
                    ),
                    ListTile(
                      leading: CircleAvatar(child:Icon( Icons.message)),
                      title: Text("this is a title"),
                      subtitle: Text("this is subtitle text"),
                      trailing: CircleAvatar(child:Icon( Icons.camera)),
                    ),
                    ListTile(
                      leading: CircleAvatar(child:Icon( Icons.message)),
                      title: Text("this is a title"),
                      subtitle: Text("this is subtitle text"),
                      trailing: CircleAvatar(child:Icon( Icons.camera)),
                    ),
                  ],
                ))
              ],
            ),

          ),
        )

    );
  }
}



