class ListDetail {
  final String koy;
  final String title;
  final String date;
  final List<String> content;

  ListDetail({
    required this.koy,
    required this.title,
    required this.date,
    required this.content,
  });

  static ListDetail getDetailItem(String koy) {
    print('Searching for koy: $koy');
    try {
      var item = detailItems.firstWhere((item) => item.koy == koy);
      print('Found item with koy $koy, title: ${item.title}');
      return item;
    } catch (e) {
      print('Item with koy $koy not found');
      throw Exception('Item with koy $koy not found');
    }
  }
}

List<ListDetail> detailItems = [
  ListDetail(
    koy: "2022/03/03/eeyore-dan-boy-with-love",
    title: "Eeyore Dan Mentalitas BWL Jadi Kunci Comeback Melawan Alter Ego",
    date: "March 3, 2022",
    content: [
      "https://thelazy.media/wp-content/uploads/2022/03/274948487_519267166211494_8093529355070893_n-696x695.jpg",
      "\n\n",
      "Boy With Love (BWL) salah satu tim VALORANT yang dilirik oleh komunitas karena tim ini diisi oleh para pemain veteran seperti Eeyore, Famouz, Flynch, roseaufy, dan Asteriskk.",
      "Salah satu pertandingan yang menjadi highlight sekaligus moment “comeback of the year” adalah pertandingan antara BWL vs Alter Ego di Map ke-3. ",
      "Gua akan memberikan recap dan menunjukan seberapa pentingnya mentalitas dan bagaimana para pemain yang lebih berpengalaman ini meng-handle masalah di dalam tim. ",
      "Map ketiga yang merupakan penentuan siapa yang akan turun ke lower bracket nampaknya akan selesai cepat dengan dominasi Alter Ego. Siapa yang tidak berpikiran seperti itu? wong score sudah mengatakan 12-6 😀",
      "Dan setelah score 12-6 tersebut timeout diambil oleh BWL dan diketahui pada saat post-match interview, Eeyore yang merupakan salah satu pemain BWL bisa dibilang memberikan sebuah semangat tambahan untuk pemain BWL yang bisa dibilang mental mereka sudah down karena score.",
      "https://thelazy.media/wp-content/uploads/2022/03/VCT21_BWL_Eeyore_Vertical-Budede.png",
      "Eeyore mengatakan khususnya kepada Asteriskk bahwa jangan terlalu overthinking di game dan bermainlah untuk diri sendiri dan berikan yang terbaik. ",
      "“Kaco, lu main udah terlalu overthinking, udah! Main buat diri lu sendiri, lu gausah pikir harus gimana-gimana, udah lu tembak aja musuh, bodoamat”",
      "Setelah timeout tersebut percobaan comeback dilakukan oleh BWL dan luar biasanya tim ini berhasil untuk melakukan comeback di game ketiga dengan score 14-12. Gua ga akan memberikan analisa apapun, tapi yang pasti lu bisa nonton replay nya dan menurut gua inilah perbedaan seorang pro dan kita para pemain biasa",
      "https://www.youtube.com/embed/Qi5b15SYUYw?start=28980&feature=oembed"
    ],
  ),
  ListDetail(
    koy: "2022/03/03/fl1pzjderr-boom-esports",
    title: "Fl1pzjderr Waspadai Tim Ini Di VCT APAC Playoffs!!",
    date: "March 3, 2022",
    content: [
     "\n\n",
      "BOOM Esports yang berhasil keluar menjadi juara 2022 VCT Stage 1 – Challengers Indonesia, kini mengungkapkan tim yang mereka waspadai melalui mulut sang kapten yaitu Fl1pzjderr.",
      "Fl1pzjderr mengatakan bahwa tim-tim yang berasal dari Thailand dan Singapura akan mendapatkan perhatian ekstra dari BOOM Esports karena tim-tim dari negara tersebut dianggap tim yang kuat oleh BOOM Esports.",
      "https://thelazy.media/wp-content/uploads/2022/03/2022-VCT-Stage-1-Challengers-Indonesia-Main-Event-Knockouts-GRAND-FINAL-7-5-32-screenshot.png",
      "“Kalo tim yang diwaspadai udah pasti Thailand sama Paper Rex (Singapura), satu lagi itu Bleed (Singapura),” Fl1pzjderr",
      "Kiprah BOOM Esports sebagai salah satu tim VALORANT di Indonesia memang sangat baik, bahkan beberapa kali bermain di SEA pada season 2021, namun apakah 2022 ini akan menjadi tahun emas untuk BOOM Esports di APAC Playoffs? Gua rasa bisa saja jika kita melihat seluruh game plan, aim, dan percaya diri yang mereka bawa dari 2022 VCT Stage 1  Challengers Indonesia"
          "https://www.youtube.com/embed/Qi5b15SYUYw?start=28980&feature=oembed"
    ],
  ),
  ListDetail(
    koy: "2022/03/03/apac-playoffs-siap-dimulai",
    title: "ONIC G, BWL, dan BOOM Esports Adalah Tiga Wakil Untuk APAC Playoffs",
    date: "March 3, 2022",
    content: [
     "https://thelazy.media/wp-content/uploads/2022/03/274738386_995521611374868_2311465211333005414_n-696x695.jpg",
      "\n\n",
      "2022 VCT Stage 1 – Challengers Indonesia kini sudah selesai dan tiga tim terbaik kini siap menjadi wakil Indonesia untuk APAC Playoffs yang akan dimulai pada 10-27 Maret 2022.",
      "https://thelazy.media/wp-content/uploads/2022/03/274738386_995521611374868_2311465211333005414_n.jpg",
      "Tiga tim tersebut adalah ONIC G, Boy With Love, dan BOOM Esports yang berhasil menjadi wakil Indonesia untuk APAC Playoffs. Ketiga tim ini merupakan tim terbaik yang datang dari Main Event Knockouts Stage 1 Challengers Indonesia.",
      "https://www.youtube.com/embed/RlIvfr4LmS4?start=13050&feature=oembed",
      "ONIC G sendiri finis di posisi ketiga pada main event knockout setelah kalah atas BOOM Esports dengan score akhir 2-0. Sementara ONIC G harus puas di posisi ketiga, BOOM Esports melaju ke grand final untuk berhadapan dengan Boy With Love.",
      "https://thelazy.media/wp-content/uploads/2022/03/275000799_3130541107192803_8877499091696292192_n-1.jpg",
      "Recap pertandingan kedua tim sudah gua bahas disini, tetapi yang yang akan gua bawa di sini adalah bagaimana kedua tim ini berbagi panggung secara luar biasa dengan menampilkan gaya permainan yang luar biasa. BOOM Esports gua perhatikan sering kali memanfaatkan combo Astra-Jett untuk dapat mencuri kill dan bermain mini games, sementara itu BWL sering kali menunjukan mentalitas mereka sebagai veteran dan juga gameplan yang berjalan sangat rapih.",
      "Ketiga tim yaitu ONIC G, Boy With Love, dan BOOM Esports kini siap bertanding di APAC Playoffs pada 10-27 Maret 2022."
    ],
  ),
  ListDetail(
    koy: "2022/03/03/2022-vct-stage-1-challengers-indonesia",
    title: "BOOM Esports Juara 2022 VCT Stage 1 – Challengers Indonesia",
    date: "March 3, 2022",
    content: [
     "https://thelazy.media/wp-content/uploads/2022/03/valorant-jett-abilities-kit-release-696x391.jpg",
      "\n\n",
      "2022 VCT Stage 1 – Challengers Indonesia kini sudah selesai dan berhasil membawa tiga tim terbaik untuk bertanding ke APAC Playoffs yang menjadi bagian dari rangkaian turnament VALORANT Champions Tour 2022.",
      "Salah satu tim yang bisa dibilang terbaik untuk scene VALORANT di Indonesia yaitu BOOM Esports, berhasil menunjukan dominasinya dengan keluar sebagai juara dari VCT Stage 1 – Challengers Indonesia setelah mengalahkan Boy With Love (BWL) di grand final.",
      "Boy With Love yang datang dari upper bracket tentunya mengejutkan banyak penggemar, terutama comeback mereka saat berhadapan dengan Alter Ego yang membuat BWL mengamankan slot menuju APAC.",
      "https://thelazy.media/wp-content/uploads/2022/03/2022-VCT-Stage-1-Challengers-Indonesia-Main-Event-Knockouts-GRAND-FINAL-7-5-32-screenshot.png",
      "Sementara BWL tampak meyakinkan dengan pemain yang di isi oleh para veteran, di sisi lain BOOM Esports datang dari lower bracket sebagai penantang utama BWL di grand final.",
      "Pertandingan kedua tim yang di isi oleh pemain terbaik tentunya gua secara pribadi menaruh ekspektasi tinggi, dan benar saja permainan berkualitas ditunjukan oleh kedua tim. Baru memulai map pertama kedua tim tidak ingin menyerah bahkan membawa permainan menuju ke overtime, dan pada awalnya BOOM Esports bisa dibilang tertinggal oleh BWL, namun dengan banyaknya mini games yang dimainkan oleh BOOM Esports pada saat defender di Ascent, tim ini berhasil melakukan sebuah comeback dengan score akhir 12-14.",
      "https://www.youtube.com/embed/RlIvfr4LmS4?start=12354&feature=oembed",
      "Berlanjut ke map kedua yaitu Haven, BOOM Esports kembali tertinggal pada pertengahan game, namun ketika bertukar site BOOM Esports kembali melakukan comeback dan BWL sayangnya tidak mampu menahan lebih lama gempuran dari BOOM Esports yang membuat tim yang di isi oleh veteran ini menyerah pada score 10-13.",
      "https://www.youtube.com/embed/RlIvfr4LmS4?start=16403&feature=oembed",
      "Game terakhir antara hidup dan mati nya BWL karena mereka sudah terpaut 2-0. Game ketiga berjalan jauh lebih sengit di map Split dan BOOM Esports tampaknya memang tampil lebih siap secara tim mengingat tim ini memiliki coach dan juga analis, dan benar saja mereka selalu bisa mengatasi seluruh gempuran dari BWL dan menutup VCT Stage 1 – Challengers Indonesia Grand Final dengan score 3-0.",
      "https://www.youtube.com/embed/RlIvfr4LmS4?start=20138&feature=oembed"
    ],
  ),
  ListDetail(
    koy: "2022/02/21/2022-vct-stage-1",
    title: "2022 VCT Stage 1 – Challengers Indonesia, Kini Siap Untuk Main Event!",
    date: "March 3, 2022",
    content: [
       "https://thelazy.media/wp-content/uploads/2022/02/240386279_553130582398917_4146236492586251333_n-696x870.jpg",
      "\n\n",
      "VALORANT Champions Tour 2022 yang kembali menjadi sirkuit tahunan untuk VALORANT, kini kembali ke Indonesia dengan dimulainya 2022 VCT Stage 1 – Challengers Indonesia dimana One Up Organizer kembali menjadi mitra perwakilan resmi penyelenggara VCT di Indonesia.",
      "Open Qualifier yang dilakukan secara online diikuti oleh 77 tim yang kemudian tersaring ke dalam 32 tim untuk melanjutkan perjuangan di babak Open Qualifier Swiss Format. Setelah fase ini tim akan kembali memperebutkan 13 slot menuju babak group stage, dimana ketiga belas tim tersebut adalah Bigetron Arctic, MORPH Impact, Team F, Ethereal, Boy With Love, Lort of Heist, Bob The Builder, Team Frog, Team Pelarian, Big Gaming ID, Dewa United, Beast, dan Cereal Killers. Ketiga belas tim tersebut kemudian akan bertemu oleh tiga tim undangan yaitu ONIC G, Alter Ego, dan BOOM Esports untuk memperebutkan 8 slot menuju Main Event Knockouts. ",
      "https://thelazy.media/wp-content/uploads/2022/02/274244421_496838141959842_6933563947364277909_n.jpg",
      "Babak group stage sendiri saat ini sudah selesai dengan menghasilkan delapan tim terbaik untuk melaju ke babak Main Event Knockouts, dimana enam tim tersebut adalah BOOM Esports, ONIC G, Alter Ego, Boy With Love, Bigetron Arctic, Dewa United, dan Ethereal. ",
      "Untuk BOOM Esports dan ONIC G tentunya kedua tim ini membawa ekspektasi tinggi mengingat tim ini merupakan tim unggulan dari tahun sebelumnya dan benar saja kedua tim ini menjadi tim pertama yang berhasil mengamankan slot menuju Main Event. Selanjutnya Alter Ego dan Boy With Love (BWL) dimana BWL ini memang tim yang diisi oleh para veteran dan berhasil menyusul ke Main Event setelah mengalahkan Dewa United dan Ethereal.",
      "https://www.youtube.com/embed/GulvL_Dpsb4?feature=oembed",
      "Sementara empat slot sudah di isi, Bigetron Arctic yang diperkuat oleh banyak pemain muda menyapu bersih Team Frog 2-0 dan membawa mereka bermain di Main Event, dan tim Beast yang berhadapan dengan Lords of Heist tampil sengit hingga tiga maps yang kemudian ditutup oleh kemenangan Beast. Disisi lain terjadi rematch antara Big Gaming ID dengan Dewa United yang sayangnya harus ditutup oleh Dewa United, dan terakhir Ethereal berhasil menyapu bersih Team Pelarian dengan score 2-0.",
      "Dengan berakhirnya group stage ini, maka Main Event dari 2022 VCT Stage 1 – Challengers Indonesia siap dimulai pada 23 hingga 28 Februari 2022, dimana tiga tim terbaik nantinya akan menjadi perwakilan Indonesia untuk bertanding di regional Asia Pasifik."
    ],
  ),
  ListDetail(
    koy: "2022/02/11/jackky-stand-in-boom-esports",
    title: "JaCkky Stand-In BOOM Esports Untuk Gantikan Tino",
    date: "March 3, 2022",
    content: [
       "https://thelazy.media/wp-content/uploads/2022/02/FLIGsQGVcAUoQAx-696x696.jpg",
      "\n\n",
      "Organisasi esports Indonesia yaitu BOOM Esports kini mengumumkan bahwa mereka mendatangkan stand-in untuk bertanding di DPC SEA yaitu JaCkky dan tim memindahkan carry mereka Tino ke daftar inactive.",
      "https://thelazy.media/wp-content/uploads/2022/02/FLIGsuVVIAAqdjK.jpg",
      "Pemain bernama asli Souliya Khoomphetsavong ini sendiri bergabung dengan BOOM Esports sebagai pengganti sang carry dari tim ini yaitu Tino untuk Regional Finals. Sementara ia bermain untuk BOOM Esports, Motivate.Trust Gaming membawa 23savage sebagai stand-in untuk menggantikan pemain ini.",
      "Dengan kedatangan pemain ini, maka roster BOOM Esports untuk SEA Regional Finals akan di isi oleh :",
      "Apakah bisa pemain ini mampu membawa performa BOOM Esports naik dari performa mereka sebelumnya? Mari kita nantikan di SEA Regional Finals!"
    ],
  ),
];

