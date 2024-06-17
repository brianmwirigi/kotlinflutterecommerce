import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  'Login Screen',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    letterSpacing: 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'To explore the app, please login.',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      color: Colors.black,
                      fontSize: 20.0,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  'assets/images/mukenaLogo.jpeg',
                  width: 300,
                  height: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Email',
                    labelStyle: GoogleFonts.getFont(
                      'Roboto',
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    ),
                    prefixIcon: const Align(
                      widthFactor: 1,
                      heightFactor: 1,
                      child: Icon(
                        Icons.email,
                      ),
                    ),
                    hintText: 'Example: johndoe@gmail.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Password',
                    labelStyle: GoogleFonts.getFont(
                      'Roboto',
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility,
                    ),
                    prefixIcon: const Align(
                      widthFactor: 1,
                      heightFactor: 1,
                      child: Icon(
                        Icons.password,
                      ),
                    ),
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.getFont(
                            'Roboto',
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 2,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          color: Colors.red,
                          fontSize: 20.0,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
