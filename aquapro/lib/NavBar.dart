import 'package:aquapro/Buissnes%20Logic/NavBar/nav_bar_bloc.dart';
import 'package:aquapro/Compo/Constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BottomNavigationBarItem> navItems = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  BottomNavigationBarItem(icon: Icon(Icons.account_balance_outlined), label: 'Profile'),
];

List<Widget> bottomNavScreens = [
  Text("Index 0, Home"),
  Text("Index 1, Profile"),
];

class NavBar extends StatelessWidget {
  const NavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavBarBloc, NavBarState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: bottomNavScreens.elementAt(state.tabindex),
          bottomNavigationBar: BottomNavigationBar(
            items: navItems,
            currentIndex: state.tabindex,
            selectedItemColor: Primerycolor,
            onTap: (index) {
              BlocProvider.of<NavBarBloc>(context)
                  .add(TabChange(tabindex: index));
            },
          ),
        );
      },
    );
  }
}
