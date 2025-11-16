//
//  Movie.swift
//  M2Homework6-Extra
//
//  Created by Oleg Konstantinov on 15.11.2025.
//

import Foundation


struct TableSection {
    let header: String
    var footer: String? = nil
    var type: PageType = .details
    var items: [Movie]
    
    static func mockData() -> [TableSection] {
        [
            TableSection(header: "Popular", items: [
                Movie(
                        title: "Франкенштейн",
                        originalTitle: "Frankenstein",
                        posterPath: "oCxLbnBBEmUCeRcmsBrmF9jEcHd.jpg",
                        overview: "Блестящий, но самовлюблённый учёный проводит жестокий эксперимент, в результате которого он оживляет мёртвое тело. Учёный отвергает своё создание, однако их судьбы оказываются трагически связаны.",
                        voteAverage: 7.873,
                        genreIDS: [18, 27, 14]
                    ),
                    Movie(
                        title: "Убойная суббота",
                        originalTitle: "Playdate",
                        posterPath: "1QcMKub4DwoHyHMBhCOwve5dHqB.jpg",
                        overview: "Отец-домосед Брайан принимает приглашение на детский праздник другого отца-домоседа, но всё идёт совершенно не по плану и постепенно скатывается в хаос с бандитами, драками, стрельбой и взрывами.",
                        voteAverage: 6.577,
                        genreIDS: [28, 35, 10751]
                    ),
                    Movie(
                        title: "Битва за битвой",
                        originalTitle: "One Battle After Another",
                        posterPath: "qcSFcQwcuzyWQ4UGsIa1y2WMozB.jpg",
                        overview: "В молодости Боб Фергюсон вместе с женой состоял в группировке революционеров. Спустя 16 лет в его дом врывается давний противник полковник Локджо. Чтобы спасти дочь, Боб вынужден обратиться за помощью к своим бывшим соратникам.",
                        voteAverage: 7.649,
                        genreIDS: [28, 53, 80]
                    ),
                    Movie(
                        title: "Хищник: Планета смерти",
                        originalTitle: "Predator: Badlands",
                        posterPath: "pu5Aj7nyx9ISKMcmWvUjZv68GLs.jpg",
                        overview: "Хищник Дек, изгнанный из клана, отправляется на опасную планету Калиск. Он стремится доказать своему отцу и всему племени, что достоин быть частью клана. Он встречает загадочную девушку Тию и объединяется с ней. Вместе они начинают поиски наиболее грозного противника.",
                        voteAverage: 7.3,
                        genreIDS: [28, 878, 12]
                    ),
                    Movie(
                        title: "Чёрный телефон 2",
                        originalTitle: "Black Phone 2",
                        posterPath: "pG3yo4PtkUku7qQTmEIM6OiV9zK.jpg",
                        overview: "Спустя 4 года после своего спасения из плена жестокого маньяка 17-летний Финн до сих пор пытается вернуться к нормальной жизни. Однако теперь его сестру, 15-летнюю Гвен, мучают загадочные сны о вновь зазвонившем чёрном телефоне...",
                        voteAverage: 7.13,
                        genreIDS: [27, 53]
                    ),
                    Movie(
                        title: "Война миров",
                        originalTitle: "War of the Worlds",
                        posterPath: "12dBX2CibQ0CXAJfIRBqOY6ac3h.jpg",
                        overview: "Скринлайф-экранизация романа «Война миров» Герберта Уэллса. Землю атакуют агрессивные пришельцы, использующие гигантских роботов с щупальцами...",
                        voteAverage: 4.339,
                        genreIDS: [878, 53]
                    ),
                Movie(
                    title: "Код 3",
                    originalTitle: "Code 3",
                    posterPath: "sm3YCy9Db2TwhIckjsQ247KAxS2.jpg",
                    overview: "Рассказ о парамедике, который настолько измотан работой, что вынужден уволиться. Однако перед этим он должен отработать последнюю 24-часовую смену, чтобы обучить своего преемника.",
                    voteAverage: 7.097,
                    genreIDS: [28, 35]
                )
                
            ]),
            TableSection(header: "Top Rated", footer: "As rated by regular IMDb voters.", items: [
                Movie(
                        title: "Побег из Шоушенка",
                        originalTitle: "The Shawshank Redemption",
                        posterPath: "yvmKPlTIi0xdcFQIFcQKQJcI63W.jpg",
                        overview: "Бухгалтер Энди Дюфрейн обвинён в убийстве собственной жены и её любовника. Оказавшись в тюрьме под названием Шоушенк, он сталкивается с жестокостью и беззаконием, царящими по обе стороны решётки. Каждый, кто попадает в эти стены, становится их рабом до конца жизни. Но Энди, обладающий живым умом и доброй душой, находит подход как к заключённым, так и к охранникам, добиваясь их особого к себе расположения.", voteAverage: 8.7,
                        genreIDS: [18, 80]
                    ),
                    Movie(
                        title: "Крёстный отец",
                        originalTitle: "The Godfather",
                        posterPath: "hoowzozsn0XQGtgH8nyivAMZfPN.jpg",
                        overview: "Криминальная сага, повествующая о нью-йоркской сицилийской мафиозной семье Корлеоне. Фильм охватывает период 1945-1955 годов...",
                        voteAverage: 8.684,
                        genreIDS: [18, 80]
                    ),
                    Movie(
                        title: "Крёстный отец 2",
                        originalTitle: "The Godfather Part II",
                        posterPath: "tOLQ3iRDfbwhVaw3QjDzIOS7zcu.jpg",
                        overview: "В центре драмы представители нового поколения гангстерского клана — дона Корлеоне и его сына...", voteAverage: 8.571,
                        genreIDS: [18, 80]
                    ),
                    Movie(
                        title: "Список Шиндлера",
                        originalTitle: "Schindler's List",
                        posterPath: "4K8fGGcJP2EoGDucILnaJcOJhZl.jpg",
                        overview: "Лента рассказывает реальную историю загадочного Оскара Шиндлера...",
                        voteAverage: 8.565,
                        genreIDS: [18, 36, 10752]
                    ),
                    Movie(
                        title: "12 разгневанных мужчин",
                        originalTitle: "12 Angry Men",
                        posterPath: "uDFEvhvKrH61KuGWWozRtbw2Rjv.jpg",
                        overview: "Юношу обвиняют в убийстве собственного отца, ему грозит электрический стул...",
                        voteAverage: 8.549,
                        genreIDS: [18]
                    ),
                    Movie(
                        title: "Унесённые призраками",
                        originalTitle: "千と千尋の神隠し",
                        posterPath: "xV3zYcOA6xFjYwizIMDDkl2MGT7.jpg",
                        overview: "Тихиро с мамой и папой переезжает в новый дом и оказываются в странном городе...",
                        voteAverage: 8.534,
                        genreIDS: [16, 10751, 14]
                    ),
                    Movie(
                        title: "Тёмный рыцарь",
                        originalTitle: "The Dark Knight",
                        posterPath: "dxWaYQtgpLbycqUpHzkqqYkT5I3.jpg",
                        overview: "Бэтмен поднимает ставки в войне с криминалом. С помощью Гордона и Дента он пытается очистить город...",
                        voteAverage: 8.524,
                        genreIDS: [18, 28, 80, 53]
                    ),
                    Movie(
                        title: "Непохищенная невеста",
                        originalTitle: "दिलवाले दुल्हनिया ले जायेंगे",
                        posterPath: "sctBFkLHYYqaHHNJj7r1jSOkfB9.jpg",
                        overview: "Балдев Синг живёт в Лондоне, но сохраняет традиции. Его дочь Симран встречает Раджа...",
                        voteAverage: 8.514,
                        genreIDS: [35, 18, 10749]
                    ),
                    Movie(
                        title: "Зелёная миля",
                        originalTitle: "The Green Mile",
                        posterPath: "lHxe8t4B0CKv4DO0C0B4rsuiG95.jpg",
                        overview: "Пол Эджкомб — начальник блока смертников. Джон Коффи — необычный заключённый...",
                        voteAverage: 8.503,
                        genreIDS: [14, 18, 80]
                    ),
                    Movie(
                        title: "Паразиты",
                        originalTitle: "기생충",
                        posterPath: "9xL2PwIOerz8jld06J9cxwuJfoD.jpg",
                        overview: "Бедная семья постепенно внедряется в богатый дом Пак, используя хитрость и обман...",
                        voteAverage: 8.496,
                        genreIDS: [35, 53, 18]
                    ),
            ]),
            TableSection(header: "Upcoming",type: .upcoming, items: [
                Movie(title: "Иллюзия обмана 3", originalTitle: "Now You See Me: Now You Don't", posterPath: "mLc5TztpCN7SRD9jloCqvj1ucKl.jpg", overview: "«4 всадника» возвращаются вместе с молодым поколением иллюзионистов, демонстрируя головокружительные трюки, магию и превращения, каких ещё не видел мир.", releaseDate: "2025-11-12", voteAverage: 6.9, genreIDS: [53, 80,9648])
            ])
        ]
    }
}

