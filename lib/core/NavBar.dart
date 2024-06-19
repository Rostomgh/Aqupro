import 'package:aquapro/Buissnes%20Logic/NavBar/nav_bar_bloc.dart';
import 'package:aquapro/core/Compo/Constance.dart';
import 'package:aquapro/core/Compo/ListItem.dart';
import 'package:aquapro/features/Pages/ProfileScreen/ProfilePage.dart';
import 'package:aquapro/features/Pages/homeP1.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BottomNavigationBarItem> navItems = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  const BottomNavigationBarItem(
      icon: Icon(Icons.account_box_outlined), label: 'Profile'),
];

List<Widget> bottomNavScreens = [
const Homm(),
const ProfilePage(),
];

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavBarBloc, NavBarState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              body: bottomNavScreens.elementAt(state.tabindex),
              bottomNavigationBar: CurvedNavigationBar(
                height: 50,
                onTap: (index) {
                  BlocProvider.of<NavBarBloc>(context)
                      .add(TabChange(tabindex: index));
                },
                backgroundColor: Primerycolor,
                buttonBackgroundColor: Colors.white,
                color: Primerycolor,
                animationDuration: const Duration(milliseconds: 300),
                items: itemNavBar(),
              ));
          
        });
  }
}
