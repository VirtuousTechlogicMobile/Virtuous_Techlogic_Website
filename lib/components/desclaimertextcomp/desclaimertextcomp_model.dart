import '/components/desclaimer_rich_text/desclaimer_rich_text_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'desclaimertextcomp_widget.dart' show DesclaimertextcompWidget;
import 'package:flutter/material.dart';

class DesclaimertextcompModel
    extends FlutterFlowModel<DesclaimertextcompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for desclaimerRichText component.
  late DesclaimerRichTextModel desclaimerRichTextModel;

  @override
  void initState(BuildContext context) {
    desclaimerRichTextModel =
        createModel(context, () => DesclaimerRichTextModel());
  }

  @override
  void dispose() {
    desclaimerRichTextModel.dispose();
  }
}
