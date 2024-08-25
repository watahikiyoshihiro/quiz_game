import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'question_counter.g.dart'; //ファイル名を先頭小文字で記載 s1_s2_s3_fileなど

@riverpod
class QuestionCounterNotifier extends _$QuestionCounterNotifier {
  //ファイル名を先頭大文字で記載 S1S2S3Fileなど
  @override
  int build() {
    //buildの前にデータ型を記載 intなど
    return 0; //returnの後に初期値を記載 0など
  }

  // データを変更する関数
  void updateState() {
    // 変更前のデータ
    final oldState = state;
    // 変更後のデータ
    final newState = oldState + 1;
    // データを上書き
    state = newState;
  }
}
