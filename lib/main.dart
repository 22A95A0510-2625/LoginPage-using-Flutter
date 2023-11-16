// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:account/SignUp.dart';
void main() async
{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: FirebaseOptions(apiKey: "AIzaSyDC9YhhaAoPPffTtWUlRaVKI_tJvj-rwWE", appId: "1:670057826383:web:84cbc12d1f36f69d08c23a", messagingSenderId: "670057826383", projectId: "drive-readythub")
  // );
  // //await FirebaseAuth.instance.useAuthEmulator('localhost', 52777);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLogin(),
    );
  }
}
class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}
class _MyLoginState extends State<MyLogin> {
  //var size,height,width;
  final mail=TextEditingController();
  final pass=TextEditingController();
  final formkey=GlobalKey<FormState>();

  // Future MyLogin(String email, String pass) async{
  //   final FirebaseAuth auth=FirebaseAuth.instance;
  //   try{
  //     auth.signInWithEmailAndPassword(email: email, password: pass).then((value){
  //       Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNew()));
  //     }).onError((error, stackTrace){
  //       print("wrong credentials");
  //     } );
  //   }catch(err){
  //     throw Exception(err);
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    //double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body:Form(
            key:formkey,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height:200,
                    width: width>600?double.infinity:double.infinity,
                    child: Image(image: AssetImage("assets/image2.png"),),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Text("Welcome back!!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("Login to your account back"),
                          SizedBox(height: 20,),
                          SizedBox(
                            width: width>600?350:350,
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
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: width>600?350:350,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                labelText: "Password",
                                hintText: "Enter your Password",
                                prefixIcon: Icon(Icons.lock),
                              ),
                              obscureText: true,
                              obscuringCharacter: "*",
                              controller: pass,
                              validator: (val)=>val!.isEmpty?"Enter your password":null,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: SizedBox(
                              width: width>600?350:350,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: (){
                                    if(formkey.currentState!.validate()){
                                      setState(() {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNew()));
                                      });
                                    }
                                  }, child: Text("Login",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30),)),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              SizedBox(width: width>600?80:40,),
                              Icon(Icons.check_box_outline_blank),
                              Text("Remember me"),
                              SizedBox(width: width>600?100:50,),
                              TextButton(onPressed: (){}, child: Text("Forgot Password?")),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(
                                width: width>600?100:50,
                              ),
                              SizedBox(
                                width:width>600?100:50,
                                child: Divider(color: Colors.grey.shade900,
                                ),
                              ),
                              Text(" or continue with "),
                              SizedBox(
                                width: width>600?100:50,
                                child: Divider(
                                  color: Colors.grey.shade900,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: width>600?150:80,),
                              ClipRRect(borderRadius:BorderRadius.circular(80),child: Container(height: 50,width: width>600?50:50,
                                color: Colors.black,child: Icon(Icons.apple,color: Colors.white,size: 40,),)),
                              SizedBox(width: width>600?30:30,),
                              ClipRRect(borderRadius:BorderRadius.circular(80),child: Container(height: 50,width: width>600?50:50,
                                color: Colors.black,child: Icon(Icons.g_mobiledata,color: Colors.white,size: 40,),)),
                              SizedBox(width: width>600?30:30,),
                              ClipRRect(borderRadius:BorderRadius.circular(80),child: Container(height: 50,width: width>600?50:50,
                                color: Colors.black,child: Icon(Icons.facebook_outlined,color: Colors.white,size: 40,),)),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: width>600?150:80,),
                              Text("Don't have an account?"),
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MySignUp()));
                              }, child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold),))
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

class MyNew extends StatefulWidget {
  const MyNew({super.key});

  @override
  State<MyNew> createState() => _MyNewState();
}

class _MyNewState extends State<MyNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
