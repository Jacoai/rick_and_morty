import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/shared/sort_enum.dart';
import 'package:rick_and_morty/core/theme/theme.dart';

class DropdownCharaterSort extends StatefulWidget {
  const DropdownCharaterSort({super.key, required this.changeSort});

  final Function(SortParams) changeSort;

  @override
  State<DropdownCharaterSort> createState() => _DropdownCharaterSortState();
}

class _DropdownCharaterSortState extends State<DropdownCharaterSort> {
  SortParams dropdownValue = SortParams.values.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<SortParams>(
      value: dropdownValue,
      dropdownColor: AppColors.green,
      items:
          SortParams.values.map((value) {
            return DropdownMenuItem<SortParams>(
              value: value,
              child: Text(value.label),
            );
          }).toList(),
      onChanged: (value) {
        setState(() {
          dropdownValue = value ?? dropdownValue;
          widget.changeSort(value ?? dropdownValue);
        });
      },
    );
  }
}
