import 'package:flutter/material.dart';
import 'package:uts/dashboard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = "yulianto";
  String password = "yulianto123";
  String alert = "Login";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();

  void prosesLogin() {
    if (_formKey.currentState.validate()) {
      if (usernameInput.text == username && passwordInput.text == password) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => Dashboard(
                      username: usernameInput.text,
                    )));
      } else {
        setState(() {
          alert = "Username or Password Wrong!!!";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(100),
        color: Colors.grey[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              child: Center(
                child: Icon(Icons.login, size: 50, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "This Is Travel ! , Please Login here",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(alert),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: usernameInput,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "masukan username";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue,
                          size: 40,
                        ),
                        hintText: "Input Username",
                        hintStyle: TextStyle(color: Colors.black87),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.black87)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordInput,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "masukan password";
                      }

                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                          size: 40,
                        ),
                        hintText: "Input Password",
                        hintStyle: TextStyle(color: Colors.black87),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black87)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Colors.blue,
                    elevation: 5,
                    child: Container(
                      height: 50,
                      child: InkWell(
                        splashColor: Colors.white,
                        onTap: () => prosesLogin(),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
