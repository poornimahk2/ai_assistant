import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/screen/home_screen.dart';
import 'package:ai_assistant/widget/custom_loading.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //Waiting for sometime to move to next screen
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_)=> const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    //Initializing device size
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [

          const Spacer(flex: 2),
          Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: EdgeInsets.all(mq.width * .05),
              child:
                  Image.asset('assets/images/logo.png', width: mq.width * .45),
            ),
          ),

//space widget
          const Spacer(),

          const CustomLoading(),

          const Spacer(),
        ],
      ),
    ));
  }
}
