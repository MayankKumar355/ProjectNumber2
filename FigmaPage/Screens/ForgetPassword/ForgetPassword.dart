import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sample/FigmaPage/Screens/SignUpPage/SignUpPage.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() =>  _ForgetPasswordState();
}

class  _ForgetPasswordState extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forget ',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Password!',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your email address',
                    prefixIcon: Icon(Icons.contact_page_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12,),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: '*',style: TextStyle(color: Color(0xFFF83758)),
                    ),
                    TextSpan(
                      text: ' We will send you a message to set or reset your  new password',style: TextStyle(color:Colors.grey[700],fontSize: 17),
                    )
                  ]
                )),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFFF83758), // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                      //                Navigator.push(context,
                      //                   MaterialPageRoute(builder: (context) => SignUpPage()),
                    },
                    child: Text('Submit', style: TextStyle(fontSize: 27)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
