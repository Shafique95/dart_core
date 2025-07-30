
import 'package:flutter/material.dart';

import '../model/user_register_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, this.title, required this.userRegisterModel});
  // {} for only named parameter

  final String? title;
  final UserRegisterModel userRegisterModel;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title.toString()),
        // title: myCommonWidget(),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(),
            Row(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Name :",
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.userRegisterModel.userName ?? "Name not found",
                )
              ],
            ),
            Row(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "User Email :",
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.userRegisterModel.userEmail ?? "User Email Not Found ",
                )
              ],
            ),
            Row(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "User Password :",
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.userRegisterModel.userPassword,
                )
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget myCommonWidget() {
    return Text("Shafiqul Islam ");
  }
}
