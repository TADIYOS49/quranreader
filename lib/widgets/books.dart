import 'package:animation/widgets/pdfViewer.dart';
import 'package:animation/widgets/test.dart';
import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  const Books({Key key}) : super(key: key);

  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  void _itemclicked() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>test()));
  }

  @override
  Widget build(BuildContext context) {
    final _pages = [
      "1",
      "2-49",
      "50-76",
      "77-106",
      "106-127",
      "128-150",
      "151-176",
      "177-186",
      "187-207",
      "208-221",
      "221-235",
      "235-248",
      "249-255",
      "256-261",
      "262-267",
      "267-281",
      "282-293",
      "294-304",
      "305-312",
      "312-321",
      "322-331",
      "332-341",
      "342-349",
      "350-359",
      "359-366",
      "367-376",
      "377-385",
      "386-396",
      "397-404",
      "404-410",
      "411-414",
      "415-417",
      "418-427",
      "428-434",
      "434-440",
      "440-445",
      "446-452",
      "453-458",
      "458-467",
      "467-476",
      "477-482",
      "483-489",
      "489-495",
      "496-498",
      "499-502",
      "502-506",
      "501-510",
      "511-515",
      "515-517",
      "518-520",
      "520-523",
      "523-525",
      "526-528",
      "528-531",
      "531-534",
      "534-537",
      "537-541",
      "542-545",
      "545-548",
      "549-551",
      "551-552",
      "553-554",
      "554-555",
      "556-557",
      "558-559",
      "560-561",
      "562-564",
      "564-566",
      "566-568",
      "568-570",
      "570-571",
      "572-573",
      "574-575",
      "575-577",
      "577-578",
      "578-580",
      "580-581",
      "582-583",
      "583-584",
      "585",
      "586",
      "587",
      "587-589",
      "589",
      "590",
      "591",
      "591-592",
      "592",
      "593-594",
      "594",
      "595",
      "595-596",
      "596",
      "596",
      "597",
      "597",
      "598",
      "598-599",
      "599",
      "599-600",
      "600",
      "600",
      "601",
      "601",
      "601",
      "602",
      "602",
      "602",
      "603",
      "603",
      "603",
      "604",
      "604",
      "604",
    ];
    final items = [
      "1.Al-Fatihah",
      "2.Al-Baqarah",
      "3.Ali 'Imran",
      "4.An-Nisa",
      "5.Al-Ma'idah",
      "6.Al-An'am",
      "7.Al-A'raf",
      "8.Al-Anfal",
      "9.At-Tawbah",
      "10.Yunus",
      "11.Hud",
      "12.Yusuf",
      "13.Ar-Ra'd",
      "14.Ibrahim",
      "15.Al-Hijr",
      "16.An-Nahl",
      "17.Al-Isra",
      "18.Al-kahf",
      "19.Maryam",
      "20.Taha",
      "21.Al-Anbya",
      "22.Al-Haj",
      "23.Al-Mu'minun",
      "24.An-Nur",
      "25.Al-Furqan",
      "26.Ash-Shu'ara",
      "27.An-Naml",
      "28.Al-Qasas",
      "29.Al-'Ankabut",
      "30.Ar-Rum",
      "31.Luqman",
      "32.As-Sajdah",
      "33.Al-Ahzab",
      "34.Saba",
      "35.Fatir",
      "36.Ya-Sin",
      "37.As-Saffat",
      "38.Sad",
      "39.Az-Zumar",
      "40.Ghafir",
      "41.Fussilat",
      "42.Ash-Shuraa",
      "43.Az-Zukhruf",
      "44.Ad-Dukahn",
      "45.Al-Jathiyah",
      "46.Al-Ahqaf",
      "47.Muhammad",
      "48.Al-Fath",
      "49.Al-Hujurat",
      "50.Qaf",
      "51.Adh-Dhariyat",
      "52.At-Tur",
      "53.An-Najm",
      "54.Al-Qamar",
      "55.Ar-Rahman",
      "56.Al-Waqi'ah",
      "57.Al-Hadid",
      "58.Al-Mujadila",
      "59.Al-Hashr",
      "60.Al-Mumtahanah",
      "61.Al-As-Saf",
      "62.Al-Jumu'ah",
      "63.Al-Munafiqun",
      "64.At-Taghabun",
      "65.At-Talaq",
      "66.At-Tahrim",
      "67.Al-Mulk",
      "68.Al-Qalam",
      "69.Al-Haqqah",
      "70.Al-Ma'arij",
      "71.Nuh",
      "72.Al-Jinn",
      "73.Al-Muzzammil",
      "74.Al-Muddaththir",
      "75.Al-Qiyamah",
      "76.Al-Insan",
      "77.Al-Mursalat",
      "78.An-Naba",
      "79.An-Nazi'at",
      "80.'Abasa",
      "81.At-Takwir",
      "82.Al-Infitar",
      "83.Al-Mutaffinfin",
      "84.Al-Inshiqaq",
      "85.Al-Buruj",
      "86.At-Tariq",
      "87.Al-A'la",
      "88.Al-Ghashiyah",
      "89.Al-Fajr",
      "90.Al-Balad",
      "91.Ash-Shams",
      "92.Al-Layl",
      "93.Ad-Duhaa",
      "94.Ash-Sharh",
      "95.At-Tin",
      "96.Al-'Alaq",
      "97.Al-Qadr",
      "98.AL-Bayyinah",
      "99.Az-Zalzalah",
      "100.Al-'Adiyat",
      "101.Al-Qari'ah",
      "102.At-Takathur",
      "103.Al-'Asr",
      "104.Al-Humazah",
      "105.Al-Fil",
      "106.Al-Quraysh",
      "107.Al-Ma'un",
      "108.Al-Kawthar",
      "109.Al-Kafirun",
      "110.An-Nasr",
      "111.Al-Masad",
      "112.Al-Ikhlas",
      "113.Al-Falaq",
      "114.An-Nas",
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: [
              Tab(
                icon: Text(
                  "Suras",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                  icon: Text(
                "Ajzaa",
                style: TextStyle(fontSize: 20),
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: InkWell(
                          child: Text(
                            items[index],
                            style: TextStyle(fontSize: 25),
                          ),
                          onTap:_itemclicked,
                        ),
                        trailing: Text(_pages[index]),
                      ),
                      Divider(
                        endIndent: 15,
                        indent: 15,
                        thickness: 1,
                      ),
                    ],
                  );
                }),
            Center(
              child: Text("Ajzaa Books!!"),
            )
          ],
        ),
      ),
    );
  }
}
