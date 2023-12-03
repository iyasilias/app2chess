import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get ic => getField<String>('ic');
  set ic(String? value) => setField<String>('ic', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int get mid => getField<int>('mid')!;
  set mid(int value) => setField<int>('mid', value);

  int? get firstTournament => getField<int>('first_tournament');
  set firstTournament(int? value) => setField<int>('first_tournament', value);
}
