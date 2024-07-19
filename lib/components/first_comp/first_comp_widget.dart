import '/button_component/browse_services_button_comp/browse_services_button_comp_widget.dart';
import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/components/get_in_touch_component/get_in_touch_component_widget.dart';
import '/components/language_comp_desktop/language_comp_desktop_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'first_comp_model.dart';
export 'first_comp_model.dart';

class FirstCompWidget extends StatefulWidget {
  const FirstCompWidget({super.key});

  @override
  State<FirstCompWidget> createState() => _FirstCompWidgetState();
}

class _FirstCompWidgetState extends State<FirstCompWidget>
    with TickerProviderStateMixin {
  late FirstCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FirstCompModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 1800.0.ms,
            begin: const Offset(0, 0),
            end: const Offset(0, 0.349),
          ),
        ],
      ),
      'languageCompDesktopOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 1.0,
            end: 30.0,
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 10.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 10.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 10.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation4': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 10.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation5': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 10.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation6': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 10.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.9,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(
            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/nv8ho0vjtatr/Group_5.webp',
          ),
        ),
      ),
      child: Stack(
        alignment: const AlignmentDirectional(0.0, 0.0),
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: custom_widgets.RichText(
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      height: MediaQuery.sizeOf(context).height * 0.12,
                      text1: 'We are ',
                      text2: 'Flutter ',
                      text3: '& ',
                      text4: 'FlutterFlow ',
                      text5: 'App\nDevelopment Company',
                      color1: FlutterFlowTheme.of(context).primaryText,
                      color2: FlutterFlowTheme.of(context).primary,
                      color3: FlutterFlowTheme.of(context).primaryText,
                      color4: FlutterFlowTheme.of(context).primary,
                      color5: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                    child: SelectionArea(
                        child: Text(
                      'We are Top Rated App Development company who create \namazing apps for world class companies 10X faster.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            fontSize: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 16.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 16.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 16.0;
                              } else {
                                return 16.0;
                              }
                            }(),
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelLargeFamily),
                            lineHeight: 1.5,
                          ),
                    )),
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Builder(
                            builder: (context) => wrapWithModel(
                              model: _model.getInTouchButtonCompModel1,
                              updateCallback: () => setState(() {}),
                              child: GetInTouchButtonCompWidget(
                                buttonName: 'Get in Touch',
                                showIcon: false,
                                buttonAction: () async {
                                  logFirebaseEvent(
                                      'FIRST_Container_x2xqhbhk_CALLBACK');
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: const GetInTouchComponentWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                              ),
                            ),
                          ),
                        wrapWithModel(
                          model: _model.browseServicesButtonCompModel1,
                          updateCallback: () => setState(() {}),
                          child: BrowseServicesButtonCompWidget(
                            action: () async {
                              logFirebaseEvent(
                                  'FIRST_Container_xv7l0t3d_CALLBACK');

                              context.pushNamed(
                                'servicesPage',
                                queryParameters: {
                                  'index': serializeParam(
                                    2,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ),
                      ].divide(const SizedBox(width: 20.0)),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Builder(
                            builder: (context) => wrapWithModel(
                              model: _model.getInTouchButtonCompModel2,
                              updateCallback: () => setState(() {}),
                              child: GetInTouchButtonCompWidget(
                                buttonName: 'Get in Touch',
                                showIcon: false,
                                buttonAction: () async {
                                  logFirebaseEvent(
                                      'FIRST_Container_c9q9lwep_CALLBACK');
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: const GetInTouchComponentWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                              ),
                            ),
                          ),
                        wrapWithModel(
                          model: _model.browseServicesButtonCompModel2,
                          updateCallback: () => setState(() {}),
                          child: BrowseServicesButtonCompWidget(
                            action: () async {
                              logFirebaseEvent(
                                  'FIRST_Container_d6yea4qz_CALLBACK');

                              context.pushNamed(
                                'servicesPage',
                                queryParameters: {
                                  'index': serializeParam(
                                    2,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ),
                      ].divide(const SizedBox(height: 20.0)),
                    ),
                  ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: CachedNetworkImage(
                      fadeInDuration: const Duration(milliseconds: 1),
                      fadeOutDuration: const Duration(milliseconds: 1),
                      imageUrl:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/mjobrghz7cg0/Group_4.webp',
                      width: MediaQuery.sizeOf(context).width * 0.64,
                      fit: BoxFit.contain,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation']!),
                ),
                wrapWithModel(
                  model: _model.languageCompDesktopModel,
                  updateCallback: () => setState(() {}),
                  child: const LanguageCompDesktopWidget(),
                ).animateOnPageLoad(
                    animationsMap['languageCompDesktopOnPageLoadAnimation']!),
              ],
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: const AlignmentDirectional(-0.9, -0.49),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 0.0, 350.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.035,
                  height: MediaQuery.sizeOf(context).width * 0.035,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Frame_8.webp',
                    fit: BoxFit.cover,
                    alignment: const Alignment(0.0, -1.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['circleImageOnPageLoadAnimation1']!),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: const AlignmentDirectional(-0.65, -0.3),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.05,
                height: MediaQuery.sizeOf(context).width * 0.05,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/Frame_10.webp',
                  fit: BoxFit.cover,
                  alignment: const Alignment(0.0, -1.0),
                ),
              ).animateOnPageLoad(
                  animationsMap['circleImageOnPageLoadAnimation2']!),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: const AlignmentDirectional(-0.93, -0.65),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.043,
                  height: MediaQuery.sizeOf(context).width * 0.043,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Frame_5.webp',
                    fit: BoxFit.cover,
                    alignment: const Alignment(0.0, -1.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['circleImageOnPageLoadAnimation3']!),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: const AlignmentDirectional(0.41, -0.31),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.03,
                  height: MediaQuery.sizeOf(context).width * 0.03,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Frame_5.webp',
                    fit: BoxFit.cover,
                    alignment: const Alignment(0.0, -1.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['circleImageOnPageLoadAnimation4']!),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: const AlignmentDirectional(0.56, -0.32),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 350.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.04,
                  height: MediaQuery.sizeOf(context).width * 0.04,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Frame_10.webp',
                    fit: BoxFit.cover,
                    alignment: const Alignment(0.0, -1.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['circleImageOnPageLoadAnimation5']!),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: const AlignmentDirectional(0.63, -0.44),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.05,
                  height: MediaQuery.sizeOf(context).width * 0.05,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Frame_8.webp',
                    fit: BoxFit.cover,
                    alignment: const Alignment(0.0, -1.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['circleImageOnPageLoadAnimation6']!),
              ),
            ),
        ],
      ),
    );
  }
}
