import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Column(
                children: [
                  emailFeildWidget(),
                  passwordFeildWidget(),
                  loginButtonWidget(),
                ],
              )
            ),
          ),
        ),
      ),
    );
  }

  Widget emailFeildWidget(){
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@example.email',
        labelText: 'Email'
      ),
    );
  }

  Widget passwordFeildWidget(){
    return const TextField(
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: 'Password'
      ),
    );
  }

  Widget loginButtonWidget(){
    return FilledButton(
      onPressed: (){

      },
      style: const ButtonStyle(
        shape: WidgetStatePropertyAll(BeveledRectangleBorder())
      ),
      child: const Text('Login'));
  }
}