# devtools — удобство разработки пакетов;
# roxygen2 — документирование своих функций;
# testthat — тестирование своих функций;
# covr — информация о покрытии тестированием;
# lintr — проверка стиля кода.

install.packages("devtools")
install.packages("roxygen2")
install.packages("testthat")
install.packages("covr")
install.packages("lintr")

# Создание библиотеки
devtools::create("C:/my files/code examples/R/rsut")
setwd("C:/my files/code examples/R/rsut")
devtools::use_testthat()

# Подключить пакет и проверить работу функции руками
devtools::load_all()

# Запустить кучу автоматических тестов
devtools::check()

# Запустить самостоятельно написанные тесты
devtools::test()

# Проверить стиль кода
lintr::lint_package()

# Оценить покрытие пакета тестами:
covr::package_coverage()

# Cоздание виньетки
devtools::use_vignette("rsut_intro")

# После редактирования .Rmd-файла виньетки его можно скомпилировать в готовую документацию
devtools::build_vignettes()

# Поставить пакет из локальной папки
devtools::install()

# Использовать
library("rsut")
rsut:tryinstall("shiny")
