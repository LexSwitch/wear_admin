import 'package:flutter/material.dart';

enum Page { dashboard, manage }

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  Page _selectedPage = Page.dashboard;
  MaterialColor active = Colors.red;
  MaterialColor inActive = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                  child: FlatButton.icon(
                      onPressed: () {
                        setState(() {
                          _selectedPage = Page.dashboard;
                        });
                      },
                      icon: Icon(Icons.dashboard,
                          color: _selectedPage == Page.dashboard
                              ? active
                              : inActive),
                      label: Text("Dashboard"))),
              Expanded(
                  child: FlatButton.icon(
                      label: Text("Manage"),
                      onPressed: () {
                        setState(() {
                          _selectedPage = Page.manage;
                        });
                      },
                      icon: Icon(Icons.sort,
                          color: _selectedPage == Page.manage
                              ? active
                              : inActive)))
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.red.withOpacity(0.2),
        ),
        body: _loadScreen());
  }

  Widget _loadScreen() {
    switch (_selectedPage) {
      case Page.dashboard:
        return Column(
          children: <Widget>[
            ListTile(
              title: Text(
                "Revenue",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, color: Colors.grey),
              ),
              subtitle: Text(
                "GH¢" + '12,000',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            Expanded(
                child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.people_outline,color: Colors.blue,),
                          label: Text("Users")),
                      subtitle: Text(
                        "7",
                        textAlign: TextAlign.center,
                        style: TextStyle(color:active, fontSize: 60),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.category,color: Colors.blue,),
                          label: Text("Categories",style: TextStyle(fontSize: 12),)),
                      subtitle: Text(
                        "23",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: active, fontSize: 60),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.track_changes,color: Colors.blue,),
                          label: Text("Products")),
                      subtitle: Text(
                        "120",
                        textAlign: TextAlign.center,
                        style: TextStyle(color:active, fontSize: 60),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.tag_faces,color: Colors.blue,),
                          label: Text("Sold")),
                      subtitle: Text(
                        "13",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: active, fontSize: 60),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.shopping_cart,color: Colors.blue,),
                          label: Text("Orders")),
                      subtitle: Text(
                        "5",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: active, fontSize: 60),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.close,color: Colors.blue,),
                          label: Text("Returns")),
                      subtitle: Text(
                        "0",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: active, fontSize: 60),
                      ),
                    ),
                  ),
                )
              ],
            ))
          ],
        );
        break;
      case Page.manage:
        return ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add product"),
              onTap: () {},
            ),
            Divider(
              color: Colors.blue,
            ),
            ListTile(
              leading: Icon(Icons.change_history),
              title: Text("Products list"),
              onTap: () {},
            ),
            Divider(
              color: Colors.blue,
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add category"),
              onTap: () {},
            ),
            Divider(
              color: Colors.blue,
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Category list"),
              onTap: () {},
            ),
            Divider(
              color: Colors.blue,
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add brand"),
              onTap: () {},
            ),
            Divider(
              color: Colors.blue,
            ),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text("Brand list"),
              onTap: () {},
            ),
            Divider(color: Colors.blue,)
          ],
        );
        break;
      default:
        return Container();
    }
  }
}
