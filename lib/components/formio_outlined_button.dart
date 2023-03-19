import 'package:flutter/material.dart';

OutlinedButton getOutlinedButton(String content, VoidCallback? action) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      side: BorderSide(width: 2, color: Color.fromARGB(255, 223, 137, 24)),
      backgroundColor: Color.fromARGB(255, 223, 137, 24),
      foregroundColor: Colors.white,
    ),
    onPressed: action,
    child: Text(content),
  );
}
