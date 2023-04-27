import 'package:flutter/material.dart';
import 'package:gip_test/main_page/widgets/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Тренажер по тестам НОК")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: const [
              MainPageHeading(),
              SizedBox(height: 24),
              SubjectSelect(),
              SizedBox(height: 24),
              TopicSelect(),
              SizedBox(height: 32),
              TestInfo(),
              SizedBox(height: 40),
              StartTestButton(),
            ],
          ),
        ),
      ),
    );
  }
}
