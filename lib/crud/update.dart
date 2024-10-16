import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Update extends StatefulWidget {
  const Update({Key? key}) : super(key: key);

  @override
  UpdateState createState() => UpdateState();
}

class UpdateState extends State<Update> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();

  void updatedata() {
    String url = "http://localhost/flutter/update.php";

    http.post(Uri.parse(url), body: {
      "id": _idController.text,
      "username": _usernameController.text,
      "alamat": _alamatController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Data"),
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
            transformAlignment: AlignmentDirectional.center,
            padding: EdgeInsets.only(top: 30, bottom: 2),
            child: Text("Ubah Data"),
          ),
          Container(
            width: double.infinity,
            transformAlignment: AlignmentDirectional.center,
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 30, right: 30),
            child: TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          Container(
            width: double.infinity,
            transformAlignment: AlignmentDirectional.center,
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 30, right: 30),
            child: TextFormField(
              controller: _alamatController,
              decoration: const InputDecoration(
                  labelText: 'Alamat Rumah',
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
                onPressed: updatedata,
                child: Text("Update"),
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
