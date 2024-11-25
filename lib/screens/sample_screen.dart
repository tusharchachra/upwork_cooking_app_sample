import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:upwork_cooking_app_sample/controllers/sample_screen_controller.dart';
import 'package:upwork_cooking_app_sample/screens/next_screen.dart';

import '../components/scaffold_dashboard.dart';
import '../constants/constants.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sampleScreenController = Get.put(SampleScreenController());
    return ScaffoldDashboard(
        pageTitle: const Text(
          'Cooking App',
        ),
        bodyWidget: Padding(
          padding: EdgeInsets.all(10.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Filter recipes by diet and preference!',
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.black38, fontSize: 20.w),
              ),
              Obx(
                () => CarouselSlider(
                  disableGesture: false,
                  options: CarouselOptions(
                    initialPage: 0,
                    height: 50.h,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.25.w,
                    scrollPhysics: const BouncingScrollPhysics(),
                    onPageChanged: (index, reason) {
                      //adminDashboardScreenController.selectedDate = index;
                    },
                  ),
                  items: sampleScreenController.options.map((option) {
                    return GestureDetector(
                      onTap: () {
                        sampleScreenController.selectedOption.value = option;
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: 100.w,
                          height: 10.h,
                          alignment: Alignment.center,
                          decoration: getDecoration(
                              item: option, controller: sampleScreenController),
                          child: Text(
                            option.toString(),
                            style: option ==
                                    sampleScreenController.selectedOption.value
                                ? Get.textTheme.displaySmall
                                : Get.textTheme.bodySmall,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Expanded(
                child: Center(
                  child: Obx(
                    () => Text(
                        '${sampleScreenController.selectedOption.value} options appear here'),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: FilledButton(
                      onPressed: () {
                        Get.to(const NextScreen());
                      },
                      child: const Text('Next')))
            ],
          ),
        ));
  }

  BoxDecoration getDecoration(
      {required String item, required SampleScreenController controller}) {
    if (item == controller.selectedOption.value) {
      return Constants.selectedDecoration;
    } else {
      return Constants.unselectedDecoration[controller.options.indexOf(item)];
    }
  }
}
