import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(AktivitasGuest());
}

class AktivitasGuest extends StatefulWidget {
  const AktivitasGuest({Key? key}) : super(key: key);
  @override
  AktivitasGuestState createState() {
    return AktivitasGuestState();
  }
}

class AktivitasGuestState extends State<AktivitasGuest> {
  final textEditController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Controller buat text
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    textEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF3D2645),
                Color(0xFF000000)
              ], // Replace with your desired colors
              begin: Alignment.topCenter, // Define the gradient starting point
              end: Alignment.bottomCenter, // Define the gradient ending point
            ),
          ),
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 8, 20, 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("HOME",
                        style: GoogleFonts.outfit(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w700)),
                    Row(
                      children: [
                        IconButton(
                            iconSize: 30,
                            onPressed: () {
                              Navigator.pushNamed(context, '/notifikasi_guest');
                            },
                            icon: const Icon(Icons.notifications),
                            color: Colors.white),
                        IconButton(
                            iconSize: 30,
                            onPressed: () {
                              Navigator.pushNamed(context, '/profile_guest');
                            },
                            icon: const Icon(Icons.person),
                            color: Colors.white),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Riwayat Transaksi",
                        style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Menampilkan Logo
                      Container(
                        margin: EdgeInsets.only(bottom: 19.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Image.asset(
                            'assets/images/aktivitas_guest.png',
                            width: 126,
                            height: 126,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Oopss..",
                        style: GoogleFonts.rubik(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Text(
                        "Fitur ini dapat diakses jika kamu\nsudah masuk untuk mendaftar",
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      SizedBox(
                        width: 165,
                        height: 34,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF832161),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17.0),
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/login'),
                          child: Text(
                            'Daftar Sekarang!',
                            style: GoogleFonts.rubik(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 180,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF832161),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        iconSize: 24,
                        onPressed: () {
                          Navigator.pushNamed(context, '/explore',
                              arguments: "0");
                        },
                        icon: const Icon(Icons.explore_rounded),
                        color: Colors.white,
                      ),
                      Stack(
                        children: [
                          IconButton(
                            iconSize: 24,
                            onPressed: () {},
                            icon: const Icon(Icons.home),
                            color: Colors.white,
                          ),
                          Positioned(
                            top: 33,
                            right: 10,
                            left: 10,
                            bottom: 3,
                            child: Container(
                              width: 20,
                              height: 4,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        iconSize: 24,
                        onPressed: () {
                          Navigator.pushNamed(context, '/chat-guest');
                        },
                        icon: const Icon(Icons.mark_chat_unread),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Stack(
          children: [
            Positioned(
              bottom: 45,
              right: 0,
              child: Container(
                width: 44,
                height: 44,
                child: FloatingActionButton(
                  onPressed: () {
                    // jika ditap
                  },
                  backgroundColor: Color(0xFFDA4167),
                  child: const Icon(Icons.headset_mic),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
