import 'package:evently_sun_online/core/resources/assets_manager.dart';
import 'package:evently_sun_online/core/resources/colors_manager.dart';
import 'package:evently_sun_online/core/widgets/custom_elevated_button.dart';
import 'package:evently_sun_online/core/widgets/custom_text_form_field.dart';
import 'package:evently_sun_online/features/auth/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool securePassword = true;
  bool secureRePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Register")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(ImageAssets.eventlyLogo),

            Padding(
              padding:  EdgeInsets.only(left: 16, right: 16, bottom: MediaQuery.of(context).viewInsets.bottom) ,

        child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 24.h),
                  CustomTextFormField(
                    labelText: "Name",
                    prefixIcon: Icons.person,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    labelText: "E-mail",
                    prefixIcon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    isSecure: securePassword,
                    labelText: "Password",
                    prefixIcon: Icons.lock,
                    suffixIcon: IconButton(
                      onPressed:_onTogglePasswordIconClicked,
                      icon: Icon(securePassword ? Icons.visibility_off: Icons.visibility),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    isSecure: secureRePassword,
                    labelText: "Re-Password",
                    prefixIcon: Icons.lock,
                    suffixIcon: IconButton(
                      onPressed: _onToggleRePasswordIconClicked,
                      icon: Icon(secureRePassword ? Icons.visibility_off: Icons.visibility),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 16.h),
                  CustomElevatedButton(text: "Create Account", onPress: () {}),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have Account ? ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Login",
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            color: ColorsManager.blue,
                            fontWeight: FontWeight.bold,
                            decorationColor: ColorsManager.blue,
                            decoration: TextDecoration.underline,
                            fontStyle: FontStyle.italic
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  void _onTogglePasswordIconClicked(){
    setState(() {
      securePassword = !securePassword;
    });
  }
  void _onToggleRePasswordIconClicked(){
    setState(() {
      secureRePassword = !secureRePassword;
    });
  }
}
