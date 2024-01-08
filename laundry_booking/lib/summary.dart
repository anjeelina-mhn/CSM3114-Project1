import 'package:flutter/material.dart';
import 'package:laundry_booking/mainmenu.dart';

class Summary extends StatelessWidget {
  final String confirmationMessage;

  Summary({required this.confirmationMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Summary'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/laundry1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Thank you for using ',
                style: TextStyle(fontSize: 20, color: Colors.white, backgroundColor: Color.fromARGB(167, 243, 51, 33)),
              ),
              SizedBox(height: 8),
              Text(
                'College Laundry Booking App!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,backgroundColor: Color.fromARGB(167, 243, 51, 33)),
              ),
              SizedBox(height: 20),
              Text(
                'Please come on time to avoid delays.',
                style: TextStyle(fontSize: 16, color: Colors.white, backgroundColor: Color.fromARGB(167, 243, 51, 33)),
              ),
              SizedBox(height: 20),
              Text(
                'Your booking date and time are:',
                style: TextStyle(fontSize: 16, color: Colors.white, backgroundColor: Color.fromARGB(167, 243, 51, 33)),
              ),
              SizedBox(height:8),
              Text(
                confirmationMessage,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white, backgroundColor: Colors.black54),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainMenu()),
                  );
                },
                child: Text('Restart Booking'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}