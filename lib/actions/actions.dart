import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future<DdsPinStruct?> preparePIN(
  BuildContext context, {
  String? pin,
  required String? oldUserId,
}) async {
  ApiCallResponse? genKeyResult;
  DdsPinStruct? encryptedPIN;

  genKeyResult = await OldDDSGroup.generateKeyCall.call(
    requestid: oldUserId,
  );
  if ((genKeyResult?.statusCode ?? 200) == 200) {
    encryptedPIN = await actions.encryptPin(
      OldDDSGroup.generateKeyCall
          .key(
            (genKeyResult?.jsonBody ?? ''),
          )
          .toString()
          .toString(),
      pin!,
      OldDDSGroup.generateKeyCall
          .requestId(
            (genKeyResult?.jsonBody ?? ''),
          )
          .toString()
          .toString(),
    );
  } else {
    return null;
  }

  return encryptedPIN;
}

Future processSettlement(
  BuildContext context, {
  double? revenue,
  String? description,
  double? cashOutAmount,
  double? profitSharing,
  DdsPinStruct? pinData,
}) async {
  CashSettlementCommandTableRow? insertCashSetllement;

  insertCashSetllement = await CashSettlementCommandTableTable().insert({
    'op': 'INSERT',
    'revenue': revenue,
    'merchant_id': currentUserUid,
    'description': description,
    'cash_out_amount': cashOutAmount,
    'profit_sharing': profitSharing,
    'status': 'pending',
    'pin': pinData?.pin,
    'pin_key': pinData?.key,
    'pin_nonce': pinData?.nonce,
    'pin_requestid': pinData?.requestid,
  });
  if (insertCashSetllement?.status != 'failed') {
    FFAppState().pinStatus = insertCashSetllement!.status!;
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('Wrong Pin'),
          content: Text('Pin anda salah'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
