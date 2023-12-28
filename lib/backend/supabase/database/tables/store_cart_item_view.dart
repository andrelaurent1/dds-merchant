import '../database.dart';

class StoreCartItemViewTable extends SupabaseTable<StoreCartItemViewRow> {
  @override
  String get tableName => 'store_cart_item_view';

  @override
  StoreCartItemViewRow createRow(Map<String, dynamic> data) =>
      StoreCartItemViewRow(data);
}

class StoreCartItemViewRow extends SupabaseDataRow {
  StoreCartItemViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreCartItemViewTable();

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  int? get qty => getField<int>('qty');
  set qty(int? value) => setField<int>('qty', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get cartId => getField<String>('cart_id');
  set cartId(String? value) => setField<String>('cart_id', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);
}
