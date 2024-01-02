import 'package:flutter/material.dart';
import 'daftar_wisata.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('bg.jpg'), // Ganti dengan path gambar sesuai proyek Anda
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'logo.png', // Ganti dengan path logo sesuai proyek Anda
                height: 150,
                width: 200,
              ),
              SizedBox(height: 10),
              Text(
                'Daftar Akun Destinasi Wisata Purbalingga',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Konfirmasi Password',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Logika untuk menyimpan data pendaftaran dan melakukan navigasi ke halaman DaftarWisata
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DaftarWisata()),
                  );
                },
                child: Text('Daftar'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Logika untuk kembali ke halaman login
                  Navigator.pop(context);
                },
                child: Text('Sudah punya akun? Login di sini'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
