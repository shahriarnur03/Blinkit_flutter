import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: -11,backgroundColor: Color(0XFFF9D56A), elevation: 0,)
      ,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 48),
          Stack(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                color: Color(0XFFF9D56A),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Blinkit in",
                      style: TextStyle(fontFamily: 'PoppinsB', fontSize: 12),
                    ),
                    Text(
                      "16 minutes",
                      style: TextStyle(fontFamily: 'PoppinsB', fontSize: 20),
                    ),
                    Row(
                      children: [
                        Text(
                          "HOME - ",
                          style: TextStyle(
                            fontFamily: 'PoppinsB',
                            fontSize: 12,
                            letterSpacing: 1 
                          ),
                        ),
                        Text(
                          "Sujal Dave, Ratanada, Jodhpur (Raj)",
                          style: TextStyle(
                            fontFamily: 'PoppinsR',
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    SizedBox(height: 37, width: 346, child: TextField(
                      
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        
                        hintText: "Search 'ice-cream'",
                        prefixIcon: Icon(Icons.search, color: Colors.black,size: 14,),
                        suffixIcon: Icon(Icons.mic, color: Colors.black, size: 14,),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black)
                        ),
                        contentPadding: EdgeInsets.all(10)
                      ),
                    )),
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
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 12),
            child: Image.asset("assets/images/shopping-cart.png", ),),
            Center(
              child: Text("Reordering will be easy", style: TextStyle(
                fontSize: 16,
                fontFamily: 'PoppinsB',  
              ),),),
            Center(
              child: Text("Items you order will show up here so you can buy\n them again easily.", style: TextStyle(
                fontSize: 10,
                fontFamily: 'PoppinsR',  
              ),
              textAlign: TextAlign.center,
              
              ),
            )
        ],
        
      ),
    );
  }
}
