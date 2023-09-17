import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  const ButtonWidget({
    super.key,
    required this.buttonName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10,right: 50,left: 50),
        child: Container(
            height: 50,
            decoration: ShapeDecoration(
              color: const Color(0xFFEB0029),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child:  Center(
              child: Text(
                buttonName,
                style: const TextStyle(
                  color: Color(0xFFFBF2CF),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )),
      ),
    );
  }
}
