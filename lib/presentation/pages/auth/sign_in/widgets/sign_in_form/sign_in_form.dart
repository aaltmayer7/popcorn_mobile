import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:popcorn_mobile/presentation/core/theme/app_colors.dart';

class SigninForm extends StatelessWidget {
  final GlobalKey<FormBuilderState> _signinForm = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _signinForm,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormBuilderTextField(
            attribute: "email",
            autocorrect: false,
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(primaryColor), width: 3),
                borderRadius: BorderRadius.circular(25),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(primaryColor), width: 3),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(primaryColor), width: 3),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 20),
          FormBuilderTextField(
            attribute: "password",
            keyboardType: TextInputType.visiblePassword,
            cursorColor: Colors.white,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              labelText: "Password",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(primaryColor), width: 3),
                borderRadius: BorderRadius.circular(25),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(primaryColor), width: 3),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(primaryColor), width: 3),
                borderRadius: BorderRadius.circular(25),
              ),
              fillColor: Colors.red,
              filled: true,
              hintStyle: TextStyle(color: Colors.white70),
            ),
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
