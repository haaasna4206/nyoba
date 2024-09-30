import 'package:flutter/material.dart';
import 'package:prakmobile_pertemuan3/page2.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _loginpagestate createState() => _loginpagestate();
}
class _loginpagestate extends State<Loginpage> {
  String username = "";
  String Password = "";
  bool isLoginSuccess = true;

  _navigatePage() async{
   await Future.delayed(Duration(seconds: 6));

    Navigator.push(context, MaterialPageRoute(builder: (context) {
return Page2(
  username: username,
);
    }));

  }
  
  @override
  Widget build(BuildContext context){
     return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
          titleTextStyle: TextStyle(color: Colors.white,),
          backgroundColor: const Color.fromARGB(255, 255, 171, 208),
        ),
        body: Column(
          children: [
            _usernameField(),
            _PasswordField(),
            _loginbutton(context),
          ],
        ),
      ) 
    );
  }
  


  Widget _usernameField(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'username',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
             borderSide: BorderSide(color: (isLoginSuccess) ?
            Colors.blue : Colors.red),
          )
        ),
      ),
    );
  }
   Widget _PasswordField(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          Password = value;
        },
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius:BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: (isLoginSuccess) ?
            Colors.blue : Colors.red),
          ),
        ),
      ),
    );
  }
  Widget _loginbutton(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: (isLoginSuccess) ?  Colors.blue : Colors.red
        ),
        onPressed: (){
          String text = ""; 
          if (username == 'halinp2' && Password == "12213"){
            _navigatePage();
            setState(() {
              text = "login succes";
              isLoginSuccess = true;
            });
          } else {
            text = "Failed";
          }
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('login'), 
    ),
    );
  }
}