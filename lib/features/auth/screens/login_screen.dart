import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Widget> shapes = [
      const Positioned(
        top: -40,
        left: -60,
        child: SizedBox(
          width: 180,
          height: 180,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(65, 21, 87, 185),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
      const Positioned(
        top: -40,
        left: -60,
        child: SizedBox(
          width: 240,
          height: 240,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(65, 21, 87, 185),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
      const Positioned(
        top: 30,
        right: 50,
        child: SizedBox(
          width: 120,
          height: 60,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(86, 123, 38, 160),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
          ),
        ),
      ),
      Positioned(
        top: size.height * 0.35,
        left: -40,
        child: Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: Color.fromARGB(38, 191, 54, 12),
            borderRadius: BorderRadius.circular(28),
          ),
        ),
      ),
      Positioned(
        top: size.height * 0.45,
        right: -30,
        child: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(33, 27, 94, 32),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      const Positioned(
        bottom: 40,
        left: -30,
        child: SizedBox(
          width: 70,
          height: 70,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(38, 0, 96, 100),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
      const Positioned(
        bottom: -40,
        right: -40,
        child: SizedBox(
          width: 120,
          height: 120,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(43, 2, 13, 138),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
          ),
        ),
      ),
      const Positioned(
        bottom: -40,
        right: -40,
        child: SizedBox(
          width: 180,
          height: 180,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(43, 98, 107, 206),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 180,
        left: 70,
        child: Container(
          width: 280,
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(65, 21, 87, 185),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      Positioned(
        bottom: -50,
        left: 105,
        child: Container(
          width: 50,
          height: 150,
          decoration: BoxDecoration(
            color: Color.fromARGB(65, 35, 12, 243),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      Positioned(
        top: size.height * 0.25,
        left: size.width * 0.35,
        child: Transform.rotate(
          angle: -0.4,
          child: SizedBox(
            width: 110,
            height: 30,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromARGB(31, 38, 127, 172),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),
          ),
        ),
      ),
      const Positioned(
        top: 250,
        right: 30,
        bottom: null,
        left: null,
        child: SizedBox(
          width: 36,
          height: 82,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(32, 233, 17, 17),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 211, 226),
      body: Stack(
        children: [
          ...shapes,
          Center(
            child: Card(
              elevation: 5,
              color: const Color.fromARGB(180, 118, 174, 238),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 36.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blueAccent,
                            Color.fromARGB(220, 104, 112, 230),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(66, 3, 44, 156),
                            blurRadius: 24,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(28),
                      child: const Icon(
                        Icons.school,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      "Welcome to College Sync",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF232946),
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Your campus, connected.\nSign in to get started.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const SizedBox(height: 48),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/google_logo.png',
                        height: 24,
                        width: 24,
                      ),
                      label: const Text(
                        "Continue with Google",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        minimumSize: const Size(double.infinity, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        elevation: 4,
                        shadowColor: Color.fromARGB(38, 33, 150, 243),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
