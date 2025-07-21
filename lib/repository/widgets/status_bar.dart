import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          height: 160,
          width: double.infinity,

          color: Color(0XFFF9D56A),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Blinkit in",
                style: TextStyle(fontFamily: 'poppinsB', fontSize: 12),
              ),

              Text(
                "16 minutes",
                style: TextStyle(fontFamily: 'poppinsB', fontSize: 20),
              ),

              Row(
                children: [
                  Text(
                    "HOME- ",
                    style: TextStyle(
                      fontFamily: 'poppinsB',
                      fontSize: 12,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Text(
                    "Sujal Dave, Ratanada, Jodhpur (Raj)",
                    style: TextStyle(fontFamily: 'poppinsR', fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 37,

                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Search "ice-cream"',
                    prefixIcon: Icon(Icons.search, size: 18),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: Colors.black87,
                      size: 18,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 20,
          bottom: 90,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
