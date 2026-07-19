#language: ru

@tree

Функционал: <описание фичи>

Как Тестировщик я хочу
подготовить тестовые данные для тестирования документа Заказ
чтобы проверить правильность создания документа Заказ   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
// Организация
// Покупатель
// Склад
// Вид цен
// Номенклатура

Сценарий: Создание объектов для справочника Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"'       | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |

Сценарий: Создание объектов для справочника Контрагенты

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'              | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'           | 'Улица'    | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'       | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо'  | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000009' | 'Животноводство ООО '       | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | '125678' | 'Россия' | 'Барнаул'         | 'Ленина'   | '2'   | '+7(999)261-79-79' | 'givotnovodstvo@mail.ru' | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Папанов Р. Д.'   |           |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000014' | 'Магазин "Бытовая техника"' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | '256452' | 'Россия' | 'Санкт-Петербург' | 'Фонтанка' | '14'  | '+7(999)528-96-21' | 'techno@techno.ru'       | '+7(999)528-96-22' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Мерзликин А. О.' | 59.934113 | 30.366475 |


Сценарий: Создание объектов для справочника Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'False'           | '000000004' | 'Склад отдела продаж' | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=8e0a000d8843cd1b11de0ed853793994' | 'False'           | '000000005' | 'Строящийся склад'    | 'True'           |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'False'           | '000000001' | 'Малый'               | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'False'           | '000000002' | 'Большой'             | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'False'           | '000000003' | 'Средний'             | 'False'          |

Сценарий: Создание объектов для справочника ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 'False'           | '000000010' | 'Закупочная'   |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000001' | 'Розничная'    |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |

Сценарий: Подготовка данных

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки'                                                             | 'Вид'                     | 'Штрихкод' | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eacd471d6c7' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000031' | 'Босоножки'    | 'Bos0009' | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eacd471d6cd' | 'Enum.ВидыТоваров.Товар'  | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p><span style=" font-weight: bold;">Материал верха</span> - кожа. </p>\n<p><span style=" font-weight: bold;">Материал подкладки</span> - кожа. </p>\n<p><span style=" font-weight: bold;">Материал подошвы</span> - искусственный материал.</p>\n<p><span style=" font-weight: bold;">Цвет</span> - малиновый.<br></p>\n<p><span style=" font-weight: bold;">Высота каблука</span> - низкая, 3,5 см.</p>\n<p><span style=" font-weight: bold;">Страна-</span><span style=" font-weight: bold;">производитель</span><span style=" font-weight: bold;"> </span>- Польша.</p>\n<p><br></p>\n</body></html>' |          |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'     | '000000032' | 'Торт '        | 'Т78'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eb43bdcf26e' | 'Enum.ВидыТоваров.Товар'  | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Торт "Праздничный".</p>\n<p>Три бисквитных коржа со вкусом шоколада щедро залиты банановым кремом.<br></p>\n<p><span style=" font-weight: bold;">Вес </span>- 1кг.</p>\n<p><span style=" font-weight: bold;">Страна-производитель</span> - Россия.</p>\n</body></html>'                                                                                                                                                                                                    |          |
		| 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aaf' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8d3a000d8843cd1b11dd321ba7a30aae' | 'False'     | '000000037' | 'Доставка'     | ''        | ''                                                                       | ''                                                                         | 'Enum.ВидыТоваров.Услуга' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Доставка по графику.</p>\n</body></html>'                                                                                                                                                                                                                                                                                                                                                                                                                                  |          |




