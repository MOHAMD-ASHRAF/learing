import 'dart:html';

import 'package:flutter/material.dart';
import 'package:learning/shared/components/components.dart';
class LoginScreen extends StatefulWidget {
  //const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 var emailcontroller =TextEditingController();
 var formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  children: [
                    Text('login',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: emailcontroller,
                      onFieldSubmitted: (String value){
                        print(value);
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'enter y email',
                        border: OutlineInputBorder(),
                        prefix: Icon(Icons.email_outlined),
                      ) ,
                      validator: (String? value){
                        if( value!.isEmpty){
                          return 'email is empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15,),
                    SizedBox(height: 15,),
                    SizedBox(
                      height: 15,),
                    defaultButton(
                      isUpperCase: false,
                      text: 'login',
                      function: (){
                        setState(() {
                          if(formKey.currentState!.validate())
                            {
                              print('erorr');
                            }

                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
