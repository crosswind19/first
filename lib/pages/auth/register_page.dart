import 'package:first/components/custom_bottom_wording.dart';
import 'package:first/components/custom_square_tile.dart';
import 'package:first/components/custom_top_logo_banner.dart';
import 'package:first/components/form/custom_form_submit_button.dart';
import 'package:first/components/form/custom_text_form_field.dart';
import 'package:first/pages/auth/forgot_password_page.dart';
import 'package:first/pages/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../components/form/custom_form_submit_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    icon: Icons.flutter_dash, title: "Flutter FLenzy"),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Column(children: [
                    CustomTextFormField(
                        controller: usernameController,
                        hintText: "Enter your username",
                        labelText: "Username",
                        obscureText: false,
                        icon: Icons.person),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextFormField(
                        controller: passwordController,
                        hintText: "Enter your password",
                        labelText: "Password",
                        obscureText: false,
                        icon: Icons.person),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return ForgotPasswordPage();
                              }));
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomFormSubmitButton(
                      buttonText: "Register",
                      buttonAction: () {},
                    )
                  ]),
                ),
                SizedBox(
                  height: 25,
                ),
                CUstomBottomWording(
                    descriptionText: "Already a member? ",
                    navigationText: "Login here",
                    navigateAction: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return LoginPage();
                      }));
                    }),
              ],
            ),
          ),
        )));
  }
}
