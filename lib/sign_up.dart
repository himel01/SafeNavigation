import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sign(),
    );
  }
}

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final nameController = TextEditingController();
  final passController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    passController.dispose();
    emailController.dispose();
    mobileController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        backgroundColor: Colors.black12,
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          //color: Colors.black,
          onPressed: () {
            //Navigator.pop(context); //returns black screen
            //Navigator.of(context).pop();
            Navigator.of(context, rootNavigator: true).pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            //full name
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.black12,
            ),
            padding: EdgeInsets.only(left: 16),
            child: TextField(
              keyboardType: TextInputType.text,
              controller: nameController,
              enableInteractiveSelection: true,
              enableSuggestions: true,
              cursorColor: Colors.blue,
              cursorWidth: 2,
              cursorHeight: 20,
              autofocus: false,
              onSubmitted: (string) {},
              onChanged: (string) {},
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Full Name',
                prefixIcon: IconButton(
                  icon: Icon(Icons.drive_file_rename_outline),
                  splashColor: Colors.blue,
                  splashRadius: 5.0,
                  color: Colors.blue,
                  onPressed: () {},
                ),
                hintStyle: TextStyle(color: Colors.black54),
                border: InputBorder.none,
                //fillColor: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            //Email
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.black12,
            ),
            padding: EdgeInsets.only(left: 16),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              enableInteractiveSelection: true,
              enableSuggestions: true,
              cursorColor: Colors.blue,
              cursorWidth: 2,
              cursorHeight: 20,
              autofocus: false,
              onSubmitted: (string) {},
              onChanged: (string) {},
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: IconButton(
                  icon: Icon(Icons.drive_file_rename_outline),
                  splashColor: Colors.blue,
                  splashRadius: 5.0,
                  color: Colors.blue,
                  onPressed: () {},
                ),
                hintStyle: TextStyle(color: Colors.black54),
                border: InputBorder.none,
                //fillColor: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            //mobile
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.black12,
            ),
            padding: EdgeInsets.only(left: 16),
            child: TextField(
              //maxLength: 11,
              keyboardType: TextInputType.phone,
              controller: mobileController,
              enableInteractiveSelection: true,
              enableSuggestions: true,
              cursorColor: Colors.blue,
              cursorWidth: 2,
              cursorHeight: 20,
              autofocus: false,
              onSubmitted: (string) {},
              onChanged: (string) {},
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                prefixIcon: IconButton(
                  icon: Icon(Icons.drive_file_rename_outline),
                  splashColor: Colors.blue,
                  splashRadius: 5.0,
                  color: Colors.blue,
                  onPressed: () {},
                ),
                hintStyle: TextStyle(color: Colors.black54),
                border: InputBorder.none,
                //fillColor: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            //pass
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.black12,
            ),
            padding: EdgeInsets.only(left: 16),
            child: TextField(
              //keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              controller: passController,
              enableInteractiveSelection: true,
              enableSuggestions: true,
              cursorColor: Colors.blue,
              cursorWidth: 2,
              cursorHeight: 20,
              autofocus: false,
              onSubmitted: (string) {},
              onChanged: (string) {},
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: IconButton(
                  icon: Icon(Icons.drive_file_rename_outline),
                  splashColor: Colors.blue,
                  splashRadius: 5.0,
                  color: Colors.blue,
                  onPressed: () {},
                ),
                hintStyle: TextStyle(color: Colors.black54),
                border: InputBorder.none,
                //fillColor: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: signUp,
            child: Text('Sign up'),style: ButtonStyle(
          ),
          )
        ],
      ),
    );
  }

  void signUp() {
    auth.createUserWithEmailAndPassword(email: emailController.text, password: passController.text);
  }
}
