import 'package:flutter/material.dart';
import 'package:social_app/components/card_container.dart';
import 'package:social_app/constants.dart';
import '';
class Home extends StatelessWidget {

  final String text;

  const Home({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    CardContainer(
                      name: 'Jeremy Khamdy',
                      subject: 'Sport',
                      content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                          'Suspendisse porttitor erat ut dui semper, vel ultrices '
                          'Suspendisse porttitor erat ut dui semper, vel ultrices '
                          'Suspendisse porttitor erat ut dui semper, vel ultrices '
                          'urna consequat. Morbi aliquam nibh quis nisl facilisis '
                          'iaculis. Sed nec est turpis. Cras eget efficitur massa. '
                          'Etiam placerat enim enim, at euismod quam congue a. '
                          'Curabitur sit amet dui nec risus sollicitudin tincidunt. '
                          'Maecenas eget mi risus.',
                    ),
                    CardContainer(
                      name: 'Jeremy Khamdy',
                      subject: 'Cinema',
                      content: 'Suspendisse porttitor erat ut dui semper, vel ultrices '
                          'urna consequat. Morbi aliquam nibh quis nisl facilisis '
                          'iaculis. Sed nec est turpis. Cras eget efficitur massa. '
                          'Etiam placerat enim enim, at euismod quam congue a. '
                          'Curabitur sit amet dui nec risus sollicitudin tincidunt. ',
                    ),
                    CardContainer(
                      name: 'Jeremy Khamdy',
                      subject: 'Anime',
                      content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                          'Suspendisse porttitor erat ut dui semper, vel ultrices '
                          'Suspendisse porttitor erat ut dui semper, vel ultrices ',
                    ),
                    CardContainer(
                      name: 'Jeremy Khamdy',
                      subject: 'Manga',
                      content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                          'Suspendisse porttitor erat ut dui semper, vel ultrices '
                          'Suspendisse porttitor erat ut dui semper, vel ultrices ',
                    ),
                    CardContainer(
                      name: 'Jeremy Khamdy',
                      subject: 'Politique',
                      content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                          'Suspendisse porttitor erat ut dui semper, vel ultrices '
                          'Suspendisse porttitor erat ut dui semper, vel ultrices ',
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}

