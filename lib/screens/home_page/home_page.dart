import 'package:api_chunish_uchun/models/model.dart';
import 'package:api_chunish_uchun/service/userService.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Valyuta"),
      ),
      body: FutureBuilder(
        future: ServiseUsers.getUsers(),
        builder: (context, AsyncSnapshot<List<CourseModel>> snap) {
          if (!snap.hasData) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            ));
          } else if (snap.hasError) {
            return const Center(
              child: Text("Error data"),
            );
          } else {
            return ListView.builder(
              itemBuilder: (_, __) {
                return Card(
                  child: ListTile(
                    title: Text(snap.data![__].cbPrice.toString()),
                  ),
                );
              },
              itemCount: snap.data!.length,
            );
          }
        },
      ),
    );
  }
}
