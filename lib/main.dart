import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool showEmail = false; // الإيميل مخفي في البداية

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              // الصورة
              ClipOval(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhcympV7ce57k0-tU5_W4QU7UO7BkyOJtxuwLyxhWItFZmR5iJVDLaWN34&s=10",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 20),

              // الاسم 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, color: Colors.black),
                  SizedBox(width: 10),
                  Text("Razan Dahlawi", style: TextStyle(fontSize: 22)),
                ],
              ),

              // الوظيفة 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.work, color: Colors.black),
                  SizedBox(width: 10),
                  Text("Software Engineer", style: TextStyle(fontSize: 20)),
                ],
              ),

              // رقم الجوال 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, color: Colors.black),
                  SizedBox(width: 10),
                  Text("+966 123456789", style: TextStyle(fontSize: 20)),
                ],
              ),

              // الإيميل يظهر فقط إذا showEmail = true
              if (showEmail)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 10),
                    Text(
                      "razan@example.com",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ],
                ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showEmail = !showEmail;
                  });
                },
                child: Text(
                  showEmail ? "Hide Email" : "Show Email",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
