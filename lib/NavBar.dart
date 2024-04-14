import 'package:aquapro/Buissnes%20Logic/NavBar/nav_bar_bloc.dart';
import 'package:aquapro/Compo/Constance.dart';
import 'package:aquapro/Pages/homeP1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BottomNavigationBarItem> navItems = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  const BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined), label: 'Profile'),
];

List<Widget> bottomNavScreens = [
  const Homm(),
  const Text("Index 1, Profile"),
];

class NavBar extends StatelessWidget {
  const NavBar({super.key,});

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
