import '../database.dart';

class StoreProductViewTable extends SupabaseTable<StoreProductViewRow> {
  @override
  String get tableName => 'store_product_view';

  @override
  StoreProductViewRow createRow(Map<String, dynamic> data) =>
      StoreProductViewRow(data);
}

class StoreProductViewRow extends SupabaseDataRow {
  StoreProductViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreProductViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get stock => getField<int>('stock');
  set stock(int? value) => setField<int>('stock', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  double? get profitSharingPercentage =>
      getField<double>('profit_sharing_percentage');
  set profitSharingPercentage(double? value) =>
      setField<double>('profit_sharing_percentage', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get categoryId => getField<String>('category_id');
  set categoryId(String? value) => setField<String>('category_id', value);

  String? get merchantId => getField<String>('merchant_id');
  set merchantId(String? value) => setField<String>('merchant_id', value);

  String? get merchant => getField<String>('merchant');
  set merchant(String? value) => setField<String>('merchant', value);
}
