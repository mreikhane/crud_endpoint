import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostData extends StatefulWidget {
  const PostData({super.key});

  @override
  State<PostData> createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameC = TextEditingController();
    TextEditingController jobC = TextEditingController();
    var resultResponse = "Belum ada data";
    return Scaffold(
      appBar: AppBar(
        title: Text("POST DATA"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameC,
            decoration: InputDecoration(
                label: Text("Name"), border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: jobC,
            decoration: InputDecoration(
                label: Text("Email"), border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                var response = await http.post(
                    Uri.parse("https://reqres.in/api/users"),
                    body: {"Name": nameC.text, "job": jobC.text});

                print(response.body);
                setState(() {
                  resultResponse = response.body;
                });
              },
              child: Text("SUBMIT")),
          SizedBox(
            height: 20,
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Text(resultResponse)
        ],
      ),
    );
  }
}
