import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stepz_store/core/theme/theme.dart';
import 'package:stepz_store/features/Authentication/widgets/textfield.dart'
    as textfield;

class Signin_Page extends StatefulWidget {
  const Signin_Page({super.key});

  @override
  State<Signin_Page> createState() => _SigninState();
}

class _SigninState extends State<Signin_Page> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome back !',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              Text(
                "Enter your creddentials to continue.",
                style: AppTheme.lightTheme.textTheme.titleMedium,
              ),
              SizedBox(height: 20),
              textfield.CustomTextField(
                labelText: 'Email',
                hintText: 'Enter your email',
                textEditingController: emailController,
              ),
              SizedBox(height: 20),
              textfield.CustomTextField(
                labelText: 'Password',
                hintText: 'Enter your password',
                obscureText: true,
                textEditingController: passwordController,
              ),
              SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style:
                      AppTheme.lightTheme.elevatedButtonTheme.style ??
                      ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryColor,
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                  onPressed: () {
                    // Handle sign-in logic here
                    // print(
                    //   'Email: ${emailController.text}, Password: ${passwordController.text}',
                    // );
                  },
                  child: const Text('Sign In'),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: AppTheme.lightTheme.textTheme.bodyMedium,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to sign-up page
                      GoRouter.of(context).go('/signup');
                    },
                    child: Text(
                      'Sign Up',
                      style: AppTheme.lightTheme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
