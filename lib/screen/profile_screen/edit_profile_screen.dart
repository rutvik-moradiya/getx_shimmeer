import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/profile_controller/edit_profile_controller.dart';

class EditProfileScreen extends GetView<EditProfileController> {
  static const pageId = '/editprofileScreen';

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);

    return MediaQuery(
      data: data.copyWith(
          textScaleFactor:
              data.textScaleFactor > 2.0 ? 1.5 : data.textScaleFactor),
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
                    child: Text(
                      "Account Name: Let's Flutter all day long till down with fancy User Interface",
                      maxLines: 1,
                      textScaleFactor: 1.0,
                      style: TextStyle(fontSize: 24),
                    )),

                maxBlastForce: 10,
                confettiController: controller.confettiController,
                numberOfParticles: 5,
                particleDrag: 0.05,
                // apply drag to the confetti
                emissionFrequency: 0.05,
                // how often it should emit
                gravity: 0.8,
                // gravity - or fall speed
                shouldLoop: false,
                colors: const [
                  Colors.green,
                  Colors.blue,
                  Colors.pink,
                  Colors.amberAccent,
                  Colors.cyan
                ],
              ),
              Container(
                  height: 100,
                  child: Center(
                      child: DropdownButton(
                    // value: controller.selectedName,
                    hint: const Text("usernames"),
                    style: TextStyle(fontSize: 18),
                    // onTap:   controller.getUserList(),

                    onChanged: (newVal) {
                      controller.selectedName.value = newVal.toString();
                    },
                    items: <String>[
                      'Responsable inscripto',
                      'Monotributista',
                      'Exento',
                      'Consumidor final',
                      'No responsable'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ); //DropMenuItem
                    }).toList(),

                    icon: const Icon(Icons.arrow_circle_down),
                  ))),
              Container(
                height: 250,
                child: FutureBuilder(
                  future: controller.getUserList(),
                  initialData: false,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: controller.userList.length,
                          itemBuilder: (context, index) {
                            return ListTile(onTap: (){
                              controller.getUser(controller.userList[index]['id']);
                            },
                              title:
                                  Text("${controller.userList[index]['firstName']}"),
                              subtitle: Text(
                                  "${controller.userList[index]['lastName']}"),
                              leading: Image.network(
                                controller.userList[index]['picture'],
                                width: 50,
                                height: 50,
                                fit: BoxFit.contain,
                              ),
                            );
                          });
                    }
                    return Center(child: const CircularProgressIndicator());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
