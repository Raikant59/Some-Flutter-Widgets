import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // This show how theme is created in the flutter app.
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          textTheme: const TextTheme(
              headlineSmall: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
          )
      ),
      home: const MyHomePage(title: 'Flutter Homepage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {


/*   This code also for Listview.
  //  var arrNames=['Pawan','Dev','Nitish','Raikant'];
  //  var Numbers=['8191821409','8191821409','7247815589','9368035646'];
*/



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Text('My name is Raikant'),

      // BASIC & MAIN STRUCTURE WIDGETS


      // 1. Text Widgets Text('.....',style: Textstyle(fontsize: ,fontweight: etc)),
      // 2. Container(child: // In child you can add another widgets inside the container),
      // 3. Image.assets('Path of Image'),
      // 4. Center(child: //add another widget that you want to in center),
      // 5. Types of button:-
         // ElevatedButton(onPressed: (){ write logic here that you want to perform by using button }, child: // contain text widget here)
         // TextButton same format
         // OutlinedButton same format.



      /*
      // INTERMEDIATE AND ADVANCED WIDGETS.


      // This code is related to row and column Widget.
      Container(
        width: 302,
        height: 130,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Raikant Chaudhary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
              Text(" I am a Btech Student \nat Galgotias University",style: TextStyle(fontSize: 10),),
              Text("170 Reviews Positive",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
              Text("No.1 Student in Coding",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
          ],
        ),
        Container(
            width: 151,
            height: 130,
            alignment: Alignment.topRight,
            child: Image.asset('assets/images/Applicant photo.jpg'),
        ),
        ],
        ),
      ),



      //This code is related to Inkwell Widget.
      Center(
        child: InkWell(
          onTap: (){
            print("widget is tapped!");
          },
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blueGrey,
            child: Center(child: InkWell(
                onTap: (){
                  print("Text is Tapped!");
                },
                child: Text("Click me!",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            ),
          ),
        ),
      ),



      // This code is related to Scrollview Widget.
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:const EdgeInsets.only(bottom: 11) ,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right:  12),
                        height: 200,
                        width: 200,
                        color: Colors.yellow,
                      ),
                      Container(
                        margin: EdgeInsets.only(right:  12),
                        height: 200,
                        width: 200,
                        color: Colors.orange,
                      ),
                      Container(
                        margin: EdgeInsets.only(right:  12),
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right:  12),
                        height: 200,
                        width: 200,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                height: 200,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),



      // This code is related to Listview with ListTile Widget.
      ListView.separated(itemBuilder: (context, index){
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrNames[index]),
          subtitle: Text(Numbers[index]),
          trailing: Icon(Icons.add_box),
        );
      }, separatorBuilder: (context , index){
        return Divider(height: 50,thickness: 1,);
      }, itemCount: arrNames.length)



      // This code is related to CircleAvatar Widget.
      Center(
        child: CircleAvatar(
          child: Container(
            width: 60,
            height: 60,
           child: Column(
            children: [ Container(
               width: 40,
              height: 40,
              child: Image.asset('assets/images/Applicant photo.jpg'),
             ),
              Text('Raikant',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
            ]
           ),
          ),
          backgroundColor: Colors.green,
          maxRadius: 60,
        ),
      )



      // This code is related to how to use theme in app + if we want to another attributes or styling to so how we can add that ?
      Text('Hello World!',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.blue)),



      // This Code is related to Card Widget.
      Center(child: Card(
        color: Colors.grey,
          shape: RoundedRectangleBorder(),
          elevation: 20,
          shadowColor: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Damnagar',style: Theme.of(context).textTheme.headlineSmall),
          )
      )
      )



      // This code is related to Stack Widget.
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,

                color: Colors.blueAccent,
                child: Text('Hello',style: TextStyle(color: Colors.black,),)),
            Stack(children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.grey,
              ),
              Container(
                height: 75,
                width: 75,
                color: Colors.orange,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
              ),

            ],),
          ],
        ),
      )



 */


    );
  }
}

