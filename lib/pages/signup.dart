import 'package:flutter/material.dart';
import 'package:login_authentication/pages/login.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hello"),
        backgroundColor: Colors.blue,
      ),
        body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 300,
            height: 500, // Adjust the width as needed
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Roll No',
                  ),
                ),
                SizedBox(height: 20), // Adjusted height
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                SizedBox(height: 20), // Adjusted height
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20), // Adjusted height
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Conform Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30),
                // Using TextButton for signup
                TextButton(
                  onPressed: (
                  ) {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()
                    ));
                    // Add your signup logic here
                  },
                  child: const Text(
                    'Already have an account? Login!',
                    style: TextStyle(
                      color: Colors.blue, // Change color if needed
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue[400]!),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.blue.withOpacity(0.04);
                        }
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed)) {
                          return Colors.blue.withOpacity(0.12);
                        }
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'SignUp',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
