import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/presentation/pages/home_page/home_page.dart';
import '../../bloc/main_bloc.dart';
import '../../bloc/main_event.dart';
import '../../bloc/main_state.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.bottomMenu.index,
            children: const [
              HomePage(),
              // UserPage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.white,
            onTap: (index) {
              context
                  .read<MainBloc>()
                  .add(SetBottomEvent(menu: BottomMenu.values[index]));
            },
            currentIndex: state.bottomMenu.index,
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "user",
                icon: Icon(Icons.person),
                activeIcon: Icon(Icons.person),
              ),
            ],
          ),
        );
      },
    );
  }
}
