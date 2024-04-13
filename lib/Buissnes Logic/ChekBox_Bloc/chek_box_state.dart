part of 'chek_box_bloc.dart';

@immutable
sealed class ChekBoxState {}

final class ChekBoxInitial extends ChekBoxState {
  final bool val;

  ChekBoxInitial({required this.val});
}
