import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_messenger/common/utils/coloors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Function(String)? onChanged;

  const CustomTextField(
      {Key? key,
      this.controller,
      this.hintText,
      this.readOnly,
      this.textAlign,
      this.keyboardType,
      this.prefixText,
      this.onTap,
      this.suffixIcon,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: readOnly == null ? keyboardType : null,
      onTap: onTap,
      onChanged: onChanged,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      decoration: InputDecoration(
        isDense: true,
        suffix: suffixIcon,
        hintStyle: TextStyle(color: context.theme.greyColor),
        hintText: hintText,
        prefixText: prefixText,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Coloors.greenDark),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Coloors.greenDark, width: 2),
        ),
      ),
    );
  }
}
