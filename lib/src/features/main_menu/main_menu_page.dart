import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state_app/src/features/main_menu/real_state_page.dart';

import '../../bloc_cubit/main_menu_bloc/main_menu_bloc.dart';
import '../../res/app_colors.dart';
import '../../res/app_icons.dart';
import '../../res/app_text_styles.dart';


class MainMenuPage extends StatefulWidget{
  const MainMenuPage({super.key, this.comingFromNotification = false});
  final bool comingFromNotification;
  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  final List<Widget>  pages = [
    RealStatePage(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];
  @override
  void initState() {
    super.initState();
  }



  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    final tabChangeBloc = BlocProvider.of<MainMenuTabChangeBloc>(context);
    return BlocConsumer<MainMenuTabChangeBloc, MainMenuState>(
        bloc: tabChangeBloc,
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.grey, spreadRadius: 0.5, blurRadius: 1),
                  ]
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                items: [
                  _buildBottomNavigationBarItem(state, icon: AppIcons.icHome, label: 'Home',  index: 0),
                  _buildBottomNavigationBarItem(state, icon: AppIcons.icBookMark, label: 'Bookmark', index: 1,),
                  _buildBottomNavigationBarItem(state, icon: AppIcons.icChat, label: 'Chat',  index: 2),
                  _buildBottomNavigationBarItem(state, icon: AppIcons.icSettings, label: 'Settings', index: 3,),

                ],
                currentIndex: state.tabIndex,
                selectedItemColor: Colors.black,
                unselectedItemColor: AppColors.unSelectedGreyColor,
                selectedLabelStyle: AppTextStyles.regularTextStyle,
                unselectedLabelStyle: AppTextStyles.regularTextStyle,
                onTap: (index) => tabChangeBloc.add(TabChangeEvent(tabIndex: index)),
              ),
            ),
            body: SafeArea(child: pages.elementAt(state.tabIndex)),
          ) ;
        });
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(MainMenuState state, {required String icon, required String label,  required int index, bool isTennisCourt = false}) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          icon,
          color: state.tabIndex == index
              ? Colors.black
              : AppColors.unSelectedGreyColor,
        ),
        label: label
    );
  }
}