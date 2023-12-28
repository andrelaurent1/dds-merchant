import '../database.dart';

class ProductCommandTable extends SupabaseTable<ProductCommandRow> {
  @override
  String get tableName => 'product_command';

  @override
  ProductCommandRow createRow(Map<String, dynamic> data) =>
      ProductCommandRow(data);
}

class ProductCommandRow extends SupabaseDataRow {
  ProductCommandRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductCommandTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get op => getField<String>('op')!;
  set op(String value) => setField<String>('op', value);

  DateTime get ts => getField<DateTime>('ts')!;
  set ts(DateTime value) => setField<DateTime>('ts', value);

  dynamic? get record => getField<dynamic>('record');
  set record(dynamic? value) => setField<dynamic>('record', value);

  dynamic? get oldRecord => getField<dynamic>('old_record');
  set oldRecord(dynamic? value) => setField<dynamic>('old_record', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get categoryId => getField<String>('category_id');
  set categoryId(String? value) => setField<String>('category_id', value);

  String? get merchantId => getField<String>('merchant_id');
  set merchantId(String? value) => setField<String>('merchant_id', value);

  double? get profitSharingPercentage =>
      getField<double>('profit_sharing_percentage');
  set profitSharingPercentage(double? value) =>
      setField<double>('profit_sharing_percentage', value);
}
