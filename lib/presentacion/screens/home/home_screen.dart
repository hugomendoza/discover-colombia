import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:discover_colombia/presentacion/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          
          const SliverAppBar(
            floating: true,
            snap: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsetsDirectional.only(
                start: 5
              ),
              title: CustomAppbar(),
            )
          ),

          SliverList(delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Container(
                margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 350,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          fit: BoxFit.cover,
                          "https://picsum.photos/200/300?random=$index",
                        ),
                      ),
                    ),
                    Positioned.fill(
                      bottom: 20,
                      left: 20,
                      right: 20,
                      top: 250,
                      child: _ContentCard(index: index,),
                    )
                  ],
                ),
              );
            },
            childCount: 4
          ),)
        ],
      ),
    );
  }
}

class _ContentCard extends StatelessWidget {

  final int index;

  const _ContentCard({
    required this.index
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // #0d3357
                colors: [
                  Colors.black.withOpacity(0.5),
                  Color.fromARGB(126, 4, 40, 72),
                ],
                stops: const [0.0, 1.0],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight
              )
            ),
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Text("Hola mundo $index desde widget", style: const TextStyle(color: Colors.white)),
            ),
          ),
        ),
      )
    );
  }
}