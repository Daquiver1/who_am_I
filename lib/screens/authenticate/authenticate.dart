import 'package:who_am_i/services/auth_constants.dart';
import 'package:flutter/material.dart';
import 'package:who_am_i/shared/loading.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      appBar: AppBar(
        title: const Text("Sign up/Login"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(hintText: "Email"),
            controller: _emailController,
          ),
          TextField(
            decoration: const InputDecoration(hintText: "Password"),
            controller: _passwordController,
            obscureText: true,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () async {
                  setState(() => loading = true);
                  dynamic result = await authController.register(_emailController.text.trim(),
                      _passwordController.text.trim());
                  if (result == null){
                    setState(() => loading = false);
                  }
                },
                child: const Text("Sign Up"),
              ),
              ElevatedButton(
                onPressed: () async {
                  setState(() => loading = true);
                  var result = await authController.login(_emailController.text.trim(),
                      _passwordController.text.trim());
                  if (result == null){
                    setState(() => loading = false);
                  }
                },
                child: const Text("Login"),
              ),
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            onPressed: () {
              authController.signInWithGoogle();
            },
            child: const Text("Sign In with Google"),
          ),
        ],
      ),
    );
  }
}
