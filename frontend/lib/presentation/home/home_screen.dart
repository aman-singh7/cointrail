import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/constants/colors.dart';
import '../../util/extensions/color_extensions.dart';
import '../components/inputs/text_inputs.dart';
import '../responsive_view.dart';

part 'components/header.dart';
part 'components/quick_info.dart';
part 'components/recent_txns.dart';
part 'components/side_menu.dart';
part 'components/statistics.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (ResponsiveView.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Header(
                      onPressed: () {
                        if (!_scaffoldKey.currentState!.isDrawerOpen) {
                          _scaffoldKey.currentState!.openDrawer();
                        }
                      },
                    ),
                    const SizedBox(height: 12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              const QuickInfo(),
                              if (ResponsiveView.isMobile(context)) ...[
                                const SizedBox(height: 12),
                                const RecentTxns()
                              ],
                              const SizedBox(height: 12),
                              const Statistics(),
                            ],
                          ),
                        ),
                        if (!ResponsiveView.isMobile(context)) ...[
                          const SizedBox(width: 12),
                          const Expanded(child: RecentTxns()),
                        ]
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
