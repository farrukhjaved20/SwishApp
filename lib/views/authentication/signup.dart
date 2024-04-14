import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/controller/checkbox.dart';
import 'package:swish_app/views/authentication/sigin.dart';
import 'package:swish_app/widgets/Custom_button_widgets/custom_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    final CheckboxController checkbox = Get.put(CheckboxController());
    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController namecontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.05, left: width * 0.10),
            child: Text('Who is join Swish?',
                style: StyleText.getRegularStyle(
                    fontWeight: FontWeight.w800, fontSize: height * 0.04)),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.05, left: width * 0.10),
            child: Text('First Name *',
                style: StyleText.getRegularStyle(
                    color: AppColors.buttonColor,
                    fontWeight: FontWeight.w800,
                    fontSize: height * 0.02)),
          ),
          Padding(
              padding: EdgeInsets.only(right: width * 0.10, left: width * 0.10),
              child: TextField(
                keyboardAppearance: Brightness.light,
                controller: namecontroller,
                decoration: InputDecoration(
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .grey), // Color of the underline when the TextField is focused
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .grey), // Color of the underline when the TextField is not focused
                    ),
                    hintStyle: StyleText.getRegularStyle(
                        color: Colors.grey, fontSize: height * 0.02),
                    hintText: 'Your first name'),
              )),
          Padding(
            padding: EdgeInsets.only(top: height * 0.025, left: width * 0.10),
            child: Text('Email *',
                style: StyleText.getRegularStyle(
                    color: AppColors.buttonColor,
                    fontWeight: FontWeight.w800,
                    fontSize: height * 0.02)),
          ),
          Padding(
              padding: EdgeInsets.only(right: width * 0.10, left: width * 0.10),
              child: TextField(
                keyboardAppearance: Brightness.light,
                controller: emailcontroller,
                decoration: InputDecoration(
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .grey), // Color of the underline when the TextField is focused
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .grey), // Color of the underline when the TextField is not focused
                    ),
                    hintStyle: StyleText.getRegularStyle(
                        color: Colors.grey, fontSize: height * 0.02),
                    hintText: 'Your email address'),
              )),
          Padding(
            padding: EdgeInsets.only(top: height * 0.025, left: width * 0.10),
            child: Text('Password *',
                style: StyleText.getRegularStyle(
                    color: AppColors.buttonColor,
                    fontWeight: FontWeight.w800,
                    fontSize: height * 0.02)),
          ),
          Padding(
              padding: EdgeInsets.only(right: width * 0.10, left: width * 0.10),
              child: TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .grey), // Color of the underline when the TextField is focused
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .grey), // Color of the underline when the TextField is not focused
                    ),
                    hintStyle: StyleText.getRegularStyle(
                        color: Colors.grey, fontSize: height * 0.02),
                    hintText: 'Choose a password'),
              )),
          Obx(
            () => CheckboxListTile(
              contentPadding: EdgeInsets.only(
                  top: height * 0.02, left: width * 0.08, right: width * 0.08),
              controlAffinity: ListTileControlAffinity.leading,
              title: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'I agree to the',
                  style: StyleText.getRegularStyle(
                      color: Colors.black, fontSize: height * 0.018),
                ),
                TextSpan(
                  text: ' Terms of Services',
                  style: StyleText.getRegularStyle(
                      fontWeight: FontWeight.w800,
                      color: AppColors.buttonColor,
                      fontSize: height * 0.018),
                ),
                TextSpan(
                  text: ' and',
                  style: StyleText.getRegularStyle(
                      color: Colors.black, fontSize: height * 0.018),
                ),
                TextSpan(
                  text: '  Privacy Policy.',
                  style: StyleText.getRegularStyle(
                      fontWeight: FontWeight.w800,
                      color: AppColors.buttonColor,
                      fontSize: height * 0.018),
                ),
              ])),
              value: checkbox.isChecked.value,
              onChanged: (bool? newValue) {
                checkbox.changetick();
              },
              activeColor: AppColors.buttonColor,
              checkColor: Colors.white,
            ),
          ),
          Obx(
            () => CheckboxListTile(
              contentPadding:
                  EdgeInsets.only(left: width * 0.08, right: width * 0.08),
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(
                maxLines: 2,
                'I agree to receive bu email discount code and marketing advertisements.',
                style: StyleText.getRegularStyle(fontSize: height * 0.018),
              ),
              value: checkbox.isChecked.value,
              onChanged: (bool? newValue) {
                checkbox.changetick();
              },
              activeColor: AppColors.buttonColor,
              checkColor: Colors.white,
            ),
          ),
          SizedBox(height: height * 0.02),
          Center(
            child: Custombuttondesign(
              fontWeight: FontWeight.w600,
              fontSize: height * 0.022,
              title: 'Continue',
              onTap: () {},
            ),
          ),
          SizedBox(height: height * 0.01),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Have an Account?',
                  style: StyleText.getRegularStyle(
                      color: Colors.grey, fontSize: height * 0.02),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(() => const SignInPage());
                    },
                    child: Text(
                      'Sign in',
                      style: StyleText.getRegularStyle(
                          color: AppColors.buttonColor,
                          fontSize: height * 0.022),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
