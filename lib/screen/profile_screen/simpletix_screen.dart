import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/profile_controller/simpletix_controller.dart';

class SimpleTixScreen extends GetView<simpleTixController> {
  static const pageId = '/simpleTixScreen';

  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // give the tab bar a height [can change hheight to preferred height]
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
                child: Obx((){
                  return TabBar(

                    automaticIndicatorColorAdjustment: true,
                    controller: controller.tabController,
                    // give the indicator a decoration (color and border radius)
                    indicator: controller.currentIndex.value == 0 ? BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      color: Colors.blue,
                    ) : BoxDecoration(
                      color: Colors.red,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      // first tab [you can add an icon using the icon property]
                      Tab(
                        text: 'Sell',
                      ),

                      // second tab [you can add an icon using the icon property]
                      Tab(
                        text: 'Admit',
                      ),
                      Tab(
                        text: 'Product',
                      ),

                      // second tab [you can add an icon using the icon property]
                      Tab(
                        text: 'Orders',
                      ),
                    ],
                  );
                })
              ),
              // tab bar view here
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: [
                    // first tab bar view widget
                    Center(
                      child: Text(
                        'Place Bid',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    // second tab bar view widget
                    Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ), Center(
                      child: Text(
                        'Place Bid',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    // second tab bar view widget
                    Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
