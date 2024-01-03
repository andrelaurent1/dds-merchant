import '../database.dart';

class OrdersCommandTable extends SupabaseTable<OrdersCommandRow> {
  @override
  String get tableName => 'orders_command';

  @override
  OrdersCommandRow createRow(Map<String, dynamic> data) =>
      OrdersCommandRow(data);
}

class OrdersCommandRow extends SupabaseDataRow {
  OrdersCommandRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersCommandTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get op => getField<String>('op')!;
  set op(String value) => setField<String>('op', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  dynamic? get record => getField<dynamic>('record');
  set record(dynamic? value) => setField<dynamic>('record', value);

  dynamic? get oldRecord => getField<dynamic>('old_record');
  set oldRecord(dynamic? value) => setField<dynamic>('old_record', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get paymentType => getField<String>('payment_type');
  set paymentType(String? value) => setField<String>('payment_type', value);

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);

  String? get pin => getField<String>('pin');
  set pin(String? value) => setField<String>('pin', value);

  String? get pinKey => getField<String>('pin_key');
  set pinKey(String? value) => setField<String>('pin_key', value);

  String? get pinNonce => getField<String>('pin_nonce');
  set pinNonce(String? value) => setField<String>('pin_nonce', value);

  String? get pinRequestid => getField<String>('pin_requestid');
  set pinRequestid(String? value) => setField<String>('pin_requestid', value);
}
