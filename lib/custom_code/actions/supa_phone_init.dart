// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_auth_ui/supabase_auth_ui.dart';

Future supaPhoneInit() async {
  // Add your function code here!
  await Supabase.initialize(
    url: 'https://tnpcirujaxnzealflavq.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRucGNpcnVqYXhuemVhbGZsYXZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTMyNjg5MDQsImV4cCI6MjAwODg0NDkwNH0.sNxad7bvMatDhTGVpD7WG3Wu8D6h9n2ZhyfFtJlReXs',
  );
}
