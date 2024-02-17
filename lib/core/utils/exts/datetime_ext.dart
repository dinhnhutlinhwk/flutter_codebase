extension DateTimeExt on DateTime {
  String get dayOfWeek {
    switch (weekday) {
      case 1:
        return 'Thứ 2';
      case 2:
        return 'Thứ 3';
      case 3:
        return 'Thứ 4';
      case 4:
        return 'Thứ 5';
      case 5:
        return 'Thứ 6';
      case 6:
        return 'Thứ 7';
      case 7:
        return 'Chủ nhật';
      default:
        return '';
    }
  }

  String get dayOfWeekShort {
    switch (weekday) {
      case 1:
        return 'T2';
      case 2:
        return 'T3';
      case 3:
        return 'T4';
      case 4:
        return 'T5';
      case 5:
        return 'T6';
      case 6:
        return 'T7';
      case 7:
        return 'CN';
      default:
        return '';
    }
  }

  String get formatDMY => '$day/$month/$year';

  String get formatDMYHm => '$day/$month/$year $hour:$minute';

  String get formatDMYHms => '$day/$month/$year $hour:$minute:$second';

  String get formatHm => '$hour:$minute';

  String get formatHms => '$hour:$minute:$second';

  String get howLongFromNow {
    final now = DateTime.now();
    final diff = now.difference(this);
    if (diff.inDays > 0) {
      return '${diff.inDays} ngày trước';
    }
    if (diff.inHours > 0) {
      return '${diff.inHours} giờ trước';
    }
    if (diff.inMinutes > 0) {
      return '${diff.inMinutes} phút trước';
    }
    return 'vừa xong';
  }
}
