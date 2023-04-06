import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);


  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "guest".toUpperCase(),
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 24, fontFamily: "Acme",),),
        actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: CircleAvatar(
          radius: 50,
          backgroundImage:
          AssetImage("Images/inapp/guest.jpg"),
          ),
        )],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            const SizedBox(height: 200,
            width: 200,
              child: Image(image: AssetImage("Images/inapp/download.png")),
            ),
            const SizedBox(height: 10,),
             profileHeading(context, "Account Detail"),
            const SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              height: 230,
              width: MediaQuery.of(context).size.width*0.9,
              child: Column(
                children: [
                  listTile(const Icon(Icons.email), "Email Address", "example@gmail.com"),
                   divider(),
                  listTile(const Icon(Icons.phone), "Phone No.", "+92 300 0000000"),
                  divider(),
                  listTile(const Icon(Icons.location_pin), "Address", "St, City, Country"),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            profileHeading(context, "Account Setting"),
            const SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              height: 230,
              width: MediaQuery.of(context).size.width*0.9,
              child: Column(
                children: [
                  InkWell(
                    onTap: (){},
                      child: listTile(const Icon(Icons.edit), "Edit Profile", ""),
                  ),
                  divider(),
                    InkWell(
                      onTap: (){},
                      child: listTile(const Icon(Icons.lock), "Change Password", ""),),
                  divider(),
                    InkWell(
                      onTap: (){},
                      child: listTile(const Icon(Icons.logout), "Sign Out", ""),),
                ],
              ),
            )

          ],
        ),
      )
    );
  }
 //Divider
  Padding divider() {
    return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 2,
                  color: Colors.yellow,
                ),
              );
  }

  //Profile Heading
  Widget profileHeading (BuildContext context, label) {
    return Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children:  [
             SizedBox(
               height: 20,
               width: MediaQuery.of(context).size.width*0.2,
               child: const  Divider(
                 thickness: 2,
                 color: Colors.black38,
               ),
             ),
             Text(
                 label,
             style: const TextStyle(
               fontSize: 20,
               fontFamily: "Acme",
               color: Colors.black38,
             ),),
             SizedBox(
               height: 20,
               width: MediaQuery.of(context).size.width*0.2,
               child: const  Divider(
                 thickness: 2,
                 color: Colors.black38,
               ),
             ),
           ],
         );
  }


  //ListTile Widget
  Widget listTile (
      final Icon icon,
      final String label,
      final String subLabel
      ){
    return ListTile(
      leading: icon,
      title: Text(label, style: const TextStyle(
        fontFamily: "Acme",
      ),),
      subtitle: Text(subLabel),
    );
  }
}


