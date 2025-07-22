import 'package:blinkit/repository/widgets/status_bar.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
      appBar: AppBar(
        backgroundColor: Color(0XFFF9D56A),
        toolbarHeight: -11,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StatusBar(),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Print Store",
                style: TextStyle(fontSize: 32, fontFamily: 'poppinsB'),
              ),
            ),
            Text(
              "Blinkit ensures secure prints at every stage",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'poppinsB',
                fontSize: 14,
                color: Color(0XFF9C9C9C),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 55, left: 10, right: 10),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 15,
                right: 15,
              ),
              height: 163,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "  Documents",
                        style: TextStyle(fontSize: 14, fontFamily: "poppinsB"),
                      ),
                      Text(
                        "✦ Price starting at rs 3/page",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "poppinsR",
                          color: Color(0XFF9C9C9C),
                        ),
                      ),
                      Text(
                        "✦ Paper quality: 70 GSM",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "poppinsR",
                          color: Color(0XFF9C9C9C),
                        ),
                      ),
                      Text(
                        "✦ Single side prints",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "poppinsR",
                          color: Color(0XFF9C9C9C),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 11),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFF27AF34),
                            
                          ),
                          child: Text(
                            "Upload Files",
                            style: TextStyle(fontFamily: 'poppinsB'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 10, 
                    bottom:24,
                    child: Image.asset('assets/images/print_page.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
