//
//  Constants.swift
//  Diplom
//
//  Created by Ilya Volynets on 5/14/19.
//  Copyright © 2019 Ilya Volynets. All rights reserved.
//

import Foundation

class Constants {
    
    static var timerCountSec = 0
    
    static var timerCountMin = 0
    
    static var countTrueAnswer = 0
    
    static var resultOfTest = ""
    
    static var mainArray = [QuestionAndAnswer]()
    
    static var saveArray = ["0" , "--", "0" , "--", "0" , "--", "0" , "--", "0" , "--", "0" , "--", "0" , "--", "0" , "--", "0"]
    
    static var arrayOfMistakes = [QuestionAndAnswer]()
    
    static var iA = 0
    
    static var iT = 0
    
    static var iTest = true
    
    static var firstArray = [QuestionAndAnswer]()
    static var secondArray = [QuestionAndAnswer]()
    static var thirdArray = [QuestionAndAnswer]()
    static var fourthArray = [QuestionAndAnswer]()
    
    static var arrayOfJSQuestionsOne = [
        QuestionAndAnswer(question: "JavaScript это язык ... ?", firstAnswer: "программирования", secondAnswer: "гипертекстовой разметки", thirdAnswer: "текстовой разметки", fourthAnswer: "жестов" , trueAnswer : "программирования"),
        QuestionAndAnswer(question: "Кем был разработан язык JavaScript?", firstAnswer: "Брендан Эйх", secondAnswer: "Гвиндо ван Россум ", thirdAnswer: "Расмус Лердорф", fourthAnswer: "Никлаус Вирт", trueAnswer : "Брендан Эйх"),
        QuestionAndAnswer(question: "С помощью какого тега программы на языке JavaScript можно вставить в любое место HTML?", firstAnswer: "<script>", secondAnswer: "<htmlscript>", thirdAnswer: "<javascript>", fourthAnswer: "<meta charset>", trueAnswer : "<script>"),
        QuestionAndAnswer(question: "Для чего используется ключевое слово var?", firstAnswer: "объявление переменной", secondAnswer: "удаление переменной", thirdAnswer: "вывода переменной на экран", fourthAnswer: "все варианты правильны", trueAnswer : "объявление переменной"),
        QuestionAndAnswer(question: "Строки создаются при помощи ... ?", firstAnswer: "двойных и одинарных кавычек", secondAnswer: "только двойных кавычек", thirdAnswer: "только одинарных кавычек", fourthAnswer: "без кавычек ", trueAnswer : "двойных и одинарных кавычек"),
        QuestionAndAnswer(question: "Первое название языка JavaScript?", firstAnswer: "Mocha", secondAnswer: "Java", thirdAnswer: "ScriptLanguage", fourthAnswer: "JavaScript", trueAnswer : "Mocha"),
        QuestionAndAnswer(question: "Какой метод позволяет получить длинну строки?", firstAnswer: "length", secondAnswer: "dlinna", thirdAnswer: "countString", fourthAnswer: "countLength", trueAnswer : "length"),
        QuestionAndAnswer(question: "Как поменять регистр строки на верхний?", firstAnswer: "toUpperCase()", secondAnswer: "toLowerCase()", thirdAnswer: "toUpCase()", fourthAnswer: "toUpper()", trueAnswer : "toUpperCase()"),
         QuestionAndAnswer(question: "Какое расширение имеют файлы JavaScript?", firstAnswer: ".js", secondAnswer: ".sj", thirdAnswer: ".j", fourthAnswer: ".jcr", trueAnswer : ".js"),
          QuestionAndAnswer(question: "Как поменять регистр строки на нижний?", firstAnswer: "toLowerCase()", secondAnswer: "toUpperCase()", thirdAnswer: "toLowCase()", fourthAnswer: "toLowestCase()", trueAnswer : "toLowerCase()")]

    
    
