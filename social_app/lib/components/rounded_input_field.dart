import 'package:flutter/material.dart';
import 'package:social_app/components/text_field_container.dart';

import '../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final Function onTap;
  final bool enabled;

  const RoundedInputField({
    Key key,
    this.icon,
    this.hintText,
    this.onChanged,
    this.onTap, this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onTap: onTap,
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none,
            enabled: enabled,

        ),
      ),
    );
  }
}