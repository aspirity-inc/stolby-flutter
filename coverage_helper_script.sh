file=test/coverage_helper_test.dart
echo "// Helper file to make coverage work for all dart files\n" > $file
echo "// ignore_for_file: unused_import" > $file

find lib -name '*.dart' '!' -name '*.freezed.dart' '!' -name '*.g.dart' '!' -name '*.config.dart' '!' -name '*.chopper.dart' '!' -name '*.gr.dart' '!' -name '*_event.dart' '!' -name '*_state.dart' '!' -name '*.pb.dart' '!' -name '*.pbenum.dart' '!' -name '*.pbjson.dart' '!' -name '*.pbserver.dart' | cut -c4- | awk -v package='stolby_flutter' '{printf "import '\''package:%s%s'\'';\n", package, $1}' >> $file
echo "void main(){}" >> $file