import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormInput extends StatefulWidget {
  final String label;
  final String hint;
  final bool obscure;
  final Icon suffixIcon;
  late String inputValue;

  FormInput({
    Key? key,
    required this.label,
    required this.hint,
    required this.obscure,
    required this.suffixIcon,
    required this.inputValue,
  }) : super(key: key);
  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color(0xFF412F59),
              fontFamily: "Poppins",
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 4,
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Digite algum texto';
            }
            return null;
          },
          onSaved: (value) {
            if (value == null || value.isEmpty) {
              return null;
            } else {
              setState(() {
                widget.inputValue = value;
              });
            }
          },
          obscureText: widget.obscure,
          keyboardType: TextInputType.visiblePassword,
          autofocus: false,
          style: TextStyle(
              color: Color(0xFFBDB8D9),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
          decoration: InputDecoration(
              suffixIcon: widget.suffixIcon,
              hintText: widget.hint,
              hintStyle: TextStyle(
                  color: Color(0xFFBDB8D9),
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(color: Color(0xFFBDB8D9), width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(color: Color(0xFFBDB8D9), width: 2.0),
              ),
              fillColor: Colors.transparent,
              filled: true,
              contentPadding: EdgeInsets.all(17)),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
