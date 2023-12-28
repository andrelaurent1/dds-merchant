import '../database.dart';

class StoreUnsettledOrderSummaryTable
    extends SupabaseTable<StoreUnsettledOrderSummaryRow> {
  @override
  String get tableName => 'store_unsettled_order_summary';

  @override
  StoreUnsettledOrderSummaryRow createRow(Map<String, dynamic> data) =>
      StoreUnsettledOrderSummaryRow(data);
}

class StoreUnsettledOrderSummaryRow extends SupabaseDataRow {
  StoreUnsettledOrderSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreUnsettledOrderSummaryTable();

  String? get merchantId => getField<String>('merchant_id');
  set merchantId(String? value) => setField<String>('merchant_id', value);

  double? get sumTotalPrice => getField<double>('sum_total_price');
  set sumTotalPrice(double? value) =>
      setField<double>('sum_total_price', value);

  double? get sumProfitSharing => getField<double>('sum_profit_sharing');
  set sumProfitSharing(double? value) =>
      setField<double>('sum_profit_sharing', value);

  double? get cashOutAmount => getField<double>('cash_out_amount');
  set cashOutAmount(double? value) =>
      setField<double>('cash_out_amount', value);
}
