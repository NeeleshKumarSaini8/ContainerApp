import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

String osname;
String imagename;

class MyApp extends StatelessWidget {

  web(osname,imagename) async {
    var url = "http://13.127.136.5/cgi-bin/web.py?x=$osname&y=$imagename";
    var r  = await http.get(url);
    print(r.body);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container App'),
          //backgroundColor: Colors.red,
        ),
          body: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              //color: Colors.grey.shade300, 
              decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://raw.githubusercontent.com/NeeleshKumarSaini8/flutter_image/master/docker-head-big%402x.png"),
              fit: BoxFit.cover)
              ),
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://raw.githubusercontent.com/NeeleshKumarSaini8/flutter_image/master/docker-cloud-twitter-card.png"),
                  fit: BoxFit.cover)
                  ),
                //color: Colors.grey.shade300,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      child: TextField(
                        cursorColor: Colors.red,
                        //style: TextStyle(height: 1),
                        decoration: InputDecoration(
                          //icon: Icon(Icons.send),
                          hintText: 'OS name',
                          helperText: 'e.g. date',
                          //counterText: '0 characters',
                          border: OutlineInputBorder(),
                          //contentPadding: EdgeInsets.all(5)
                          filled: true,
                          fillColor: Colors.blue.shade100,
                          //floatingLabelBehavior: FloatingLabelBehavior.always,
                          helperStyle: TextStyle(fontStyle: FontStyle.italic),
                          hintStyle: TextStyle(backgroundColor: Colors.blue.shade200),
                          labelText: 'Textfield',
                          prefixIcon: Icon(Icons.monetization_on),
                          
                        ),
                        onChanged: (val) {
                          osname = val;
                        },
                      ),
                    
                      
                    ),

                    Card(
                        child: TextField(
                        cursorColor: Colors.red,
                        //style: TextStyle(height: 1),
                        decoration: InputDecoration(
                          //icon: Icon(Icons.send),
                          hintText: 'image name',
                          helperText: 'e.g. date',
                          //counterText: '0 characters',
                          border: OutlineInputBorder(
                          ),
                          //contentPadding: EdgeInsets.all(5)
                          filled: true,
                          fillColor: Colors.blue.shade100,
                          //floatingLabelBehavior: FloatingLabelBehavior.always,
                          helperStyle: TextStyle(fontStyle: FontStyle.italic),
                          hintStyle: TextStyle(backgroundColor: Colors.blue.shade200),
                          labelText: 'Textfield',
                          prefixIcon: Icon(Icons.monetization_on),
                          
                        ),
                        onChanged: (val) {
                          imagename = val;
                        },
                      ),
                    ),

                  Card(
                    child: FlatButton(
                      onPressed: () {
                        //print(x);
                        web(osname,imagename); 
                      },
                      child: Text('Run'))
                  )
                  ],
                ),
                
              ),
            ),
            ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}