import 'package:flutter/material.dart';
import 'package:savart_remaster/src/resource/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key, this.ontap, required this.text, this.backgroundColor});

  final VoidCallback? ontap;
  final String text;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(10.0),
        disabledBackgroundColor: Colors.grey,
          backgroundColor: backgroundColor ?? AppColors.customBlue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0))),
      onPressed: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
