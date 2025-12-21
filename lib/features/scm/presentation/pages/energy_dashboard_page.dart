import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scube_tech_task/app/router/app_shell.dart';
import 'package:scube_tech_task/app/theme/app_colors.dart';
import 'package:scube_tech_task/app/theme/app_font_weight.dart';
import 'package:scube_tech_task/app/theme/app_spacing.dart';
import 'package:scube_tech_task/app/theme/app_text_sizes.dart';
import 'package:scube_tech_task/app/widgets/app_text.dart';
import 'package:scube_tech_task/generated/assets.dart';
import '../bloc/energy_dashboard_cubit.dart';
import '../bloc/energy_deshboard_state.dart';
import '../enums/data_sub_view.dart';
import '../enums/main_view.dart';

class EnergyDashboardPage extends StatelessWidget {
  const EnergyDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _DashboardView();
  }
}

class _DashboardView extends StatelessWidget {
  const _DashboardView();

  @override
  Widget build(BuildContext context) {
    final TextEditingController fromDateController = TextEditingController();
    final TextEditingController toDateController = TextEditingController();
    final List<EnergyChartModel> todayCharts = [
      EnergyChartModel(
        totalKw: '5.53 kw',
        items: [
          EnergyDataItem(
            label: 'Data A',
            color: AppColors.primaryBlue,
            value: '2798.50',
            percentage: '29.53%',
            cost: '35689 ৳',
          ),
          EnergyDataItem(
            label: 'Data B',
            color: AppColors.lightBlue1,
            value: '72598.50',
            percentage: '53.39%',
            cost: '5259689 ৳',
          ),
          EnergyDataItem(
            label: 'Data C',
            color: AppColors.purple1,
            value: '72598.50',
            percentage: '53.39%',
            cost: '5259689 ৳',
          ),
          EnergyDataItem(
            label: 'Data D',
            color: AppColors.orangeAccent,
            value: '72598.50',
            percentage: '53.39%',
            cost: '5259689 ৳',
          ),
        ],
      ),
    ];
    final List<EnergyChartModel> customCharts = [
      EnergyChartModel(
        totalKw: '20.05 kw',
        items: [
          EnergyDataItem(
            label: 'Data A',
            color: AppColors.primaryBlue,
            value: '2798.50',
            percentage: '29.53%',
            cost: '35689 ৳',
          ),
          EnergyDataItem(
            label: 'Data B',
            color: AppColors.lightBlue1,
            value: '72598.50',
            percentage: '53.39%',
            cost: '5259689 ৳',
          ),
          EnergyDataItem(
            label: 'Data C',
            color: AppColors.purple1,
            value: '72598.50',
            percentage: '53.39%',
            cost: '5259689 ৳',
          ),
          EnergyDataItem(
            label: 'Data D',
            color: AppColors.orangeAccent,
            value: '72598.50',
            percentage: '53.39%',
            cost: '5259689 ৳',
          ),
        ],
      ),
      EnergyChartModel(
        totalKw: '5.53 kw',
        items: [
          EnergyDataItem(
            label: 'Data A',
            color: AppColors.primaryBlue,
            value: '2798.50',
            percentage: '29.53%',
            cost: '35689 ৳',
          ),
          EnergyDataItem(
            label: 'Data B',
            color: AppColors.lightBlue1,
            value: '72598.50',
            percentage: '53.39%',
            cost: '5259689 ৳',
          ),
          EnergyDataItem(
            label: 'Data C',
            color: AppColors.purple1,
            value: '72598.50',
            percentage: '53.39%',
            cost: '5259689 ৳',
          ),
          EnergyDataItem(
            label: 'Data D',
            color: AppColors.orangeAccent,
            value: '72598.50',
            percentage: '53.39%',
            cost: '5259689 ৳',
          ),
        ],
      ),
    ];
    return AppShell(
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: const EdgeInsets.only(top: 24),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight - 24,
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(top: 28),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          border: Border.all(color: const Color(0xffA5A7B9)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
                          child: Column(
                            children: [
                              ArcGauge(
                                progress: state.mainView == MainView.data
                                    ? 0.75
                                    : 0.55,
                                value: state.mainView == MainView.data
                                    ? (state.dataSubView == DataSubView.today
                                          ? '55.00'
                                          : '57.00')
                                    : '8897455',
                                unit: state.mainView == MainView.data
                                    ? (state.dataSubView == DataSubView.today
                                          ? 'kWh/Sqft'
                                          : 'kWh/Sqft')
                                    : 'tk',
                              ),

                              const SizedBox(height: 12),

                              if (state.mainView == MainView.data) ...[
                                _DataSubToggle(state),
                                const SizedBox(height: AppSpacing.md),

                                if (state.dataSubView == DataSubView.custom)
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: FromDateField(
                                            controller: fromDateController,
                                            onSelect: () {},
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: ToDateField(
                                            controller: toDateController,
                                            onSelect: () {},
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        SearchButtonField(onPressed: () {}),
                                      ],
                                    ),
                                  ),

                                const SizedBox(height: AppSpacing.md),

                                Column(
                                  children: List.generate(
                                    state.dataSubView == DataSubView.today
                                        ? todayCharts.length
                                        : customCharts.length,
                                    (index) {
                                      final chart =
                                          state.dataSubView == DataSubView.today
                                          ? todayCharts[index]
                                          : customCharts[index];
                                      return EnergyChartCard(chart: chart);
                                    },
                                  ),
                                ),
                              ] else ...[
                                DataCostInfoCard(
                                  items: [
                                    DataCostItem(
                                      label: 'Data 1',
                                      data: '2798.50 (29.53%)',
                                      costLabel: 'Cost 1',
                                      cost: '35689 ৳',
                                    ),
                                    DataCostItem(
                                      label: 'Data 2',
                                      data: '2798.50 (29.53%)',
                                      costLabel: 'Cost 2',
                                      cost: '35689 ৳',
                                    ),
                                    DataCostItem(
                                      label: 'Data 3',
                                      data: '2798.50 (29.53%)',
                                      costLabel: 'Cost 3',
                                      cost: '35689 ৳',
                                    ),
                                    DataCostItem(
                                      label: 'Data 4',
                                      data: '2798.50 (29.53%)',
                                      costLabel: 'Cost 4',
                                      cost: '35689 ৳',
                                    ),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Center(child: _MainToggle(state)),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _MainToggle extends StatelessWidget {
  final DashboardState state;

  const _MainToggle(this.state);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DashboardCubit>();

    return _Segment(
      left: 'Data View',
      right: 'Revenue View',
      selectedLeft: state.mainView == MainView.data,
      onLeft: cubit.selectDataView,
      onRight: cubit.selectRevenueView,
    );
  }
}

class _DataSubToggle extends StatelessWidget {
  final DashboardState state;

  const _DataSubToggle(this.state);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DashboardCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _DotButton(
          label: 'Today Data',
          active: state.dataSubView == DataSubView.today,
          onTap: cubit.selectToday,
        ),
        const SizedBox(width: 16),
        _DotButton(
          label: 'Custom Date Data',
          active: state.dataSubView == DataSubView.custom,
          onTap: cubit.selectCustom,
        ),
      ],
    );
  }
}

class ArcGauge extends StatelessWidget {
  final double progress;
  final String value;
  final String unit;

  const ArcGauge({
    super.key,
    required this.progress,
    required this.value,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 180,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: const Size(180, 180),
            painter: _ArcGaugePainter(progress),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText(
                value,
                fontSize: AppTextSizes.title,
                fontWeight: AppFontWeight.medium,
                color: AppColors.fontDarkBlue,
              ),
              AppText(
                unit,
                fontWeight: AppFontWeight.medium,
                color: AppColors.fontDarkBlue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ArcGaugePainter extends CustomPainter {
  final double progress;

  _ArcGaugePainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    const double strokeWidth = 14;

    const double startAngle = 2.73;
    const double sweepAngle = 4.00;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width / 2) - strokeWidth;

    final bgPaint = Paint()
      ..color = const Color(0xFFE6F1FF)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final fgPaint = Paint()
      ..color = AppColors.primaryBlue
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final rect = Rect.fromCircle(center: center, radius: radius);

    //* Background arc (light blue)
    canvas.drawArc(rect, startAngle, sweepAngle, false, bgPaint);

    //* Progress arc (dark blue)
    canvas.drawArc(rect, startAngle, sweepAngle * progress, false, fgPaint);
  }

  @override
  bool shouldRepaint(covariant _ArcGaugePainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}

class _Segment extends StatelessWidget {
  final String left;
  final String right;
  final bool selectedLeft;
  final VoidCallback onLeft;
  final VoidCallback onRight;

  const _Segment({
    required this.left,
    required this.right,
    required this.selectedLeft,
    required this.onLeft,
    required this.onRight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(left: 32, right: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xffA5A7B9)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _SegmentBtn(left, selectedLeft, onLeft),
          _SegmentBtn(right, !selectedLeft, onRight),
        ],
      ),
    );
  }
}

class _SegmentBtn extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _SegmentBtn(this.label, this.selected, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 14,
                width: 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: selected ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selected
                      ? AppColors.primaryBlue
                      : AppColors.fontGreyDark,
                ),
              ),
            ],
          ),
          const SizedBox(width: 6),
          AppText(
            label,
            fontWeight: selected
                ? AppFontWeight.semiBold
                : AppFontWeight.regular,
            fontSize: AppTextSizes.subtitle,
            color: selected ? AppColors.primaryBlue : AppColors.fontGreyDark,
          ),
        ],
      ),
    );
  }
}

