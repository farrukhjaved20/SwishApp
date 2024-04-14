import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/controller/clearbutton.dart';
import 'package:swish_app/widgets/Custom_button_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/widgets/whitecontainer/whitecontainer.dart';

class EmailAddress extends StatefulWidget {
  const EmailAddress({super.key});

  @override
  State<EmailAddress> createState() => _EmailAddressState();
}

class _EmailAddressState extends State<EmailAddress> {
  @override
  Widget build(BuildContext context) {
    final ClearbuttonController clear = Get.put(ClearbuttonController());
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: Dimensions.height20),
              child: Builder(
                builder: (context) => CardMenuIcon(
                  customIcon: Icons.arrow_back_ios_new_rounded,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20, top: Dimensions.height10),
              child: Text(
                'Email Address',
                style: StyleText.getBoldStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.textcolor,
                  fontSize: Dimensions.font22,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: Dimensions.width3,
                  left: Dimensions.width3,
                  top: Dimensions.height20),
              child: RoundedWhiteContainer(
                borderRadius: height * 0.01,
                child: Column(
                  children: [
                    TextField(
                      cursorColor: AppColors.textcolor,
                      cursorWidth: 1.0,
                      controller: clear.emailcontroller,
                      decoration: InputDecoration(
                        suffixIcon: clear.emailcontroller.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  clear.emailfield();
                                })
                            : null,
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintText: 'johanna@email.com',
                        hintStyle: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.018,
                          color: AppColors.mygreycolor,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            Center(
              child: Custombuttondesign(
                fontSize: height * 0.02,
                title: 'Save',
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
