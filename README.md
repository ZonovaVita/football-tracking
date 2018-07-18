# football-tracking
* Проект летней школы Intersystems *

![](https://downloader.disk.yandex.ru/preview/31ca050230d4db9d7ac1e5da22c80b826348048fe43d9ebb373ef4068e09c1fd/5b4effb1/2OqMncT3qkX2sQm3iloPTs5AALoFmOO5UEkdLLWba6Cc9w6u_gtx5IHqvk1qqXYYydCTLg5QO89sr1GfLOecmQ%3D%3D?uid=0&filename=field.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&tknv=v2&size=200x200)

### Постановка задачи:
В ходе проведения чемпионата мира по футболу осуществляется запись статистики
траекторий передачи мяча между футболистами. 
Статистика включает в себя:
- информацию о футболисте который сделал передачу
- времени,
- скорости мяча, 
- набор координат траектории мяча.

Траектория мяча - набор ГЕО координат векторов. В среднем, за матч осуществляется не менее 10000 передач.

### Основные задачи:
1. Спроектировать и реализовать БД хранения траекторий мяча
2. Реализовать web-сервис, который бы отдавал список траекторий, которые проходят не дальше 5 м через заданную точку, например центр поля. Точка подается на вход метода.
3. Реализовать генератор данных.

### Дополнительные задачи:
Разработать страницу для визуализации перемещения мяча по траекториям с временной разметкой
