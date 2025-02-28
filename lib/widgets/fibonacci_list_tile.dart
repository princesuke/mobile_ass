import 'package:flutter/material.dart';

class FibonacciListTile extends StatelessWidget {
  final int number;
  final int index;
  final IconData icon;
  final bool isHighlighted;
  final VoidCallback onTap;
  final bool isSameType;

  const FibonacciListTile({
    super.key,
    required this.number,
    required this.index,
    required this.icon,
    required this.isHighlighted,
    required this.onTap,
    required this.isSameType,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(
            'Index: $index, Number: $number',
            style: TextStyle(
              fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
              color: isHighlighted ? Colors.blue : null,
            ),
          ),
          const Spacer(),
          Icon(icon),
        ],
      ),
      onTap: isSameType ? onTap : null,
      enabled: isSameType,
    );
  }
}
