import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/explore_our_offering_comp/explore_our_offering_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/process_step_comp/process_step_comp_widget.dart';
import '/components/request_quote_comp/request_quote_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'services_page_widget.dart' show ServicesPageWidget;
import 'package:flutter/material.dart';

class ServicesPageModel extends FlutterFlowModel<ServicesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for exploreOurOfferingComp component.
  late ExploreOurOfferingCompModel exploreOurOfferingCompModel1;
  // Model for processStepComp component.
  late ProcessStepCompModel processStepCompModel1;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for exploreOurOfferingComp component.
  late ExploreOurOfferingCompModel exploreOurOfferingCompModel2;
  // Model for processStepComp component.
  late ProcessStepCompModel processStepCompModel2;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for exploreOurOfferingComp component.
  late ExploreOurOfferingCompModel exploreOurOfferingCompModel3;
  // Model for processStepComp component.
  late ProcessStepCompModel processStepCompModel3;
  // Model for requestQuoteComp component.
  late RequestQuoteCompModel requestQuoteCompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    exploreOurOfferingCompModel1 =
        createModel(context, () => ExploreOurOfferingCompModel());
    processStepCompModel1 = createModel(context, () => ProcessStepCompModel());
    requestQuoteCompModel1 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    exploreOurOfferingCompModel2 =
        createModel(context, () => ExploreOurOfferingCompModel());
    processStepCompModel2 = createModel(context, () => ProcessStepCompModel());
    requestQuoteCompModel2 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    exploreOurOfferingCompModel3 =
        createModel(context, () => ExploreOurOfferingCompModel());
    processStepCompModel3 = createModel(context, () => ProcessStepCompModel());
    requestQuoteCompModel3 =
        createModel(context, () => RequestQuoteCompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    exploreOurOfferingCompModel1.dispose();
    processStepCompModel1.dispose();
    requestQuoteCompModel1.dispose();
    footerCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    exploreOurOfferingCompModel2.dispose();
    processStepCompModel2.dispose();
    requestQuoteCompModel2.dispose();
    footerCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    exploreOurOfferingCompModel3.dispose();
    processStepCompModel3.dispose();
    requestQuoteCompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel.dispose();
    sidebarCompModel.dispose();
  }
}
