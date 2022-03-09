import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/profile_controller/profile_controller.dart';
import 'package:untitled/screen/profile_screen/edit_profile_screen.dart';

class ProfileScreen extends GetView<ProfileController> {
  static const pageId = '/profileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80"),
                      fit: BoxFit.cover)),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Container(
                  alignment: const Alignment(0.0, 2.5),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                    radius: 60.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              controller.userDetails.value.isEmpty
                  ? controller.userDetails.value.toString()
                  : "Name",
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueGrey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Belgaum, India",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Developer at XYZ Company",
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 10,
            ),
            const Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                elevation: 2.0,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                    child: Text(
                      "Skill Sets",
                      style: TextStyle(
                          letterSpacing: 2.0, fontWeight: FontWeight.w300),
                    ))),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "App Developer || Digital Marketer",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Text(
                            "Project",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "15",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Text(
                            "Followers",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "2000",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.confettiController.play();
                  },
                  child: const Text(
                    "Contact me",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(EditProfileScreen.pageId);
                  },
                  child: const Text(
                    "Portfolio",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 200,
              width: 250,
              child: ConfettiWidget(
                // displayTarget: false,
                blastDirectionality: BlastDirectionality.explosive,
                child: Text("Congratulations"),
                createParticlePath: controller.drawStar,
                maxBlastForce: 10,
                confettiController: controller.confettiController,
                numberOfParticles: 5,
                particleDrag: 0.05,
                // apply drag to the confetti
                emissionFrequency: 0.05,
                // how often it should emit
                // numberOfParticles: 2, // number of particles to emit
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
            ),
            ElevatedButton(
                onPressed: () async {
                  controller.isLoading.value = true;

                  await Future.delayed(const Duration(seconds: 5), () {
                    controller.isLoading.value = false;
                  });
                  // controller.getUserList();
                },
                child: (controller.isLoading.value)
                    ? const SizedBox(
                        child: CircularProgressIndicator(),
                      )
                    : SizedBox(child: const Text("CLick"))),
            CustomPaint(
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Container(
                  width: Get.width,
                  // height: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 182,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Order",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "O-ECB95631A-3",
                                    style: TextStyle(
                                        color: Colors.white24, fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Date",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "03/08/2022",
                                    style: TextStyle(
                                        color: Colors.white24, fontSize: 20),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Payment Type",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "Free",
                                    style: TextStyle(
                                        color: Colors.white24, fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Order Total",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "\$0.0",
                                    style: TextStyle(
                                        color: Colors.white24, fontSize: 20),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 10.0),
                        child: Row(
                          children: List.generate(25, (index) {
                            return Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  height: 2,
                                  width: 10,
                                  color: Color(0XFFf2f2f2),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Ticket Type",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Price",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Qty",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Flex Event 20 \nApr1 Section:\nOne",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),),
                                Text("0.0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),),
                                Text("1",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),),
                                Text("0.0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Flex Event 20 \nApr1 Section:\nOne",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),),
                                Text("0.0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),),
                                Text("1",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),),
                                Text("0.0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),),
                              ],
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              size:
                  Size(Get.width, (Get.width * 1.1226666666666667).toDouble()),
              //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            )
          ],
        ),
      ),
    ));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.05333333, size.height * 0.06413302);
    path_0.cubicTo(
        size.width * 0.05333333,
        size.height * 0.05101473,
        size.width * 0.06527253,
        size.height * 0.04038005,
        size.width * 0.08000000,
        size.height * 0.04038005);
    path_0.lineTo(size.width * 0.9200000, size.height * 0.04038005);
    path_0.cubicTo(
        size.width * 0.9347280,
        size.height * 0.04038005,
        size.width * 0.9466667,
        size.height * 0.05101473,
        size.width * 0.9466667,
        size.height * 0.06413302);
    path_0.lineTo(size.width * 0.9466667, size.height * 0.4034632);
    path_0.cubicTo(
        size.width * 0.9466667,
        size.height * 0.4097625,
        size.width * 0.9438560,
        size.height * 0.4158052,
        size.width * 0.9388560,
        size.height * 0.4202589);
    path_0.lineTo(size.width * 0.9255227, size.height * 0.4321354);
    path_0.cubicTo(
        size.width * 0.9151093,
        size.height * 0.4414109,
        size.width * 0.9151093,
        size.height * 0.4564513,
        size.width * 0.9255227,
        size.height * 0.4657268);
    path_0.lineTo(size.width * 0.9388560, size.height * 0.4776033);
    path_0.cubicTo(
        size.width * 0.9438560,
        size.height * 0.4820570,
        size.width * 0.9466667,
        size.height * 0.4880998,
        size.width * 0.9466667,
        size.height * 0.4943990);
    path_0.lineTo(size.width * 0.9466667, size.height * 0.9168646);
    path_0.cubicTo(
        size.width * 0.9466667,
        size.height * 0.9299834,
        size.width * 0.9347280,
        size.height * 0.9406176,
        size.width * 0.9200000,
        size.height * 0.9406176);
    path_0.lineTo(size.width * 0.08000000, size.height * 0.9406176);
    path_0.cubicTo(
        size.width * 0.06527227,
        size.height * 0.9406176,
        size.width * 0.05333333,
        size.height * 0.9299834,
        size.width * 0.05333333,
        size.height * 0.9168646);
    path_0.lineTo(size.width * 0.05333333, size.height * 0.4967743);
    path_0.cubicTo(
        size.width * 0.05333333,
        size.height * 0.4904751,
        size.width * 0.05614293,
        size.height * 0.4844323,
        size.width * 0.06114373,
        size.height * 0.4799786);
    path_0.lineTo(size.width * 0.07447707, size.height * 0.4681021);
    path_0.cubicTo(
        size.width * 0.08489120,
        size.height * 0.4588266,
        size.width * 0.08489120,
        size.height * 0.4437862,
        size.width * 0.07447707,
        size.height * 0.4345107);
    path_0.lineTo(size.width * 0.06114373, size.height * 0.4226342);
    path_0.cubicTo(
        size.width * 0.05614293,
        size.height * 0.4181805,
        size.width * 0.05333333,
        size.height * 0.4121378,
        size.width * 0.05333333,
        size.height * 0.4058385);
    path_0.lineTo(size.width * 0.05333333, size.height * 0.06413302);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffF1F1F1).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.06000000, size.height * 0.06413302);
    path_1.cubicTo(
        size.width * 0.06000000,
        size.height * 0.05429430,
        size.width * 0.06895440,
        size.height * 0.04631829,
        size.width * 0.08000000,
        size.height * 0.04631829);
    path_1.lineTo(size.width * 0.9200000, size.height * 0.04631829);
    path_1.cubicTo(
        size.width * 0.9310453,
        size.height * 0.04631829,
        size.width * 0.9400000,
        size.height * 0.05429430,
        size.width * 0.9400000,
        size.height * 0.06413302);
    path_1.lineTo(size.width * 0.9400000, size.height * 0.4034632);
    path_1.cubicTo(
        size.width * 0.9400000,
        size.height * 0.4081876,
        size.width * 0.9378933,
        size.height * 0.4127197,
        size.width * 0.9341413,
        size.height * 0.4160594);
    path_1.lineTo(size.width * 0.9208080, size.height * 0.4279359);
    path_1.cubicTo(
        size.width * 0.9077920,
        size.height * 0.4395321,
        size.width * 0.9077920,
        size.height * 0.4583302,
        size.width * 0.9208080,
        size.height * 0.4699264);
    path_1.lineTo(size.width * 0.9341413, size.height * 0.4818029);
    path_1.cubicTo(
        size.width * 0.9378933,
        size.height * 0.4851425,
        size.width * 0.9400000,
        size.height * 0.4896746,
        size.width * 0.9400000,
        size.height * 0.4943990);
    path_1.lineTo(size.width * 0.9400000, size.height * 0.9168646);
    path_1.cubicTo(
        size.width * 0.9400000,
        size.height * 0.9267031,
        size.width * 0.9310453,
        size.height * 0.9346793,
        size.width * 0.9200000,
        size.height * 0.9346793);
    path_1.lineTo(size.width * 0.08000000, size.height * 0.9346793);
    path_1.cubicTo(
        size.width * 0.06895440,
        size.height * 0.9346793,
        size.width * 0.06000000,
        size.height * 0.9267031,
        size.width * 0.06000000,
        size.height * 0.9168646);
    path_1.lineTo(size.width * 0.06000000, size.height * 0.4967743);
    path_1.cubicTo(
        size.width * 0.06000000,
        size.height * 0.4920499,
        size.width * 0.06210720,
        size.height * 0.4875178,
        size.width * 0.06585787,
        size.height * 0.4841781);
    path_1.lineTo(size.width * 0.07919120, size.height * 0.4723017);
    path_1.lineTo(size.width * 0.07447707, size.height * 0.4681021);
    path_1.lineTo(size.width * 0.07919120, size.height * 0.4723017);
    path_1.cubicTo(
        size.width * 0.09220853,
        size.height * 0.4607055,
        size.width * 0.09220880,
        size.height * 0.4419074,
        size.width * 0.07919120,
        size.height * 0.4303112);
    path_1.lineTo(size.width * 0.06585787, size.height * 0.4184347);
    path_1.cubicTo(
        size.width * 0.06210720,
        size.height * 0.4150950,
        size.width * 0.06000000,
        size.height * 0.4105629,
        size.width * 0.06000000,
        size.height * 0.4058385);
    path_1.lineTo(size.width * 0.06000000, size.height * 0.06413302);
    path_1.close();

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03;
    paint_1_stroke.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_stroke);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Colors.grey.withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
