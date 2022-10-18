import Foundation

/*
 1. Создать класс Человек с параметрами Имя, Фамилия, Возраст
 Создать класс Работник, который будет наследоваться от класса Человек, но будет иметь дополнительные параметры: Место работы, должность
 Создать класс Инвестор, наследуемый от класса Работник, но будет иметь дополнительные параметры: Количество инвестиций
 В каждом классе по-своему реализовать функцию "Приветствие"
 */
class Human {
    var name: String
    var surname: String
    var age: Int
    var greetings: String
    
    init (name: String, surname: String, age: Int, greetings: String) {
        self.name = name
        self.surname = surname
        self.age = age
        self.greetings = greetings
    }
    
    func SayHello() {
        print("\(greetings) Меня зовут \(name). Мне \(age) лет. Я первый человек на земле.")
    }
}

var human = Human(name: "Адам", surname: "", age: 18, greetings: "Здравствуй!")
human.SayHello()

class Employee: Human {
    var work: String
    var post: String
    init(name: String, surname: String, age: Int, greetings: String, work: String, post: String) {
        self.work = work
        self.post = post
        super.init(name: name, surname: surname, age: age, greetings: greetings)
    }
    override func SayHello() {
        print("\(greetings) Меня зовут \(name) \(surname). Мне \(age) лет. Я \(post) и работаю в своем офисе \(work) в Москве.")
    }
}

var employee = Employee(name: "Валентин", surname: "Петухов", age: 37, greetings: "Привет! С вами Wylsacom!", work: "Wylsacom", post: "Техноблогер")
employee.SayHello()

class Investor: Employee {
    var countOfInvestment: Int
    init(name: String, surname: String, age: Int, greetings: String, work: String, post: String, countOfInvestment: Int) {
        self.countOfInvestment = countOfInvestment
        super.init(name: name, surname: surname, age: age, greetings: greetings, work: work, post: post)
    }
    override func SayHello() {
        print("\(greetings) Меня зовут \(name) \(surname). Мне \(age) года. Я \(post) и работаю на \(work). Мой пакет состоит из акций \(countOfInvestment) компаний.")
    }
}

var investor = Investor(name: "Уоррен", surname: "Баффет", age: 92, greetings: "Приветствую вас, друзья мои!", work: "Уолл Стрит", post: "Инвестор", countOfInvestment: 47)
investor.SayHello()

/*
 #2. Создать класс Магазин
 Параметры: Название, Площадь, Расположение, Часы работы
 После чего путём наследования создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами
 Так же в конце должна быть функция, которая будет отображать следующую информацию:
 Название магазина. Площадь.
 Расположение. Часы работы.
 Наименование товара. Кол-во товара. Цена товара
 */
class Store {
    var name: String
    var square: String
    var schedule: String
    
    init(name: String, square: String, schedule: String) {
        self.name = name
        self.square = square
        self.schedule = schedule
    }
}

class AutoPartsStore: Store {
    var productsCount: Int
    var products: String
    var cost: Int
    var loceton: String
    init(name: String, square: String, schedule: String, productsCount: Int, products: String, cost: Int, location: String) {
        self.productsCount = productsCount
        self.products = products
        self.cost = cost
        self.loceton = location
        super.init(name: name, square: square, schedule: schedule)
    }
    func showInfo() {
        print ("Магазин \(name), c общей площадью \(square), работает \(schedule), где Вы сможете найти абсолютно все для Вашего автомобиля по низким ценам. Количество всего товара составляет более \(productsCount) единиц. К примеру \(products) от \(cost) сом. Мы находимся по адресу \(loceton).")
    }
}
var autoPartsStore = AutoPartsStore(name: "Skyline", square: "200м2", schedule: "24/7", productsCount: 1000, products: "Компрессор кондиционера", cost: 20000, location: "Рынок Кудайберген")
autoPartsStore.showInfo()

class MensClothingStore: Store {
    var productsCount: Int
    var products: String
    var cost: Int
    var loceton: String
    init(name: String, square: String, schedule: String, productsCount: Int, products: String, cost: Int, location: String) {
        self.productsCount = productsCount
        self.products = products
        self.cost = cost
        self.loceton = location
        super.init(name: name, square: square, schedule: schedule)
    }
    func showInfo() {
        print ("Бутик мужской классической одежды \(name), c общей площадью \(square), работает \(schedule). Здесь Вы сможете найти: классические костюмы, рубашки, галстуки, бабочки, куртки, пальто, туфли, а также аксессуары. Количество всего товара составляет более \(productsCount) единиц. К примеру \(products) от \(cost) сом. Мы находимся по адресу \(loceton).")
    }
}
var mensClothingStore = MensClothingStore(name: "Men's shop", square: "100м2", schedule: "каждый день с 10:00 до 22:00", productsCount: 100, products: "классический костюм" , cost: 15000, location: "ТЦ Дордой Плаза")
mensClothingStore.showInfo()
