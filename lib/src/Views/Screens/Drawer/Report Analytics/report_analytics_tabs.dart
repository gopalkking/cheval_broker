import 'package:cheval_broker/src/Views/Screens/Drawer/Report%20Analytics/report_analytics_report.dart';
import 'package:cheval_broker/src/Views/Widgets/appbar_widget.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_icon_button.dart';
import 'package:cheval_broker/src/Views/Widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportAnalyticsTabs extends StatefulWidget {
  const ReportAnalyticsTabs({super.key});

  @override
  State<ReportAnalyticsTabs> createState() => _ReportAnalyticsTabsState();
}

class _ReportAnalyticsTabsState extends State<ReportAnalyticsTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
     TextEditingController searchController = TextEditingController();
  bool _isSearching = false;
  String searchTerm = '';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
     searchController.addListener(() {
      setState(() {
        searchTerm = searchController.text;
      });
    });
  }

  

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<String> tabs = ['Revenue Report', 'Booking Report'];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppbarWidget(
           titleWidgetbool: true,
        titlewidget:_isSearching
            ?CustomSearchTextfield(textEditingController: searchController): Text("Report & Analytics",  style: theme.textTheme.headlineSmall) , actions: [
           CustomIconButton(icon:_isSearching ? Icons.close : Icons.search,onPressed: (){
             setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  searchController.clear();
                }
              });
           },),
        ],
        leadingOnPressed: () {
          Get.back();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Column(
          children: [
            TabBar(
                      controller: _tabController,
                      indicatorColor: theme.splashColor,
                      dividerColor: Colors.transparent,
                      tabs: List.generate(
                        tabs.length,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            tabs[index],
                            style: theme.textTheme.headlineSmall!.copyWith(
                                color: _tabController.index == index
                                    ? theme.splashColor
                                    : Colors.white,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                     Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                        ReportAnalyticsReport(tabname: "Revenue Report",),
                        ReportAnalyticsReport(tabname: "Booking Report",)
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
