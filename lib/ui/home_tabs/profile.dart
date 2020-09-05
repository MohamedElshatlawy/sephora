import 'package:flutter/material.dart';
import 'package:sephora/ui/widgets/myAppBar.dart';

class ProfileTab extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/profile.png'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Nader Albabi',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'INSIDER',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '0 Points',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Beauty Insider >')
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: VerticalDivider(),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.credit_card,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              'Sephora credit card program',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Apply Now >')
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: VerticalDivider(),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/profile.png',
                        scale: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              'Beauty Insider Community',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Apply Now >')
                    ],
                  ),
                )
              ],
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.receipt),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle:
                  Text('In store,online', style: TextStyle(color: Colors.grey)),
              title: Text(
                'Puchase History',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.recent_actors),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: Text('Payment,Contactinfo,address',
                  style: TextStyle(color: Colors.grey)),
              title: Text(
                'Account',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings_backup_restore),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: Text('FLASH 2 Day shipping',
                  style: TextStyle(color: Colors.grey)),
              title: Text(
                'Subscription',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.subtitles),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: Text('Manage your services classes , events',
                  style: TextStyle(color: Colors.grey)),
              title: Text(
                'Reservations',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
               Divider(),
            ListTile(
              leading: Icon(Icons.widgets),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: Text('From/ in store and online',
                  style: TextStyle(color: Colors.grey)),
              title: Text(
                'Samples & Rewards',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
              Divider(),
            ListTile(
           
              trailing: Icon(Icons.arrow_forward_ios),
            
              title: Text(
                'App settings',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ListTile(
           
              trailing: Icon(Icons.arrow_forward_ios),
            
              title: Text(
                'CONTACT US,FAQ,LEGAL',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
         

         SizedBox(height: 35,),

            Text('Signout',style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              //fontWeight: FontWeight.bold
            ),),
   SizedBox(height: 35,),
          ],
        ),
      ),
    );
  }
}
