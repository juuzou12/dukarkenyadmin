class UploadList {
  static List<Map<String,dynamic>> brands =[
    {
      "name":"Nivea",
      "image":"https://firebasestorage.googleapis.com/v0/b/dukar-1ce45.appspot.com/o/a947f7fd7dc37a4046903eecc0524517.jpg?alt=media&token=3babdb45-4a7c-44c4-a662-f09c08a21004"
    },
    {
      "name":"Nike",
      "image":"https://images.pexels.com/photos/9660945/pexels-photo-9660945.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    },
    {
      "name":"Gucci",
      "image":"https://images.pexels.com/photos/9957554/pexels-photo-9957554.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"Adidas",
      "image":"https://images.pexels.com/photos/10046261/pexels-photo-10046261.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"Puma",
      "image":"https://images.pexels.com/photos/6723622/pexels-photo-6723622.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"FILA",
      "image":"https://images.pexels.com/photos/14756392/pexels-photo-14756392.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"Supreme",
      "image":"https://images.pexels.com/photos/1822845/pexels-photo-1822845.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"Chanel",
      "image":"https://images.pexels.com/photos/1470165/pexels-photo-1470165.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"Air Jordan",
      "image":"https://images.pexels.com/photos/6474805/pexels-photo-6474805.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"Louis Vuitton",
      "image":"https://images.pexels.com/photos/4475780/pexels-photo-4475780.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"Christian Dior",
      "image":"https://images.pexels.com/photos/13633365/pexels-photo-13633365.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"Ralph Lauren",
      "image":"https://firebasestorage.googleapis.com/v0/b/dukar-system.appspot.com/o/Group%20183.png?alt=media&token=d40d89e8-c316-4631-aad3-b5f937caa80d"
    },
    {
      "name":"Under Armour",
      "image":"https://images.pexels.com/photos/2362155/pexels-photo-2362155.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"Balenciaga",
      "image":"https://images.pexels.com/photos/12356891/pexels-photo-12356891.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    },
    {
      "name":"H&M",
      "image":"https://images.pexels.com/photos/3948028/pexels-photo-3948028.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"Prada",
      "image":"https://images.pexels.com/photos/7453323/pexels-photo-7453323.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name":"Other",
      "image":"https://images.pexels.com/photos/3965557/pexels-photo-3965557.jpeg?auto=compress&cs=tinysrgb&w=1200"
    }
  ];
  /*categories*/
  static List<Map<String, dynamic>> categories = [
    {
      "name": "Accessories",
      "no": "ACC-01",
      "url":"https://images.pexels.com/photos/322207/pexels-photo-322207.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name": "Women's wear",
      "no": "WOM-02",
      "url":"https://images.pexels.com/photos/1233648/pexels-photo-1233648.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name": "Beauty products",
      "no": "BEU-03",
      "url":"https://images.pexels.com/photos/3373739/pexels-photo-3373739.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name": "Kid's wear",
      "no": "KID-04",
      "url":"https://images.pexels.com/photos/4721153/pexels-photo-4721153.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name": "Men's wear",
      "no": "MEN-05",
      "url":"https://images.pexels.com/photos/1639729/pexels-photo-1639729.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name": "Official wear",
      "no": "OFF-06",
      "url":"https://images.pexels.com/photos/3459730/pexels-photo-3459730.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name": "Sport's wear",
      "no": "SPO-07",
      "url":"https://images.pexels.com/photos/2385477/pexels-photo-2385477.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "name": "Street's wear",
      "no": "STR-08",
      "url":"https://images.pexels.com/photos/936023/pexels-photo-936023.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
  ];

  /*product type*/

  ///id number is a combination of the first letters and an index incrementing +1
  ///primaryKey is the connection between the categories & productType
  static List<Map<String, dynamic>> productType = [
    {
      "id": "JEF-01",
      "name": "Trousers",
      "primaryKey": "WOM-02 | KID-04 | MEN-05 | OFF-06 | STR-08",
      "url":"https://images.pexels.com/photos/1210484/pexels-photo-1210484.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "JEF-01",
      "name": "Sweaters",
      "primaryKey": "WOM-02 | KID-04 | MEN-05 | OFF-06 ",
      "url":"https://images.pexels.com/photos/4210854/pexels-photo-4210854.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "FAP-07",
      "name": "Facial products",
      "primaryKey": " BEU-03",
      "url":"https://images.pexels.com/photos/4202326/pexels-photo-4202326.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "BOP-07",
      "name": "Body products",
      "primaryKey": " BEU-03",
      "url":"https://images.pexels.com/photos/4465124/pexels-photo-4465124.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "SKC-07",
      "name": "Skin care",
      "primaryKey": " BEU-03",
      "url":"https://images.pexels.com/photos/3736399/pexels-photo-3736399.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Dre-01",
      "name": "Dresses",
      "primaryKey": "WOM-02 | KID-04 | OFF-06 | STR-08",
      "url":"https://images.pexels.com/photos/8386654/pexels-photo-8386654.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Sui-01",
      "name": "Suiting & Blazers",
      "primaryKey": "WOM-02 | MEN-05 | OFF-06 | STR-08",
      "url":"https://images.pexels.com/photos/4937352/pexels-photo-4937352.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Cjv-01",
      "name": "Coats, Jackets & Vests",
      "primaryKey": "WOM-02 | MEN-05 | OFF-06 | STR-08",
      "url":"https://images.pexels.com/photos/8113008/pexels-photo-8113008.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Jum-01",
      "name": "Jumpsuits & Rompers",
      "primaryKey": "WOM-02 | MEN-05 | OFF-06 | STR-08",
      "url":"https://images.pexels.com/photos/3875082/pexels-photo-3875082.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Ski-01",
      "name": "Skirts",
      "primaryKey": "WOM-02 | KID-04 | OFF-06 | STR-08",
      "url":"https://images.pexels.com/photos/601316/pexels-photo-601316.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Lin-01",
      "name": "Lingerie, Sleep & Lounge",
      "primaryKey": "WOM-02",
      "url":"https://images.pexels.com/photos/54265/bikini-two-piece-swimwear-women-two-parter-54265.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "JEF-01",
      "name": "Jeans",
      "primaryKey": "WOM-02 | KID-04 | MEN-05 | STR-08",
      "url":"https://images.pexels.com/photos/4210850/pexels-photo-4210850.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Sho-01",
      "name": "Shorts",
      "primaryKey": "WOM-02 | KID-04 | MEN-05 | OFF-06 | STR-08",
      "url":"https://images.pexels.com/photos/69101/pexels-photo-69101.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Sne-01",
      "name": "Sneakers & Shoes",
      "primaryKey": "WOM-02 | KID-04 | MEN-05 | STR-08",
      "url":"https://images.pexels.com/photos/7543638/pexels-photo-7543638.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "San-01",
      "name": "Sandals",
      "primaryKey": "WOM-02 | KID-04 | MEN-05 | OFF-06 | STR-08",
      "url":"https://images.pexels.com/photos/4427149/pexels-photo-4427149.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Fla-01",
      "name": "Flats",
      "primaryKey": "WOM-02 | KID-04 | MEN-05 | OFF-06 | STR-08",
      "url":"https://images.pexels.com/photos/8933048/pexels-photo-8933048.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Shi-01",
      "name": "T-shirts & Shirts",
      "primaryKey": "WOM-02 | KID-04 | MEN-05 | OFF-06 | STR-08",
      "url":"https://images.pexels.com/photos/3768005/pexels-photo-3768005.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Unde-01",
      "name": "Underwear",
      "primaryKey": "WOM-02 | KID-04 | MEN-05",
      "url":"https://images.pexels.com/photos/1597650/pexels-photo-1597650.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Loa-01",
      "name": "Loafers & Slip-Ons",
      "primaryKey": "MEN-05 | OFF-06",
      "url":"https://images.pexels.com/photos/7413278/pexels-photo-7413278.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Ank-01",
      "name": "Anklets",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/10743473/pexels-photo-10743473.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Bel-01",
      "name": "Belts",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/7679660/pexels-photo-7679660.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Bab-01",
      "name": "Bangles and Bracelets",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/753969/pexels-photo-753969.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Bro-01",
      "name": "Brooches and Pins",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/6461507/pexels-photo-6461507.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Cuff-01",
      "name": "Cuff Links and Studs",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/11350587/pexels-photo-11350587.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Ear-01",
      "name": "Earrings",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/1413420/pexels-photo-1413420.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "gla-01",
      "name": "Eyeglasses",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/947885/pexels-photo-947885.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Glo-01",
      "name": "Gloves",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/45057/pexels-photo-45057.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "han-01",
      "name": "Handbags",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/9267583/pexels-photo-9267583.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Hea-01",
      "name": "Headdresses & Headwraps",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/4846363/pexels-photo-4846363.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "hat-01",
      "name": "Hats",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/5699102/pexels-photo-5699102.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Lug-01",
      "name": "Luggage",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/1682694/pexels-photo-1682694.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Nec-01",
      "name": "Necklaces & Pendants",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/4735892/pexels-photo-4735892.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Tie-01",
      "name": "Neckties & Ties",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/12700581/pexels-photo-12700581.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Pre-01",
      "name": "Perfumes",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/965990/pexels-photo-965990.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Pur-01",
      "name": "Purses & Wallets",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/11031126/pexels-photo-11031126.png?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Rin-01",
      "name": "Rings",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/94843/pexels-photo-94843.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Sas-01",
      "name": "Sashes",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/4999896/pexels-photo-4999896.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Soc-01",
      "name": "Socks and Stockings",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/9594148/pexels-photo-9594148.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
    {
      "id": "Wat-01",
      "name": "Watches",
      "primaryKey": "ACC-01",
      "url":"https://images.pexels.com/photos/277390/pexels-photo-277390.jpeg?auto=compress&cs=tinysrgb&w=1200"
    },
  ];

  static List<Map<String, dynamic>> sizesAndTypes = [
    {
      "name": " 33.5W x 28.8H x 20D (L)",
      "primaryKey": "Ear-01 ",
    },
    {
      "name": "9W x 25H x 17.5D (M)",
      "primaryKey": "Ear-01 ",
    },
    {
      "name": " 20W x 16.5H x 10D (Mini / S)",
      "primaryKey": "Ear-01 ",
    },

    //handbags
    {
      "name": "4-6cm (S)",
      "primaryKey": "Ear-01 ",
    },
    {
      "name": "7-9cm (M)",
      "primaryKey": "Ear-01 ",
    },
    {
      "name": "10-18cm (Long / X-Long)",
      "primaryKey": "Ear-01 ",
    },

    ///
    {
      "name": "X-short",
      "primaryKey": "Tie-01",
    },
    {
      "name": "Standard",
      "primaryKey": "Tie-01",
    },
    {
      "name": "X-long",
      "primaryKey": "Tie-01",
    },

    ///
    ///
    {
      "name": "1.5 mL",
      "primaryKey": "Pre-01",
    },
    {
      "name": "5 mL",
      "primaryKey": "Pre-01",
    },
    {
      "name": "15 mL",
      "primaryKey": "Pre-01",
    },

    {
      "name": "25 mL",
      "primaryKey": "Pre-01",
    },
    {
      "name": "30 mL",
      "primaryKey": "Pre-01",
    },
    {
      "name": "40 mL",
      "primaryKey": "Pre-01",
    },

    {
      "name": "50 mL",
      "primaryKey": "Pre-01",
    },
    {
      "name": "75 mL",
      "primaryKey": "Pre-01",
    },
    {
      "name": "80 mL",
      "primaryKey": "Pre-01",
    },
    {
      "name": "90 mL",
      "primaryKey": "Pre-01",
    },
    {
      "name": "100 mL",
      "primaryKey": "Pre-01",
    },
    {
      "name": "125 mL",
      "primaryKey": "Pre-01",
    },
    {
      "name": "200 mL",
      "primaryKey": "Pre-01",
    },

    ///
    ///
    ///luggage
    {
      "name":
          "Height: (76cm / 30 inches) , Width: (48cm / 19 inches) , Depth: (29cm / 11 inches) Large",
      "primaryKey": "Lug-01",
    },
    {
      "name":
          "Height: (67cm / 26 inches) , Width: (45cm / 18 inches) , Depth: (25cm / 10 inches) Medium",
      "primaryKey": "Lug-01",
    },
    {
      "name":
          "Height: (63cm / 25 inches) , Width: (36cm / 14 inches) , Depth: (21cm / 8 inches) Compact",
      "primaryKey": "Lug-01",
    },
    {
      "name":
          "Height: (48cm / 19 inches) , Width: (32cm / 13 inches) , Depth: (18cm / 7 inches) Cabin",
      "primaryKey": "Lug-01",
    },

    ///
    {
      "name": "30-32 Inches",
      "primaryKey": "Bel-01",
    },
    {
      "name": "33-35 Inches",
      "primaryKey": "Bel-01",
    },
    {
      "name": "36-38 Inches",
      "primaryKey": "Bel-01",
    },
    {
      "name": "39-41 Inches",
      "primaryKey": "Bel-01",
    },
    {
      "name": "42-44 Inches",
      "primaryKey": "Bel-01",
    },
    {
      "name": "45-47 Inches",
      "primaryKey": "Bel-01",
    },

    {
      "name": "34 EU",
      "primaryKey": "Sne-01 | Fla-01",
    },
    {
      "name": "35 EU",
      "primaryKey": "Sne-01 | Fla-01",
    },
    {
      "name": "36 EU",
      "primaryKey": "Sne-01 | Fla-01",
    },
    {
      "name": "37 EU",
      "primaryKey": "Sne-01 | Fla-01",
    },
    {
      "name": "38 EU",
      "primaryKey": "Sne-01 | Fla-01",
    },
    {
      "name": "39 EU",
      "primaryKey": "Sne-01 | Fla-01",
    },
    {
      "name": "39 EU",
      "primaryKey": "Sne-01 | Fla-01 | Loa-01",
    },

    {
      "name": "40 EU",
      "primaryKey": "Sne-01 | Fla-01 | Loa-01",
    },
    {
      "name": "41 EU",
      "primaryKey": "Sne-01 | Fla-01",
    },
    {
      "name": "42 EU",
      "primaryKey": "Sne-01 | Fla-01 | Loa-01",
    },
    {
      "name": "43 EU",
      "primaryKey": "Sne-01 | Loa-01",
    },
    {
      "name": "44 EU",
      "primaryKey": "Sne-01 | Fla-01 | Loa-01",
    },
    {
      "name": "45 EU",
      "primaryKey": "Sne-01 ",
    },
    {
      "name": "46 EU",
      "primaryKey": "Sne-01 | Loa-01",
    },
    {
      "name": "47 EU",
      "primaryKey": "Sne-01 | Loa-01",
    },
    {
      "name": "48 EU",
      "primaryKey": "Sne-01 ",
    },
    {
      "name": "49 EU",
      "primaryKey": "Sne-01 ",
    },
    {
      "name": "50 EU",
      "primaryKey": "Sne-01 ",
    },
    {
      "name": "51 EU",
      "primaryKey": "Sne-01 ",
    },

    {
      "name": "53 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "54 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "55 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "56 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "57 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "58 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "59 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "60 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "61 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "62 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "63 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "64 EU",
      "primaryKey": "hat-0 ",
    },
    {
      "name": "65 EU",
      "primaryKey": "hat-0 ",
    },

    ///
    {
      "name": "26 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "4 UK",
      "primaryKey": "Jum-01 | Sne-01 | San-01 | Fla-01",
    },
    {
      "name": "6 UK",
      "primaryKey": "Jum-01 | Sne-01 | San-01 | Fla-01 | Loa-01 | hat-0",
    },
    {
      "name": "8 UK",
      "primaryKey": "Jum-01 | Sne-01 | San-01 | Fla-01 | Loa-01 | hat-0",
    },
    {
      "name": "10 UK",
      "primaryKey": "Jum-01 | Sne-01 | San-01 | Loa-01",
    },
    {
      "name": "12 UK",
      "primaryKey": "Jum-01 | Sne-01 | San-01 | Loa-01",
    },
    {
      "name": "14 UK",
      "primaryKey": "Jum-01 | Sne-01 | San-01",
    },
    {
      "name": "16 UK",
      "primaryKey": "Jum-01 | Sne-01 | San-01",
    },
    {
      "name": "18 UK",
      "primaryKey": "Jum-01 | San-01",
    },
    {
      "name": "27 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "28 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "29 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "30 US",
      "primaryKey": "JEF-01 | Sui-01",
    },
    {
      "name": "31 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "32 US",
      "primaryKey": "JEF-01 | Sui-01",
    },
    {
      "name": "33 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "34 US",
      "primaryKey": "JEF-01 | Sui-01",
    },
    {
      "name": "35 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "36 US",
      "primaryKey": "JEF-01 | Sui-01",
    },
    {
      "name": "38 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "40 US",
      "primaryKey": "JEF-01 | Sui-01",
    },
    {
      "name": "42 US",
      "primaryKey": "JEF-01 | Sui-01",
    },
    {
      "name": "44 US",
      "primaryKey": "JEF-01 | Sui-01",
    },
    {
      "name": "46 US",
      "primaryKey": "JEF-01 | Sui-01",
    },
    {
      "name": "48 US",
      "primaryKey": "JEF-01 | Sui-01",
    },
    {
      "name": "50 US",
      "primaryKey": "JEF-01 | Sui-01",
    },
    {
      "name": "52 US",
      "primaryKey": "JEF-01 | Sui-01",
    },
    {
      "name": "54 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "56 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "58 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "60 US",
      "primaryKey": "JEF-01 ",
    },
    {
      "name": "00/0 (XS)",
      "primaryKey": "Dre-01 | Ski-01 | Shi-01",
    },
    {
      "name": "2 (XS)",
      "primaryKey": "Dre-01 | Ski-01 | Lin-01",
    },
    {
      "name": "4 (S)",
      "primaryKey": "Dre-01 | Ski-01 | Lin-01",
    },
    {
      "name": "6 (S)",
      "primaryKey": "Dre-01 | Ski-01 | Lin-01",
    },
    {
      "name": "8 (M)",
      "primaryKey": "Dre-01 | Ski-01",
    },
    {
      "name": "10 (M)",
      "primaryKey": "Dre-01 | Ski-01 | Lin-01",
    },
    {
      "name": "12 (L)",
      "primaryKey": "Dre-01 | Ski-01 | Lin-01",
    },
    {
      "name": "14 (L)",
      "primaryKey": "Dre-01 | Ski-01 | Lin-01",
    },
    {
      "name": "16 (XL)",
      "primaryKey": "Dre-01 | Ski-01 | Lin-01",
    },
    {
      "name": "18 (XL)",
      "primaryKey": "Dre-01 | Ski-01 | Lin-01",
    },
    {
      "name": "20 (XXL)",
      "primaryKey": "Dre-01 | Ski-01 | Lin-01",
    },
    {
      "name": "22 (XXL)",
      "primaryKey": "Dre-01 | Ski-01",
    },
    {
      "name": "XS",
      "primaryKey":
          "Top-01 | Cjv-01 | Shi-01 | Unde-01 | Bab-01 | Bag-01 | Glo-01 | Hea-01",
    },
    {
      "name": "S",
      "primaryKey":
          "Top-01 | Cjv-01 | Sho-01 | Shi-01 | Unde-01 | Bab-01 | Bag-01 | Ank-01 | Bab-01 | Glo-01 | Hea-01 | hat-01 | Soc-01",
    },
    {
      "name": "M",
      "primaryKey":
          "Top-01 | Cjv-01 | Sho-01 | Shi-01 | Unde-01 | Bab-01 | Bag-01 | Ank-01 | Bab-01 | Glo-01 | Hea-01 | hat-0 | Soc-01",
    },
    {
      "name": "L",
      "primaryKey":
          "Top-01 | Cjv-01 | Sho-01 | Shi-01 | Unde-01 | Bab-01 | Bag-01 | Ank-01 | Bab-01 | Glo-01 | Hea-01 | hat-0 | Soc-01",
    },
    {
      "name": "XL",
      "primaryKey":
          "Top-01 | Cjv-01 | Sho-01 | Shi-01 | Unde-01 | Bab-01 | Bag-01 | Ank-01 | Bab-01 | Glo-01 | Hea-01 | hat-0 | Soc-01",
    },
    {
      "name": "XXL",
      "primaryKey":
          "Top-01 | Cjv-01 | Sho-01 | Shi-01 | Unde-01 | Bab-01 | Bag-01 | Glo-01 | Hea-01 | hat-0 | Soc-01",
    },

    {
      "name": "Add Own Specifications",
      "primaryKey":
          "JEF-01 | SWP-02 | SNS-03 | BOH-04 | HOJ-05 | DRS-06 | HAP-07 | HEW-08 | COR-09 | TSS-10 | LIN-11 | WIN-12 | CLS-13 | SUB-14 | SOS-14 | FAP-07 | HAP-07 | BOP-07",
    },
  ];

  static List<Map<String, dynamic>> fabric = [
    {
      "name": "100% cotton fabric",
      "primaryKey": "JEF-01 | Shi-01 | Unde-01 | fac-01 | Glo-01",
    },
    {
      "name": "Stretch denim | han-01",
      "primaryKey": "JEF-01",
    },

    ///
    {
      "name": "Chiffon",
      "primaryKey": "Sho-01",
    },
    {
      "name": "Velvet",
      "primaryKey": "Sho-01",
    },
    {
      "name": "Drapery Fabric",
      "primaryKey": "han-01",
    },
    {
      "name": "Upholstery Fabric",
      "primaryKey": "han-01",
    },
    {
      "name": "Outdoor Fabric",
      "primaryKey": "han-01",
    },
    {
      "name": "Twill",
      "primaryKey": "han-01",
    },

    ///
    {
      "name": "Mesh",
      "primaryKey": "Sho-01 | Unde-01",
    },

    ///
    {
      "name": "Synthetics",
      "primaryKey": "Sho-01 | Sne-01 | San-01 | Fla-01 | Loa-01 | Pur-01",
    },
    {
      "name": "Crepe",
      "primaryKey": "Sho-01",
    },
    {
      "name": "Lace",
      "primaryKey": "Sho-01",
    },
    {
      "name": "Chiffon",
      "primaryKey": "Sho-01",
    },
    {
      "name": "Satin",
      "primaryKey": "Sho-01 | Unde-01 | Tie-01",
    },

    ///
    {
      "name": "Coloured denim",
      "primaryKey": "JEF-01 | Sho-01 | Hea-01",
    },
    {
      "name": "Raw denim",
      "primaryKey": "JEF-01 | Sho-01",
    },
    {
      "name": "Washed and unwashed denium",
      "primaryKey": "JEF-01 | Jum-01",
    },
    {
      "name": "Acid wash denim",
      "primaryKey": "JEF-01 | Sho-01",
    },
    {
      "name": "Bull denim",
      "primaryKey": "JEF-01 | Sho-01",
    },
    {
      "name": "Stonewashed denim",
      "primaryKey": "JEF-01",
    },

    {
      "name": "Cotton Jersey",
      "primaryKey": "Dre-01 | Unde-01 | fac-01 | Glo-01 | Hea-01",
    },
    {
      "name": "Tencel Twill",
      "primaryKey": "Dre-01",
    },
    {
      "name": "Cotton Poplin",
      "primaryKey": "Dre-01 | Glo-01 | Hea-01 | Tie-01",
    },
    {
      "name": "Linen",
      "primaryKey": "Dre-01 | Tie-01",
    },
    {
      "name": "Brushed Fleece",
      "primaryKey": "Dre-01",
    },
    {
      "name": "Cupro-Viscose Blend Twill",
      "primaryKey": "Dre-01",
    },
    {
      "name": "Tencel Cotton Satin",
      "primaryKey": "Dre-01",
    },

    ///
    {
      "name": "Baby Corduroy",
      "primaryKey": "Dre-01",
    },
    {
      "name": "Brushed Wool",
      "primaryKey": "Dre-01",
    },
    {
      "name": "Cotton Piqué",
      "primaryKey": "Dre-01 | fac-01 | Glo-01 | Tie-01",
    },

    ///
    {
      "name": "Wool",
      "primaryKey":
          "Sui-01 | Cjv-01 | Sho-01 | Sne-01 | Loa-01 | fac-01 | Glo-01 | Hea-01 | hat-01 | Tie-01 | Soc-01",
    },
    {
      "name": "Cashmere Blend",
      "primaryKey": "Sui-01 | Unde-01",
    },
    {
      "name": "Silk Blend",
      "primaryKey": "Sui-01 | Sho-01 | Unde-01 | Tie-01 | Tie-01",
    },
    {
      "name": "Linen Blend",
      "primaryKey": "Sui-01",
    },
    {
      "name": "Canvas",
      "primaryKey": "han-01",
    },

    ///
    ///

    {
      "name": "Titanium",
      "primaryKey": "Nec-01",
    },
    {
      "name": "Platinum",
      "primaryKey": "Nec-01",
    },
    {
      "name": "Base Metals",
      "primaryKey": "Nec-01",
    },

    {
      "name": "Pearl",
      "primaryKey": "Nec-01",
    },
    {
      "name": "Shell",
      "primaryKey": "Nec-01",
    },

    ///
    ///
    {
      "name": "Lycra",
      "primaryKey": "Top-01 | Sne-01",
    },
    {
      "name": "Polypropylene",
      "primaryKey": "Sne-01",
    },
    {
      "name": "Hemp",
      "primaryKey": "Ank-01 | Bab-01",
    },

    {
      "name": "Gold",
      "primaryKey":
          "Ank-01 | Bab-01 | Bro-01 | Cuff-01 | Ear-01 | gla-01 | Nec-01 | Rin-01 | Wat-01",
    },

    {
      "name": "Silver",
      "primaryKey":
          "Ank-01 | Bab-01 | Bro-01 | Cuff-01 | Ear-01 | gla-01 | Nec-01 | Rin-01 | Wat-01",
    },

    {
      "name": "Coated Gold",
      "primaryKey":
          "Ank-01 | Bab-01 | Bro-01 | Cuff-01 | Ear-01 | gla-01 | Nec-01 | Rin-01 | Wat-01",
    },

    {
      "name": "Coated Silver",
      "primaryKey":
          "Ank-01 | Bab-01 | Bro-01 | Cuff-01 | Ear-01 | gla-01 | Nec-01 | Rin-01 | Wat-01",
    },

    {
      "name": "Plastic",
      "primaryKey":
          "Ank-01 | Bab-01 | Bro-01 | Cuff-01 | gla-01 | han-01 | hat-01 | Nec-01 | Rin-01 | Wat-01",
    },

    //////
    {
      "name": "Nylon",
      "primaryKey": "Sne-01 | Unde-01 | hat-01 | Lug-01 | Soc-01",
    },
    {
      "name": "Rayon",
      "primaryKey": "Top-01 | Jum-01 | Sne-01 | Loa-01",
    },
    {
      "name": "Polyester",
      "primaryKey": "Top-01 | Sne-01 | Loa-01 | hat-01 | Lug-01",
    },
    {
      "name": "Linen",
      "primaryKey": "Top-01 | Jum-01 | Sho-01 | hat-01",
    },

    ///
    {
      "name": "Cotton",
      "primaryKey":
          "Shi-01 | Sho-01 | Sne-01 | San-01 | hat-01 | Pur-01 | Soc-01",
    },
    {
      "name": "100 % Cotton",
      "primaryKey": "Shi-01 | San-01 | Fla-01 | Soc-01",
    },
    {
      "name": "Polyester",
      "primaryKey": "Shi-01 | Cjv-01",
    },
    {
      "name": "100% Combed and Ring-Spun Cotton",
      "primaryKey": "Shi-01",
    },
    {
      "name": "Triblends",
      "primaryKey": "Shi-01",
    },
    {
      "name": "Cotton/Polyester Blends",
      "primaryKey": "Shi-01",
    },
    {
      "name": "100% Ring-Spun Cotton",
      "primaryKey": "Shi-01",
    },

    {
      "name": "Leathere",
      "primaryKey":
          "Cjv-01 | Sho-01 | Sne-01 | San-01 | Fla-01 | Loa-01 | Bel-01 | Bab-01 | han-01 | Pur-01 | Wat-01",
    },
    {
      "name": "Stretch cotton",
      "primaryKey": "Ski-01",
    },

    {
      "name": "Poly cotton",
      "primaryKey": "Ski-01 | Pur-01 | Soc-01",
    },
    {
      "name": "Poplin",
      "primaryKey": "Ski-01",
    },
    {"name": "Cotton Lawn or Voile", "primaryKey": "Ski-01"},

    {
      "name": "Princess Lace satin",
      "primaryKey": "Lin-01",
    },
    {
      "name": "Silk Impression",
      "primaryKey": "Lin-01 | Unde-01",
    },
    {
      "name": "Viscose",
      "primaryKey": "Unde-01",
    },
    {
      "name": "Modal",
      "primaryKey": "Unde-01",
    },
    {
      "name": "Mulmul soft muslin",
      "primaryKey": "Lin-01",
    },
    {
      "name": "Organza",
      "primaryKey": "Lin-01",
    },
    {
      "name": "Florence net",
      "primaryKey": "Lin-01",
    },
    {
      "name": "Jersey",
      "primaryKey": "Lin-01",
    },
    {
      "name": "Cotton Satin",
      "primaryKey": "Lin-01",
    },
    {
      "name": "Lucent Satin",
      "primaryKey": "Lin-01",
    },
    {
      "name": "Add Own Specifications",
      "primaryKey":
          "JEF-01 | SWP-02 | SNS-03 | BOH-04 | HOJ-05 | DRS-06 | HAP-07 | HEW-08 | COR-09 | TSS-10 | LIN-11 | WIN-12 | CLS-13 | SUB-14 | SOS-14 | FAP-07 | HAP-07 | BOP-07",
    },
  ];

  static List<Map<String, dynamic>> colors = [
    {"name": "red", "code": 0xffff0000},
    {"name": "yellow", "code": 0xffFFFF00},
    {"name": "blue", "code": 0xff0000FF},
    {"name": "brown", "code": 0xff964B00},
    {"name": "orange", "code": 0xffFFA500},
    {"name": "green", "code": 0xff00FF00},
    {"name": "violet", "code": 0xff8F00FF},
    {"name": "black", "code": 0xff000000},
    {"name": "carnation pink", "code": 0xffffa6c9},
    {"name": "yellow orange", "code": 0xffFFAE42},
    {"name": "blue green", "code": 0xff0d98ba},
    {"name": "red violet", "code": 0xff922b3e},
    {"name": "red orange", "code": 0xffFF5349},
    {"name": "white", "code": 0xffFFFFFF},
    {"name": "indigo", "code": 0xff4b0082},
    {"name": "gray", "code": 0xff808080},
    {"name": "gold ", "code": 0xffFFD700},
    {"name": "maroon", "code": 0xff800000},
    {"name": "silver", "code": 0xffC0C0C0},
  ];
}
