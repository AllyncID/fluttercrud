import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ReadData extends StatefulWidget {
  const ReadData({Key? key}) : super(key: key);

  @override
  _ReadState createState() => _ReadState();
}

class _ReadState extends State<ReadData> {
  Future readdata() async {
    var url = "http://localhost/flutter/read.php";

    var response = await http.get(Uri.parse(url));
    print(response.body);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Read Data"),
          titleTextStyle: const TextStyle(fontSize: 20, color: Colors.white),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 34, 34, 34),
        ),
        body: FutureBuilder(
            future: readdata(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              }
              return snapshot.hasData
                  ? ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        List list = snapshot.data;
                        return Card(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    list[index]['username'],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    list[index]['alamat'],
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ));
                      })
                  : const Center(
                      child: CircularProgressIndicator(),
                    );
            }));
  }
}
