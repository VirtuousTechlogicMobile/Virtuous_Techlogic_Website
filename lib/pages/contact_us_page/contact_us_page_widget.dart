import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/request_quote_comp/request_quote_comp_widget.dart';
import '/components/schedule_call_comp/schedule_call_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'contact_us_page_model.dart';
export 'contact_us_page_model.dart';

class ContactUsPageWidget extends StatefulWidget {
  const ContactUsPageWidget({
    super.key,
    required this.index,
  });

  final int? index;

  @override
  State<ContactUsPageWidget> createState() => _ContactUsPageWidgetState();
}

class _ContactUsPageWidgetState extends State<ContactUsPageWidget>
    with TickerProviderStateMixin {
  late ContactUsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasEndDrawerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactUsPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'contactUsPage'});
    animationsMap.addAll({
      'endDrawerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        endDrawer: Drawer(
          elevation: 50.0,
          child: wrapWithModel(
            model: _model.sidebarCompModel,
            updateCallback: () => setState(() {}),
            child: const SidebarCompWidget(),
          ),
        ).animateOnActionTrigger(
            animationsMap['endDrawerOnActionTriggerAnimation']!,
            hasBeenTriggered: hasEndDrawerTriggered),
        body: SafeArea(
          top: true,
          child: Stack(
            alignment: const AlignmentDirectional(1.0, 1.0),
            children: [
              Builder(
                builder: (context) {
                  if (valueOrDefault<bool>(
                    () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return true;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return false;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return false;
                      } else {
                        return false;
                      }
                    }(),
                    false,
                  )) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.mobileHeaderCompModel,
                          updateCallback: () => setState(() {}),
                          child: MobileHeaderCompWidget(
                            index: 5,
                            drawerCallBack: () async {
                              logFirebaseEvent(
                                  'CONTACT_US_Container_mafjmi4g_CALLBACK');
                              scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                1.0, 0.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.requestQuoteCompModel1,
                                    updateCallback: () => setState(() {}),
                                    child: const RequestQuoteCompWidget(
                                      formImage:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/0cxs3r0venxs/vtlogo.png',
                                      email: 'info@virtuoustechlogic.com',
                                      callNumber: '6377231496',
                                      whatsappNumber: '6377231496',
                                      descriptionText:
                                          'Our goal is to help businesses and entrepreneurs bring their ideas to life and deliver outstanding user experiences to their customers. With a passion for innovation and a dedication to excellence, we are committed to delivering top-notch results that meet the unique needs of each of our clients.',
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 100.0, 0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.scheduleCallCompModel1,
                                        updateCallback: () => setState(() {}),
                                        child: const ScheduleCallCompWidget(),
                                      ),
                                    ),
                                  wrapWithModel(
                                    model: _model.footerCompModel1,
                                    updateCallback: () => setState(() {}),
                                    child: const FooterCompWidget(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else if (valueOrDefault<bool>(
                    () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return false;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return true;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return false;
                      } else {
                        return false;
                      }
                    }(),
                    false,
                  )) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.tabletHeaderCompModel,
                          updateCallback: () => setState(() {}),
                          child: TabletHeaderCompWidget(
                            drawerCallback: () async {
                              logFirebaseEvent(
                                  'CONTACT_US_Container_ye8xfpxm_CALLBACK');
                              scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.requestQuoteCompModel2,
                                  updateCallback: () => setState(() {}),
                                  child: const RequestQuoteCompWidget(
                                    formImage:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/sqeka8titoar/Rectangle_24.png',
                                    email: 'info@virtuoustechlogic.com',
                                    callNumber: '6377231496',
                                    whatsappNumber: '6377231496',
                                    descriptionText:
                                        'Our goal is to help businesses and entrepreneurs bring their ideas to life and deliver outstanding user experiences to their customers. With a passion for innovation and a dedication to excellence, we are committed to delivering top-notch results that meet the unique needs of each of our clients.',
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  wrapWithModel(
                                    model: _model.scheduleCallCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: const ScheduleCallCompWidget(),
                                  ),
                                wrapWithModel(
                                  model: _model.footerCompModel2,
                                  updateCallback: () => setState(() {}),
                                  child: const FooterCompWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.desktopHeaderCompModel,
                          updateCallback: () => setState(() {}),
                          child: const DesktopHeaderCompWidget(
                            indexParameter: 5,
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.requestQuoteCompModel3,
                                  updateCallback: () => setState(() {}),
                                  child: const RequestQuoteCompWidget(
                                    formImage:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/sqeka8titoar/Rectangle_24.png',
                                    email: 'info@virtuoustechlogic.com',
                                    callNumber: '6377231496',
                                    whatsappNumber: '6377231496',
                                    descriptionText:
                                        'Our goal is to help businesses and entrepreneurs bring their ideas to life and deliver outstanding user experiences to their customers. With a passion for innovation and a dedication to excellence, we are committed to delivering top-notch results that meet the unique needs of each of our clients.',
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  wrapWithModel(
                                    model: _model.scheduleCallCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: const ScheduleCallCompWidget(),
                                  ),
                                wrapWithModel(
                                  model: _model.footerCompModel3,
                                  updateCallback: () => setState(() {}),
                                  child: const FooterCompWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 40.0),
                child: wrapWithModel(
                  model: _model.whatsapStickyCompModel,
                  updateCallback: () => setState(() {}),
                  child: const WhatsapStickyCompWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}