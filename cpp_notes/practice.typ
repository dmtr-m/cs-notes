#import "../templates/notes_template.typ": *
#let course = "Язык программирования C++"
#let title = "Конспект семинара"
#show: footer_header.with(
  title, 
  course
)
#show: title_page.with(
  title, 
  course
)
#show: page_settings

= Ссылки
Ссылка -- фактически новое обозначение переменной.\
Например нам надо передать массив в функцию: такой метод займет много памяти:
```cpp
void foo(std::string str) {
  std::cout << str << str::endl;
}
```
Тогда как раз можно использовать ссылку:
```cpp
void foo(std::string& str) {
  std::cout << str << str::endl;
}
```
Тут он ссылается как раз на тот же объект в памяти. Но и тут есть подводные камни: мы можем случайно сломать содержимое, а скорее всего, нам это не надо. В таком случае, это будет лучше:
```cpp
void foo(const std::string& str) {
  std::cout << str << str::endl;
}
```
= Указатели
Адрес в памяти устройства.\
```cpp
int64_t A = 10;
int64_t* pA = &A;
```
