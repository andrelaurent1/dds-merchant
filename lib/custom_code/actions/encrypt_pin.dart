// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:developer';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:sodium_libs/sodium_libs.dart';

Future<DdsPinStruct> encryptPin(
  String key,
  String pin,
  String requestId,
) async {
  WidgetsFlutterBinding.ensureInitialized();
  final sodium = await SodiumInit.init();
  final publicKey = base64Decode(
    key,
  );

  // Generate a secret key
  final keyPair = sodium.crypto.kx.keyPair();
  // A randomly generated nonce
  final nonce = sodium.randombytes.buf(
    sodium.crypto.secretBox.nonceBytes,
  );
  // The message to be encrypted, converted to an unsigned char array.
  final List<int> encodedStringData = utf8.encode(pin);
  final Digest hashedStringData = sha512.convert(encodedStringData);

  // Encrypt the data
  final encryptedString = sodium.crypto.box.easy(
      message: Uint8List.fromList(hashedStringData.bytes),
      nonce: nonce,
      publicKey: publicKey,
      secretKey: keyPair.secretKey);

  return DdsPinStruct(
      key: base64Encode(keyPair.publicKey),
      nonce: base64Encode(nonce),
      pin: base64Encode(encryptedString),
      requestid: requestId);
}
