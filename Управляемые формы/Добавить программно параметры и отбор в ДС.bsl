	Список.Параметры.УстановитьЗначениеПараметра("СвойствоРазмер", ПланыВидовХарактеристик.ДополнительныеРеквизитыИСведения.НайтиПоРеквизиту("Имя", "Размер"));
	Список.Параметры.УстановитьЗначениеПараметра("НДС", ?(ЗначениеЗаполнено(ОтборНДС), ОтборНДС, 0));

  Этаформа.Список.Отбор.Элементы.Очистить();
	
	Отбор = Список.Отбор.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
	Отбор.ВидСравнения = ВидСравненияКомпоновкиДанных.Равно;
	Отбор.ПравоеЗначение = ОтборРазмер;
	Отбор.ЛевоеЗначение = Новый ПолеКомпоновкиДанных("Размер");
	Отбор.РежимОтображения = РежимОтображенияЭлементаНастройкиКомпоновкиДанных.Недоступный;
	Отбор.Использование = ЗначениеЗаполнено(ОтборРазмер);

	Отбор = Список.Отбор.Элементы.Добавить(Тип("ЭлементОтбораКомпоновкиДанных"));
	Отбор.ВидСравнения = ВидСравненияКомпоновкиДанных.Содержит;
	Отбор.ПравоеЗначение = ОтборАртикул;
	Отбор.ЛевоеЗначение = Новый ПолеКомпоновкиДанных("Артикул");
	Отбор.РежимОтображения = РежимОтображенияЭлементаНастройкиКомпоновкиДанных.Недоступный;
	Отбор.Использование = ЗначениеЗаполнено(ОтборАртикул);
