import 'package:flutter/material.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/widgets/Custom_button_widgets/custom_button.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/widgets/whitecontainer/whitecontainer.dart';

class NameDetails extends StatefulWidget {
  const NameDetails({super.key});

  @override
  State<NameDetails> createState() => _NameDetailsState();
}

class _NameDetailsState extends State<NameDetails> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController surnamecontroller = TextEditingController();
  bool _showClearButton = false;
  bool _showsurnameButton = false;

  @override
  void initState() {
    super.initState();
    surnamecontroller.addListener(_onTextChanged);
    namecontroller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    surnamecontroller.removeListener(_onTextChanged);
    namecontroller.removeListener(_onTextChanged);
    namecontroller.dispose();
    surnamecontroller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _showClearButton = namecontroller.text.isNotEmpty;
      _showsurnameButton = surnamecontroller.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                'Your details',
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
                      controller: namecontroller,
                      decoration: InputDecoration(
                        suffixIcon: _showClearButton
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  setState(() {
                                    namecontroller.clear();
                                    _showClearButton = false;
                                  });
                                },
                              )
                            : null,
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintText: 'Name',
                        hintStyle: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.018,
                          color: AppColors.mygreycolor,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    TextField(
                      cursorColor: AppColors.textcolor,
                      cursorWidth: 1.0,
                      controller: surnamecontroller,
                      decoration: InputDecoration(
                        hintText: 'Surname',
                        suffixIcon: _showsurnameButton
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  setState(() {
                                    surnamecontroller.clear();
                                    _showsurnameButton = false;
                                  });
                                },
                              )
                            : null,
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
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
