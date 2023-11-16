import 'package:flutter/material.dart';
import 'package:account/main.dart';
void main(){
  runApp(MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySignUp(),
    );
  }
}
class MySignUp extends StatefulWidget {

  const MySignUp({super.key});

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  final name=TextEditingController();
  final roll=TextEditingController();
  final mail=TextEditingController();
  final pass=TextEditingController();
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: width>600?double.infinity:double.infinity,
                  child: Image(image: AssetImage("assets/imag3.png"),),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      Text("Create a new account"),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: width>600?400:350,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)
                            ),
                            labelText: "UserName",
                            hintText: "Enter your full Name",
                            prefixIcon: Icon(Icons.person),
                          ),
                          controller: name,
                          validator: (val)=>val!.isEmpty?"Enter your fullname":null,
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: width>600?400:350,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)
                            ),
                            labelText: "Roll Number",
                            hintText: "Enter your Roll Number",
                            prefixIcon: Icon(Icons.pin),
                          ),
                          controller: roll,
                          validator: (val)=>val!.isEmpty?"Enter your RollNumber":null,
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: width>600?400:350,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0)
                              ),
                              labelText: "Email",
                              hintText: "Enter your email",
                              prefixIcon: Icon(Icons.email)
                          ),
                          controller: mail,
                          validator: (val)=>val!.isEmpty?"Enter your email":null,
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: width>600?400:350,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0)
                              ),
                              labelText: "Password",
                              hintText: "Enter your password",
                              prefixIcon: Icon(Icons.lock)
                          ),
                          obscureText: true,
                          obscuringCharacter: "*",style: TextStyle(fontSize: 20),
                          controller: pass,
                          validator: (val)=>val!.isEmpty?"Enter your email":null,
                        ),
                      ),
                      SizedBox(height: 20,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: SizedBox(
                            width: width>600?400:350,
                            height: 50,
                            child: ElevatedButton(onPressed: (){
                              if(formkey.currentState!.validate()){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNew()));
                                });
                              }
                            }, child: Text("Sign Up",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(
                            width: width>600?200:100,
                          ),
                          SizedBox(
                            width:width>600?200:50,
                            child: Divider(color: Colors.grey.shade900,
                            ),
                          ),
                          Text(" or continue with "),
                          SizedBox(
                            width: width>600?200:50,
                            child: Divider(
                              color: Colors.grey.shade900,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: width>600?200:80,),
                          ClipRRect(borderRadius:BorderRadius.circular(80),child: Container(height: 50,width: 50,
                            color: Colors.black,child: Icon(Icons.apple,color: Colors.white,size: 40,),)),
                          SizedBox(width: width>600?200:30,),
                          ClipRRect(borderRadius:BorderRadius.circular(80),child: Container(height: 50,width: 50,
                            color: Colors.black,child: Icon(Icons.g_mobiledata,color: Colors.white,size: 40,),)),
                          SizedBox(width: width>600?200:30,),
                          ClipRRect(borderRadius:BorderRadius.circular(80),child: Container(height: 50,width: 50,
                            color: Colors.black,child: Icon(Icons.facebook_outlined,color: Colors.white,size: 40,),)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: width>600?200:80,),
                          Text("Have you already on an account?"),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyLogin()));
                          }, child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),))
                        ],
                      )
                    ],
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

