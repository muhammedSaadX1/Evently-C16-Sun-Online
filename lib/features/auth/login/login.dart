import 'package:evently_sun_online/core/resources/assets_manager.dart';
import 'package:evently_sun_online/core/resources/colors_manager.dart'
    show ColorsManager;
import 'package:evently_sun_online/core/routes_manager/app_routes.dart'
    show AppRoutes;
import 'package:evently_sun_online/core/widgets/custom_elevated_button.dart';
import 'package:evently_sun_online/core/widgets/custom_text_button.dart';
import 'package:evently_sun_online/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool securePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(ImageAssets.eventlyLogo),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                SizedBox(height: 16.h),
                CustomTextFormField(
                  labelText: "E-mail",
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icons.email,
                ),
                SizedBox(height: 16.h),
                CustomTextFormField(
                  isSecure: securePassword,
                  labelText: "Password",
                  keyboardType: TextInputType.visiblePassword,
                  prefixIcon: Icons.lock,
                  suffixIcon: IconButton(
                    onPressed: _onTogglePasswordIconClicked,
                    icon: Icon(
                      securePassword ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                CustomTextButton(
                  text: "Forget Password",
                  onTap: () {},
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 24.h),
                CustomElevatedButton(text: "Login", onPress: () {}),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account ? ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.register,
                        );
                      },
                      child: Text(
                        "Create account",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          color: ColorsManager.blue,
                          fontWeight: FontWeight.bold,
                          decorationColor: ColorsManager.blue,
                          decoration: TextDecoration.underline,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: ColorsManager.blue,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),
                    Text("or", style: Theme.of(context).textTheme.bodySmall),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: ColorsManager.blue,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: REdgeInsets.symmetric(vertical: 16),
                    side: BorderSide(color: ColorsManager.blue, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImageAssets.google),
                      SizedBox(width: 10.w),
                      Text(
                        "Login With Google",
                        style: GoogleFonts.inter(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorsManager.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onTogglePasswordIconClicked() {
    setState(() {
      securePassword = !securePassword;
    });
  }
}
