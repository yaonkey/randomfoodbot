CREATE TABLE IF NOT EXISTS `Foods`(`id` PRIMARY KEY, `name` TEXT UNIQUE, `image_src` TEXT UNIQUE, `description` TEXT);

INSERT INTO `Foods` (`name`,`image_src`,`description`) VALUES
	 ('Лазанья (классический рецепт)','1.jpg','Продукты (на 6 порций)
Листы для лазаньи - 250 г
Фарш мясной (говяжий) - 450 г
Лук репчатый - 1 шт.
Морковь - 1 шт.
Томатный соус - 60 г
Томатная паста - 60 г
Масло сливочное - 60 + 30 г
Мука - 60 г
Молоко - 800 мл
Сыр пармезан - 120 г
Соль - 2 ч. л.
Перец молотый - 1 ч. л.'),
	 ('Паста карбонара с куриным филе','2.jpg','Продукты
Спагетти - 400 г
Куриное филе - 400 г
Бекон - 250 г
Желтки - 3 шт.
Сыр твердый - 50 г
Сливки - 200 мл
Масло растительное (для обжарки)
Соль - по вкусу
Перец черный молотый - по вкусу
Чеснок - 2 зубчика'),
	 ('Паста карбонара с беконом и сливками','3.jpg','Продукты (на 2 порции)
Паста сухая - 100 г
Бекон или панчетта - 80-100 г
Сыр пармезан - 50 г
Сливки 10-20% - 130 г
Перец черный
Яйцо - 2 шт.
Чеснок - по вкусу'),
	 ('Макароны по-флотски','4.jpg','Продукты (на 3 порции)
Макароны (перья с бороздками, спиральки и т.п.) - 225 г
Говядина - 275 г
Лук репчатый - 175 г
Масло сливочное - 50 г
Масло растительное - 3 ст. ложки
Соль - по вкусу
Перец чёрный молотый - по вкусу
Вода - 1,25 л'),
	 ('Спагетти Болоньезе','5.jpg','Продукты (на 4 порции)
Масло сливочное — 60 г
Лук репчатый, мелко нарезанный — 1 шт.
Чеснок раздавленный — 2 зубка
Стебель сельдерея, мелко нарезанный — 1 шт.
Морковь, нарезанная кубиками — 1 шт.
Панчетта (жирная свиная грудинка с пряностями) или копченая ветчина, нарезанная кубиками — 50 г
Говядина молотая — 500 г
Орегано нарезанная — 1 ст. л.
Вино сухое, красное — 1 стакан
Бульон мясной — 2 стакана
Томатная паста — 2 ст. л.
Помидоры консервированные (в томате), кусочками — 800 г
Соль, перец
Спагетти — 400 г
Сыр (желательно, Пармезан) тертый — 3 ст. л.'),
	 ('Макароны с тушенкой на сковороде','6.jpg','Макароны
Тушенка (одна банка)
Лук
Морковь
Соль
по вкусу'),
	 ('Запеканка "Тимбаль" из макарон, с мясным фаршем и грибами','7.jpg','Продукты (на 5 порций)
Букатини (или спагетти) – 200 г
Фарш свино-говяжий – 400 г
Фарш куриный – 300 г
Шампиньоны – 150-200 г
Лук репчатый – 130 г
Яйцо – 1 шт.
Томатный соус – 200 г
Масло сливочное – 30 г
Масло растительное – 20 мл
Зелень свежая (укроп и петрушка) – 10 г
Соль – по вкусу
Перец чёрный молотый – по вкусу'),
	 ('Японское карри','8.jpg','куриная грудка – 400 г;
картофель – 2 шт.
морковь – 1 шт.;
лук репчатый – 1 шт.;
чеснок – 2 зубчика;
порошок карри – 40 г;
мука – 2 ст.л.;
масло сливочное – 50 г;
вода – 1,5 л;
соль, перец.
рис – 370 г'),
	 ('Жареный рис с соевым соусом и яйцами','9.jpg','Продукты (на 3 порции)
Рис - 150 г
Яйца - 2 шт.
Соус соевый - 4 ст. ложки
Лук репчатый - 1 шт.
Чеснок - 2 зубчика
Перец чили - 0,5 шт. (или по вкусу)
Перец чёрный молотый - по вкусу
Масло растительное - 1 ст. ложка
Лимон (сок) - 1 ломтик
Лук зелёный (для подачи) - по вкусу'),
	 ('Плов, который всегда получается','10.jpg','Продукты
Мясо (курица, баранина и т.д.) - 1 кг
Рис (длиннозерный пропаренный или другой рис) - 1 кг
Морковь - 1 кг
Лук репчатый - 4 шт.
Чеснок - 2 головки
Перец острый свежий - 2 стручка
Зира или другие пряности - по вкусу
Соль - по вкусу
Масло растительное - 250-300 мл');
INSERT INTO Foods (name,image_src,description) VALUES
	 ('Картофельная Запеканка "Как в саду"','11.jpg','Продукты
Картофель сырой, очищенный - примерно 800 г
Фарш мясной - 600 г
Лук репчатый (небольшой) - 2-3 шт.
Помидоры - 2 шт.
Перец болгарский - 1 шт.
Сыр твердый - 100 г
Яйцо куриное - 1 шт.
Молоко (по желанию) - для картофельного пюре
Масло сливочное - 10 г
Масло растительное - для обжарки
Соль - по вкусу
Перец - по вкусу
Зелень - по вкусу
Приправа для фарша - по вкусу'),
	 ('Жульен с курицей и грибами','12.jpg','Продукты (на 4 порции)
Филе куриное - 400 г
Грибы шампиньоны - 300 г
Лук репчатый - 100 г
Сливки 20-30% - 200 мл
Сыр твердый - 150 г
Масло растительное - 2 ст. ложки
Соль - по вкусу
Перец черный молотый - по вкусу
Зелень (базилик или салатные листья) - для украшения'),
	 ('Пицца на слоеном тесте','13.jpg','Продукты (на 2 порции)
Слоенное тесто
Помидоры
Колбаса
Сыр (можно несколько видов)
Остальное по вкусу
'),
	 ('Квашеная капуста, тушенная с сосисками','14.jpg','Продукты (на 3 порции)
Капуста квашеная - 500 г
Сосиски - 300 г (4 шт.)
Лук репчатый - 70 г (1 некрупный)
Томатная паста - 2 ст. ложки
Соль - 1/5 ч. ложки
Перец чёрный молотый - 1 щепотка
Сахар - 1 ч. ложка
Масло растительное - 30 мл (2 ст. ложки)
*
Для подачи:
Укроп свежий - 2 веточки
Лук зелёный - 2 шт.'),
	 ('Запеканка из цветной капусты с куриным фаршем и помидорами','15.jpg','Продукты (на 4 порции)
Цветная капуста - 400 г (уже разобранная на соцветия, или небольшой кочан весом около 490 г)
Фарш куриный - 300 г
Помидоры - 180 г
Сыр твёрдый - 140 г
Сметана 20 % - 80 г
Яйца - 2 шт.
Масло подсолнечное - 40 мл
Паприка молотая - 0,5 ч. ложки
Приправа карри - 0,5 ч. ложки
Соль - по вкусу
Перец чёрный молотый - по вкусу'),
	 ('Овощное рагу','16.jpg','Продукты (на 2 порции)
Кабачки - 400 г
Картофель 3 шт
Морковь 1 шт
Перец болгарский - 250 г
Помидоры - 150 г
Лук репчатый - 130 г
Соль - 1 ч. ложка (или по вкусу)
Паприка копчёная молотая - 0,5 ч. ложки
Перец чёрный молотый - по вкусу
Петрушка свежая - 6 г'),
	 ('Болгарский перец, фаршированный мясом и рисом','17.jpg','Продукты
Перец болгарский некрупный - 17-19 шт.
Рис - 1 стакан
Фарш свино-говяжий - 1 кг
Морковь - 1-2 шт.
Лук репчатый - 2 шт.
Соль - 2 ч. ложки
Специи - 2 ч. ложки
Томат-паста - 1 ст. ложка
Сметана - 2 ст. ложки
Масло растительное - для жарки
Вода - 2 стакана'),
	 ('Макароны с сырным соусом','18.jpg','Продукты
Макароны - 400 г
Молоко - 1 л
Масло сливочное - 60 г
Мука - 50 г
Чеснок - 2-3 зубка
Сыр чеддер (или другой) - 100 г
Соль - 1 ч. ложка
Перец чёрный молотый или перец белый молотый - 0,5 ч. ложки
Орех мускатный - 1 щепотка'),
	 ('Ленивые голубцы в сковороде','19.jpg','Продукты
Капуста белокочанная – 250 г
Фарш мясной (домашний) – 300 г
Рис – 100 г
Морковь – 1 шт.
Лук репчатый – 1 шт.
Томатная паста – 1 ст. ложка
Вода – 200 мл
Масло растительное
Перец свежемолотый
Соль
*
Для подачи:
Сметана
Укроп свежий'),
	 ('Бифстроганов (из говядины)','20.jpg','Продукты
Говядина (у меня шейная часть) – 500 г
Лук репчатый – 1 шт.
Чеснок – 1 зубчик
Сметана 20% - 100 г
Кетчуп – 2-3 ст. ложки
(можно заменить томатной пастой – 0,5 ст. ложки)
Вода – 100 мл (регулируйте густоту подливки по своему вкусу)
Мука – 1 ст. ложка
Масло сливочное – 10-20 г
Масло растительное – для жарки
Лавровый лист – 1 шт.
Соль – 0,5 ч. ложки (по вкусу)
Перец черный молотый – по вкусу');
INSERT INTO Foods (name,image_src,description) VALUES
	 ('Томатно-мясной соус из мяса','21.jpg','Говядина
Подсолнечное масло
Соль
Вода
Томатная паста
Душистый перец
Лук репчатый
Морковь'),
	 ('Свинина в кисло-сладком соусе','22.jpg','Продукты (на 4 порции)
Свинина - 450 г
Перец сладкий зеленый - 1 шт.
Перец красный сладкий - 1 шт.
Чеснок - 2 зубчика
Ананас консервированный - 200 г
Крахмал кукурузный - 50 г + 2 ч.л.
Мука пшеничная - 100 г
Разрыхлитель - 1 ч.л.
Масло растительное - 300 мл + 2 ст.л. (для обжаривания овощей)
Перец чили хлопья - 1/2 ч.л.
Перец черный молотый - 1/2 ч.л.
Сахар коричневый - 100 г
Уксус рисовый - 70 мл
Яйцо - 1 шт.
Кетчуп - 4 ст.л.
Соль - 2 ч.л.
Кунжут - для подачи'),
	 ('Гречка с овощами и тушенкой в духовке','23.jpg','Состав:

гречка – 0,4 кг;
тушенка – 0,5 л;
рафинированное растительное или сливочное масло – сколько уйдет;
морковь – 100 г;
репчатый лук – 100 г;
сладкий перец – 0,2 кг;
томатная паста – 60 мл;
вода – 0,8 л;
соль, приправы – по вкусу.'),
	 ('Грибной крем-суп','24.jpg','Продукты
    Грибы - 300 г
    Лук - 1 шт
    Мокровь - 1 шт
    Картошка - 3 шт
    Сырок "Дружба" - 2 шт
    Сливки - 500 мл'),
	 ('Жаркое в горшочках','25.jpg','Продукты:
    Мясо (любое) - 400 гр
    Картошка - 3 шт
    Лук - 1 шт
    Морковь - 1 шт
    Чеснок - 2 зубчика
    Приправы по вкусу'),
	 ('Овощной сырный суп','26.jpg','Продукты:
    Лук - 1 шт
    Мокровь - 1 шт
    Картофель - 2-3 шт
    Замороженая смесь "4 сезона" с овощами по желанию
    Сырок "Дружба" - 2 шт');
