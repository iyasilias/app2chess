import '../database.dart';

class EventWithVouchersTable extends SupabaseTable<EventWithVouchersRow> {
  @override
  String get tableName => 'event_with_vouchers';

  @override
  EventWithVouchersRow createRow(Map<String, dynamic> data) =>
      EventWithVouchersRow(data);
}

class EventWithVouchersRow extends SupabaseDataRow {
  EventWithVouchersRow(super.data);

  @override
  SupabaseTable get table => EventWithVouchersTable();

  int? get eventId => getField<int>('event_id');
  set eventId(int? value) => setField<int>('event_id', value);

  String? get eventName => getField<String>('event_name');
  set eventName(String? value) => setField<String>('event_name', value);

  dynamic get vouchers => getField<dynamic>('vouchers');
  set vouchers(dynamic value) => setField<dynamic>('vouchers', value);
}
