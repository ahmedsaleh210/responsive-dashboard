import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: "Search",
        filled: true,
        fillColor: AppColors.secondaryColor,
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Material(
              color: AppColors.primaryColor,
              clipBehavior: Clip.none,
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
