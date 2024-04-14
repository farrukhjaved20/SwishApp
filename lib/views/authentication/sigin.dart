import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/controller/passwordcontroller.dart';
import 'package:swish_app/views/home/homescreen.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PasswordController password = Get.put(PasswordController());
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.1, left: width * 0.35),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo1.png',
                    height: Dimensions.height50,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.07, top: height * 0.03),
              child: Text(
                "Sign In",
                style: StyleText.getBoldStyle(
                  fontSize: height * 0.04,
                  color: AppColors.textcolor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.07),
              child: Text(
                "Hi there! Nice to see you again.",
                style: StyleText.getRegularStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: height * 0.02,
                  color: AppColors.mygreycolor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * 0.07, top: height * 0.01, right: width * 0.07),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: 'example@email.com',
                  hintStyle: StyleText.getRegularStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.mygreycolor,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: StyleText.getRegularStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.buttonColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * 0.07, top: height * 0.01, right: width * 0.07),
              child: Obx(
                () => TextFormField(
                  obscureText: password.isPasswordVisible.value,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        password.isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        password.passwordchange();
                      },
                    ),
                    labelText: "Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: StyleText.getRegularStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColors.buttonColor,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * 0.07, top: height * 0.05, right: width * 0.07),
              child: SizedBox(
                height: height * 0.06,
                width: width * 0.9,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const HomeScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                  child: Text(
                    "Sign In",
                    style: StyleText.getRegularStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: height * 0.024,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.04),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password?",
                      style: StyleText.getRegularStyle(
                        fontSize: height * 0.019,
                        color: AppColors.mygreycolor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.04),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: StyleText.getRegularStyle(
                        fontSize: height * 0.019,
                        color: AppColors.buttonColor,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
