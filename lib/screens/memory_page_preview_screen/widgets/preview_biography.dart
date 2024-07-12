import 'package:flutter/material.dart';

class PreviewBiographyWidget extends StatelessWidget {
  const PreviewBiographyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Всю свою жизнь Мария была честным, трудолюбивым и добрым человеком. Она пользовалась уважением на работе и в родном городе, всегда была готова прийти на помощь родным, друзьям и коллегам.\n\nУшла из жизни в возрасте 68 лет, оставив после себя добрую память о человеке, прожившем простую, но достойную жизнь.',
      style: TextStyle(fontSize: 16),
    );
  }
}
