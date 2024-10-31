import 'package:flutter/material.dart';
import 'package:xpress_chat/home_page.dart';
import 'package:xpress_chat/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Align(
            child: Text(
              "Xpress Chat",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w900,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Align(
                  child: Text(
                    "Log in to Xpress Chat",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        labelText: 'Username',
                        hintText: 'Enter Your Name',
                        // errorText: 'Username is required',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        labelText: 'Password',
                        hintText: 'Enter Password',
                        // errorText: 'Password is required',
                      ),
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    onTap: () {
                      print('Password Change Page');
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: 350.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        print("Logged In");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                ],
              )),
          //Signup
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110.0),
            child: Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                InkWell(
                  child: Text(
                    ' Register',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    print('Register Page');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
