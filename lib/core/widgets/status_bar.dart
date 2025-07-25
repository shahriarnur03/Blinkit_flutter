import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  final Color backgroundColor;
  final Color color;
  const StatusBar({
    super.key,
    this.backgroundColor = const Color(0XFFF9D56A), // Default color
    this.color = Colors.black, // Default color
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          height: 160,
          width: double.infinity,

          color: backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Blinkit in",
                style: TextStyle(fontFamily: 'poppinsB', fontSize: 12, color: color),
              ),

              Text(
                "16 minutes",
                style: TextStyle(fontFamily: 'poppinsB', fontSize: 20 , color: color),
              ),

              Row(
                children: [
                  Text(
                    "HOME- ",
                    style: TextStyle(
                      fontFamily: 'poppinsB',
                      fontSize: 12,
                      letterSpacing: 1.5,
                      color: color
                    ),
                  ),
                  Text(
                    "Sujal Dave, Ratanada, Jodhpur (Raj)",
                    style: TextStyle(fontFamily: 'poppinsR', fontSize: 12, color: color),
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
