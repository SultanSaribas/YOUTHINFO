import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youth_info/view/App.dart';
import 'package:youth_info/viewmodel/FirebaseFunctions.dart';
import 'RegisterScreen.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  Functions function = Functions();
  bool isRememberMe= false;
  bool validate = false;
  TextEditingController email=new TextEditingController();
  TextEditingController passwords=new TextEditingController();

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email',

          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 50,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0,2),

                ),
              ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: email,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff5c18e),
                ),
                //hintText: 'Email',
                labelText: 'Email',
                errorText: validate ? "Email Can't Be Empty" : null,
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        ),


      ],
    );


  }
  Widget buildPasswords(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Passwords',

          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 50,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0,2),

                ),
              ]
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            controller: passwords,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff5c18e),
                ),
                //hintText: 'Passwords',
                labelText: 'Passwords',
                errorText: validate ? "Passwords Can't Be Empty" : null,
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        ),


      ],
    );


  }
  Widget buildForgatPasswordsBtn(){
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: ()=> print('Forget Passwords Passed'),
        padding: EdgeInsets.only(right: 0),
        child: Text(
          'Forgat Password?',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  Widget buildRememberMe(){
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Colors.white,
            ),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value){
                setState(() {
                  isRememberMe =value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,

            ),
          ),
        ],
      ),
    );
  }
  Widget buildLoginBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: (){
          function.signIn(email.text, passwords.text).then((value) {
          return Navigator.push(context, MaterialPageRoute(builder: (context) =>App()));
          });
        },
           // Navigator.of(context).push(new MaterialPageRoute(
        // builder: (BuildContext context) => new HomePage())),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }
  Widget buildSigUpBtn(){
    return GestureDetector(
      onTap: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new RegisterPage())),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Don't have an Account?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: "Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),


      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e),

                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(

                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text('Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      SizedBox(height: 50,),
                      buildEmail(),
                      SizedBox(height: 20,),
                      buildPasswords(),
                      Container(
                        child:Row(
                          children: [
                            Expanded(child: buildRememberMe()),

                            Expanded(child: buildForgatPasswordsBtn()),
                          ],
                        ),
                      ),
                      buildLoginBtn(),
                      buildSigUpBtn(),

                    ],
                  ),
                ),

              )
            ],
          ),

        ),
      ),
    );
  }
}