import 'package:flutter/material.dart';
import 'package:todo_app/feature/presentation/widgets/profile_data.dart';

class BodyProfileScreen extends StatelessWidget {
  const BodyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          ProfileData(
            title: 'NAME',
            content: 'Muhamed Fdawy',
          ),
          ProfileData(
            title: 'PHONE',
            content: '+20 100 803-6610',
          ),
          ProfileData(
            title: 'LEVEL',
            content: 'Senior',
          ),
          ProfileData(
            title: 'YEARS OF EXPERIENCE',
            content: '7 years',
          ),
          ProfileData(
            title: 'LOCATION',
            content: 'Sharkia, Egypt',
          ),
        ],
      ),
    );
  }
}
