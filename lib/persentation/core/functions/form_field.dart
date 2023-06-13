import 'package:standart_project/persentation/core/utils/border/border_radius.dart';
import 'package:standart_project/persentation/core/utils/spacing/sizebox.dart';
import 'package:standart_project/persentation/core/utils/styles/colors.dart';
import 'package:standart_project/persentation/core/utils/styles/text_style.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  const CustomFormField({
    Key? key,
    this.hint,
    this.label,
    this.validator,
    this.onChanged,
    this.isPhone = false,
    this.isNumber = false,
    this.isPassword = false,
  }) : super(key: key);

  final String? hint;
  final String? label;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool isPhone;
  final bool isNumber;
  final bool isPassword;

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label ?? '', style: ts10white600),
        siboh4,
        Row(
          children: [
            Expanded(
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: widget.validator,
                onChanged: widget.onChanged,
                style: ts12white500,
                obscureText: widget.isPassword ? isHide : false,
                keyboardType: widget.isNumber ? TextInputType.phone : null,
                decoration: InputDecoration(
                  prefixIcon: widget.isPhone
                      ? Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 4),
                          width: 40,
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: const Text('+62', style: ts12grey),
                        )
                      : null,
                  suffixIcon: widget.isPassword
                      ? GestureDetector(
                          onTap: () {
                            isHide = !isHide;
                            setState(() {});
                          },
                          child: Icon(
                            isHide
                                ? Icons.visibility_off
                                : Icons.remove_red_eye,
                            size: 20,
                            color: greyLiteColor,
                          ),
                        )
                      : null,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  hintText: widget.hint,
                  hintStyle: ts12grey,
                  errorStyle: ts12Red,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: borderRadius8,
                    borderSide: const BorderSide(color: headColor),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: borderRadius8,
                    borderSide: const BorderSide(color: headColor),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: borderRadius8,
                    borderSide: const BorderSide(color: redColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
