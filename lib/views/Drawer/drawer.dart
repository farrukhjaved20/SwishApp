import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/views/Drawer/pages/Charginghistory/charginghistory.dart';
import 'package:swish_app/views/Drawer/pages/RFIDCards/cardone.dart';
import 'package:swish_app/views/Drawer/pages/chats/chat.dart';
import 'package:swish_app/views/Drawer/pages/notifications/notfication_screen.dart';
import 'package:swish_app/views/Drawer/pages/settings/settings_screen.dart';
import 'package:swish_app/views/Drawer/pages/yourDetails/yourdetails.dart';
import 'package:swish_app/views/home/homescreen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.height285,
      child: Drawer(
        backgroundColor: Colors.white,
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    iconSize: Dimensions.height30,
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/images/logo12.PNG',
                    height: Dimensions.paddingVer60,
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Center(
                  child: Text('Johanna Doe',
                      style: StyleText.getBoldStyle(
                        fontSize: Dimensions.font20,
                      )),
                ),
                Center(
                  child: Text('johanna@email.com',
                      style: StyleText.getRegularStyle(
                        color: AppColors.mygreycolor,
                        fontWeight: FontWeight.w500,
                        fontSize: Dimensions.font18,
                      )),
                ),
                SizedBox(height: Dimensions.height30),
                ListTile(
                  onTap: () {
                    Get.off(() => const HomeScreen());
                  },
                  title: Text(
                    'Home',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font20,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.back();
                    Get.to(() => const YourDetails());
                  },
                  title: Text(
                    'Your details',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font20,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.back();
                    Get.to(() => const Charginghistory());
                  },
                  title: Text(
                    'Charging history',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font20,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.back();
                    Get.to(() => const Cardone());
                  },
                  title: Text(
                    'RFID cards',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font20,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    'Payments',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font20,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    'Invoices',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font20,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.back();
                    Get.to(() => const SettingScreen());
                  },
                  title: Text(
                    'Settings',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font20,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.back();
                    Get.to(() => const NotificationScreen());
                  },
                  title: Text(
                    'Notifications',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font20,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.back();
                    Get.to(() => const ChatScreen());
                  },
                  title: Text(
                    'Chat',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
