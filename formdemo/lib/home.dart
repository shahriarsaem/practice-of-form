import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _fromKey = GlobalKey();
  bool obsecureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        padding: EdgeInsets.all(10.0),
        width: double.infinity,
        child: Form(
          key: _fromKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.email),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.yellow,
                      width: 5,
                    ),
                  ),
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  hintStyle: TextStyle(color: Colors.amber),
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.grey,
                  filled: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: obsecureText,
                controller: _passwordController,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.password_rounded),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.yellow,
                      width: 5,
                    ),
                  ),
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  hintStyle: TextStyle(color: Colors.amber),
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.grey,
                  filled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
