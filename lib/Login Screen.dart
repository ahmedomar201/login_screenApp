import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  var formKey =GlobalKey<FormState>();
  bool isPassword=true;
  Function SuffixPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",
                    style: TextStyle(
                    fontSize:40,
                    fontWeight:FontWeight.bold,
                  ),),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller:emailController ,
                    keyboardType:TextInputType.emailAddress,
                    onFieldSubmitted: (String value){
                      print(value);
                    },
                    onChanged: (String value){
                      print(value);
                    },
                    decoration:InputDecoration(
                     labelText:"email address",
                      prefixIcon: Icon(
                          Icons.email
                      ),
                      border:OutlineInputBorder(),
                    ),
                    validator:(value) {
                      if(value.isEmpty){
                        return "email address must not be empty ";
                      }
                      return null;

                    },
                  ),
                  SizedBox(
                    height:15,
                  ),
                  TextFormField(
                    controller:passwordController ,
                    keyboardType:TextInputType.visiblePassword,
                    obscureText:true ,
                    onFieldSubmitted: (String value){
                      print(value);
                    },
                    onChanged: (String value){
                      print(value);
                    },
                    decoration:InputDecoration(
                      labelText:"password",
                       prefixIcon: Icon(
                          Icons.lock
                      ),
                     suffixIcon: Icon(
                          Icons.remove_red_eye_outlined
                      ),
                      border:OutlineInputBorder(),
                    ),
                    validator:(value) {
                      if(value.isEmpty){
                        return "password must not be empty ";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height:20,
                  ),
                  Container(
                    width:double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(onPressed: (){
                      if(formKey.currentState.validate())
                        {
                          print(passwordController.text);
                          print(emailController.text);
                        }
                    },
                    child: Text("LOGIN",
                      style: TextStyle(
                        color: Colors.white
                    ),),),
                  ),
                  SizedBox(
                    height:10,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                     Text(
                       "DON\'t have an account?",),
                      TextButton(
                          onPressed: (){},
                          child: Text("Register Now")),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
