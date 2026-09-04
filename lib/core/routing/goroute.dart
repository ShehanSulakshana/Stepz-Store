import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stepz_store/features/Authentication/pages/signin_page.dart';
import 'package:stepz_store/features/Authentication/pages/signup_page.dart';
import 'package:stepz_store/features/onboarding/pages/onboarding_screen.dart';

GoRouter get router => GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const OnboardingScreen()),

    GoRoute(path: '/signup', builder: (context, state) => const Signup_Page()),

    GoRoute(path: '/signin', builder: (context, state) => const Signin_Page()),
  ],
);
