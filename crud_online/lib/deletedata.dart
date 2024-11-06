import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeleteData extends StatefulWidget {
  const DeleteData({super.key});

  @override
  State<DeleteData> createState() => _DeleteDataState();
}

class _DeleteDataState extends State<DeleteData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delete Data"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () async {
          var response = await http.delete((Uri.parse("https://reqres.in/api/users/2")));
          print(response.statusCode);
          if ( response.statusCode==204 ){
            print("BERHASIL DELETE");
          }else{
            print("GAGAL DELETE");
          }
        }, child: Text("DELETE")),
      ),
    );
  }
}