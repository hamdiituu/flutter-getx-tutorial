import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _loginController = Get.put(LoginController());
  bool isLoading = false;

  void handleLogin() async {
    setState(() {
      isLoading = true;
    });
    _loginController.userLogin();
    await Future.delayed(Duration(seconds: 3));
    if (_loginController.isLogin.value) {
      setState(() {
        isLoading = false;
      });
      Get.toNamed('/home');
    }
  }

  @override
  void dispose() {
    _loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
              ),
              Container(
                margin: EdgeInsets.only(top: _size.height / 5),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                        decoration:
                            const InputDecoration(label: Text('Username')),
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        decoration:
                            const InputDecoration(label: Text('Password')),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(double.infinity, 50)),
                            onPressed: handleLogin,
                            child: !isLoading
                                ? Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w300),
                                  )
                                : Text(
                                    'Loading..',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w300),
                                  )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
