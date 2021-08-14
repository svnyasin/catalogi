import 'package:catalogi/pages/onboarding/view/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:catalogi/app/app.dart';
import 'package:catalogi/pages/home/home.dart';
import 'package:catalogi/pages/login/login.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.firstSeen:
      return [OnboardingPage.page()];
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
    default:
      return [
        const MaterialPage<void>(
            child: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ))
      ];
  }
}
