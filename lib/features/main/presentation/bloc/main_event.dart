
import 'package:equatable/equatable.dart';

import 'main_state.dart';

abstract class MainEvent extends Equatable {}

class SetBottomEvent extends MainEvent {
  final BottomMenu menu;
  SetBottomEvent({required this.menu});
  @override
  List<Object?> get props => [menu];

}