    static var arrayOfJSQuestionsTwo = [
        QuestionAndAnswer(question: "Может ли тип number использоваться как для целых так и для дробных чисел?", firstAnswer: "Да", secondAnswer: "Нет", thirdAnswer: "Только если числа положительные", fourthAnswer: "Такого типа не существует" , trueAnswer : "Да"),
        QuestionAndAnswer(question: "Какой из вариантов относиться к типу char в JavaScript?", firstAnswer: "Такого типа в JavaScript не существует", secondAnswer: "'j'", thirdAnswer: "\"j\"", fourthAnswer: "j", trueAnswer : "Такого типа в JavaScript не существует"),
        QuestionAndAnswer(question: "Сколько имеет значений тип boolean?", firstAnswer: "два", secondAnswer: "три", thirdAnswer: "один", fourthAnswer: "неограниченное количество", trueAnswer : "два"),
        QuestionAndAnswer(question: "К какому типу будет относиться переменная 'var x'?", firstAnswer: "undefined", secondAnswer: "number", thirdAnswer: "int", fourthAnswer: "boolean", trueAnswer : "undefined"),
        QuestionAndAnswer(question: "Как можно создать переменную типа object?", firstAnswer: "'var obj = new Object();' или 'var obj = {};'", secondAnswer: "'var obj := {};'", thirdAnswer: "'var obj'", fourthAnswer: "'var obj = object'", trueAnswer : "'var obj = new Object();' или 'var obj = {};'"),
        QuestionAndAnswer(question: "Какой оператор возвращает тип аргумента?", firstAnswer: "typeof", secondAnswer: "oftype", thirdAnswer: "argumentype", fourthAnswer: "type", trueAnswer : "typeof"),
        QuestionAndAnswer(question: "... выводит на экран окно с сообщением и приостанавливает выполнение скрипта, пока пользователь не нажмёт «ОК»", firstAnswer: "alert", secondAnswer: "print", thirdAnswer: "write", fourthAnswer: "readln", trueAnswer : "alert"),
        QuestionAndAnswer(question: "... выводит модальное окно с заголовком title, полем для ввода текста, заполненным строкой по умолчанию default и кнопками OK/CANCEL", firstAnswer: "promt", secondAnswer: "alert", thirdAnswer: "writeline", fourthAnswer: "confirm", trueAnswer : "promt"),
        QuestionAndAnswer(question: "... выводит окно с вопросом question с двумя кнопками: OK и CANCEL", firstAnswer: "confirm", secondAnswer: "confim", thirdAnswer: "alert", fourthAnswer: "promt", trueAnswer : "confirm"),
        QuestionAndAnswer(question: "В JavaScript тип nul является ... ?", firstAnswer: "такого типа нет", secondAnswer: "ссылкой на несуществующий объект", thirdAnswer: "нулевым указателем", fourthAnswer: "значение неизвестно", trueAnswer : "такого типа нет")]
    
    
    
