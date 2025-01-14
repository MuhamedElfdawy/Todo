import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/constants.dart';
import 'package:todo_app/feature/presentation/widgets/filter_button.dart';

class FilterActiveButton extends StatefulWidget {
  const FilterActiveButton({super.key});

  @override
  State<FilterActiveButton> createState() => _FilterActiveButtonState();
}

class _FilterActiveButtonState extends State<FilterActiveButton> {

  String activeButton = 'All';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: Constants.filters
          .map(
            (filter) => GestureDetector(
          onTap: () {
            activeButton = filter ;
            setState(() {});
          },
          child: FilterButton(
            text: filter,
            isActive: activeButton == filter,
          ),
        ),
      )
          .toList(),
    );
  }
}
