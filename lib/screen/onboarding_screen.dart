import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          

          //Adding Lottie animation
          Lottie.asset('assets/lottie/ai_ask_me.json', height: mq.height * .6),

          //Title
          const Text(
            'Ask me Anything!',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: .5
                ),
          ),


          //Adding space
          SizedBox(height: mq.height*.015),

          //Subtitle
          SizedBox(
            width: mq.width *.7,
            child: const Text(
              'I can be your buddy, ask me anything that you like and i will help u out.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13.5, letterSpacing: .5, color: Colors.black54),
            ),
          ),


const Spacer(),
          //Dots
          Wrap(
            spacing: 10,
            children: 
            List.generate(2,
             (i)=> Container(
              width:10 , 
              height: 8, 
              decoration: const BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(5))),
              )),
          ),
          const Spacer(),


          //Button
          ElevatedButton(
          
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[400],
              
              shape: const StadiumBorder(), elevation: 0,
            textStyle:
            const TextStyle(fontSize: 16,
            color: Colors.black87,
             fontWeight: FontWeight.w500) ,
             minimumSize:Size(mq.width *.4, 50) ),
            onPressed: (){}, 
            child: const Text('Next')),
            const Spacer(flex: 2),
        ],
      ),
    );
  }
}
