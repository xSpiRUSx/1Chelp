&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
    Форма = получитьФорму("Документ.ПриходнаяНакладная.Форма.ФормаДокумента");
    Форма.ЗаполнитьНаКлиенте();
    Форма.Открыть();
КонецПроцедуры



В модуле нашей формы код

&НаКлиенте
Процедура ЗаполнитьНаКлиенте() экспорт
       Заполнить_Сервер()
КонецПроцедуры // ()

&НаСервере
Процедура Заполнить_Сервер()
    Док = Документы.ПриходнаяНакладная.СоздатьДокумент();
    Док.СписокНоменклатуры.Добавить();
    ЗначениеВРеквизитФормы(док,"ОБъект");
КонецПроцедуры
