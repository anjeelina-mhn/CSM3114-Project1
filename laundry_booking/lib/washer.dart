import 'package:flutter/material.dart';
import 'summary.dart';

class Washer extends StatefulWidget {
  @override
  _WasherState createState() => _WasherState();
}

class _WasherState extends State<Washer> {
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Washer'),
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
                'Enter Date and Time for Washer Booking',
                style: TextStyle(color: Colors.white, backgroundColor: Colors.black54),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: dateController,
                decoration: InputDecoration(
                  labelText: 'Date (YYYY-MM-DD)',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              TextFormField(
                controller: timeController,
                decoration: InputDecoration(
                  labelText: 'Time (HH:MM)',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              if (errorMessage.isNotEmpty)
                Text(
                  errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (!_isValidDateTime()) {
                    setState(() {
                      errorMessage = 'Please input correct date and time format';
                    });
                  } else {
                    String confirmationMessage =
                        'Washer booked for ${dateController.text} at ${timeController.text}';
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Summary(
                          confirmationMessage: confirmationMessage,
                        ),
                      ),
                    );
                  }
                },
                child: Text('Next to Summary'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isValidDateTime() {
    final datePattern = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    final timePattern = RegExp(r'^\d{2}:\d{2}$');

    return datePattern.hasMatch(dateController.text) &&
        timePattern.hasMatch(timeController.text);
  }
}