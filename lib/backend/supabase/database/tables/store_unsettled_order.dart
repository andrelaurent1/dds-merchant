import '../database.dart';

class StoreUnsettledOrderTable extends SupabaseTable<StoreUnsettledOrderRow> {
  @override
  String get tableName => 'store_unsettled_order';

  @override
  StoreUnsettledOrderRow createRow(Map<String, dynamic> data) =>
      StoreUnsettledOrderRow(data);
}

class StoreUnsettledOrderRow extends SupabaseDataRow {
  StoreUnsettledOrderRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreUnsettledOrderTable();

  String? get merchantId => getField<String>('merchant_id');
  set merchantId(String? value) => setField<String>('merchant_id', value);

  String? get settlementItemId => getField<String>('settlement_item_id');
  set settlementItemId(String? value) =>
      setField<String>('settlement_item_id', value);

  DateTime? get orderDate => getField<DateTime>('order_date');
  set orderDate(DateTime? value) => setField<DateTime>('order_date', value);

  int? get orderItemQty => getField<int>('order_item_qty');
  set orderItemQty(int? value) => setField<int>('order_item_qty', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  double? get productPrice => getField<double>('product_price');
  set productPrice(double? value) => setField<double>('product_price', value);

  bool? get settlementStatus => getField<bool>('settlement_status');
  set settlementStatus(bool? value) =>
      setField<bool>('settlement_status', value);

  double? get totalPrice => getField<double>('total_price');
  set totalPrice(double? value) => setField<double>('total_price', value);

  double? get capitalPrice => getField<double>('capital_price');
  set capitalPrice(double? value) => setField<double>('capital_price', value);

  double? get profitSharing => getField<double>('profit_sharing');
  set profitSharing(double? value) => setField<double>('profit_sharing', value);
}
