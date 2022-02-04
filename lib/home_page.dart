import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Localization"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal:20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Center(
              child: Text("welcome".tr(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 20),)
            )),
            Row(
              children: [
                Expanded(child: MaterialButton(onPressed: (){
                  context.locale = const Locale('en', 'US');
                }, height: 50, color: Colors.green, child: const Text("English", style:  TextStyle(color: Colors.white),),)),
                const SizedBox(width: 5,),
                Expanded(child: MaterialButton(onPressed: (){
                  context.locale = const Locale('ru', 'RU');
                }, height: 50, color: Colors.red, child: const Text("Russian",style: TextStyle(color: Colors.white)),)),
                const SizedBox(width: 5,),
                Expanded(child: MaterialButton(onPressed: (){
                  context.locale = const Locale('uz', 'UZ');
                },  height: 50, color: Colors.blue, child: const Text("Uzbek",style:  TextStyle(color: Colors.white)),)),
                const SizedBox(width: 5,),
                Expanded(child: MaterialButton(onPressed: (){
                  context.locale = const Locale('fr', 'FR');
                },  height: 50, color: Colors.orange, child: const Text("French",style: TextStyle(color: Colors.white)),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
