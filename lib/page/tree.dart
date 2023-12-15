import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:news/page/homepage.dart';
import 'package:news/page/login.dart';
import 'package:news/page/splash.dart';
import 'package:news/service/auth.dart';


Future<void> main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( tree());
}
class tree extends StatefulWidget {
  tree({super.key});

  @override
  State<tree> createState() => _treeState();
}

class _treeState extends State<tree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: Auth().authStateChanges,
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Splash());
            }
      if(snapshot.hasData){
      return Homepage();
      }else{
       return Login();
      }
    },);
  }
}