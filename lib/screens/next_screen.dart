import 'package:flutter/material.dart';

import '../components/scaffold_dashboard.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldDashboard(
      pageTitle: Text('Next Screen'),
      bodyWidget: Center(
        child: Text('This is the next screen'),
      ),
    );
  }
}
