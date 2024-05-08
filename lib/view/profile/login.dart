import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/router/navrouter_constants.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          vSpace(150),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: fullWidth(context) * 0.40,
                height: fullHeight(context) * 0.05,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImage.appLogo), fit: BoxFit.fill),
                ),
              ),
            ],
          ),
          vSpace(35),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                    key: formKey,
                    child: Column(children: [
                      vSpace(20),
                      Column(
                        children: [
                          TextFormField(
                            textInputAction: TextInputAction.done,
                            // controller: loginController.emailController,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: appColor,
                            // focusNode: focusNode,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    width: 1,
                                    style: BorderStyle.none,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                                ),
                                filled: true,
                                fillColor:
                                    Theme.of(context).colorScheme.secondary,
                                errorBorder: customOutlineBorder(),
                                hintText: "Corporate ID",
                                errorMaxLines: 1,
                                hintStyle: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 13,
                                    fontFamily: "WorkSans")),
                          ),
                          vSpace(10),
                          TextFormField(
                            textInputAction: TextInputAction.done,
                            // controller: loginController.passwordController,
                            // keyboardType: TextInputType.,
                            // focusNode: focusNode,
                            // cursorColor: loginButtonColorOne,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    width: 1,
                                    style: BorderStyle.none,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                                ),
                                filled: true,
                                fillColor:
                                    Theme.of(context).colorScheme.secondary,
                                errorBorder: customOutlineBorder(),
                                hintText: "Employee ID",
                                errorMaxLines: 1,
                                hintStyle: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 13,
                                    fontFamily: "WorkSans")),
                          ),
                          vSpace(10),
                          TextFormField(
                            textInputAction: TextInputAction.done,
                            // controller: loginController.passwordController,
                            // keyboardType: TextInputType.,
                            // focusNode: focusNode,
                            // cursorColor: loginButtonColorOne,
                            // obscureText: hidePassword,
                            decoration: InputDecoration(
                                // suffixIcon: GestureDetector(
                                //   onTap: () {
                                //     setState(() {
                                //       hidePassword = !hidePassword;
                                //     });
                                //   },
                                //   child: Icon(hidePassword
                                //       ? Icons.visibility_off
                                //       : Icons.visibility),
                                // ),

                                contentPadding: EdgeInsets.all(12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    width: 1,
                                    style: BorderStyle.none,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                                ),
                                filled: true,
                                fillColor:
                                    Theme.of(context).colorScheme.secondary,
                                errorBorder: customOutlineBorder(),
                                hintText: "Password",
                                errorMaxLines: 1,
                                hintStyle: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 13,
                                    fontFamily: "WorkSans")),
                          ),
                          vSpace(200),
                          GestureDetector(
                            onTap: () async {
                              Get.offAllNamed(bottomNavigation);
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: loginButtonColor),
                              child: Center(
                                child: textRegular(
                                  text: "Sign In",
                                  size: 15,
                                  color: white,
                                  maxLine: 1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
