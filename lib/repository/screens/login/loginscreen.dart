import 'package:blinkit/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 412,
              width: 375,
              child: Uihelper.CustomImage(img: "Onboarding_Screen.png"),
            ),
            Uihelper.CustomImage(img: "blinkit_login.png"),
            Text(
              "India’s last minute app",
              style: TextStyle(fontFamily: 'poppinsB', fontSize: 20),
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              child: Container(
                height: 230,
                width: 350,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      "Shahriar",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: 'PoppinsR',
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "78277XXXX",
                      style: TextStyle(
                        fontFamily: 'PoppinsB',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0Xffff9c9c9c),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtomNavScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0Xffffe23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login with ",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'PoppinsB',
                              ),
                            ),

                            SizedBox(
                              height: 15.44,
                              width: 73,
                              child: Image.asset("assets/images/Zomato.png"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Access your saved addresses from Zomato automatically!",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0Xffff9c9c9c),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "or login with phone number",
                        style: TextStyle(
                          color: Color(0Xffff269237),
                          fontFamily: 'PoppinsR',
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
