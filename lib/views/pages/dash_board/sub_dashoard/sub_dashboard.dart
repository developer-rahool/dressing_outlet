import 'package:dressing_outlet/utils/dashboard_utils.dart';
import 'package:flutter/material.dart';

class SubDashboard extends StatefulWidget {
  const SubDashboard({Key? key}) : super(key: key);

  @override
  State<SubDashboard> createState() => _SubDashboardState();
}

class _SubDashboardState extends State<SubDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("DashBoard",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 24,
              fontFamily: "Acme"),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
    actions: [
      IconButton(onPressed: (){
      }, icon: const Icon(
    Icons.logout
    )),
    ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
            children: List.generate(6, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> subDashboardRoutes[index]));
                    },
                    child: Card(
                      color: Colors.blueGrey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                              dashboardIcons[index],
                              color: Colors.yellow,
                              size: 50,
                          ),
                          Center(
                            child: Text(
                                dashboardLabel[index].toUpperCase(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 24,
                                color: Colors.yellow,
                                letterSpacing: 2,
                                fontFamily: "Acme",
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
      })
         ),
    );
  }
}
