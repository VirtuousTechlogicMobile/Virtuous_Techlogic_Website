import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/button_component/view_live_app_button_comp/view_live_app_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'explore_our_product_comp_model.dart';
export 'explore_our_product_comp_model.dart';

class ExploreOurProductCompWidget extends StatefulWidget {
  const ExploreOurProductCompWidget({
    super.key,
    required this.productTitle,
    required this.productDescription,
    required this.imagePath,
    bool? isLeftsideText,
    this.editDescription,
    this.viewmore,
  }) : isLeftsideText = isLeftsideText ?? false;

  final String? productTitle;
  final String? productDescription;
  final String? imagePath;
  final bool isLeftsideText;
  final String? editDescription;
  final Future Function()? viewmore;

  @override
  State<ExploreOurProductCompWidget> createState() =>
      _ExploreOurProductCompWidgetState();
}

class _ExploreOurProductCompWidgetState
    extends State<ExploreOurProductCompWidget> with TickerProviderStateMixin {
  late ExploreOurProductCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExploreOurProductCompModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
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
      decoration: const BoxDecoration(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (widget.isLeftsideText)
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                widget.productTitle!,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily),
                                    ),
                              ),
                            ),
                            custom_widgets.DisplayQuillToHtml(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.05,
                              defaultJsonData: widget.editDescription!,
                              isMaxCharacterAllowOrNot: true,
                            ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                            ))
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      wrapWithModel(
                                        model:
                                            _model.viewLiveAppButtonCompModel1,
                                        updateCallback: () => setState(() {}),
                                        child: const ViewLiveAppButtonCompWidget(
                                          viewLiveApp: 'View Live App',
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
                                        model:
                                            _model.getInTouchButtonCompModel1,
                                        updateCallback: () => setState(() {}),
                                        child: GetInTouchButtonCompWidget(
                                          buttonName: 'View More',
                                          showIcon: false,
                                          buttonAction: () async {
                                            logFirebaseEvent(
                                                'EXPLORE_OUR_PRODUCT_Container_loy5tuq3_C');
                                            await widget.viewmore?.call();
                                          },
                                        ),
                                      ),
                                  ].divide(const SizedBox(width: 20.0)),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 200),
                        fadeOutDuration: const Duration(milliseconds: 200),
                        imageUrl: widget.imagePath!,
                        width: 590.0,
                        height: 280.0,
                        fit: BoxFit.fill,
                      ),
                    ).animateOnPageLoad(
                        animationsMap['imageOnPageLoadAnimation']!),
                  if (!widget.isLeftsideText)
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SelectionArea(
                                child: Text(
                              widget.productTitle!,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .headlineSmallFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .headlineSmallFamily),
                                  ),
                            )),
                            custom_widgets.DisplayQuillToHtml(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.05,
                              defaultJsonData: widget.editDescription!,
                              isMaxCharacterAllowOrNot: true,
                            ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                            ))
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      wrapWithModel(
                                        model:
                                            _model.viewLiveAppButtonCompModel2,
                                        updateCallback: () => setState(() {}),
                                        child: const ViewLiveAppButtonCompWidget(
                                          viewLiveApp: 'View Live App',
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
                                        model:
                                            _model.getInTouchButtonCompModel2,
                                        updateCallback: () => setState(() {}),
                                        child: GetInTouchButtonCompWidget(
                                          buttonName: 'View More',
                                          showIcon: false,
                                          buttonAction: () async {
                                            logFirebaseEvent(
                                                'EXPLORE_OUR_PRODUCT_Container_wap3akfg_C');
                                            await widget.viewmore?.call();
                                          },
                                        ),
                                      ),
                                  ].divide(const SizedBox(width: 20.0)),
                                ),
                              ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                    ),
                ],
              ),
            if (responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            ))
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      widget.imagePath!,
                      width: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 328.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 590.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 590.0;
                        } else {
                          return 590.0;
                        }
                      }(),
                      height: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 280.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 280.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 280.0;
                        } else {
                          return 280.0;
                        }
                      }(),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: SelectionArea(
                              child: Text(
                            widget.productTitle!,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          )),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          wrapWithModel(
                            model: _model.viewLiveAppButtonCompModel3,
                            updateCallback: () => setState(() {}),
                            child: const ViewLiveAppButtonCompWidget(
                              viewLiveApp: 'View Live App',
                            ),
                          ),
                        custom_widgets.DisplayQuillToHtml(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.08,
                          defaultJsonData: widget.editDescription!,
                          isMaxCharacterAllowOrNot: true,
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          wrapWithModel(
                            model: _model.getInTouchButtonCompModel3,
                            updateCallback: () => setState(() {}),
                            child: GetInTouchButtonCompWidget(
                              buttonName: 'View More',
                              showIcon: false,
                              buttonAction: () async {
                                logFirebaseEvent(
                                    'EXPLORE_OUR_PRODUCT_Container_4841zbu5_C');
                                await widget.viewmore?.call();
                              },
                            ),
                          ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                  ),
                ].addToStart(const SizedBox(height: 10.0)),
              ),
          ],
        ),
      ),
    );
  }
}