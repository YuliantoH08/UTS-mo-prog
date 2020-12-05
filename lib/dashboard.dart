import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String username;

  Dashboard({this.username});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.blue,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Hola,  ${widget.username}",
                style: TextStyle(color: Colors.yellowAccent),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: <Widget>[
                  MenuIcon(
                    icon: Icons.hotel,
                    iconColor: Colors.red,
                    label: "Hotel",
                  ),
                  MenuIcon(
                    icon: Icons.pesawat,
                    iconColor: Colors.green,
                    label: "Pesawat",
                  ),
                  MenuIcon(
                    icon: Icons.kereta,
                    iconColor: Colors.purple,
                    label: "Kereta",
                  ),
                  MenuIcon(
                    icon: Icons.mobil,
                    iconColor: Colors.blue,
                    label: "Sewa mobil",
                  )
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;

  MenuIcon({this.icon, this.iconColor, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: iconColor.withOpacity(.2),
                borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(icon, color: iconColor),
            ),
          ),
          SizedBox(height: 10.0),
          Text(label)
        ],
      ),
    );
  }
}
