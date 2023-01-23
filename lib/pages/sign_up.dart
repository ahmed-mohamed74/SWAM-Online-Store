import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itit_project/data/my_data.dart';
import 'package:itit_project/pages/login.dart';
import 'package:itit_project/widgets/app_bar.dart';
import 'package:itit_project/widgets/button1.dart';
import 'package:itit_project/widgets/text_form_field.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool secure = true;

  bool verify = true;
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar('Sign Up', context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 66,
              ),
              Text(
                'Create An Account !',
                style: TextStyle(
                    color: Color.fromRGBO(45, 47, 96, 0.7),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 35,
              ),
              verify == false
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.warning,
                            color: Colors.red,
                            size: 10,
                          ),
                          Text(
                            ' Email and Password are required!!',
                            style: TextStyle(color: Colors.red, fontSize: 10),
                          ),
                        ],
                      ),
                    )
                  : Container(),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12, left: 12, bottom: 12),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text_Form(name, TextInputType.emailAddress,
                          'Full Name', Icons.person),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text_Form(email, TextInputType.emailAddress,
                          'Email', Icons.email),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: TextFormField(
                          controller: pass,
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Btn1(
                'Create Account',
                () {
                  setState(() {
                    if (email.text.isNotEmpty &&
                        pass.text.isNotEmpty &&
                        name.text.isNotEmpty) {
                      myUsers.add(
                        {
                          'name': name.text,
                          'email': email.text,
                          'password': pass.text
                        },
                      );
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) {
                        return LoginScreen();
                      }));
                    } else
                      verify = false;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) {
                        return LoginScreen();
                      }));
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(45, 47, 96, 0.9),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
