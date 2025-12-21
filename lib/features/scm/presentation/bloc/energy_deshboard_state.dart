import '../enums/data_sub_view.dart';
import '../enums/main_view.dart';

class DashboardState {
  final MainView mainView;
  final DataSubView dataSubView;
  final bool revenueExpanded;

  const DashboardState({
    this.mainView = MainView.data,
    this.dataSubView = DataSubView.today,
    this.revenueExpanded = false,
  });

  DashboardState copyWith({
    MainView? mainView,
    DataSubView? dataSubView,
    bool? revenueExpanded,
  }) {
    return DashboardState(
      mainView: mainView ?? this.mainView,
      dataSubView: dataSubView ?? this.dataSubView,
      revenueExpanded: revenueExpanded ?? this.revenueExpanded,
    );
  }
}
