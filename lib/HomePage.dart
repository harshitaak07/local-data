// ignore: file_names
import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is a local json app')
      ),
      body: Center(
        child: FutureBuilder(
          future: DefaultAssetBundle
            .of(context)
            .loadString('local_json/mydetails.json'),
          builder: (context, snapshot) {
            // decode json
            var mydata = json.decode(snapshot.data.toString());

            return ListView.builder(
              itemBuilder: (BuildContext context, int index){
                return Card(
                child: Column(
                  children: [
                    // ignore: prefer_interpolation_to_compose_strings
                    Text("Name:" + mydata[index]['name']),
                    // ignore: prefer_interpolation_to_compose_strings
                    Text("Age:" + mydata[index]['age']),
                    // ignore: prefer_interpolation_to_compose_strings
                    Text("City:" + mydata[index]['city']),
                    // ignore: prefer_interpolation_to_compose_strings
                    Text("Hobbies:" + mydata[index]['hobbies']),
                  ],
                ),
              );
              },
              itemCount: mydata == null ? 0 : mydata.length,
            );
          },
          ),
      ),
      );
  }
}