import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'SIGNUP',
          style: TextStyle(
              fontSize: 34, color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
      body: Center(
          child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: emailText,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.email),
                        hintText: ('Email'),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(33),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 15, 15, 13), width: 2),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(33),
                            borderSide: const BorderSide(color: Colors.amber))),
                  ),
                  Container(
                    height: 11,
                  ),
                  TextField(
                    obscureText: true,
                    controller: passText,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.password),
                        hintText: ('password'),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(33),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 15, 15, 13), width: 2),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(33),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 112, 218, 132)))),
                  ),
                  Container(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String uEmail = emailText.toString();
                        String uPass = passText.toString();
                        print('Email:$uEmail , Pass:$uPass ');
                      },
                      child: const Text('Log in'))
                ],
              ))),
    );
  }
}
