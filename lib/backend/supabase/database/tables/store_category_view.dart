import '../database.dart';

class StoreCategoryViewTable extends SupabaseTable<StoreCategoryViewRow> {
  @override
  String get tableName => 'store_category_view';

  @override
  StoreCategoryViewRow createRow(Map<String, dynamic> data) =>
      StoreCategoryViewRow(data);
}

class StoreCategoryViewRow extends SupabaseDataRow {
  StoreCategoryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreCategoryViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
