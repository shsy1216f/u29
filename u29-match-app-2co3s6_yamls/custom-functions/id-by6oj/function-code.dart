
  // いずれかのフィールドが空の場合は無効
  if (yearStr.isEmpty || monthStr.isEmpty || dayStr.isEmpty) {
    return false;
  }

  // 文字列を整数に変換。変換できない場合は無効
  final year = int.tryParse(yearStr);
  final month = int.tryParse(monthStr);
  final day = int.tryParse(dayStr);

  if (year == null || month == null || day == null) {
    return false;
  }

  // DateTimeオブジェクトを生成してみて、不正な日付（例: 2月30日）でないか確認
  DateTime birthDate;
  try {
    // 日付の妥当性チェック
    // 月や日の値が0以下の場合も考慮
    if (month < 1 || month > 12 || day < 1 || day > 31) {
      return false;
    }
    birthDate = DateTime(year, month, day);
    // 生成された日付が入力と一致しない場合（例: 2月30日を指定すると3月1日や2日になる）、無効とする
    if (birthDate.year != year ||
        birthDate.month != month ||
        birthDate.day != day) {
      return false;
    }
  } catch (e) {
    // DateTimeのコンストラクタがエラーを投げる場合も無効
    retur