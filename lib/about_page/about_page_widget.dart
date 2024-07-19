import '/components/about_us_comp/about_us_comp_widget.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/language_comp/language_comp_widget.dart';
import '/components/language_comp_desktop/language_comp_desktop_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/our_culture_comp/our_culture_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/components/why_choose_us_about_us_comp/why_choose_us_about_us_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'about_page_model.dart';
export 'about_page_model.dart';

class AboutPageWidget extends StatefulWidget {
  const AboutPageWidget({
    super.key,
    required this.index,
  });

  final int? index;

  @override
  State<AboutPageWidget> createState() => _AboutPageWidgetState();
}

class _AboutPageWidgetState extends State<AboutPageWidget> {
  late AboutPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'aboutPage'});
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
        ),
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
                            index: 1,
                            drawerCallBack: () async {
                              logFirebaseEvent(
                                  'ABOUT_Container_2bryzsvn_CALLBACK');
                              scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/Group_5.png',
                                      ).image,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        30.0, 0.0, 30.0, 20.0),
                                    child: wrapWithModel(
                                      model: _model.aboutUsCompModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const AboutUsCompWidget(
                                        text:
                                            'We are Top Rated App Development company who create ',
                                        richText1: 'We are ',
                                        richText2: 'changing ',
                                        richText3: 'the whole game.',
                                        text2:
                                            'amazing apps for world class companies 10X faster.',
                                      ),
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.languageCompModel1,
                                  updateCallback: () => setState(() {}),
                                  child: const LanguageCompWidget(),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 40.0, 16.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.ourCultureCompModel1,
                                    updateCallback: () => setState(() {}),
                                    child: const OurCultureCompWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 40.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.footerCompModel1,
                                    updateCallback: () => setState(() {}),
                                    child: const FooterCompWidget(),
                                  ),
                                ),
                              ],
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
                                  'ABOUT_Container_0l57tkr0_CALLBACK');
                              scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 40.0, 50.0, 40.0),
                                  child: wrapWithModel(
                                    model: _model.aboutUsCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: const AboutUsCompWidget(
                                      text:
                                          'We are Top Rated App Development company who create',
                                      richText1: 'We are  ',
                                      richText2: 'changing ',
                                      richText3: 'the whole game.',
                                      text2:
                                          'amazing apps for world class companies 10X faster.',
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.languageCompModel2,
                                  updateCallback: () => setState(() {}),
                                  child: const LanguageCompWidget(),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      30.0, 40.0, 30.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.whyChooseUsAboutUsCompModel1,
                                    updateCallback: () => setState(() {}),
                                    child: const WhyChooseUsAboutUsCompWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      30.0, 40.0, 30.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.ourCultureCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: const OurCultureCompWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 40.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.footerCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: const FooterCompWidget(),
                                  ),
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
                            indexParameter: 1,
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/Group_5.png',
                                      ).image,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        48.0, 40.0, 48.0, 30.0),
                                    child: wrapWithModel(
                                      model: _model.aboutUsCompModel3,
                                      updateCallback: () => setState(() {}),
                                      child: const AboutUsCompWidget(
                                        text:
                                            'We are Top Rated App Development company who create',
                                        richText1: 'We are  ',
                                        richText2: 'changing ',
                                        richText3: 'the whole game.',
                                        text2:
                                            'amazing apps for world class companies 10X faster.',
                                      ),
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.languageCompDesktopModel,
                                  updateCallback: () => setState(() {}),
                                  child: const LanguageCompDesktopWidget(),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      48.0, 40.0, 48.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.whyChooseUsAboutUsCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: const WhyChooseUsAboutUsCompWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      48.0, 50.0, 48.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.ourCultureCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: const OurCultureCompWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 60.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.footerCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: const FooterCompWidget(),
                                  ),
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
