import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:untitled/controller/profile_controller/edit_profile_controller.dart';
import 'package:untitled/screen/profile_screen/simpletix_screen.dart';

class EditProfileScreen extends GetView<EditProfileController> {
  static const pageId = '/editprofileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: controller.isLoad
            ? SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.arrow_back,
                          color: Colors.black45,
                          size: 28,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "Event \nDetails",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              decoration: const InputDecoration(
                                  filled: true,
                                  disabledBorder: InputBorder.none,
                                  fillColor: Colors.black12,
                                  hintText: "Event Title",
                                  prefixIcon: Icon(Icons.texture_outlined),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide.none))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            width: Get.width,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(20)),
                            child: DropdownButton2(
                              buttonDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              focusColor: Colors.black45,
                              dropdownMaxHeight: 250,

                              hint: Row(
                                children: [
                                  Icon(Icons.home),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      'Venue',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Theme.of(context).hintColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              items: controller.items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              // value: controller.items,
                              onChanged: (value) {
                                controller.selectedValue = value as String;
                              },
                              buttonHeight: 60,
                              buttonWidth: Get.width,
                              dropdownWidth: 300,
                              dropdownPadding: EdgeInsets.only(left: 10),
                              itemHeight: 40,
                              scrollbarRadius: const Radius.circular(40),
                              scrollbarThickness: 6,
                              alignment: Alignment.bottomRight,
                              scrollbarAlwaysShow: true,
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Obx(() {
                          return Center(
                            child: ProgressButton.icon(
                                maxWidth: Get.width,
                                minWidth: Get.width,
                                iconedButtons: {
                                  ButtonState.idle: IconedButton(
                                      text: "Send",
                                      icon:
                                          Icon(Icons.send, color: Colors.white),
                                      color: Colors.grey),
                                  ButtonState.loading: IconedButton(
                                      text: "Loading", color: Colors.blue),
                                  ButtonState.fail: IconedButton(
                                      text: "Failed",
                                      icon: Icon(Icons.cancel,
                                          color: Colors.white),
                                      color: Colors.red.shade300),
                                  ButtonState.success: IconedButton(
                                      text: "Success",
                                      icon: Icon(
                                        Icons.check_circle,
                                        color: Colors.white,
                                      ),
                                      color: Colors.green.shade400)
                                },
                                onPressed: () {
                                  controller.onPressed();
                                },
                                state: controller.stateOnlyText.value),
                          );
                        }),
                        Row(
                          children: [
                            Icon(Icons.arrow_back),
                            InkWell(
                                child: Text(
                              "Back",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            )),
                            Spacer(),
                            Stack(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 3,
                                    backgroundColor: Colors.white,
                                    valueColor:
                                        new AlwaysStoppedAnimation<Color>(
                                            Colors.green),
                                    value: controller.progressValue,
                                  ),
                                ),
                                Positioned(
                                  top: 7,
                                  left: 8,
                                  child: InkWell(
                                    onTap: () {
                                      controller.stateOnlyText.value =
                                          ButtonState.success;
                                    },
                                    child: Container(
                                      height: 65,
                                      width: 65,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(60)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    Positioned(
                                        child: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.purple,
                                      size: 40,
                                    )),
                                    Positioned(
                                      right: 0,
                                      top: 0,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 20,
                                        width: 20,
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Text(
                                          "5",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total :",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    Text(
                                      "\$16,83",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 24),
                                    )
                                  ],
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Select other Event",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                            width: 2, color: Colors.blue))),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Checkout",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 500,
                          child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Dismissible(
                                  direction: DismissDirection.horizontal,
                                  secondaryBackground: slideRightBackground(),
                                  background: slideLeftBackground(),
                                  confirmDismiss: (direction) async {
                                    if (direction ==
                                        DismissDirection.endToStart) {
                                      print("SucessFully Scrolled $index");
                                    } else if (direction ==
                                        DismissDirection.startToEnd) {
                                      print("Delete Scrolled $index");
                                    }
                                  },
                                  key: Key("$index key"),
                                  child: InkWell(
                                    onTap: () {
                                      print("$index printed");
                                    },
                                    child: ListTile(
                                      focusColor: Colors.grey,
                                      tileColor: Colors.blueGrey,
                                      title: Text("Hello $index"),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Get.toNamed(SimpleTixScreen.pageId);
                            },
                            child: Text("SImpleTix_screen"))
                      ],
                    ),
                  ),
                ),
              )
            : SafeArea(child: LinearProgressIndicator()));
  }
}

Widget slideRightBackground() {
  return Container(
    color: Colors.green,
    child: Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.check,
            color: Colors.white,
          ),
        ],
      ),
      alignment: Alignment.centerLeft,
    ),
  );
}

Widget slideLeftBackground() {
  return Container(
    color: Colors.red,
    child: Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.close,
            color: Colors.white,
          ),
        ],
      ),
      alignment: Alignment.centerLeft,
    ),
  );
}
