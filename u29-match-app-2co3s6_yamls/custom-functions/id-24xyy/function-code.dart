
  // この関数はバリデーション成功後にのみ呼ばれる前提
  final year = int.parse(yearStr);
  // 月と日は2桁にパディングしてISO 8601形式にする
  final monthPadded = monthStr.padLeft(2, '0');
  final dayPadded 