import 'package:flutter/material.dart';

class InputCustom extends StatelessWidget {
  final String label;
  final IconData icon;
  final Widget? sufixIcon;
  final TextInputType type;
  final TextEditingController? txtController;
  final GestureTapCallback? onPressIcon;
  final bool isObscure;

  const InputCustom(
      {Key? key,
      required this.label,
      required this.icon,
      this.sufixIcon,
      required this.type,
      this.txtController,
      this.onPressIcon,
      required this.isObscure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      obscureText: isObscure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        labelText: label,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(9),
          ),
        ),
        prefixIcon: IconButton(
          icon: Icon(icon),
          onPressed: onPressIcon,
          color: const Color(0xFFBA2D0B),
        ),
        suffixIcon: sufixIcon,
      ),
    );
  }
}
