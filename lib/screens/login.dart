import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _phoneCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  void _onSubmit() {
    if(_formKey.currentState!.validate()){
      print("Amjilttai");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Form(
          key: _formKey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Let's sign you in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 10),
                Text("Welcome back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    )),
                SizedBox(height: 5),
                Text("You've been missed!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    )),
                SizedBox(height: 30),
                TextFormField(
                  controller: _phoneCtrl,
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Хоосон байж болохгүй";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.9),
                          width: 1,
                        )
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
                    labelText: "Утасны дугаар",

                  ),
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passCtrl,
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Хоосон байж болохгүй";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.9),
                          width: 1,
                        )
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
                    labelText: "Нууц үг",
                  ),
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                onPressed: _onSubmit,
                child: Text("Нэвтрэх"),
              ),
            )
          ],
        ),),
      ),
    );
  }
}
