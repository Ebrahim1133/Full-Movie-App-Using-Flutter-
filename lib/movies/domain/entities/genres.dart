import 'package:equatable/equatable.dart';

class Genrse extends Equatable {
  final int id;
  final String name;

  const Genrse({required this.id, required this.name});

  @override
  List<Object> get props => [id, name];
}
