import 'package:flutter/material.dart';
import 'package:news_hive/utils/helper.dart';

class AuthFormWidget extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const AuthFormWidget({
    super.key,
    required this.label,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: poppinsStyle(
            fontSize: tsSubtitle2,
            fontWeight: fMedium,
            color: cBlack,
          ),
        ),
        vsXSmall,
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          onChanged: onChanged,
          style: poppinsStyle(
            fontSize: tsSubtitle2,
            fontWeight: fRegular,
            color: cBlack,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: poppinsStyle(
              fontSize: tsSubtitle2,
              fontWeight: fRegular,
              color: cTextBlue,
            ),
            filled: true,
            fillColor: cLinear.withOpacity(0.3),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            suffixIcon: suffixIcon,
            errorStyle: poppinsStyle(
              fontSize: tsCaption,
              fontWeight: fRegular,
              color: cError,
            ),
          ),
        ),
      ],
    );
  }
}
