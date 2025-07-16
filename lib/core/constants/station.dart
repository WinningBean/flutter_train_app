/// 역 이름 상수
enum Station {
  suseo,
  dongtan,
  pyeongtaekJije,
  cheonanAsan,
  osong,
  daejeon,
  gimcheonGumi,
  dongdaegu,
  gyeongju,
  ulsan,
  busan,
}

/// 역 이름 확장
extension StationName on Station {
  /// 한국어 이름 반환
  String get korean {
    switch (this) {
      case Station.suseo:
        return '수서';
      case Station.dongtan:
        return '동탄';
      case Station.pyeongtaekJije:
        return '평택지제';
      case Station.cheonanAsan:
        return '천안아산';
      case Station.osong:
        return '오송';
      case Station.daejeon:
        return '대전';
      case Station.gimcheonGumi:
        return '김천구미';
      case Station.dongdaegu:
        return '동대구';
      case Station.gyeongju:
        return '경주';
      case Station.ulsan:
        return '울산';
      case Station.busan:
        return '부산';
    }
  }
}
