import 'package:afyasasa/plugin.dart';
import 'package:flutter/material.dart';

ThemeData userTheme() {
  final ThemeData base = ThemeData();
  return base.copyWith(
    hintColor: Colors.black,
    primaryColor: Colors.black,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: Colors.black,
      ),
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 12.0,
      ),
    ),
  );
}

class MyCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCardScreen(title: 'Verify Account'),
    );
  }
  
}

class MyCardScreen extends StatefulWidget {
  MyCardScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyCardScreenState createState() => _MyCardScreenState();

}

class _MyCardScreenState extends State<MyCardScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', color: Color(0xFF00284B));
  final cardColor = Color(0xFF003B5B);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("My Wallet",
        style: TextStyle(color: Colors.black),),
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
        color: Colors.black,
        onPressed: () => {
          Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyPayments())),
        },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Image.asset('assets/card.svg'),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 4.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Column(
              children: <Widget>[
                Text("Total Balance", textAlign: TextAlign.right,),
                Text("KES 56,809", textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0),)
              ],
            )
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(28.0, 8.0, 28.0, 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Latest Card Transactions",
                  style: TextStyle(color: Colors.black),
                ),
              ]
            ),
          ),


          Container(
            margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 4.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Online Transaction:"),
                  Padding(padding:EdgeInsets.all(8.0)),
                ],
              ),
              SizedBox(height:5.0),
              Row(
                children: <Widget>[
                  Text("KES 1,500.00"),
                  Spacer(),
                  Text("15/04/2020"),
                  Spacer(),
                  Text("04:39PM"),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                  Padding(padding:EdgeInsets.all(8.0)),
                ],
              ),
              Padding(
              padding:EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
              child:Container(
              height:1.0,
              color:Colors.black,),),
              
              SizedBox(height:5.0),
              Row(
                children: <Widget>[
                  Text("Wellbaby Vaccine:"),
                  Padding(padding:EdgeInsets.all(8.0)),
                ],
              ),
              SizedBox(height:5.0),
              Row(
                children: <Widget>[
                  Text("KES 2,500.00"),
                  Spacer(),
                  Text("15/04/2020"),
                  Spacer(),
                  Text("06:34PM"),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                  Padding(padding:EdgeInsets.all(8.0)),
                ],
              ),
              Padding(
              padding:EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
              child:Container(
              height:1.0,
              color:Colors.black,),),
              
              SizedBox(height:5.0),
              Row(
                children: <Widget>[
                  Text("Home Visit:"),
                  Padding(padding:EdgeInsets.all(8.0)),
                ],
              ),
              SizedBox(height:5.0),
              Row(
                children: <Widget>[
                  Text("KES 6,000.00"),
                  Spacer(),
                  Text("15/04/2020"),
                  Spacer(),
                  Text("10:19AM"),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios),
                  Padding(padding:EdgeInsets.all(8.0)),
                ],
              ),
              Padding(
              padding:EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
              child:Container(
              height:1.0,
              color:Colors.black,),),
              
              ],
              
          ),
          ),
          
        ],
        
      ),

    );

  }
  
}