#import "../templates/notes_template.typ": *
#let course = "Язык программирования C++"
#let title = "Конспект лекций"
#show: footer_header.with(
  title,
  course
)
#show: title_page.with(
  title,
  course
)
#show: page_settings

#import "lectures/lecture_01.typ": lecture_1
#show: lecture_1

#import "lectures/lecture_02.typ": lecture_2
#show: lecture_2

#import "lectures/lecture_03.typ": lecture_3
#show: lecture_3

#import "lectures/lecture_04.typ": lecture_4
#show: lecture_4

#import "lectures/lecture_05.typ": lecture_5
#show: lecture_5

#import "lectures/lecture_06.typ": lecture_6
#show: lecture_6

#import "lectures/lecture_07.typ": lecture_7
#show: lecture_7

#import "lectures/lecture_08.typ": lecture_8
#show: lecture_8

#import "lectures/lecture_09.typ": lecture_9
#show: lecture_9

#import "lectures/lecture_10.typ": lecture_10
#show: lecture_10
