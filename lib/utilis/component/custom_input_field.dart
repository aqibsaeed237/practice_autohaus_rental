import 'package:flutter/material.dart';



class CustomTextField extends StatelessWidget {
  final Function(String) onEditingComplete;
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;
  final Widget? suufixicon;


  const CustomTextField({super.key, 
    required this.controller,
    required this.hintText,
    //required this.icon,
    required this.obsecureText,
    required this.onEditingComplete,
    this.suufixicon
 
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onEditingComplete: () => onEditingComplete(controller.value.text),
      cursorColor: Colors.brown,
      style: const TextStyle(color: Colors.brown, fontFamily: 'PoppinsRegular'),
      obscureText: obsecureText,
      
      
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 15, top: 20),
       // fillColor: Color.fromRGBO(30, 29, 37, 1.0),
       // filled: true,
        border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: const BorderSide(color: Color(0xFF8D8D8D))
            ),
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: const BorderSide(color: Color(0xFF8D8D8D))
            ),
            focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: const BorderSide(color: Colors.brown)
            ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xFF8D8D8D),),
        suffixIcon:  suufixicon,
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final Function(String) onSaved;
  final String regEx;
  final String hintText;
  final bool obsecureText;

  const CustomTextFormField(
      {super.key, required this.onSaved,
      required this.regEx,
      required this.hintText,
      required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) => onSaved(value!),
      cursorColor: Colors.brown,
      style: const TextStyle(color: Colors.brown),
      obscureText: obsecureText,
      validator: (value) {
        return RegExp(regEx).hasMatch(value!) ? null : 'Enter a Valid Value.';
      },
      decoration: InputDecoration(
      //  fillColor: Color.fromRGBO(38, 29, 37, 1.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.brown)),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
