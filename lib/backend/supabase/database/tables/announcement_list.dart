import '../database.dart';

class AnnouncementListTable extends SupabaseTable<AnnouncementListRow> {
  @override
  String get tableName => 'announcement_list';

  @override
  AnnouncementListRow createRow(Map<String, dynamic> data) =>
      AnnouncementListRow(data);
}

class AnnouncementListRow extends SupabaseDataRow {
  AnnouncementListRow(super.data);

  @override
  SupabaseTable get table => AnnouncementListTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);
}
