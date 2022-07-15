# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


to = Category.create(name: "ТО")
bs = Category.create(name: "Тормозная система")
el = Category.create(name: "Электрооборудование")
ch = Category.create(name: "Ходовая часть")
en = Category.create(name: "Двигатель")
tr = Category.create(name: "Трансмиссия")

Service.create([
  {name: "Замена воздушного фильтра", price: 300, category: to},
  {name: "Замена салонного фильтра", price: 1200, category: to},
  {name: "Замена Фильтра топливного дизель", price: 300, category: to},
  {name: "Замена масла в коробке передач", price: 800, category: to},
  {name: "Замена масла ДВС", price: 500, category: to},
  {name: "Демонтаж монтаж защиты картера", price: 200, category: to},

  {name: "Замена тормозного шланга", price: 400, category: bs},
  {name: "Замена тормозной жидкости", price: 1200, category: bs},
  {name: "Замена колодок", price: 2000, category: bs},
  {name: "Замена тормозного суппорта", price: 1000, category: bs},

  {name: "Замена генератора", price: 1500, category: el},
  {name: "Замена стартера ", price: 1500, category: el},
  {name: "Замена высоковольтных проводов", price: 400, category: el},
  {name: "Замена свечей зажигания", price: 600, category: el},
  {name: "Замена катушки зажигания", price: 200, category: el},

  {name: "Замена подрамника передней подвески", price: 3000, category: ch},
  {name: "Замена нижнего рычага подвески", price: 1500, category: ch},
  {name: "Замена сайленблока", price: 500, category: ch},
  {name: "Замена амортизатора", price: 1200, category: ch},
  {name: "Замена ступицы", price: 1500, category: ch},

  {name: "Замена двигателя - снять двигатель / поставить двигатель", price: 20000, category: en},
  {name: "Капитальный ремонт двигателяь", price: 35000, category: en},
  {name: "Замена головки блока цилиндров", price: 15000, category: en},
  {name: "Замена прокладки головки блока цилиндров", price: 15000, category: en},
  {name: "Замена сальника распределительного вала приснятом ГРМ", price: 500, category: en},

  {name: "Ремонт автоматической коробки передач", price: 12000, category: tr},
  {name: "Ремонт механической коробки передач ", price: 9000, category: tr},
  {name: "Ремонт роботизированной коробки передач", price: 30000, category: tr},
])

Employee.create([{name: "Сергеев"}, {name: "Смирнов"}, {name: "Рязин"}, {name: "Бурунов"}, {name: "Бодька"}, {name: "Ильин"}, {name: "Кучма"}, {name: "Авдеев"}, {name: "Мухин"}, {name: "Безпалов"}, {name: "Лункин"}])
