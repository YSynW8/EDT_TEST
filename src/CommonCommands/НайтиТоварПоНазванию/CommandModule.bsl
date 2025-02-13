
#Область ОбработчикиСобытий
&НаКлиенте
АСИНХ Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	НазваниеТовара = Ждать ВвестиСтрокуАсинх("", "Введите название");
	
	Если ПроверитьСуществованиеТовара(НазваниеТовара) Тогда
		ТекстСообщения = СтрШаблон("Товар %1 найден", НазваниеТовара);
	Иначе
		ТекстСообщения = СтрШаблон("Товар %1 не найден", НазваниеТовара);
	КонецЕсли; 
	
	Сообщить(ТекстСообщения);
КонецПроцедуры
#КонецОбласти

&НаСервере
Функция ПроверитьСуществованиеТовара(НазваниеТовара)
	ТоварСуществует = Справочники.Товары.ПроверитьСуществованиеПоНазванию(НазваниеТовара);
	Возврат ТоварСуществует;
КонецФункции