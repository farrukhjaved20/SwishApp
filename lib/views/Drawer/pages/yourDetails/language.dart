import 'package:flutter/material.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/widgets/Custom_button_widgets/custom_button.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/widgets/whitecontainer/whitecontainer.dart';

class Languageselect extends StatelessWidget {
  const Languageselect({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    String selectedLanguage = 'English';

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
                'Choose your Language',
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
                    top: Dimensions.height10),
                child: RoundedWhiteContainer(
                  borderRadius:
                      height * 0.01, // Adjust the border radius if needed

                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: DropdownButton<String>(
                            value: selectedLanguage,
                            onChanged: (String? newValue) {},
                            items: <String>[
                              'English',
                              'French',
                              'Italian',
                              'Spanish',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: EdgeInsets.only(left: width * 0.03),
                                  child: Text(
                                    value,
                                    style: StyleText.getRegularStyle(
                                      fontWeight: FontWeight.w300,
                                     
                                      fontSize: height * 0.02,
                                      color: AppColors.mygreycolor,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            elevation: 16,
                            isExpanded: true,
                          ),
                        ),
                      ),
                    )
                  ]),
                )),
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
