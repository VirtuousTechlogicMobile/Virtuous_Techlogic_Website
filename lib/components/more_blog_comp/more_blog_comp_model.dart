import '/backend/backend.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'more_blog_comp_widget.dart' show MoreBlogCompWidget;
import 'package:flutter/material.dart';

class MoreBlogCompModel extends FlutterFlowModel<MoreBlogCompWidget> {
  ///  Local state fields for this component.

  List<BlogDetailsRecord> blogDetails = [];
  void addToBlogDetails(BlogDetailsRecord item) => blogDetails.add(item);
  void removeFromBlogDetails(BlogDetailsRecord item) =>
      blogDetails.remove(item);
  void removeAtIndexFromBlogDetails(int index) => blogDetails.removeAt(index);
  void insertAtIndexInBlogDetails(int index, BlogDetailsRecord item) =>
      blogDetails.insert(index, item);
  void updateBlogDetailsAtIndex(
          int index, Function(BlogDetailsRecord) updateFn) =>
      blogDetails[index] = updateFn(blogDetails[index]);

  BlogTagsRecord? blogtagResult;

  List<String> listOfBlogTag = [];
  void addToListOfBlogTag(String item) => listOfBlogTag.add(item);
  void removeFromListOfBlogTag(String item) => listOfBlogTag.remove(item);
  void removeAtIndexFromListOfBlogTag(int index) =>
      listOfBlogTag.removeAt(index);
  void insertAtIndexInListOfBlogTag(int index, String item) =>
      listOfBlogTag.insert(index, item);
  void updateListOfBlogTagAtIndex(int index, Function(String) updateFn) =>
      listOfBlogTag[index] = updateFn(listOfBlogTag[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in moreBlogComp widget.
  List<BlogDetailsRecord>? blogDetailsTagSelected;
  // Stores action output result for [Firestore Query - Query a collection] action in moreBlogComp widget.
  List<BlogTagsRecord>? blogtagsResult;
  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // Stores action output result for [Firestore Query - Query a collection] action in ChoiceChips widget.
  List<BlogDetailsRecord>? selectedblogtagCopy;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<BlogDetailsRecord>? blogDetailsTresetValue;

  @override
  void initState(BuildContext context) {
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
  }

  @override
  void dispose() {
    commonRichTextCompModel.dispose();
  }
}
