import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchClass extends StatelessWidget {
  const SearchClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 52,
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FaIcon(
                    FontAwesomeIcons.filter,
                    color: Colors.black87,
                  ),
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Colors.black87,
                  ),
                ),
                hintText: "Tìm bất cứ điều gì",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: Colors.black87),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: Colors.black87),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
