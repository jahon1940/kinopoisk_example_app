

import 'package:equatable/equatable.dart';

class MainState extends Equatable {
  final BottomMenu bottomMenu;

  const MainState({this.bottomMenu = BottomMenu.home});

  MainState copyWith({BottomMenu? bottomMenu}) {
    return MainState(bottomMenu: bottomMenu ?? this.bottomMenu);
  }

  @override
  List<Object> get props => [bottomMenu];
}

enum BottomMenu { home, order, profile }
