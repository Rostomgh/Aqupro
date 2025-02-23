part of 'nav_bar_bloc.dart';

@immutable
abstract class NavBarState {
  final int tabindex;

  NavBarState({required this.tabindex});
}

final class NavBarInitial extends NavBarState {
  NavBarInitial({required super.tabindex});
}
