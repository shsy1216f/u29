
  // 元のリストをコピーして新しいリストを作成
  List<String> newList = List.from(photoList);

  // 指定されたインデックスが有効な範囲内か確認
  if (indexToRemove >= 0 && indexToRemove < newList.length) {
    // 指定され