class _DotButton extends StatelessWidget {
  final String label;
  final bool active;
  final VoidCallback onTap;

  const _DotButton({
    required this.label,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: active ? Colors.blue : Colors.grey),
                ),
              ),
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: active
                      ? AppColors.primaryBlue
                      : AppColors.fontGreyDark,
                ),
              ),
            ],
          ),
          const SizedBox(width: 6),
          AppText(
            label,
            fontWeight: active ? AppFontWeight.semiBold : AppFontWeight.regular,
            color: active ? AppColors.primaryBlue : AppColors.fontGreyDark,
          ),
        ],
      ),
    );
  }
}

class EnergyDataItem {
  final String label;
  final Color color;
  final String value;
  final String percentage;
  final String cost;

  EnergyDataItem({
    required this.label,
    required this.color,
    required this.value,
    required this.percentage,
    required this.cost,
  });
}

class EnergyChartModel {
  final String totalKw;
  final List<EnergyDataItem> items;

  EnergyChartModel({required this.totalKw, required this.items});
}

class EnergyChartCard extends StatelessWidget {
  final EnergyChartModel chart;

  const EnergyChartCard({super.key, required this.chart});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFB6B8D0)),
      ),
      child: Column(
        children: [
          /// HEADER
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  'Energy Chart',
                  fontWeight: AppFontWeight.semiBold,
                  color: Color(0xff04063E),
                ),
                AppText(
                  chart.totalKw,
                  fontWeight: AppFontWeight.semiBold,
                  fontSize: AppTextSizes.headline2,
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          /// DATA ROWS
          ...chart.items.map((e) => _EnergyRow(e)),
        ],
      ),
    );
  }
}

