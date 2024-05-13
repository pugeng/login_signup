import 'package:flutter/material.dart';
import 'onboarding_page.dart'; // Sesuaikan dengan nama file halaman onboarding Anda

class SuccessfulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check,
              size: 100,
              color: Color(0xFF2D4990), // Ubah warna ikon menjadi biru
            ),
            SizedBox(height: 10), // Tambahkan jarak antara ikon dan teks
            Text(
              'Your Sign up was successful',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40), // Tambahkan jarak antara teks dan tombol
            TextButton(
              onPressed: () {
                // Navigasi ke halaman onboarding
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingPage()), // Ganti OnboardingPage dengan nama kelas halaman onboarding Anda
                );
              },
              child: Text(
                'Continue to Home',
                style: TextStyle(
                  color: Color(0xFF2D4990),
                  fontSize: 17,
                  decoration: TextDecoration.underline, // Tambahkan garis bawah
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
