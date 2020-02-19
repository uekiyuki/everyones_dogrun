User.create!(
  [
    {
      name: "Aさん",
      email: "a@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/illustrain02-space02-300x300.png"),

    },
    {
      name: "Bさん",
      email: "b@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/illustrain05-seijinshiki02-300x300.png"),

    },
    {
      name: "Cさん",
      email: "c@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/illustrain05-seijinshiki03-300x300.png"),

    },
    {
      name: "Dさん",
      email: "d@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/illustrain05-seijinshiki04-300x300.png"),

    },
    {
      name: "Eさん",
      email: "e@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/illustrain06-biji03-300x300.png"),
    },
    {
      name: "Fさん",
      email: "f@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/illustrain09-utyuu3-300x300.png"),
    },
    {
      name: "Gさん",
      email: "g@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/illustrain09-utyuu4-300x300.png"),
    },
  ]
)

    Mydog.create!(
  [
    {
      user_id: 1,
      name: "ラブ",
      breed: "ミニチュワ・シュナウザー",
      age: "１",
      gender: "female",
      image: open("#{Rails.root}/db/seed_fixtures/IMG_0035.jpeg"),
    },
    {
      user_id: 2,
      name: "チョコ",
      breed: "ラブラドール・レトリーバー？",
      age: "１3",
      gender: "male",
      image: open("#{Rails.root}/db/seed_fixtures/IMG_1657.jpeg"),
    },
    {
      user_id: 3,
      name: "ミルク",
      breed: "ラブラドール・レトリーバー",
      age: "１2",
      gender: "male",
      image: open("#{Rails.root}/db/seed_fixtures/IMG_4144.jpeg"),
    },
    {
      user_id: 4,
      name: "ココ",
      breed: "ミックス",
      age: "１3",
      gender: "male",
      image: open("#{Rails.root}/db/seed_fixtures/IMG_0140.jpeg"),
    },
    {
      user_id: 5,
      name: "チョコ",
      breed: "コーギー",
      age: "14",
      gender: "male",
      image: open("#{Rails.root}/db/seed_fixtures/IMG_0146.jpeg"),
    },
    {
      user_id: 6,
      name: "ロン",
      breed: "ミニチュワ・ダックスフンド",
      age: "15",
      gender: "male",
      image: open("#{Rails.root}/db/seed_fixtures/IMG_0144.jpeg"),
    },
    {
      user_id: 7,
      name: "はな",
      breed: "ねこ",
      age: "6",
      gender: "male",
      image: open("#{Rails.root}/db/seed_fixtures/IMG_2278.jpeg"),
    },
  ]
)
Dogrun.create!(
  [
    {
      user_id: 7,
      name: "ビークラブ",
      address: "茨城県つくば市",
      opening_at: "2020-02-17 09:00:00",
      closing_at: "2020-02-17 16:00:00",
      price: "無料",
      breadth: "100m2",
      other: "ペットショップ併設",
      image: open("#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg")
    },
    {
      user_id: 1,
      name: "奥日立きららの里",
      address: "茨城県日立市 入四間町 ８６３－１",
      opening_at: "2020-02-17 09:00:00",
      closing_at: "2020-02-17 17:00:00",
      price: "300円",
      breadth: "５００坪",
      other: "
        ☆「利用できる犬」の項目に対応していない犬。
        ☆人に対して攻撃性のある犬、攻撃をしたことのある犬。
        ☆他の犬に対し攻撃的な犬、ケンカを抑制できない犬。
        ☆闘犬類、攻撃的な犬、他の利用者に恐怖感を与える犬。
        ☆興奮状態の犬。
        ☆飼い主（利用者）が行動を制御できない犬。
        ☆飼い主（利用者）が不在で放置の犬。
        ☆発情中のメス犬。",
      image: open("#{Rails.root}/db/seed_fixtures/dog1.jpeg")
    },
    {
      user_id: 2,
      name: "犬のしつけ教室DOGLYドッグラン",
      address: "東京都台東区根岸3‐1‐10
      アルス鶯谷一階",
      opening_at: "2020-02-17 07:00:00",
      closing_at: "2020-02-17 19:00:00",
      price: "300円",
      breadth: "1０坪",
      other: "",
      image: open("#{Rails.root}/db/seed_fixtures/20180221moyasummer2.jpg")
    },
    {
      user_id: 2,
      name: "舎人公園　ドッグラン",
      address: "東京都足立区舎人公園１-１",
      opening_at: "2020-02-17 05:10:00",
      closing_at: "2020-02-17 18:20:00",
      price: "無料",
      breadth: "1０坪",
      other: "登録制",
      image: open("#{Rails.root}/db/seed_fixtures/outline02401-thumb-628xauto-5873.jpg")
    },
    {
      user_id: 3,
      name: "代々木公園　ドッグラン",
      address: "東京都渋谷区代々木神園町・神南二丁目 ",
      opening_at: "2020-02-17 05:10:00",
      closing_at: "2020-02-17 19:30:00",
      price: "無料",
      breadth: "300坪",
      other: "登録制、工事中",
      image: open("#{Rails.root}/db/seed_fixtures/access.jpg")
    },
    {
      user_id: 3,
      name: "代々木公園　ドッグラン",
      address: "東京都渋谷区代々木神園町・神南二丁目 ",
      opening_at: "2020-02-17 05:10:00",
      closing_at: "2020-02-17 19:30:00",
      price: "無料",
      breadth: "300坪",
      other: "登録制、工事中",
      image: open("#{Rails.root}/db/seed_fixtures/access.jpg")
    },
    {
      user_id: 3,
      name: "駒沢公園　ドッグラン",
      address: " 東京都世田谷区駒沢公園１−１ ",
      opening_at: "2020-02-17 05:10:00",
      closing_at: "2020-02-17 19:30:00",
      price: "無料",
      breadth: "1200m2",
      other: "登録制",
      image: open("#{Rails.root}/db/seed_fixtures/kopgp_dogrun_main.png")
    },
    {
      user_id: 1,
      name: "つくば　わんわんランド",
      address: "茨城県つくば市沼田５７９ ",
      opening_at: "2020-02-17 10:00:00",
      closing_at: "2020-02-17 16:00:00",
      price: "大人1200円、子供h700円",
      breadth: "3600m2",
      other: "",
      image: open("#{Rails.root}/db/seed_fixtures/e4902b26587acf8653445c88451e2ebe-720x478.jpg")
    },

  ]
  )