import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_tour_bottom_sheet_widget.dart' show AddTourBottomSheetWidget;
import 'package:flutter/material.dart';

class AddTourBottomSheetModel
    extends FlutterFlowModel<AddTourBottomSheetWidget> {
  ///  Local state fields for this component.

  FFUploadedFile? file;

  String? filebytes;

  String? filename;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Upload Tour PDF)] action in Button widget.
  ApiCallResponse? apiResultlwm;
  // State field(s) for TourName widget.
  FocusNode? tourNameFocusNode;
  TextEditingController? tourNameTextController;
  String? Function(BuildContext, String?)? tourNameTextControllerValidator;
  // State field(s) for TourCode widget.
  FocusNode? tourCodeFocusNode;
  TextEditingController? tourCodeTextController;
  String? Function(BuildContext, String?)? tourCodeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Add with filepath)] action in Button widget.
  ApiCallResponse? apiResult4sn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tourNameFocusNode?.dispose();
    tourNameTextController?.dispose();

    tourCodeFocusNode?.dispose();
    tourCodeTextController?.dispose();
  }
}
