
import 'package:flutter/material.dart';
import 'user_form_handling.dart';
class MyApp extends StatelessWidget {
 final String? appTitle;

   const MyApp({ this.appTitle,super.key});
// required is keyword
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // var appTitle='Amirul'; /// immutable state ... String data
    // const is  key word
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const UserFormHandling(),
    );
  }
}