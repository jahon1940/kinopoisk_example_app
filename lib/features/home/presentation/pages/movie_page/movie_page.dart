import 'dart:ui';
import 'package:empty_feature_folder/features/home/presentation/pages/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../bloc/home_bloc.dart';
import '../../bloc/home_event.dart';
import '../../bloc/home_state.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  late YoutubePlayerController _controller;

  void showMovieTrailerDialog(BuildContext context, String? url) {
    if (url == null) return;
    _controller = YoutubePlayerController(
      initialVideoId: url!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          insetPadding: const EdgeInsets.all(10),
          backgroundColor: Colors.transparent,
          content: YoutubePlayer(
            // content of the alert dialog is our YT video
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () => debugPrint('Ready'), // for debugging purposes only
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                isExpanded: true,
                colors: const ProgressBarColors(
                  playedColor: Color(0xFFEB0029),
                  handleColor: Color(0xFFEB0029),
                ),
              ),
              const PlaybackSpeedButton(),
              FullScreenButton(),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Закрыть',
                style: TextStyle(fontSize: 15, color: Color(0xFFEB0029)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
          body: state.movie == null
              ? const Center(
                  child: CupertinoActivityIndicator(),
                )
              : CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      backgroundColor: Colors.black,
                      expandedHeight: 350,
                      collapsedHeight: 80,
                      floating: true,
                      pinned: true,
                      snap: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Stack(children: [
                          Image.network(
                              state.movie!.backdrop!.previewUrl.toString(),
                              fit: BoxFit.fitHeight,
                              alignment: Alignment.bottomCenter),
                          Container(
                            foregroundDecoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.black,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0, 0.95],
                              ),
                            ),
                          ),
                          Positioned.fill(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, right: 30, top: 50),
                                    child: Image.network(
                                        state.movie?.logo?.url ?? ''),
                                  ))),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            const Text(
                                              'Год',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              state.movie?.year.toString() ??
                                                  '',
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            const Text(
                                              'Жанр',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              state.movie?.genres?[0].name ??
                                                  '',
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            const Text(
                                              "Рейтинг",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              state.movie?.rating?.imdb
                                                      .toString() ??
                                                  '',
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                        title: SizedBox(
                          width: 450,
                          child: Container(
                            color: Colors.transparent,
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Text(
                                  state.movie?.name.toString() ?? '',
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        titlePadding: const EdgeInsets.symmetric(vertical: 0),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "Актеры",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: SizedBox(
                              height: 60.0,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      width: 1,
                                    );
                                  },
                                  itemCount: 5,
                                  itemBuilder: (ctx, index) {
                                    return Container(
                                      width: 260,
                                      height: 100,
                                      child: ListTile(
                                        leading: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            image: DecorationImage(
                                                image: NetworkImage(state.movie!
                                                    .persons![index].photo
                                                    .toString()),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        title: Text(
                                          '${state.movie?.persons?[index].name ?? ''}',
                                        ),
                                        subtitle: Text(
                                          '${state.movie?.persons?[index].enName ?? ''}',
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                              "О фильме",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Text(state.movie?.description ?? ''),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "Похожие фильмы",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 5,
                            ),
                            child: SizedBox(
                              height: 300,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      width: 20,
                                    );
                                  },
                                  itemCount: 5,
                                  itemBuilder: (ctx, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MoviePage()),
                                          );
                                          context.read<HomeBloc>().add(
                                              GetMovieEvent(state.movie
                                                      ?.similarMovies?[index].id
                                                      .toString() ??
                                                  ''));
                                        },
                                        child: Container(
                                          width: 200,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: NetworkImage(state
                                                        .movie
                                                        ?.similarMovies?[index]
                                                        .poster
                                                        ?.previewUrl ??
                                                    ''),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
          bottomNavigationBar: ButtonWidget(
              buttonName: 'Смотреть трейлер ',
              onTap: () async {
                if (state.movie!.videos!.trailers!.isEmpty) {
                  const snackBar = SnackBar(
                    content: Text('К сожалению трейлер не найден'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  showMovieTrailerDialog(context,
                      state.movie!.videos!.trailers![0].url!.split('/').last);
                }
              }),
        ));
      },
    );
  }
}
