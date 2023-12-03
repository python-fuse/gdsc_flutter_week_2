import 'package:flutter/material.dart';
import 'package:gdsc_ksusta_flutter/widgets/input_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GDSC Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  'GDSC KSUSTA',
                  style: TextStyle(fontSize: 36, fontFamily: 'cursive'),
                ),
              ),
              const Column(
                children: [
                  Input(
                    hint: 'Enter phone number',
                    inputIcon: Icons.phone,
                    keyType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Input(
                    keyType: TextInputType.number,
                    hint: 'Enter 6-digits Password',
                    inputIcon: Icons.password_rounded,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      const Text('Remember Password')
                    ],
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text('Forgot Password?'))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledButton(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Create a new account'),
                ),
              ),
              const Spacer(),
              const Text('Licenced by the CBN and insured by NDIC'),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 231, 229, 229),
    );
  }
}
