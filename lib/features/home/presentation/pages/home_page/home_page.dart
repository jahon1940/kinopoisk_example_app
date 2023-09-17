import 'package:empty_feature_folder/features/home/presentation/pages/movie_page/movie_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../../../../core/network/internet_connection/internet_connection_page.dart';
import '../../bloc/home_bloc.dart';
import '../../bloc/home_event.dart';
import '../../bloc/home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getInternet();
  }

  Future<void> getInternet() async {
    var noNetwork = await InternetConnectionChecker().hasConnection;
    if (!noNetwork) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return InternetConnectionPage();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: Container(),
            leadingWidth: 0,
            title: Container(
              height: 45,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                boxShadow: [
                  BoxShadow(),
                ],
              ),
              child: TextField(
                onChanged: (e) => context.read<HomeBloc>().add(SearchEvent(e)),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: 10,
                  ),
                  border: InputBorder.none,
                  hintText: 'Search...',
                ),
              ),
            ),
          ),
          body: state.movies == null && state.filteredMovies == null
              ? const Center(
            child: CupertinoActivityIndicator(),
          )
              : Padding(
            padding: const EdgeInsets.only(top: 15),
            child: state.filteredMovies?.isNotEmpty ?? false
                ? GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (1 / 1.7),
                    ),

                    itemCount: state.filteredMovies!.length, // <-- required
                    itemBuilder: (ctx, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MoviePage()),
                        );
                        context.read<HomeBloc>().add(GetMovieEvent(
                            state.filteredMovies?[index].id.toString() ?? ''));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, spreadRadius: 1)
                                ],
                                image: DecorationImage(
                                    image: NetworkImage(state.filteredMovies
                                        ?[index].poster ??
                                        ''),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Название: ${state.filteredMovies?[index].name ?? ''}',

                                  ),
                                  Text(
                                    'Год: ${state.filteredMovies?[index].year ?? ''}',

                                  ),
                                  Text(
                                    'Рейтинг: ${state.filteredMovies?[index].rating ?? ''}',

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (1 / 1.6),
                    ),

                    itemCount: 10, // <-- required
                    itemBuilder: (ctx, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MoviePage()),
                        );
                        context.read<HomeBloc>().add(GetMovieEvent(
                            state.movies?.docs?[index].id.toString() ?? ''));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, spreadRadius: 1)
                                ],
                                image: DecorationImage(
                                    image: NetworkImage(state.movies
                                            ?.docs?[index].poster?.previewUrl ??
                                        ''),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Название: ${state.movies?.docs?[index].name ?? ''}',

                                  ),
                                  Text(
                                    'Год: ${state.movies?.docs?[index].year ?? ''}',

                                  ),
                                  Text(
                                    'Рейтинг: ${state.movies?.docs?[index].rating?.imdb ?? ''}',

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
