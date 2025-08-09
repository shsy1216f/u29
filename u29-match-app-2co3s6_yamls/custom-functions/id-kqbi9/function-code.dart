
  // この関数は、APIから受け取ったデータを安全に文字列のリストに変換します。
  if (inputJsonList == null || inputJsonList is! List) {
    // データが空、またはリスト形式でない場合は、空のリストを返してエラーを防ぎ