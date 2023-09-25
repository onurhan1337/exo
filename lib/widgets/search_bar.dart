import 'package:flutter/cupertino.dart';

import 'package:exo/styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar(
      {required this.controller, required this.focusNode, super.key});

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          color: Styles.searchBackground,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Icon(
                CupertinoIcons.search,
                color: Styles.searchIconColor,
              ),
              Expanded(
                child: CupertinoTextField(
                  controller: controller,
                  focusNode: focusNode,
                  style: Styles.searchText,
                  cursorColor: Styles.searchCursorColor,
                  decoration: null,
                ),
              ),
              GestureDetector(
                onTap: controller.clear,
                child: const Icon(
                  CupertinoIcons.clear_thick_circled,
                  color: Styles.searchIconColor,
                ),
              ),
            ],
          ),
        ));
  }
}
