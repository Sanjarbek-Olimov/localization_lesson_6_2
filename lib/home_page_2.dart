import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage2 extends StatefulWidget {
  static const String id = "home_page_2";
  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal:20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Center(
              child: Text("flutter".tr(), textAlign: TextAlign.center, style: const TextStyle(fontSize: 20),)
            )),
            Row(
              children: [
                Expanded(child: MaterialButton(onPressed: (){
                  context.locale = const Locale('en', 'US');
                }, height: 50, color: Colors.green, child: const Text("English", style: TextStyle(color: Colors.white),),)),
                const SizedBox(width: 5,),
                Expanded(child: MaterialButton(onPressed: (){
                  context.locale = const Locale('kr', 'KR');
                }, height: 50, color: Colors.red, child: const Text("Korean",style:  TextStyle(color: Colors.white)),)),
                const SizedBox(width: 5,),
                Expanded(child: MaterialButton(onPressed: (){
                  context.locale = const Locale('jp', 'JP');
                },  height: 50, color: Colors.blue, child: const Text("Japanese",style: TextStyle(color: Colors.white)),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
