import 'package:first/components/custom_bottom_wording.dart';
import 'package:first/components/custom_square_tile.dart';
import 'package:first/components/custom_top_logo_banner.dart';
import 'package:first/components/form/custom_form_submit_button.dart';
import 'package:first/components/form/custom_text_form_field.dart';
import 'package:first/forms/forgot_password_form.dart';
import 'package:first/pages/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: SafeArea(
          child: Center(
            //put to center
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                CustomTopLogoBanner(
                    icon: Icons.lock_reset, title: "Reset Password"),
                SizedBox(
                  height: 25,
                ),
                ForgotPasswordForm(),
                SizedBox(
                  height: 50,
                ),
                CUstomBottomWording(
                    descriptionText: "Not a member? ",
                    navigationText: "Register Now",
                    navigateAction: () {
                      Navigator.pushNamed(context, "/register");
                    }),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )));
  }
}
