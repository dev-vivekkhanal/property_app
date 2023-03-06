import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:porperty_app/theme/color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final emailController = TextEditingController();
  // final nameController = TextEditingController();
  // final pswdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // @override
  // Widget build(BuildContext context) {
  // return Scaffold(
  //   body: Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         TextField(
  //           controller: emailController,
  //         ),
  //         SizedBox(height: 8),
  //         TextField(
  //           controller: nameController,
  //         ),
  //         SizedBox(height: 8),
  //         TextField(
  //           controller: pswdController,
  //         ),
  //         SizedBox(height: 8),
  //       ],
  //     ),
  //   ),
  // );

  //   return Padding(
  //     padding: const EdgeInsets.all(10),
  //     child: ListView()
  //     )
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Property App',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
            },
            child: const Text(
              'Forgot Password',
            ),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              )),
          Row(
            children: <Widget>[
              const Text(
                'Does not have account?',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 10),
              ),
              TextButton(
                child: const Text(
                  'Sign up',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  //signup screen
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    ));
  }
}
