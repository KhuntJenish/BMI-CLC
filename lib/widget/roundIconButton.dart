import 'package:flutter/material.dart';

class RonudIconButton extends StatelessWidget {
  RonudIconButton({
    @required this.icon,
    @required this.onPressed,
  });
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      fillColor: Color(0xFF4C4F5C),
      shape: CircleBorder(),
    );
  }
}