class _EnergyRow extends StatelessWidget {
  final EnergyDataItem item;

  const _EnergyRow(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4),
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 4),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD8DBF0)),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: AppSpacing.sm,
                width: AppSpacing.sm,
                margin: const EdgeInsets.only(
                  top: 6,
                  right: AppSpacing.sm,
                  bottom: AppSpacing.xs,
                ),
                decoration: BoxDecoration(
                  color: item.color,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 6),
              SizedBox(
                width: 48,
                child: AppText(
                  item.label,
                  fontWeight: AppFontWeight.semiBold,
                  fontSize: AppTextSizes.caption,
                ),
              ),
            ],
          ),

          Container(width: 1, height: 40, color: const Color(0xFFD8DBF0)),

          const SizedBox(width: AppSpacing.md),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Data : ',
                        style: TextStyle(
                          fontSize: AppTextSizes.caption,
                          color: AppColors.fontGreyDark,
                        ),
                      ),
                      TextSpan(
                        text: '${item.value} (${item.percentage})',
                        style: const TextStyle(
                          fontSize: AppTextSizes.caption,
                          color: AppColors.fontDarkBlue,
                          fontWeight: AppFontWeight.semiBold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: AppSpacing.xs),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Cost : ',
                        style: TextStyle(
                          fontSize: AppTextSizes.caption,
                          color: AppColors.fontGreyDark,
                        ),
                      ),
                      TextSpan(
                        text: item.cost,
                        style: const TextStyle(
                          fontSize: AppTextSizes.caption,
                          color: AppColors.fontDarkBlue,
                          fontWeight: AppFontWeight.semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final VoidCallback? onTap;
  final Widget? suffix;
  final bool readOnly;

  const AppTextFormField({
    super.key,
    required this.hint,
    required this.controller,
    this.onTap,
    this.suffix,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      onTap: onTap,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.inter(
          fontWeight: AppFontWeight.regular,
          fontSize: 12,
          color: const Color(0xff646984),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFB6B8D0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFF4A8CFF)),
        ),
        suffixIcon: suffix,
      ),
    );
  }
}

