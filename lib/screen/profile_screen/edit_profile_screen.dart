import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/controller/profile_controller/edit_profile_controller.dart';
import 'package:get/get.dart';
import 'package:confetti/confetti.dart';
class EditProfileScreen extends GetView<EditProfileController>{
  static const pageId = '/editprofileScreen';

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);

    return  MediaQuery(
      data: data.copyWith(
          textScaleFactor: data.textScaleFactor > 2.0 ? 1.5 : data.textScaleFactor),

      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConfettiWidget(
                // displayTarget: false,
                blastDirectionality: BlastDirectionality.explosive,
                child: Container(
                    decoration: BoxDecoration(color: Colors.cyan),
                    child:  Text("Account Name: Let's Flutter all day long till down with fancy User Interface",
                        maxLines: 1,
                      textScaleFactor: 1.0,style: TextStyle(fontSize: 24),)),

                maxBlastForce: 10,
                confettiController: controller.confettiController,
                numberOfParticles: 5,
                particleDrag: 0.05, // apply drag to the confetti
                emissionFrequency: 0.05, // how often it should emit
                 gravity: 0.8, // gravity - or fall speed
                shouldLoop: false,
                colors: const [
                  Colors.green,
                  Colors.blue,
                  Colors.pink,
                  Colors.amberAccent,
                  Colors.cyan
                ],
),
              ElevatedButton(onPressed: (){
                controller.getUserList();
              }, child: const Text("CLick")),
          Center(
            child:  DropdownButton(
              items: controller.userList.map((item) {
                return  DropdownMenuItem(
                  child:  Text(item['firstName']),
                  value: item['firstName'].toString(),
                );
              }).toList(),
              onChanged: (newVal) {
                controller.selectedName.value = newVal.toString();
              },
              value: controller.selectedName,
            ),
          ),
            ],
          ),
        ),

      ),
    );
  }

}