class Film {
  String idflm;
  String rating;
  String genre;
  String judul;
  String image;
  String sinopsis;
  String rilis;

  Film({
    this.idflm,
    this.judul,
    this.genre,
    this.rating,
    this.image,
    this.rilis,
    this.sinopsis,
  });
}

var movieList = [
  Film(
    idflm: '1',
    judul: "Godzila Vs Kong",
    image: "assets/images/godzila v kong.jpg",
    rilis: "2021",
    rating: "null",
    genre: "Action, Thriller, Sci-Fi",
    sinopsis:
    "Legenda bertabrakan sebagai Godzilla dan Kong, dua kekuatan alam yang paling kuat, bentrok di layar lebar dalam pertempuran spektakuler selama berabad-abad. Ketika skuadron memulai misi berbahaya ke medan yang belum dipetakan yang fantastis, menggali petunjuk untuk asal-usul Titans dan kelangsungan hidup umat manusia, konspirasi mengancam untuk menghapus makhluk, baik dan buruk, dari muka bumi selamanya.",
  ),
  Film(
    idflm: '2',
    judul: "Mortal Combat",
    image: "assets/images/MortalKom.jpg",
    rilis: "2021",
    rating: "null",
    genre: "Action, Adventure, Fantasy, Sci-Fi, Thriller",
    sinopsis:
    "Petarung MMA Cole Young (Lewis Tan), terbiasa melakukan pemukulan demi uang, tidak menyadari warisannya-atau mengapa Kaisar Outworld Shang Tsung (Chin Han) telah mengirim prajurit terbaiknya, Sub-Zero (Joe Taslim), seorang Cryomancer dunia lain, untuk memburu Cole. Karena khawatir akan keselamatan keluarganya, Cole pergi mencari Sonya Blade (Jessica McNamee) atas arahan Jax (Mehcad Brooks), Seorang Mayor Pasukan Khusus yang menyandang tanda naga aneh yang sama dengan Cole. Segera, ia menemukan dirinya di kuil Lord Raiden (Tadanobu Asano), seorang Elder God dan pelindung Earthrealm, yang memberikan tempat perlindungan kepada mereka yang menanggung tanda itu. Di sini, Cole berlatih dengan prajurit berpengalaman Liu Kang (Ludi Lin), Kung Lao (Max Huang) dan tentara bayaran nakal Kano (Josh Lawson), saat ia bersiap untuk berdiri dengan juara terbesar Bumi melawan musuh-musuh Outworld dalam pertempuran taruhan tinggi untuk alam semesta.",
  ),
  Film(
    idflm: '3',
    judul: "Venom: Let There Be Carnage",
    image: "assets/images/venom.jpg",
    rilis: "2021",
    rating: "null",
    genre: "Action, Horror, Sci-Fi",
    sinopsis:
    "Sequel Venom 2018",
  ),
  Film(
    idflm: '5',
    judul: "Fast 9",
    image: "assets/images/f9.jpg",
    rilis: "2021",
    rating: "null",
    genre: "Action, Adventure, Crime",
    sinopsis:
    "Cypher meminta bantuan Jakob, adik Dom untuk membalas dendam pada Dom dan timnya..",
  ),
  Film(
    idflm: '6',
    judul: "The Suicide Squad",
    image: "assets/images/tSS.jpg",
    rilis: "2021",
    rating: "null",
    genre: "Action, Adventure, Crime",
    sinopsis:
    "Sequel Film Suicide Squad 1",
  ),
];
