// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DdsPinStruct extends BaseStruct {
  DdsPinStruct({
    String? pin,
    String? key,
    String? nonce,
    String? requestid,
  })  : _pin = pin,
        _key = key,
        _nonce = nonce,
        _requestid = requestid;

  // "pin" field.
  String? _pin;
  String get pin => _pin ?? '';
  set pin(String? val) => _pin = val;
  bool hasPin() => _pin != null;

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;
  bool hasKey() => _key != null;

  // "nonce" field.
  String? _nonce;
  String get nonce => _nonce ?? '';
  set nonce(String? val) => _nonce = val;
  bool hasNonce() => _nonce != null;

  // "requestid" field.
  String? _requestid;
  String get requestid => _requestid ?? '';
  set requestid(String? val) => _requestid = val;
  bool hasRequestid() => _requestid != null;

  static DdsPinStruct fromMap(Map<String, dynamic> data) => DdsPinStruct(
        pin: data['pin'] as String?,
        key: data['key'] as String?,
        nonce: data['nonce'] as String?,
        requestid: data['requestid'] as String?,
      );

  static DdsPinStruct? maybeFromMap(dynamic data) =>
      data is Map ? DdsPinStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'pin': _pin,
        'key': _key,
        'nonce': _nonce,
        'requestid': _requestid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pin': serializeParam(
          _pin,
          ParamType.String,
        ),
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'nonce': serializeParam(
          _nonce,
          ParamType.String,
        ),
        'requestid': serializeParam(
          _requestid,
          ParamType.String,
        ),
      }.withoutNulls;

  static DdsPinStruct fromSerializableMap(Map<String, dynamic> data) =>
      DdsPinStruct(
        pin: deserializeParam(
          data['pin'],
          ParamType.String,
          false,
        ),
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        nonce: deserializeParam(
          data['nonce'],
          ParamType.String,
          false,
        ),
        requestid: deserializeParam(
          data['requestid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DdsPinStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DdsPinStruct &&
        pin == other.pin &&
        key == other.key &&
        nonce == other.nonce &&
        requestid == other.requestid;
  }

  @override
  int get hashCode => const ListEquality().hash([pin, key, nonce, requestid]);
}

DdsPinStruct createDdsPinStruct({
  String? pin,
  String? key,
  String? nonce,
  String? requestid,
}) =>
    DdsPinStruct(
      pin: pin,
      key: key,
      nonce: nonce,
      requestid: requestid,
    );
