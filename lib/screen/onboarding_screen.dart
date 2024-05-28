import 'package:ai_assistant/model/onboard.dart';
import 'package:ai_assistant/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../helper/global.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final control = PageController();

    //For first screen 
      final list = [Onboard(title: 'Ask me Anything!', 
      subtitle: 'I can be your buddy, ask me anything that you like and i will help u out.',
       lottie: 'ai_ask_me'),

    // For second screen
       Onboard(title: 'Creating AI to your Reality',
        subtitle: 'I can assist you in anyway, so let\'s go ahead'
        , lottie: 'ai_cute_bot'),
       
       ];


    return Scaffold(
      body:PageView.builder(
        //clicking of button to the next page
        controller: control,
        itemCount: list.length,
        itemBuilder: (context, index) {
          final isLast = index == list.length -1;
        

        return Column(
        children: [
          

          //Adding Lottie animation
          Lottie.asset('assets/lottie/${list[index].lottie}.json', height: mq.height * .6,
          width: isLast? mq.width*100 : null),

          //Title
           Text(
            list[index].title,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w900, letterSpacing: .5
                ),
          ),


          //Adding space
          SizedBox(height: mq.height*.015),

          //Subtitle
          SizedBox(
            width: mq.width *.7,
            child:  Text(
               list[index].subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14.5, letterSpacing: .5, color: Colors.black54),
            ),
          ),


const Spacer(),
          //Dots
          Wrap(
            spacing: 10,
            children: 
            List.generate(list.length,
             (i)=> Container(
              //which dot is active page. 
              width: i == index? 15:10 , 
              height: 8, 
              decoration:  BoxDecoration(color: i == index? Colors.blue : Colors.grey,
               borderRadius: const BorderRadius.all(Radius.circular(5))),
              )),
          ),
          const Spacer(),


          //Button
          ElevatedButton(
          
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[400],
              foregroundColor: Colors.white,
              
              shape: const StadiumBorder(), elevation: 0,
            textStyle:
            const TextStyle(fontSize: 16,
             fontWeight: FontWeight.w500) ,
             minimumSize:Size(mq.width *.4, 50) ),
            onPressed: (){
              if (isLast){

                Get.off(()=> const HomeScreen());
                

              }else{
                control.nextPage(duration: const Duration(milliseconds: 600), curve: Curves.ease);
              }
            }, 

            //if button is last then it will show finish
            child:  Text(isLast? 'Finish':'Next'),
            ),
            const Spacer(flex: 2),
        ],
      );
        
      },
      ) ,
    );
  }
}
