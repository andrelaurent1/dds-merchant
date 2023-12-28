import '../database.dart';

class StoreCategoryExistViewTable
    extends SupabaseTable<StoreCategoryExistViewRow> {
  @override
  String get tableName => 'store_category_exist_view';

  @override
  StoreCategoryExistViewRow createRow(Map<String, dynamic> data) =>
      StoreCategoryExistViewRow(data);
}

class StoreCategoryExistViewRow extends SupabaseDataRow {
  StoreCategoryExistViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreCategoryExistViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
