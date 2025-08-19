import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class Difficulty extends StatelessWidget {

  final int dificultyLevel;

  const Difficulty({
    required this.dificultyLevel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 1)
              ? PrimaryPurple
              : InativePurple,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 2)
              ? PrimaryPurple
              : InativePurple,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 3)
              ? PrimaryPurple
              : InativePurple,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 4)
              ? PrimaryPurple
              : InativePurple,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (dificultyLevel >= 5)
              ? PrimaryPurple
              : InativePurple,
        ),
      ],
    );
  }
}