import '/button_component/browse_services_button_comp/browse_services_button_comp_widget.dart';
import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/components/get_in_touch_component/get_in_touch_component_widget.dart';
import '/components/language_comp_desktop/language_comp_desktop_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'first_comp_copy_model.dart';
export 'first_comp_copy_model.dart';

class FirstCompCopyWidget extends StatefulWidget {
  const FirstCompCopyWidget({super.key});

  @override
  State<FirstCompCopyWidget> createState() => _FirstCompCopyWidgetState();
}

class _FirstCompCopyWidgetState extends State<FirstCompCopyWidget>
    with TickerProviderStateMixin {
  late FirstCompCopyModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FirstCompCopyModel());

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
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.network(
            '',
          ).image,
        ),
      ),
      child: Stack(
        alignment: const AlignmentDirectional(0.0, 0.0),
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 250.0, 0.0, 0.0),
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          200.0, 100.0, 0.0, 0.0),
                      child: Container(
                        height: 300.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD2E8F6),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 100.0,
                              color: Color(0xFFD2E5F2),
                              offset: Offset(
                                0.0,
                                0.0,
                              ),
                              spreadRadius: 80.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(500.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 300.0, 0.0),
                    child: Container(
                      height: 350.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8E5CB),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 100.0,
                            color: Color(0xFFF4E3C8),
                            offset: Offset(
                              15.0,
                              0.0,
                            ),
                            spreadRadius: 80.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(500.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'We are ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Flutter ',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          const TextSpan(
                            text: '& ',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'FlutterFlow ',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          const TextSpan(
                            text: 'App\nDevelopment Company',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context)
                            .displayMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .displayMediumFamily,
                              fontSize: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 30.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 36.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 48.0;
                                } else {
                                  return 48.0;
                                }
                              }(),
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .displayMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.center,
                    ),
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
                                buttonAction: () async {
                                  logFirebaseEvent(
                                      'FIRST_COPY_Container_omztcw5w_CALLBACK');
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
                                  'FIRST_COPY_Container_bqx9xwgi_CALLBACK');

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
                                      'FIRST_COPY_Container_m7eira96_CALLBACK');
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
                                  'FIRST_COPY_Container_inj0i8jx_CALLBACK');

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
                    child: Image.asset(
                      'assets/images/Group_4.webp',
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
