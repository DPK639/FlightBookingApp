class Tripetype {
  final List<Flightdetail> flightdetails;

  Tripetype({
    required this.flightdetails,
  });

}

class Flightdetail {
  final int totalcount;
  final String trveldetatils;
  final String fromDate;
  final String toDate;
  final List<Onward> onward;
  final List<Onward> flightdetailReturn;

  Flightdetail({
    required this.totalcount,
    required this.trveldetatils,
    required this.fromDate,
    required this.toDate,
    required this.onward,
    required this.flightdetailReturn,
  });

}

class Onward {
  final String flight;
  final String flightCode;
  final String from;
  final String to;
  final String timeFrom;
  final String timeTo;
  final String travelTime;
  final String stops;

  Onward({
    required this.flight,
    required this.flightCode,
    required this.from,
    required this.to,
    required this.timeFrom,
    required this.timeTo,
    required this.travelTime,
    required this.stops,
  });

}