    static var arrayOfJSQuestionsThree = [
        QuestionAndAnswer(question: "Операнд - это .. ?", firstAnswer: "то, к чему применяется оператор", secondAnswer: "это часть оператора", thirdAnswer: "человек с камерой", fourthAnswer: "выражение с операторами" , trueAnswer : "то, к чему применяется оператор"),
        QuestionAndAnswer(question: "Можно ли оператором '+' сложить строки?", firstAnswer: "Можно", secondAnswer: "Нельзя", thirdAnswer: "Только если строки состоят только из цифр", fourthAnswer: "Только если строки из одного символа", trueAnswer : "Можно"),
        QuestionAndAnswer(question: "Какой использовать оператор, если в зависимости от условия нужно выполнить различные действия?", firstAnswer: "if..else", secondAnswer: "||", thirdAnswer: "&&", fourthAnswer: "for", trueAnswer : "if..else"),
        QuestionAndAnswer(question: "Что значит оператор || ?", firstAnswer: "ИЛИ", secondAnswer: "НЕ", thirdAnswer: "И", fourthAnswer: "НИЧЕГО", trueAnswer : "ИЛИ"),
        QuestionAndAnswer(question: "Зачем нужен оператор % ?", firstAnswer: "Узнать остаток", secondAnswer: "Узнать количество процентов", thirdAnswer: "Узнать сколько цифр", fourthAnswer: "Узнать процентное соотношение", trueAnswer : "Узнать остаток"),
        QuestionAndAnswer(question: "Чему будет равна переменная j, если 'j = ++2' ?", firstAnswer: "3", secondAnswer: "1", thirdAnswer: "2", fourthAnswer: "0", trueAnswer : "3"),
        QuestionAndAnswer(question: "Является ли блок else необязательным в JavaScript ?", firstAnswer: "Да", secondAnswer: "Нет", thirdAnswer: "Иногда", fourthAnswer: "Понятия не имею", trueAnswer : "Да"),
        QuestionAndAnswer(question: "Что такое && в JavaScript?", firstAnswer: "Оператор И", secondAnswer: "Оператор ИЛИ", thirdAnswer: "Такого оператора нет", fourthAnswer: "Валюта", trueAnswer : "Оператор И"),
        QuestionAndAnswer(question: "Как обозначается оператор НЕ?", firstAnswer: "!", secondAnswer: "&", thirdAnswer: "?", fourthAnswer: "^", trueAnswer : "!"),
        QuestionAndAnswer(question: "Оператор присваивания обозначается ... ?", firstAnswer: "=", secondAnswer: "==", thirdAnswer: ":=", fourthAnswer: "!=", trueAnswer : "=")]
    
