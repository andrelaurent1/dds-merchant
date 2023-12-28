import '../database.dart';

class StoreMerchantDashboardTable
    extends SupabaseTable<StoreMerchantDashboardRow> {
  @override
  String get tableName => 'store_merchant_dashboard';

  @override
  StoreMerchantDashboardRow createRow(Map<String, dynamic> data) =>
      StoreMerchantDashboardRow(data);
}

class StoreMerchantDashboardRow extends SupabaseDataRow {
  StoreMerchantDashboardRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreMerchantDashboardTable();

  String? get merchantId => getField<String>('merchant_id');
  set merchantId(String? value) => setField<String>('merchant_id', value);

  String? get merchantName => getField<String>('merchant_name');
  set merchantName(String? value) => setField<String>('merchant_name', value);

  String? get mostSoldProduct => getField<String>('most_sold_product');
  set mostSoldProduct(String? value) =>
      setField<String>('most_sold_product', value);

  double? get totalProductCount => getField<double>('total_product_count');
  set totalProductCount(double? value) =>
      setField<double>('total_product_count', value);

  double? get totalPurchases => getField<double>('total_purchases');
  set totalPurchases(double? value) =>
      setField<double>('total_purchases', value);

  double? get totalSales => getField<double>('total_sales');
  set totalSales(double? value) => setField<double>('total_sales', value);
}
