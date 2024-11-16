import '/components/curved_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_dashboard_widget.dart' show MainDashboardWidget;
import 'package:flutter/material.dart';

class MainDashboardModel extends FlutterFlowModel<MainDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CurvedNavBar component.
  late CurvedNavBarModel curvedNavBarModel;

  @override
  void initState(BuildContext context) {
    curvedNavBarModel = createModel(context, () => CurvedNavBarModel());
  }

  @override
  void dispose() {
    curvedNavBarModel.dispose();
  }
}
