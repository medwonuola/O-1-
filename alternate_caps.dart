// List<String> capitalize(String x) {
//   List<String> result = [];
//   for (int i = 0; i < x.length; i++) {
//     String temp = x[i];
//     if (temp == temp.toUpperCase()) {
//       result.add(temp.toLowerCase());
//     } else {
//       result.add(temp.toUpperCase());
//     }
//   }
//   return result;
// }

List<String> capitalize(String x) => [
      List.generate(
          x.length - 1,
          (index) => index % 2 == 0
              ? x.split('')[index].toUpperCase()
              : x.split('')[index].toLowerCase()).join(),
      List.generate(
          x.length - 1,
          (index) => index % 2 == 0
              ? x.split('')[index].toLowerCase()
              : x.split('')[index].toUpperCase()).join()
    ];
