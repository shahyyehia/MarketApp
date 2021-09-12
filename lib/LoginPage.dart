import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var primaryColor=Color.fromRGBO(59,122,87, 1);

  var passControl=TextEditingController();

  var emailControl=TextEditingController();
  var obscure=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: primaryColor,
        leading: Icon(Icons.menu),
        title: Text("S-mart"),
      ),
      body: Container(
        color: Color.fromRGBO(255,255,230, 1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",

                  style: TextStyle(fontSize: 32,color:primaryColor ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailControl,
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                          color: primaryColor
                      ),
                      prefixIcon: Icon(

                          Icons.email,
                          color: primaryColor
                      ),
                      focusColor: primaryColor,


                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide( color: primaryColor),
                          borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide( color: primaryColor),
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),

                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passControl,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: obscure,
                  decoration: InputDecoration(
                      labelText: "password",
                      labelStyle: TextStyle(
                          color: primaryColor
                      ),
                      prefixIcon: Icon(
                          Icons.https,
                        color: primaryColor
                      ),
                      suffixIcon: InkWell(
                        onTap: (){
                          setState(() {
                            if (obscure==true)
                              obscure=false;
                            else
                              obscure=true;
                          });
                        },
                        child: Icon(
                          Icons.remove_red_eye,
                          color: primaryColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide( color: primaryColor),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide( color: primaryColor),
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    height:50,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: primaryColor,
                    onPressed: (){
                      print(emailControl.text);
                      print(passControl.text);
                    },
                    child: Text("Login",style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("doesn't have an account? ",style: TextStyle(color: primaryColor),),
                    InkWell(
                      onTap: (){
                        print("register");
                      },
                        child: Text("Register Now",style: TextStyle(color: primaryColor),)
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
