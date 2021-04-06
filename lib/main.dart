import 'package:flutter/material.dart';
import 'package:safe_navigation/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Safe Navigation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final nameController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    passController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                hintText: 'User Name',
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
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Not a User?",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: Text(
                  "Sign Up Instead",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w900,
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
