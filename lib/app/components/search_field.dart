import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Theme.of(context).colorScheme.onPrimary
            ),
          ),
        ],
      ),
    );
  }
}