class FromDateField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSelect;

  const FromDateField({
    super.key,
    required this.controller,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hint: 'From Date',
      controller: controller,
      readOnly: true,
      onTap: onSelect,
      suffix: Image.asset(
        Assets.imagesCalendar,
        height: 14,
        width: 14,
        scale: 3.0,
      ),
    );
  }
}

class ToDateField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSelect;

  const ToDateField({
    super.key,
    required this.controller,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hint: 'To Date',
      controller: controller,
      readOnly: true,
      onTap: onSelect,
      suffix: Image.asset(
        Assets.imagesCalendar,
        height: 14,
        width: 14,
        scale: 3.0,
      ),
    );
  }
}

class SearchButtonField extends StatelessWidget {
  final VoidCallback onPressed;

  const SearchButtonField({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 52,
        width: 43,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFF4A8CFF)),
        ),
        child: const Icon(Icons.search, color: Color(0xFF4A8CFF)),
      ),
    );
  }
}

class DataCostItem {
  final String label;
  final String data;
  final String costLabel;
  final String cost;

  DataCostItem({required this.label, required this.data, required this.cost, required this.costLabel});
}

class DataCostInfoCard extends StatefulWidget {
  final List<DataCostItem> items;

  const DataCostInfoCard({super.key, required this.items});

  @override
  State<DataCostInfoCard> createState() => _DataCostInfoCardState();
}

class _DataCostInfoCardState extends State<DataCostInfoCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFB6B8D0)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(6.5),
                topLeft: Radius.circular(6.5),
                bottomRight: Radius.circular(6.5),
                bottomLeft: Radius.circular(6.5),
              ),
              border: Border.all(color: const Color(0xFFA5A7B9)),
            ),
            child: InkWell(
              onTap: () {
                setState(() => _expanded = !_expanded);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.bar_chart,
                      size: 20,
                      color: Color(0xFF646984),
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: AppText(
                        'Data & Cost Info',
                        fontWeight: AppFontWeight.semiBold,
                        fontSize: AppTextSizes.caption,
                      ),
                    ),
                    Image.asset(
                      _expanded ? Assets.imagesUpArrow : Assets.imagesDownArrow,
                      height: 24,
                      width: 24,
                      scale: 3.0,
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// CONTENT
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 200),
            crossFadeState: _expanded
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            firstChild: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.items.map((e) => _DataCostRow(item: e)).toList(),
            ),
            secondChild: const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

class _DataCostRow extends StatelessWidget {
  final DataCostItem item;

  const _DataCostRow({required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${item.label} : ',
                  style: const TextStyle(
                    fontSize: AppTextSizes.caption,
                    color: AppColors.fontGreyDark,
                    fontWeight: AppFontWeight.regular,
                  ),
                ),
                TextSpan(
                  text: item.data,
                  style: const TextStyle(
                    fontSize: AppTextSizes.caption,
                    color: AppColors.fontDarkBlue,
                    fontWeight: AppFontWeight.semiBold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${item.costLabel} : ',
                  style: const TextStyle(
                    fontSize: AppTextSizes.caption,
                    color: AppColors.fontGreyDark,
                    fontWeight: AppFontWeight.regular,
                  ),
                ),
                TextSpan(
                  text: item.cost,
                  style: const TextStyle(
                    fontSize: AppTextSizes.caption,
                    color: AppColors.fontDarkBlue,
                    fontWeight: AppFontWeight.semiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}