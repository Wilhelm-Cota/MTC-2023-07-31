import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff274657),
        child: Column(
          children: [
            SizedBox(
              height: 202.h,
            ),
            Center(
              child: SizedBox(
                height: 196.h,
                width: 196.w,
                child: const Image(
                  image: AssetImage('images/E-VOUCHER.png'),
                ),
              ),
            ),
            SizedBox(
              height: 42.h,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 31.sp,
                  fontStyle: FontStyle.italic,
                ),
                children: const [
                  TextSpan(text: 'E'),
                  TextSpan(
                    text: '-',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(text: 'VOUC'),
                  TextSpan(
                    text: 'H',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(text: 'ER'),
                ],
              ),
            ),
            SizedBox(
              height: 177.h,
            ),
            Text(
              'loading ...',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
