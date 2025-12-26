import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

   ProfileItem({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        margin:  EdgeInsets.only(bottom: 16),
        padding:  EdgeInsets.symmetric(horizontal: 16),
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow:  [
            BoxShadow(
              color: Colors.orange,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style:
                   TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
             Icon(Icons.arrow_forward_ios, size: 18),
          ],
        ),
      ),
    );
  }
}