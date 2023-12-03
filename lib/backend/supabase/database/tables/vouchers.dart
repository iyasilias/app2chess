import '../database.dart';

class VouchersTable extends SupabaseTable<VouchersRow> {
  @override
  String get tableName => 'vouchers';

  @override
  VouchersRow createRow(Map<String, dynamic> data) => VouchersRow(data);
}

class VouchersRow extends SupabaseDataRow {
  VouchersRow(super.data);

  @override
  SupabaseTable get table => VouchersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get expireDate => getField<DateTime>('expire_date');
  set expireDate(DateTime? value) => setField<DateTime>('expire_date', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get term => getField<String>('term');
  set term(String? value) => setField<String>('term', value);

  int? get event => getField<int>('event');
  set event(int? value) => setField<int>('event', value);

  double? get rank => getField<double>('rank');
  set rank(double? value) => setField<double>('rank', value);
}
