import 'package:flutter/material.dart';
import 'package:itit_project/data/my_data.dart';
import 'package:itit_project/pages/Store.dart';
import 'package:itit_project/pages/sign_up.dart';
import 'package:itit_project/widgets/app_bar.dart';
import 'package:itit_project/widgets/button1.dart';
import 'package:itit_project/widgets/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  bool secure = true;
  bool verify = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: EAppBar('Login', context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Please sign in to continue!',
                  style: TextStyle(
                      color: Color.fromRGBO(45, 47, 96, 0.7),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                verify == false
                    ? Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.error,
                              size: 15,
                              color: Colors.red,
                            ),
                            Text(
                              ' User Not Found!!',
                              style: TextStyle(color: Colors.red, fontSize: 10),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                SizedBox(height: 15.0),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20))),
                  child: Padding(
                    padding:
                        const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Text_Form(EmailController, TextInputType.emailAddress,
                            'Email Address', Icons.email),
                        SizedBox(
                          height: 15,
                        ),
                        Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: TextFormField(
                            controller: PasswordController,
                            cursorColor: Colors.grey,
                            obscureText: secure,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                hintText: 'Password',
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color.fromRGBO(45, 47, 96, 0.9),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      secure = !secure;
                                    });
                                  },
                                  icon: Icon(
                                    secure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color.fromRGBO(45, 47, 96, 0.9),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 110,
                ),
                Btn1(
                  'Login',
                  () {
                    setState(() {
                      for (int i = 0; i < myUsers.length; i++) {
                        if (EmailController.text == myUsers[i]['email'] &&
                            PasswordController.text == myUsers[i]['password']) {
                          verify = true;
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (c) {
                              return Store();
                            },
                          ));
                          break;
                        } else {
                          verify = false;
                        }
                      }
                    });
                  },
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an acount?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text(
                        'Register Now',
                        style: TextStyle(
                          color: Color.fromRGBO(45, 47, 96, 0.9),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
