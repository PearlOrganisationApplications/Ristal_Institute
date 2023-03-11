import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ristal_institute/App/Preferences/app_preferences.dart';

import '../../Core/change.notifier.dart';
import '../../Widget/custom.text.field.dart';
import '../../Widget/dimension.widget.dart';
import '../Home Sceen/home.screen.dart';
import 'Widget/costume.login.widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController userEmailController = TextEditingController();

  final TextEditingController userPassController = TextEditingController();
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();



  ///**** Create Static Login Function
  void login() {
    if (_formKey.currentState!.validate()) {
      isLoading = true;
      setState(() {});
      Future.delayed(const Duration(seconds: 1), () {
        isLoading = false;
        //setState(() {});
        AppPreferences.saveCredentials(email: userEmailController.text, displayName: 'Vipin Negi');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen())
        );
      });
    }
  }



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    ///Unused code
    /*_userLogin() {
      if (_formKey.currentState!.validate()) {
        var authNotifier =
            Provider.of<AuthenticationNotifier>(context, listen: false);
        authNotifier.userLogin(
            context: context,
            useremail: userEmailController.text,
            userpassword: userPassController.text);
      }
    }
*/
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              welcomeTextLogin(),
              vSizedBox2,
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 2.0),
                            child: CustomTextField.customEmailField(
                              textEditingController: userEmailController,
                              hintText: 'Enter an email',
                              validator: (val) =>
                                  !RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                          .hasMatch(val!)
                                      ? 'Enter an email'
                                      : null,
                            ),
                          ),
                          vSizedBox1,
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 2.0),
                            child: CustomTextField.customPasswordField(
                              textEditingController: userPassController,
                              hintText: 'Enter a password',
                              validator: (val) =>
                                  val!.isEmpty ? 'Enter a password' : null,
                            ),
                          )
                        ],
                      ),
                    ),
                    vSizedBox3,
                    MaterialButton(
                      height: 56.0,
                      elevation: 20,
                      minWidth: MediaQuery.of(context).size.width * 0.8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () async {
                        // _userLogin();
                        login();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const HomeScreen()));
                      },
                      color: Colors.lightGreen,
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 24,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              vSizedBox5,
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     const Text(
              //       "Not Having A Account? ",
              //       style: TextStyle(
              //
              //         fontSize: 14.0,
              //       ),
              //     ),
              //     GestureDetector(
              //       onTap: (){}
              //
              //       ,child: const Text(
              //         "Sign up",
              //         style: TextStyle(
              //           decoration: TextDecoration.underline,
              //
              //           fontSize: 14.0,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
