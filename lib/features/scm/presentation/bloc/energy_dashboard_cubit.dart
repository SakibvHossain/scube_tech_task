import 'package:flutter_bloc/flutter_bloc.dart';
import '../enums/data_sub_view.dart';
import '../enums/main_view.dart';
import 'energy_deshboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState());

  void selectDataView() =>
      emit(state.copyWith(mainView: MainView.data));

  void selectRevenueView() =>
      emit(state.copyWith(mainView: MainView.revenue));

  void selectToday() =>
      emit(state.copyWith(dataSubView: DataSubView.today));

  void selectCustom() =>
      emit(state.copyWith(dataSubView: DataSubView.custom));

  void toggleRevenueExpand() =>
      emit(state.copyWith(revenueExpanded: !state.revenueExpanded));
}
