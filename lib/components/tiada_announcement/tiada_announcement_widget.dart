import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tiada_announcement_model.dart';
export 'tiada_announcement_model.dart';

class TiadaAnnouncementWidget extends StatefulWidget {
  const TiadaAnnouncementWidget({super.key});

  @override
  _TiadaAnnouncementWidgetState createState() =>
      _TiadaAnnouncementWidgetState();
}

class _TiadaAnnouncementWidgetState extends State<TiadaAnnouncementWidget> {
  late TiadaAnnouncementModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TiadaAnnouncementModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Tiada pengumuman buat masa ini.',
      style: FlutterFlowTheme.of(context).bodyMedium,
    );
  }
}
