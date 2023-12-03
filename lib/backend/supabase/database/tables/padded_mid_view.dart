import '../database.dart';

class PaddedMidViewTable extends SupabaseTable<PaddedMidViewRow> {
  @override
  String get tableName => 'padded_mid_view';

  @override
  PaddedMidViewRow createRow(Map<String, dynamic> data) =>
      PaddedMidViewRow(data);
}

class PaddedMidViewRow extends SupabaseDataRow {
  PaddedMidViewRow(super.data);

  @override
  SupabaseTable get table => PaddedMidViewTable();

  String? get paddedMid => getField<String>('padded_mid');
  set paddedMid(String? value) => setField<String>('padded_mid', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get ic => getField<String>('ic');
  set ic(String? value) => setField<String>('ic', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  int? get mid => getField<int>('mid');
  set mid(int? value) => setField<int>('mid', value);
}
