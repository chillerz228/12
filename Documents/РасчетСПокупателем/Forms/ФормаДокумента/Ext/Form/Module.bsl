﻿&НаКлиенте       
Процедура ТоварСуммаПриИзменении (Элемент)
	РасчитатьНДС ();
КонецПроцедуры

&НаКлиенте       
Процедура РасчитатьНДС ()
	ОбщаяСумма = Объект.Товар.Итог("Сумма");  
	Объект.ОбщаяСуммаБезНДС = ОбщаяСумма;
	Объект.НДС = ОбщаяСумма*ПолучитьНДС();
	Объект.СуммаСНДС = ОбщаяСумма - Объект.НДС;
КонецПроцедуры

функция ПолучитьНДС()
	Возврат Константы.ПроцентНДС.Получить()/100;
КонецФункции

 &НаКлиенте       
Процедура  ТоварЦенаПриИзменении (Элемент)
	РасчитатьНДССтроки ();
	РасчитатьНДС();
КонецПроцедуры     

  &НаКлиенте       
Процедура ТоварКоличествоПриИзменении (Элемент)
	РасчитатьНДССтроки ();
	РасчитатьНДС();
КонецПроцедуры     

 &НаКлиенте       
Процедура РасчитатьНДССтроки ()
	ТекСтрока = Элементы.Товар.ТекущиеДанные;
	ТекСтрока.Сумма = ТекСтрока.Количество * ТекСтрока.Цена;
	текСтрока.НДС = текСтрока.Сумма * ПолучитьНДС ();
	текСтрока.СуммаСНДС = текСтрока.Сумма - текСтрока.НДС; 
КонецПроцедуры     

