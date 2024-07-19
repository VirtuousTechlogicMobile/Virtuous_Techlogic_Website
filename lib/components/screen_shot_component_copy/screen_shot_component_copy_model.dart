import '/flutter_flow/flutter_flow_util.dart';
import 'screen_shot_component_copy_widget.dart'
    show ScreenShotComponentCopyWidget;
import 'package:flutter/material.dart';

class ScreenShotComponentCopyModel
    extends FlutterFlowModel<ScreenShotComponentCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
