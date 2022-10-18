import 'package:flutter/material.dart';
import 'package:kamoma_mobile/screens/screens.dart';
import 'package:kamoma_mobile/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _visible = false;
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  // void _hidePassword() {
  //   setState(() {
  //     _visible = !_visible;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 100, bottom: 20, left: 20, right: 20),
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Welcome Back!',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const Text(
                          'Lorem Ipsum is simply dummy text',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.075,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(20),
                              labelText: "Enter your email",
                              labelStyle: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              )),
                          onSaved: (value) {
                            email = value!;
                          },
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(20),
                              labelText: "Enter your password",
                              labelStyle: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              suffixIcon: const Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              )),
                          obscureText: _visible,
                          // onTap: _hidePassword,
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Color.fromARGB(255, 80, 194, 201),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Button(
                          btnText: "Sign In",
                          onBtnPressed: () {
                            Navigator.pushReplacementNamed(context, "/home");
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 80, 194, 201),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
