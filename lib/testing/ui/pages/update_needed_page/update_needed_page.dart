import 'package:flutter/material.dart';
import 'package:open_store/open_store.dart';

class UpdateNeededPage extends StatelessWidget {
  const UpdateNeededPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Вы используете устаревшую версию, обновите приложение",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            const Icon(Icons.autorenew, size: 50, color: Color(0xFF277ADB)),
            const SizedBox(height: 40),
            FilledButton(
              onPressed: () {
                OpenStore.instance.open(
                  androidAppBundleId: "ru.nok_test.mobile",
                );
              },
              style: const ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(156, 41))),
              child: const Text("Обновить"),
            )
          ],
        ),
      ),
    );
  }
}
