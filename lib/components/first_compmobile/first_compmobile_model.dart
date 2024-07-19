import '/button_component/browse_services_button_comp/browse_services_button_comp_widget.dart';
import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'first_compmobile_widget.dart' show FirstCompmobileWidget;
import 'package:flutter/material.dart';

class FirstCompmobileModel extends FlutterFlowModel<FirstCompmobileWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel1;
  // Model for browseServicesButtonComp component.
  late BrowseServicesButtonCompModel browseServicesButtonCompModel1;
  // Model for getInTouchButtonComp component.
  late GetInTouchButtonCompModel getInTouchButtonCompModel2;
  // Model for browseServicesButtonComp component.
  late BrowseServicesButtonCompModel browseServicesButtonCompModel2;

  @override
  void initState(BuildContext context) {
    getInTouchButtonCompModel1 =
        createModel(context, () => GetInTouchButtonCompModel());
    browseServicesButtonCompModel1 =
        createModel(context, () => BrowseServicesButtonCompModel());
    getInTouchButtonCompModel2 =
        createModel(context, () => GetInTouchButtonCompModel());
    browseServicesButtonCompModel2 =
        createModel(context, () => BrowseServicesButtonCompModel());
  }

  @override
  void dispose() {
    getInTouchButtonCompModel1.dispose();
    browseServicesButtonCompModel1.dispose();
    getInTouchButtonCompModel2.dispose();
    browseServicesButtonCompModel2.dispose();
  }
}
