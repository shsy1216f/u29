
  if (inputText == null) {
    return '';
  }
  return inputText.replaceAllMapped(RegExp(r'[ァ-ン]'), (match) {
    return String.fromCharCode(match.group(0)!.codeUnitAt(0) - 0x60);
 