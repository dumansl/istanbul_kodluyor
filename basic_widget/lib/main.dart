import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String message = "Merhaba ilk uygulama";
    var students = ["Şule Duman", "Leyla Uçar", "Büşra Altunel"];
    return Scaffold(
      appBar: AppBar(
        title: Text(message),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                return Text(students[index]);
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                var message = calculateExam(55);
                showMessage(context, message);
              },
              child: const Text("Sonucu Gör"),
            ),
          ),
        ],
      ),
    );
  }
}

String calculateExam(int puan) {
  String message = "";
  if (puan >= 50) {
    message = "Geçti";
  } else if (puan >= 40) {
    message = "Bütünlemeye kaldı";
  } else {
    message = "Kaldı";
  }
  return message;
}

void showMessage(BuildContext context, String message) {
  var alert = AlertDialog(
    title: const Text("Sınav Sonucu"),
    content: Text(message),
  );
  showDialog(context: context, builder: (BuildContext context) => alert);
}
