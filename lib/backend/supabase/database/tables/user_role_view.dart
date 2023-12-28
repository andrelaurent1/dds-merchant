import '../database.dart';

class UserRoleViewTable extends SupabaseTable<UserRoleViewRow> {
  @override
  String get tableName => 'user_role_view';

  @override
  UserRoleViewRow createRow(Map<String, dynamic> data) => UserRoleViewRow(data);
}

class UserRoleViewRow extends SupabaseDataRow {
  UserRoleViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserRoleViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get roleName => getField<String>('role_name');
  set roleName(String? value) => setField<String>('role_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);
}
