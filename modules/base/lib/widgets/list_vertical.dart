import 'package:flutter/material.dart';

import 'fixed_text.dart';

class ListVerticalWidget<T> extends StatelessWidget {
  const ListVerticalWidget({
    Key? key,
    required this.data,
    required this.itemBuilder,
    this.noDataPlaceHolder,
  }) : super(key: key);
  final Widget itemBuilder;
  final Widget? noDataPlaceHolder;
  final List<T> data;
  @override
  Widget build(BuildContext context) {
    return data.isEmpty
        ? noDataPlaceHolder ?? const FixedText('Không tìm thấy dữ liệu!')
        : ListView.separated(
            itemBuilder: (_, index) => itemBuilder,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: data.length,
          );
  }
}
