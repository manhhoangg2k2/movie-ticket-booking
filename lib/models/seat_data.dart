enum SeatStatus { available, reserved, selected }

class Seat {
  String id;
  SeatStatus status;

  Seat({required this.id, required this.status});
}