    static var arrayOfJSQuestionsFour = [
        QuestionAndAnswer(question: "Зачем нужен цикл?", firstAnswer: "для организации многократного исполнения набора инструкций", secondAnswer: "для организации однократного исполнения набора инструкций", thirdAnswer: "для вывода собщения на экран", fourthAnswer: "для организации" , trueAnswer : "для организации многократного исполнения набора инструкций"),
        QuestionAndAnswer(question: "Пока условие в цикле while ... – выполняется код из тела цикла", firstAnswer: "верно", secondAnswer: "неверно", thirdAnswer: "любое", fourthAnswer: "все варианты правильны", trueAnswer : "верно"),
        QuestionAndAnswer(question: "Цикл do..while сначала ... ?", firstAnswer: "выполняет тело, а затем проверяет условие", secondAnswer: "проверяет условие, а затем выполняет тело", thirdAnswer: "выполняет тело, а затем выполняет тело", fourthAnswer: "проверяет условие, а затем проверят условие", trueAnswer : "выполняет тело, а затем проверяет условие"),
        QuestionAndAnswer(question: "Как правильно выглядит конструкция цикла for в JavaScript?", firstAnswer: "for(..) {..}", secondAnswer: "for(..) do {..}", thirdAnswer: "for(..) begin {..}", fourthAnswer: "for(..) begin {..} end", trueAnswer : "for(..) {..}"),
        QuestionAndAnswer(question: "Какая директива позволяет выйти из цикла в любой момент?", firstAnswer: "break", secondAnswer: "stop", thirdAnswer: "broak", fourthAnswer: "stoped", trueAnswer : "break"),
        QuestionAndAnswer(question: "Конструкция switch заменяет собой сразу несколько конструкций ... ?", firstAnswer: "if", secondAnswer: "for", thirdAnswer: "while", fourthAnswer: "do..while", trueAnswer : "if"),
        QuestionAndAnswer(question: "С какого ключевого слова начинается объявление функции в JavaScript?", firstAnswer: "function", secondAnswer: "func", thirdAnswer: "functn", fourthAnswer: "f", trueAnswer : "function"),
        QuestionAndAnswer(question: "Какая используется директива для возвращения значение из функции?", firstAnswer: "return", secondAnswer: "retunr", thirdAnswer: "back", fourthAnswer: "comeback", trueAnswer : "return"),
        QuestionAndAnswer(question: "Как вызвать функцию без параметров в JavaScript?", firstAnswer: "написать название функции и пустые круглые скобки", secondAnswer: "написать всю функцию заново", thirdAnswer: "написать название функции", fourthAnswer: "написать слово func и название функции", trueAnswer : "написать название функции и пустые круглые скобки"),
        QuestionAndAnswer(question: "Что делает ключевое слово case в конструкции switch?", firstAnswer: "Сравнивает переменную стоящую после switch и переменную после case", secondAnswer: "Увеличивает переменную стояющую после switch", thirdAnswer: "Выходит из конструкции switch", fourthAnswer: "Ничего не делает", trueAnswer : "Сравнивает переменную стоящую после switch и переменную после case")]
    
    
    static var arrayOfPHPQuestionsOne = [
        QuestionAndAnswer(question: "PHP - ... ?", firstAnswer: "Hypertext Preprocessor", secondAnswer: "Personal Preprocessor", thirdAnswer: "Hyper Preprocessor", fourthAnswer: "Pre Hypertext Processor" , trueAnswer : "Hypertext Preprocessor"),
        QuestionAndAnswer(question: "Кто являлся разработчиком PHP?", firstAnswer: "Расмус Лердорф", secondAnswer: "Брендан Эйх", thirdAnswer: "Гвиндо ван Россум", fourthAnswer: "Никлаус Вирт", trueAnswer : "Расмус Лердорф"),
        QuestionAndAnswer(question: "В каком году появился язык PHP?", firstAnswer: "1995", secondAnswer: "1990", thirdAnswer: "2001", fourthAnswer: "1989", trueAnswer : "1995"),
        QuestionAndAnswer(question: "В какие кавычки можно брать строчные переменные?", firstAnswer: "двойные или одинарные", secondAnswer: "только в двойные", thirdAnswer: "только в одинарные", fourthAnswer: "можно без кавычек", trueAnswer : "двойные или одинарные"),
        QuestionAndAnswer(question: "Какой знак служит раздилителем целой и дробной части в числе?", firstAnswer: "точка", secondAnswer: "запятая", thirdAnswer: "тире", fourthAnswer: "двоеточие", trueAnswer : "точка"),
        QuestionAndAnswer(question: "Какой знак в PHP обязательно должен быть написан перед переменной?", firstAnswer: "знак доллара", secondAnswer: "знак евро", thirdAnswer: "знак рублей", fourthAnswer: "восклицательный знак", trueAnswer : "знак доллара"),
        QuestionAndAnswer(question: "Каким способом можно оставить комментарий?", firstAnswer: "//some text или /* some text */", secondAnswer: "только //some text", thirdAnswer: "только /* some text */", fourthAnswer: "оставлять комментарии нельзя", trueAnswer : "//some text или /* some text */"),
        QuestionAndAnswer(question: "Можно ли вставлять код PHP внутри HTML?", firstAnswer: "Да", secondAnswer: "Нет", thirdAnswer: "В этом нет смысла", fourthAnswer: "Иногда", trueAnswer : "Да"),
        QuestionAndAnswer(question: "Зачем нужен язык PHP?", firstAnswer: "для создания веб-сайтов", secondAnswer: "для создания мобильных приложений", thirdAnswer: "для создания компиляторов", fourthAnswer: "он не нужен вообще", trueAnswer : "для создания веб-сайтов"),
        QuestionAndAnswer(question: "Какое расширение имеют файлы PHP?", firstAnswer: ".php", secondAnswer: ".p", thirdAnswer: ".hp", fourthAnswer: ".phph", trueAnswer : ".php")]
    
    
    static var arrayOfPHPQuestionsTwo = [
        QuestionAndAnswer(question: "Если обратиться к переменной, которой не было задано какое-либо значение, то ее значение будет ... ?", firstAnswer: "null", secondAnswer: "0", thirdAnswer: "nothing", fourthAnswer: "nil" , trueAnswer : "null"),
        QuestionAndAnswer(question: "Какой функцией можно вывести текст на экран в PHP?", firstAnswer: "echo", secondAnswer: "print", thirdAnswer: "alert", fourthAnswer: "write", trueAnswer : "echo"),
        QuestionAndAnswer(question: "Как называется операция уменьшения переменной на единицу?", firstAnswer: "декремент", secondAnswer: "инкремент", thirdAnswer: "дискремент", fourthAnswer: "дискриминант", trueAnswer : "декремент"),
        QuestionAndAnswer(question: "В математике знак '=' означает равенство, а в PHP .. ?", firstAnswer: "присваивание", secondAnswer: "равенство", thirdAnswer: "неравенство", fourthAnswer: "разницу", trueAnswer : "присваивание"),
        QuestionAndAnswer(question: "Как можно короче записать строчку '$a = $a + 3' ?", firstAnswer: "$a += 3", secondAnswer: "$a =+ 3", thirdAnswer: "a += 3", fourthAnswer: "Никак нельзя", trueAnswer : "$a += 3"),
        QuestionAndAnswer(question: "Что будет если сложить строку и число, например 3 + '3' ?", firstAnswer: "В результате будет число 6", secondAnswer: "Будет ошибка", thirdAnswer: "Ничего не будет", fourthAnswer: "В результате будет '33'", trueAnswer : "В результате будет число 6"),
        QuestionAndAnswer(question: "Как создать массив в PHP?", firstAnswer: "$a = []", secondAnswer: "a = []", thirdAnswer: "$a = ()", fourthAnswer: "$a = {}", trueAnswer : "$a = []"),
        QuestionAndAnswer(question: "Какую функцию использовать для просмотра содержимого всего массива?", firstAnswer: "var_dump", secondAnswer: "alert", thirdAnswer: "print", fourthAnswer: "write", trueAnswer : "var_dump"),
        QuestionAndAnswer(question: "Как вывести второй элемент массива $a = ['пн', 'вт', 'ср'] ?", firstAnswer: "echo $a[1]", secondAnswer: "echo $a[2]", thirdAnswer: "echo $a[second]", fourthAnswer: "echo a[1]", trueAnswer : "echo $a[1]"),
        QuestionAndAnswer(question: "Операция инкремента будет ... ?", firstAnswer: "увеличивать переменную на единицу", secondAnswer: "уменьшать переменную на единицу", thirdAnswer: "увеличивать переменную на саму себя", fourthAnswer: "возводить переменную в квадрат", trueAnswer : "увеличивать переменную на единицу")]
    
    
    static var arrayOfPHPQuestionsThree = [
        QuestionAndAnswer(question: "...($arr - имя_массива as $elem – переменная_для_элемента_массива)", firstAnswer: "foreach", secondAnswer: "while", thirdAnswer: "for", fourthAnswer: "else" , trueAnswer : "foreach"),
        QuestionAndAnswer(question: "Как сделать бесконечный цикл используя конструкцию while?", firstAnswer: "передать циклу выражение, которое никогда не станет false", secondAnswer: "передать циклу выражение, которое станет false", thirdAnswer: "передать циклу выражение, которое никогда не станет true", fourthAnswer: "передать циклу выражение, которое станет true", trueAnswer : "передать циклу выражение, которое никогда не станет false"),
        QuestionAndAnswer(question: "Можно ли в цикле foreach в PHP написать что-либо на HTML?", firstAnswer: "Да", secondAnswer: "Нет", thirdAnswer: "Только не в этом цикле", fourthAnswer: "Понятия не имею", trueAnswer : "Да"),
        QuestionAndAnswer(question: "Какому циклу принадлежит даннный синтаксис - ( начальные команды; условие окончания цикла; команды после прохода цикла )? ", firstAnswer: "for", secondAnswer: "foreach", thirdAnswer: "while", fourthAnswer: "нет такого цикла", trueAnswer : "for"),
        QuestionAndAnswer(question: "Существует инструкция ... , при достижении которой цикл начинает новую итерацию", firstAnswer: "continue", secondAnswer: "start", thirdAnswer: "repeat", fourthAnswer: "do", trueAnswer : "continue"),
        QuestionAndAnswer(question: "Можно ли не ставить фигурные скобки в циклах, если тело цикла имеет одну строчку?", firstAnswer: "Да", secondAnswer: "Нет", thirdAnswer: "Не знаю", fourthAnswer: "Нужно поставить другие скобки", trueAnswer : "Да"),
        QuestionAndAnswer(question: "Какие операторы используют для нескольких условий?", firstAnswer: "or,and", secondAnswer: "no,more", thirdAnswer: "else", fourthAnswer: "таких операторов нет", trueAnswer : "or,and"),
        QuestionAndAnswer(question: "Можно ли заменить операторы or и and на && и || соответственно?", firstAnswer: "Да", secondAnswer: "Нет", thirdAnswer: "Можно только or", fourthAnswer: "Можно только and", trueAnswer : "Да"),
        QuestionAndAnswer(question: "Существует ли в PHP конструкция elseif ?", firstAnswer: "Да", secondAnswer: "Нет", thirdAnswer: "Не знаю", fourthAnswer: "Существует не в PHP", trueAnswer : "Да"),
        QuestionAndAnswer(question: "Для чего рекомендуется использовать конструкцию switch-case? ", firstAnswer: "в случае множественного выбора", secondAnswer: "в случае одного выбора", thirdAnswer: "ее не рекомендуется использовать", fourthAnswer: "такой конструкции нет", trueAnswer : "в случае множественного выбора")]
    
    
    static var arrayOfPHPQuestionsFour = [
        QuestionAndAnswer(question: "Какая функция проверяет существует ли переменная (то есть то, что она не равна null)?", firstAnswer: "isset", secondAnswer: "issetting", thirdAnswer: "isnull", fourthAnswer: "nothing" , trueAnswer : "isset"),
        QuestionAndAnswer(question: "Строчка $a === $b будет true если ... ", firstAnswer: "если $a равно $b и имеет тот же тип", secondAnswer: "если $a равно $b и имеет другой тип", thirdAnswer: "если $a равно $b", fourthAnswer: "если $a неравно $b", trueAnswer : "если $a равно $b и имеет тот же тип"),
        QuestionAndAnswer(question: "С помощью какого знака можно сложить две строки в PHP?", firstAnswer: "точка(.)", secondAnswer: "сложения(+)", thirdAnswer: "равно(=)", fourthAnswer: "двоеточие(:)", trueAnswer : "точка(.)"),
        QuestionAndAnswer(question: "Является ли строчка '$a = ['Коля'=>200];' правильной?", firstAnswer: "Да", secondAnswer: "Нет", thirdAnswer: "Это не относиться к PHP", fourthAnswer: "Я не знаю", trueAnswer : "Да"),
        QuestionAndAnswer(question: "Можно ли в элемент массива добавить другой массив?", firstAnswer: "Да", secondAnswer: "Нет", thirdAnswer: "Можно добавить все кроме массива", fourthAnswer: "Я не знаю", trueAnswer : "Да"),
        QuestionAndAnswer(question: "Что делает функция floor в PHP?", firstAnswer: "округляет дробь в меньшую сторону", secondAnswer: "округляет дробь в большую сторону", thirdAnswer: "считает количество этажей", fourthAnswer: "оставляет дробь такой же", trueAnswer : "округляет дробь в меньшую сторону"),
        QuestionAndAnswer(question: "Какая функция генерирует случайное целое число в заданном промежутке?", firstAnswer: "mt_rand", secondAnswer: "random", thirdAnswer: "get_rand", fourthAnswer: "rand", trueAnswer : "mt_rand"),
        QuestionAndAnswer(question: "Как можно вставить код PHP в HTML? ", firstAnswer: "<?php ... ?>", secondAnswer: "<php ... >", thirdAnswer: "<php ... ?>", fourthAnswer: "<?php ... >", trueAnswer : "<?php ... ?>"),
        QuestionAndAnswer(question: "Какой функцией можно получить текущее время?", firstAnswer: "time", secondAnswer: "timenow", thirdAnswer: "realtime", fourthAnswer: "times", trueAnswer : "time"),
        QuestionAndAnswer(question: "Может ли PHP работать с базами данных?", firstAnswer: "Да", secondAnswer: "Нет", thirdAnswer: "Не всегда", fourthAnswer: "Не знаю", trueAnswer : "Да")]
}
