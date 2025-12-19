
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/common_widget.dart';
import '../../core/utils/theme/project_color.dart';
import '../../core/utils/theme/theme_style.dart';
import '../screens/Home/item_home_screen.dart';

class ThankuScreen extends StatefulWidget {
  const ThankuScreen({super.key});

  @override
  State<ThankuScreen> createState() => _ThankuScreenState();
}

class _ThankuScreenState extends State<ThankuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      // appBar: AppBar(
      //   leadingWidth: 100,
      //   backgroundColor: whiteColor,
      //   leading: InkWell(
      //     onTap: () {
      //       Navigator.of(context).pop();
      //     },
      //     child: Padding(
      //       padding: const EdgeInsets.only(left: 10),
      //       child: Row(
      //         children: [
      //           Icon(
      //             Icons.arrow_back_ios,
      //             size: 18,
      //           ),
      //           Text("Back",
      //               style: heading2Grey1(context).copyWith(fontSize: 16))
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 200),
              SvgPicture.asset("assets/images/thanku_img.svg"),
              const SizedBox(height: 15),
              Text("Thank you",
                  style: regularBlack(context).copyWith(fontSize: 20)),
              const SizedBox(height: 10),
              Text("Your booking has been sent to the driver.",
                  style: regular3(context).copyWith(fontSize: 14)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: CustomsButtons(
            textColor: blackColor,
            text: "Go to Home >",
            backgroundColor: themeColor,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ItemHomeScreen()));
            }),
      ),
    );
  }
}
