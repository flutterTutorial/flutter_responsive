// table widget
// Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("data"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Text('Rows:'),
//                 SizedBox(width: 10.0),
//                 Flexible(
//                   child: TextFormField(
//                     keyboardType: TextInputType.number,
//                     onChanged: (value) {
//                       setState(() {
//                         rows = int.tryParse(value) ?? 1;
//                       });
//                     },
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Text('Columns:'),
//                 SizedBox(width: 10.0),
//                 Flexible(
//                   child: TextFormField(
//                     keyboardType: TextInputType.number,
//                     onChanged: (value) {
//                       setState(() {
//                         columns = int.tryParse(value) ?? 1;
//                       });
//                     },
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20.0),
//             Table(
//               border: TableBorder.all(),
//               children: List.generate(
//                 rows,
//                 (i) => TableRow(
//                   children: List.generate(
//                     columns,
//                     (j) => TableCell(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text('${i}'),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }