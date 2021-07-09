
import 'package:firebase_kboy_210709/main_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Firebase210709",
      theme: ThemeData.dark(),
      home: ChangeNotifierProvider<MainModel>(
        create: (_)=>MainModel(),
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.add),
            title: Text("FlutterDemo"),
          ),
          body: Consumer<MainModel>(
            builder: (context,model,child) {
              return Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      model.asanoText, //model
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        //推す処理
                        model.changeAsanoText();
                      },
                      child: Text("Push"),
                    )
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
