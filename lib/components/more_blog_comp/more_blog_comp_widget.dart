import '/backend/backend.dart';
import '/components/blog_comp/blog_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'more_blog_comp_model.dart';
export 'more_blog_comp_model.dart';

class MoreBlogCompWidget extends StatefulWidget {
  const MoreBlogCompWidget({
    super.key,
    this.blogTag,
    this.isSelected,
  });

  final List<String>? blogTag;
  final bool? isSelected;

  @override
  State<MoreBlogCompWidget> createState() => _MoreBlogCompWidgetState();
}

class _MoreBlogCompWidgetState extends State<MoreBlogCompWidget> {
  late MoreBlogCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreBlogCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('MORE_BLOG_moreBlogComp_ON_INIT_STATE');
      _model.blogDetailsTagSelected = await queryBlogDetailsRecordOnce(
        queryBuilder: (blogDetailsRecord) => blogDetailsRecord.where(
          'status',
          isEqualTo: true,
        ),
      );
      _model.blogtagsResult = await queryBlogTagsRecordOnce();
      _model.blogDetails =
          _model.blogDetailsTagSelected!.toList().cast<BlogDetailsRecord>();
      setState(() {});
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: const BoxDecoration(),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.commonRichTextCompModel,
                    updateCallback: () => setState(() {}),
                    child: const CommonRichTextCompWidget(
                      richTextOne: 'Explore our ',
                      richTextTwo: 'Blogs',
                      texts:
                          'We consider ourselves lucky to work on many innovative concepts with amazing companies. We absolutely love solving problems and transforming ideas into reality.',
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      if (_model.blogtagsResult != null &&
                          (_model.blogtagsResult)!.isNotEmpty) {
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 100.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 50.0, 0.0),
                                child: FlutterFlowChoiceChips(
                                  options: _model.blogtagsResult!
                                      .sortedList((e) => e.index)
                                      .map((e) => valueOrDefault<String>(
                                            e.tag,
                                            'N/A',
                                          ))
                                      .toList()
                                      .map((label) => ChipData(label))
                                      .toList(),
                                  onChanged: (val) async {
                                    setState(
                                        () => _model.choiceChipsValues = val);
                                    logFirebaseEvent(
                                        'MORE_BLOG_ChoiceChips_grt9g9nv_ON_FORM_W');
                                    _model.listOfBlogTag = _model
                                        .choiceChipsValues!
                                        .toList()
                                        .cast<String>();
                                    _model.updatePage(() {});
                                    _model.selectedblogtagCopy =
                                        await queryBlogDetailsRecordOnce(
                                      queryBuilder: (blogDetailsRecord) =>
                                          blogDetailsRecord
                                              .whereArrayContainsAny(
                                                  'blog_tags',
                                                  _model.choiceChipsValues),
                                    );
                                    _model.blogDetails = _model
                                        .selectedblogtagCopy!
                                        .toList()
                                        .cast<BlogDetailsRecord>();
                                    _model.updatePage(() {});

                                    setState(() {});
                                  },
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    iconSize: 18.0,
                                    elevation: 4.0,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 1.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).primary,
                                    borderWidth: 1.2,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: true,
                                  initialized: _model.choiceChipsValues != null,
                                  alignment: WrapAlignment.spaceBetween,
                                  controller:
                                      _model.choiceChipsValueController ??=
                                          FormFieldController<List<String>>(
                                    _model.listOfBlogTag,
                                  ),
                                  wrapped: true,
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'MORE_BLOG_COMP_COMP_RESET_BTN_ON_TAP');
                                  setState(() {
                                    _model.choiceChipsValueController?.reset();
                                  });
                                  _model.blogDetailsTresetValue =
                                      await queryBlogDetailsRecordOnce(
                                    queryBuilder: (blogDetailsRecord) =>
                                        blogDetailsRecord.where(
                                      'status',
                                      isEqualTo: true,
                                    ),
                                  );
                                  _model.blogDetails = _model
                                      .blogDetailsTresetValue!
                                      .toList()
                                      .cast<BlogDetailsRecord>();
                                  setState(() {});

                                  setState(() {});
                                },
                                text: 'Reset',
                                options: FFButtonOptions(
                                  height: 35.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.08,
                            child: custom_widgets.LoaderWidget(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.08,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  Builder(
                    builder: (context) {
                      if (_model.blogDetails.isNotEmpty) {
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 30.0),
                          child: Builder(
                            builder: (context) {
                              final blogselected = _model.blogDetails.toList();

                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(blogselected.length,
                                      (blogselectedIndex) {
                                    final blogselectedItem =
                                        blogselected[blogselectedIndex];
                                    return BlogCompWidget(
                                      key: Key(
                                          'Key2ne_${blogselectedIndex}_of_${blogselected.length}'),
                                      blogimage: blogselectedItem.image,
                                      blogTitleText: blogselectedItem.title,
                                      blogDescription:
                                          blogselectedItem.description,
                                      blogDate: blogselectedItem.name,
                                      blogTag: blogselectedItem.blogTags,
                                      readmore: () async {
                                        logFirebaseEvent(
                                            'MORE_BLOG_Container_2ne3duio_CALLBACK');

                                        context.pushNamed(
                                          'individualBlogPage',
                                          queryParameters: {
                                            'individualBlogRefpage':
                                                serializeParam(
                                              blogselectedItem.reference,
                                              ParamType.DocumentReference,
                                            ),
                                            'blogTitle': serializeParam(
                                              blogselectedItem.title,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );

                                        FFAppState().selectedTitle =
                                            blogselectedItem.title;
                                        setState(() {});
                                      },
                                    );
                                  }).divide(const SizedBox(height: 15.0)),
                                ),
                              );
                            },
                          ),
                        );
                      } else {
                        return Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.08,
                            child: custom_widgets.LoaderWidget(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.08,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
