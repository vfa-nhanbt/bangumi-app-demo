extension DoubleToDuration on double {
  Duration toDuration() {
    return Duration(
      hours: toInt(),
      minutes: ((this - toInt()) * 60).toInt(),
    );
  }
}
