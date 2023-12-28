import '../database.dart';

class UserViewTable extends SupabaseTable<UserViewRow> {
  @override
  String get tableName => 'user_view';

  @override
  UserViewRow createRow(Map<String, dynamic> data) => UserViewRow(data);
}

class UserViewRow extends SupabaseDataRow {
  UserViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get roles => getField<String>('roles');
  set roles(String? value) => setField<String>('roles', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get isMerchant => getField<String>('is_merchant');
  set isMerchant(String? value) => setField<String>('is_merchant', value);
}
