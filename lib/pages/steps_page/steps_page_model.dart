import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/process_step_comp/process_step_comp_widget.dart';
import '/components/request_quote_comp/request_quote_comp_widget.dart';
import '/components/seven_steps_comp/seven_steps_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'steps_page_widget.dart' show StepsPageWidget;
import 'package:flutter/material.dart';

class StepsPageModel extends FlutterFlowModel<StepsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for processStepComp component.
  late ProcessStepCompModel processStepCompModel1;
  // Model for sevenStepsComp component.
  late SevenStepsCompModel sevenStepsCompModel1;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for processStepComp component.
  late ProcessStepCompModel processStepCompModel2;
  // Model for sevenStepsComp component.
  late SevenStepsCompModel sevenStepsCompModel2;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for processStepComp component.
  late ProcessStepCompModel processStepCompModel3;
  // Model for sevenStepsComp component.
  late SevenStepsCompModel sevenStepsCompModel3;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel3;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    processStepCompModel1 = createModel(context, () => ProcessStepCompModel());
    sevenStepsCompModel1 = createModel(context, () => SevenStepsCompModel());
    requestQuoteCompModel1 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel1 =
        createModel(context, () => WhatsapStickyCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    processStepCompModel2 = createModel(context, () => ProcessStepCompModel());
    sevenStepsCompModel2 = createModel(context, () => SevenStepsCompModel());
    requestQuoteCompModel2 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel2 =
        createModel(context, () => WhatsapStickyCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    processStepCompModel3 = createModel(context, () => ProcessStepCompModel());
    sevenStepsCompModel3 = createModel(context, () => SevenStepsCompModel());
    requestQuoteCompModel3 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel3 =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    processStepCompModel1.dispose();
    sevenStepsCompModel1.dispose();
    requestQuoteCompModel1.dispose();
    footerCompModel1.dispose();
    whatsapStickyCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    processStepCompModel2.dispose();
    sevenStepsCompModel2.dispose();
    requestQuoteCompModel2.dispose();
    footerCompModel2.dispose();
    whatsapStickyCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    processStepCompModel3.dispose();
    sevenStepsCompModel3.dispose();
    requestQuoteCompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel3.dispose();
    sidebarCompModel.dispose();
  }
}
