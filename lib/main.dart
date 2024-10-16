import 'package:database/crud/read.dart';
import 'package:database/crud/update.dart';
import 'package:flutter/material.dart';
import 'package:database/crud/create.dart';
import 'package:database/crud/delete.dart';
import 'package:database/crud/update.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        body: const MyHomePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pemrograman Mobile 3"),
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          backgroundColor: Color.fromARGB(255, 21, 21, 21),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.all(10),
                alignment: AlignmentDirectional.center,
                child: SizedBox(
                  width: 700,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Create()), // Navigasi ke kelas lain
                      );
                    },
                    child: Text("Create Data"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
                    ).copyWith(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                  ),
                )),
            Container(
                margin: EdgeInsets.all(10),
                alignment: AlignmentDirectional.center,
                child: SizedBox(
                  width: 700,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Delete()), // Navigasi ke kelas lain
                      );
                    },
                    child: Text("Delete Data"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
                    ).copyWith(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                  ),
                )),
            Container(
                margin: EdgeInsets.all(10),
                alignment: AlignmentDirectional.center,
                child: SizedBox(
                  width: 700,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Update()), // Navigasi ke kelas lain
                      );
                    },
                    child: Text("Update Data"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
                    ).copyWith(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                  ),
                )),
            Container(
                margin: EdgeInsets.all(10),
                alignment: AlignmentDirectional.center,
                child: SizedBox(
                  width: 700,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ReadData()), // Navigasi ke kelas lain
                      );
                    },
                    child: Text("Read Data"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
                    ).copyWith(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                  ),
                )),
          ],
        ));
  }
}
