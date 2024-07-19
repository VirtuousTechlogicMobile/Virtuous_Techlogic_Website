import '/components/cookietextcomp/cookietextcomp_widget.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cookie_setting_page_widget.dart' show CookieSettingPageWidget;
import 'package:flutter/material.dart';

class CookieSettingPageModel extends FlutterFlowModel<CookieSettingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mobileHeaderComp component.
  late MobileHeaderCompModel mobileHeaderCompModel;
  // Model for cookietextcomp component.
  late CookietextcompModel cookietextcompModel1;
  // Model for footerComp component.
  late FooterCompModel footerCompModel1;
  // Model for tabletHeaderComp component.
  late TabletHeaderCompModel tabletHeaderCompModel;
  // Model for cookietextcomp component.
  late CookietextcompModel cookietextcompModel2;
  // Model for footerComp component.
  late FooterCompModel footerCompModel2;
  // Model for desktopHeaderComp component.
  late DesktopHeaderCompModel desktopHeaderCompModel;
  // Model for cookietextcomp component.
  late CookietextcompModel cookietextcompModel3;
  // Model for footerComp component.
  late FooterCompModel footerCompModel3;
  // Model for whatsapStickyComp component.
  late WhatsapStickyCompModel whatsapStickyCompModel;
  // Model for sidebarComp component.
  late SidebarCompModel sidebarCompModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderCompModel = createModel(context, () => MobileHeaderCompModel());
    cookietextcompModel1 = createModel(context, () => CookietextcompModel());
    footerCompModel1 = createModel(context, () => FooterCompModel());
    tabletHeaderCompModel = createModel(context, () => TabletHeaderCompModel());
    cookietextcompModel2 = createModel(context, () => CookietextcompModel());
    footerCompModel2 = createModel(context, () => FooterCompModel());
    desktopHeaderCompModel =
        createModel(context, () => DesktopHeaderCompModel());
    cookietextcompModel3 = createModel(context, () => CookietextcompModel());
    footerCompModel3 = createModel(context, () => FooterCompModel());
    whatsapStickyCompModel =
        createModel(context, () => WhatsapStickyCompModel());
    sidebarCompModel = createModel(context, () => SidebarCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileHeaderCompModel.dispose();
    cookietextcompModel1.dispose();
    footerCompModel1.dispose();
    tabletHeaderCompModel.dispose();
    cookietextcompModel2.dispose();
    footerCompModel2.dispose();
    desktopHeaderCompModel.dispose();
    cookietextcompModel3.dispose();
    footerCompModel3.dispose();
    whatsapStickyCompModel.dispose();
    sidebarCompModel.dispose();
  }
}
