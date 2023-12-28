import '../database.dart';

class StoreMerchantUnsettledBalanceTable
    extends SupabaseTable<StoreMerchantUnsettledBalanceRow> {
  @override
  String get tableName => 'store_merchant_unsettled_balance';

  @override
  StoreMerchantUnsettledBalanceRow createRow(Map<String, dynamic> data) =>
      StoreMerchantUnsettledBalanceRow(data);
}

class StoreMerchantUnsettledBalanceRow extends SupabaseDataRow {
  StoreMerchantUnsettledBalanceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreMerchantUnsettledBalanceTable();

  String? get merchantId => getField<String>('merchant_id');
  set merchantId(String? value) => setField<String>('merchant_id', value);

  String? get merchantName => getField<String>('merchant_name');
  set merchantName(String? value) => setField<String>('merchant_name', value);

  double? get unsettledBalance => getField<double>('unsettled_balance');
  set unsettledBalance(double? value) =>
      setField<double>('unsettled_balance', value);
}
