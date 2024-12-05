import 'package:flutter/material.dart';
import 'package:pulselab/src/enums/main_navigation_options.dart';
import 'package:pulselab/src/view/account_view.dart';
import 'package:pulselab/src/view/appointments_view.dart';
import 'package:pulselab/src/view/donations_view.dart';
import 'package:pulselab/src/widgets/app_icon.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int pageIndex = 0;
  final pageController = PageController();
  late final List<BottomNavigationBarItem> bottomNavigationBarItems;

  @override
  void initState() {
    super.initState();
    _generateBottomNavigationBarItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: const AppIcon(),
        centerTitle: true,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: _onPageChanged,
        children: const [
          AppointmentsView(),
          DonationsView(),
          AccountView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: _onBottomNavigationItemTap,
        items: bottomNavigationBarItems,
      ),
    );
  }

  void _generateBottomNavigationBarItems() {
    const items = MainNavigationOptions.values;

    bottomNavigationBarItems = List.generate(
      items.length,
      (index) {
        final item = items[index];

        return BottomNavigationBarItem(
          icon: Icon(item.icon),
          label: item.title,
          tooltip: item.title,
        );
      },
    );
  }

  void _onBottomNavigationItemTap(int index) {
    pageController.jumpToPage(index);
    _onPageChanged(index);
  }

  void _onPageChanged(int index) {
    setState(() {
      pageIndex = index;
    });
  }
}
