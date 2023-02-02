import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsBottom extends StatelessWidget {
  const AboutUsBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Text(
            '''We are a team of tech enthusiasts who believe in making a difference in people's professional lives. Our passion for innovation and user-centered design inspired us to create a cutting-edge digital business card application.

Our mission is to provide a simple, yet powerful tool for professionals to showcase their brand and network with ease. With our app, you can create and share your digital business cards in seconds, without the need for physical cards. Our user-friendly interface makes it easy for you to customize your card, add your contact information, and even attach multimedia files like your portfolio or resume.

We understand the importance of making a great first impression, and that's why we've made our app accessible and affordable to everyone. Whether you're a freelancer, entrepreneur, or part of a large corporation, our app is designed to help you stand out from the crowd and make meaningful connections.

We're dedicated to continuously improving our product and delivering a seamless experience to our users. If you have any feedback or suggestions, we'd love to hear from you.

Thank you for choosing our digital business card application, and we look forward to helping you elevate your personal brand.''',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppins',
              fontSize: 14.sp,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
