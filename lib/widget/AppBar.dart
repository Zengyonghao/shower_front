import 'package:Shower/res/StringCons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class MyAppBar extends StatefulWidget implements PreferredSizeWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppBarState();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);


}


class AppBarState extends State<MyAppBar> with SingleTickerProviderStateMixin{
  ScrollController _scrollController;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _tabController = TabController(length: StringCons.appName.length, vsync: this);
  }


  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 500,
      child: AppBar(
        centerTitle: true,
        title: Text(StringCons.appName),
        bottom: TabBar(
          isScrollable: true,
          indicatorWeight: 3.0,
          controller: _tabController,
          tabs: createTab(),

        ),
      ),
    );
  }

  List<Tab> createTab(){
    List<Tab> tabs = List();
    StringCons.barsTittle.forEach((tabText) => tabs.add(Tab(text: tabText)));
    return tabs;

  }


}