import '/components/cookie_comp/cookie_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cookietextcomp_widget.dart' show CookietextcompWidget;
import 'package:flutter/material.dart';

class CookietextcompModel extends FlutterFlowModel<CookietextcompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cookieComp component.
  late CookieCompModel cookieCompModel;

  @override
  void initState(BuildContext context) {
    cookieCompModel = createModel(context, () => CookieCompModel());
  }

  @override
  void dispose() {
    cookieCompModel.dispose();
  }
}
