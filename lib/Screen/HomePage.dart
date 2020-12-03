import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class AHomePage extends StatefulWidget {
  @override
  _AHomePageState createState() => _AHomePageState();
}

class _AHomePageState extends State<AHomePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),
      body: SingleChildScrollView(
        child: Form(
          autovalidate: true,
          key: formKey,
          child: Column(
            children: <Widget>[
              
              SizedBox(height: 5,),
              Container(
                height: 200,
                width: 300,
                  child: Image.asset('Assests/Images/flutter-logo.png')),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  validator:
                      MultiValidator([
                        RequiredValidator(errorText: "Email Required"),
                        EmailValidator(errorText: "Enater valid email")
                       ]),
                      // EmailValidator(errorText: ""),

                  // RequiredValidator(errorText: "must enter you valid password"),

                  // (value){
                  //   if(value.isEmpty){
                  //     return "Enter valid email";
                  //   }
                  //   else
                  //     return null;
                  //
                  // },

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "eg. johnsmithth@gmail.com",

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(

                  // validator: (value){
                  //   if(value.isEmpty){
                  //     return "@ Required";
                  //   }
                  //   else if(value.length<6){
                  //     return "Password should be 6 char long";
                  //   }
                  //   else if(value.length>15){
                  //     return "Password should be less than 15 char";
                  //   }
                  //   else
                  //     return null;
                  // },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "min 6 char long",
                  ),
                  validator: MultiValidator([
                      RequiredValidator(errorText: "Required"),
                      MinLengthValidator(6, errorText: "min 6 char long"),
                      MaxLengthValidator(15, errorText: "Not more than 15 char"),
                    ]),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 70,
                width: 150,
                color: Colors.blue,
                child: FlatButton(
                    onPressed: (){
                      if(formKey.currentState.validate()){
                        print("Valid input");
                      }
                      else{
                        print("Invalid inputs");
                      }
                    },
                    child: Text("Login",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
