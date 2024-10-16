import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Delete extends StatefulWidget {
  const Delete({Key? key}) : super(key: key);

  @override
  DeleteState createState() => DeleteState();
}

class DeleteState extends State<Delete> {
  final TextEditingController _idController = TextEditingController();

  void deletedata() {
    String url = "http://localhost/flutter/delete.php";

    http.post(Uri.parse(url), body: {"id": _idController.text});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delete Data"),
        titleTextStyle: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 34, 34, 34),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            transformAlignment: AlignmentDirectional.center,
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 30, right: 30),
            child: TextFormField(
              controller: _idController,
              decoration: const InputDecoration(
                  labelText: 'Masukan ID',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            transformAlignment: AlignmentDirectional.center,
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 30, right: 30),
            child: SizedBox(
              child: ElevatedButton(
                onPressed: deletedata,
                child: Text("Delete"),
                style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color.fromARGB(255, 36, 36, 36))
                    .copyWith(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
