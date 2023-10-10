import 'package:flutter/material.dart';
import 'package:untitledapp/pages/component/description_product_detaill.dart';

class TabBar2 extends StatefulWidget {
  const TabBar2({super.key});

  @override
  State<TabBar2> createState() => _TabBar2State();
}

class _TabBar2State extends State<TabBar2> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 340,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TabBar(
                  padding: const EdgeInsets.all(4),
                  labelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'PoppinsRegular',
                      fontWeight: FontWeight.w500),
                  indicatorColor: Colors.white10,
                  indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  tabs: const [
                    SizedBox(
                      width: 120,
                      height: 38,
                      child: Tab(
                        text: 'Description',
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 38,
                      child: Tab(
                        text: 'Features',
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 38,
                      child: Tab(
                        text: 'Rating',
                      ),
                    )
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    DescriptionProductDetail(),
                    Center(child: Text('Feature ')),
                    Center(child: Text("Rating")),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
