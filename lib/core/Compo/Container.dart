import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.text,
    required this.image,
    this.tap,
  }) : super(key: key);

  final String text;
  final String image;
  final void Function()? tap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        height: 160.h,
        width: 120.w,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          children: [
            Image.asset(image),
            const SizedBox(height: 9),
            Text(
              text,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
