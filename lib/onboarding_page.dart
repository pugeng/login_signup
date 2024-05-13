import 'package:flutter/material.dart';
import 'login_page.dart'; // Impor file login_page.dart
import 'sign_up.dart'; // Impor file sign_up_page.dart

class OnboardingPage extends StatelessWidget {
  final Color blueColor = Color(0xFF2D4990);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Mengubah crossAxisAlignment menjadi CrossAxisAlignment.start
            children: [
              SizedBox(height: 30), 
              Center(
                child: Image.asset(
                  'images/A woman sells her work for a cryptocurrency to a guy.png', 
                  height: 500,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Buy ',
                        style: TextStyle(
                          color: blueColor,
                        ),
                      ),
                      TextSpan(
                        text: 'And ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Sell ',
                        style: TextStyle(
                          color: blueColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Anything Faster With The Chunky App',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Massive discounts and offers when you shop.',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigasi ke halaman login_page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: blueColor,
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 32.0), // Menyesuaikan padding tombol
                      minimumSize: Size(196, 55), // Menyesuaikan ukuran minimum tombol
                    ),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigasi ke halaman sign_up_page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: blueColor),
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 32.0), // Menyesuaikan padding tombol
                      minimumSize: Size(196, 55), // Menyesuaikan ukuran minimum tombol
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: blueColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80), 
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: OnboardingPage(),
    routes: {
      '/login': (context) => LoginPage(),
    },
  ));
}
