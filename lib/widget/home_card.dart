import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.withOpacity(.2),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(
        Radius.circular(15)
      )),
      elevation: 0,
      child: Row(
      children: [

        Lottie.asset('assets/lottie/ai_chatbox.json', width : mq.width *.35),

        const Text('AI Chatbot',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),),
      ],
    ) ,);
  }
}