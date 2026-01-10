import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/language/screens/language_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            OutlinedButton(
              onPressed: () {
                LanguageBottomSheet.buildBottomSheet(context);
                // context.setLocale(Locale('ur', 'PK'));
              },
              child: Text('select_language'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
