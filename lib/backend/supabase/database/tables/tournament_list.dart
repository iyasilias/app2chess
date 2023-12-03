import '../database.dart';

class TournamentListTable extends SupabaseTable<TournamentListRow> {
  @override
  String get tableName => 'tournament_list';

  @override
  TournamentListRow createRow(Map<String, dynamic> data) =>
      TournamentListRow(data);
}

class TournamentListRow extends SupabaseDataRow {
  TournamentListRow(super.data);

  @override
  SupabaseTable get table => TournamentListTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get organizer => getField<String>('organizer');
  set organizer(String? value) => setField<String>('organizer', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  String? get contact => getField<String>('contact');
  set contact(String? value) => setField<String>('contact', value);

  bool? get online => getField<bool>('online');
  set online(bool? value) => setField<bool>('online', value);

  String? get negeri => getField<String>('negeri');
  set negeri(String? value) => setField<String>('negeri', value);

  int? get rank => getField<int>('rank');
  set rank(int? value) => setField<int>('rank', value);
}
