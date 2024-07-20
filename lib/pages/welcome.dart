import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _homepageState();
}

class _homepageState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      //   title: Text("Welcome"),
      //   centerTitle: true,
      // ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(
                "Src/assets/images/main_top.png",
                height: 200,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                        ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  SvgPicture.asset(
                    "Src/assets/icons/chat.svg",
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[600],
                        fixedSize: Size(296, 25),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(296, 25),
                        backgroundColor: Colors.purple[100],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      )),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                "Src/assets/images/main_bottom.png",
                height: 180,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
