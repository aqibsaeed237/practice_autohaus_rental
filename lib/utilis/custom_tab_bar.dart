import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    super.key,
    required this.tabController,
    required this.tabLabels,
  });

  final TabController tabController;
  final List<String> tabLabels;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  List<Widget> generateTabs() {
    List<Widget> tabs = [];

    for (int i = 0; i < widget.tabLabels.length; i++) {
      tabs.add(
        Tab(
          text: widget.tabLabels[i],
         

        ),
      );
    }

    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.tabController.length == widget.tabLabels.length) {
      return Center(
        child: Container(
          width: 340,
          height: 50,
          
          decoration: ShapeDecoration( color: const Color(0xFFD4DCE1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),),
          // BoxDecoration(
          //   borderRadius: BorderRadius.circular(30),
          //   color: Colors.grey,
          // ),
          padding: const EdgeInsets.all(4),
          child: Center(
            child: TabBar(
              isScrollable: widget.tabController.length >= 3 ? true : false,
              controller: widget.tabController,
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.black,
        indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              tabs: generateTabs(),
            ),
          ),
        ),
      );
    } else {
      return const Text(
        "tabLabels.length should be equal tabController.length",
        style: TextStyle(
          color: Colors.red,
        ),
      );
    }
  }
}
