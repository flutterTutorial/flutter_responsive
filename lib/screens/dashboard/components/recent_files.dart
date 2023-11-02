import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive/models/RecentFile.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
       child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              // minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("File Name",
                  overflow: TextOverflow.ellipsis,
                  ),
                ),
                DataColumn(
                  label: Text("Date",
                  overflow: TextOverflow.ellipsis,
                  ),
                ),
                DataColumn(
                  label: Text("Size",
                  overflow: TextOverflow.ellipsis),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    
      // SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: DataTable(
      //       columns: <DataColumn>[
      //         DataColumn(label: Text('Column 1')),
      //         DataColumn(label: Text('Column 2')),
      //         DataColumn(label: Text('Column 3')),
      //         // Add more columns as needed
      //       ],
      //       rows: List.generate(
      //         10, // Number of rows
      //         (index) => DataRow(
      //           cells: <DataCell>[
      //             DataCell(Text('Row $index - Column 1')),
      //             DataCell(Text('Row $index - Column 2')),
      //             DataCell(Text('Row $index - Column 3')),
      //             // Add more cells for each row
      //           ],
      //         ),
      //       ),
      //     ),
      //   )
      
    
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!,
              overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!,
      overflow: TextOverflow.ellipsis,
      )),
      DataCell(Text(fileInfo.size!,
      overflow: TextOverflow.ellipsis,
      )),
    ],
  );
}
