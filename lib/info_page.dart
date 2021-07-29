import 'package:flutter/material.dart';
import 'package:planetinfoapp/data.dart';

int planetNumber = 0;
PlanetInfo planetInfo = PlanetInfo();

class PlanetDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Text(
                            // 'Planet Name',
                            '${planets[planetNumber].name}',
                            style: TextStyle(
                              fontSize: 56,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Solar System',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Center(
                          child: Image.asset(
                            '${planets[planetNumber].iconImage}',
                            height: 200,
                            width: 200,
                          ),
                        ),
                        DataTable(
                          columns: <DataColumn>[
                            DataColumn(
                              label: Text(''),
                            ),
                            DataColumn(
                              label: Text(''),
                            ),
                          ],
                          rows: <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Diameter')),
                                DataCell(
                                  Text('${planets[planetNumber].diameter} KM'),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(
                                  Text('Orbit Radius'),
                                ),
                                DataCell(
                                  Text(
                                      '${planets[planetNumber].distanceFromSun}'),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Rotation Period')),
                                DataCell(
                                  Text(
                                      '${planets[planetNumber].rotationPeriod}'),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Surface Gravity')),
                                DataCell(
                                  Text(
                                      '${planets[planetNumber].surfaceGravity}'),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Surface Temp')),
                                DataCell(
                                  Text(
                                      '${planets[planetNumber].surfaceTemperature}'),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Summer Temp')),
                                DataCell(
                                  Text(
                                      '${planets[planetNumber].summerTemperature}'),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Winter Temp')),
                                DataCell(
                                  Text(
                                      '${planets[planetNumber].winterTemperature}'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                        Text(
                          '${planets[planetNumber].description}',
                          // maxLines: 5,
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
