import 'package:flutter/material.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../generated/assets.dart';
import 'data_card.dart';

class DataListSection extends StatelessWidget {
  final ScrollController scrollController;

  const DataListSection({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [Assets.imagesDataView1, Assets.imagesDataView2, Assets.imagesDataView3];
    final List<Color> colorList = [const Color(0xff78C6FF), const Color(0xffFB902E), const Color(0xff78C6FF)];

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 4),
        child: ScrollbarTheme(
          data: ScrollbarThemeData(
            thumbVisibility: MaterialStateProperty.all(true),
            trackVisibility: MaterialStateProperty.all(true),
            thickness: MaterialStateProperty.all(5),
            radius: const Radius.circular(8),
            thumbColor:
            MaterialStateProperty.all(AppColors.primaryBlue),
            trackColor:
            MaterialStateProperty.all(const Color(0xffB6B8D0)),
          ),
          child: Scrollbar(
            controller: scrollController,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 3,
              itemBuilder: (context, index) {
                return DataCard(
                  title: 'Data View ${index + 1}',
                  isActive: index != 2,
                  data1: '55505.63',
                  data2: '58805.63',
                  iconPath: imageList[index],
                  color: colorList[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