struct Movie {
    let title: String
    let originalTitle: String
    let posterPath: String
    let overview: String
    var releaseDate: String? = nil
    var voteAverage: Double? = nil
    let genreIDS: [Int]
    
    
//    static func setupGenres (genres: [Int]) -> String {
//        let data = Genre.mockData()
//        var result: String = ""
//        
//        let names = genres.compactMap{ id in
//            data.first{ $0.id == id }?.name
//        }
//        for (index, name) in names.enumerated() {
//            result.append(name)
//            if index != names.count - 1 {
//                result.append(", ")
//            }
//        }
//        return result
//    }
}

struct Genre {
    let id: Int
    let name: String
    static func mockData() -> [Genre] {
        [
            Genre(id: 28, name: "боевик"),
            Genre(id: 12, name: "приключения"),
            Genre(id: 16, name: "мультфильм"),
            Genre(id: 35, name: "комедия"),
            Genre(id: 80, name: "криминал"),
            Genre(id: 99, name: "документальный"),
            Genre(id: 18, name: "драма"),
            Genre(id: 10751, name: "семейный"),
            Genre(id: 14, name: "фэнтези"),
            Genre(id: 36, name: "история"),
            Genre(id: 27, name: "ужасы"),
            Genre(id: 10402, name: "музыка"),
            Genre(id: 9648, name: "детектив"),
            Genre(id: 10749, name: "мелодрама"),
            Genre(id: 878, name: "фантастика"),
            Genre(id: 10770, name: "телевизионный фильм"),
            Genre(id: 53, name: "триллер"),
            Genre(id: 10752, name: "военный"),
            Genre(id: 37, name: "вестерн")
        ]
    }
}

