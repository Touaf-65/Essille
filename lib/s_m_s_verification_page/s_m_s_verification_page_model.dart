import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/m_y_card/m_y_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SMSVerificationPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for verificationCode widget.
  TextEditingController? verificationCodeController;
  String? Function(BuildContext, String?)? verificationCodeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    verificationCodeController?.dispose();
  }

  /// Additional helper methods are added here.

}
