
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project1/Homepage.dart';

class Login extends StatefulWidget {

  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ispasward =true;
  @override
  Widget build(BuildContext context) {
    double  width=MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: width,
                height: 300,
                child: Center(
                  child: Image.asset('assets/log.png'),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: width,
                height: 220,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius:const BorderRadius.only
                      (topRight: Radius.circular(50),topLeft: Radius.circular(50))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Sign In',
                        style:TextStyle (
                            fontSize:23,
                            fontWeight: FontWeight.w800
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                          width: width,
                          height:45 ,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(12))
                          ),
                          child:const Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 13),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration.collapsed(
                                    hintText: 'Email '),),
                            ),
                          )
                      ),

                      const SizedBox(height: 15),
                      Container(
                          width: width,
                          height:45 ,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(12))
                          ),
                          child: Center(

                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 13),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      keyboardType: TextInputType.visiblePassword,
                                      obscureText: ispasward,

                                      decoration:const InputDecoration.collapsed(
                                          hintText: 'pasward'),),
                                  ),
                                  IconButton(
                                      onPressed:() {
                                        if(ispasward){
                                          setState(() {
                                            ispasward=false;
                                          });
                                        }else{
                                          setState(() {
                                            ispasward=true;
                                          });
                                        }
                                        print( ispasward);

                                      },
                                      icon:const Icon(
                                          Icons.remove_red_eye))
                                ],
                              ),
                            ),
                          )
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Forgot passward?'),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Container(width:width,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color(0xffF9A826),
                            borderRadius: BorderRadius.all(
                                Radius.circular(12))
                        ),
                        child:  MaterialButton
                          (onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder:(contexts) =>const Homepage(),));
                        },
                          child: Text
                            ('Sign In',
                            style:const TextStyle
                              (color:Colors.black ),
                          ),
                        ) ,

                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
