import 'package:flutter/material.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/views/Drawer/drawer.dart';
import 'package:swish_app/views/Drawer/pages/chats/widget/message.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: Dimensions.height20),
              child: Builder(
                builder: (context) => CardMenuIcon(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20,
                  bottom: Dimensions.height20),
              child: Text(
                "Charging Chat",
                style: StyleText.getBoldStyle(
                  color: AppColors.textcolor,
                  fontSize: Dimensions.font26,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: Dimensions.height500,
              color: AppColors.backgroundcolor,
              child: Column(
                children: [
                  SizedBox(height: Dimensions.height20),
                  Container(
                    padding: EdgeInsets.only(
                      left: Dimensions.width10,
                      right: Dimensions.width10,
                      top: Dimensions.height2,
                    ),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 239, 239),
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius12)),
                    child: Column(
                      children: [
                        Text(
                          "01/01/2025",
                          style: StyleText.getRegularStyle(
                            color: AppColors.textcolor,
                            fontFamily: StyleText.customfont1,
                            fontSize: Dimensions.font16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Messagescreen()
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: Image.asset(
                    'assets/images/attachimg.PNG',
                    height: Dimensions.height30,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                      width: Dimensions.width20,
                      height: Dimensions.height50,
                      child: TextField(
                        cursorColor: AppColors.textcolor,
                        cursorWidth: 1.0,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.mygreycolor,
                              width: 0.2,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(),
                          hintText: 'Start typing',
                          hintStyle: StyleText.getRegularStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: Dimensions.font15,
                            color: AppColors.mygreycolor,
                          ),
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width10, right: Dimensions.width10),
                  child: Image.asset(
                    'assets/images/sendbtn.PNG',
                    height: Dimensions.height30,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
