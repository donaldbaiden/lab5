# Lab5 — Консольные приложения на Objective-C и Swift

## Description

Лабораторная работа №5 по предмету «Технологии программирования для мобильных приложений».
Разработка консольных приложений на языках Objective-C и Swift.

**Студент:** Корзун Михаил Олегович
**Группа:** 12
**Вариант:** 8

## Branches

| Ветка | Содержимое |
|-------|-----------|
| `main` | README, описание веток и заданий |
| `feature-task2` | task2 — ObjC: нечётные числа Фибоначчи ≤ A |
| `feature-task3` | task3 — ObjC: подсчёт строк длиной > 5 символов |
| `feature-task4` | task4 — Swift: анализ цифр трёхзначного числа |
| `feature-task6` | task6 — Swift SPM: словари Avto/Vendor с меню |
| `feature-task7` | task7 — Swift MVC: DataManipulator, сортировка по гласным |

## Tasks

| # | Задание | Вариант 8 |
|---|---------|-----------|
| 1 | Знакомство со средой Xcode | Запуск iOS Simulator |
| 2 | Консольное приложение на Objective-C | Нечётные числа Фибоначчи, не превышающие A |
| 3 | Работа с массивами на Objective-C | Подсчёт строк длиной > 5 символов |
| 4 | Swift: REPL, swiftc, Playground | Анализ цифр трёхзначного числа |
| 5 | Работа с git в Xcode | Ветки, commit, merge |
| 6 | Swift SPM: словари | Avto(model, cost), Vendor(name, country) |
| 7 | Swift MVC: массивы строк | DataManipulator, сортировка по числу гласных |

## Installation

### Objective-C (task2, task3)
Открыть Xcode → File → New → Project → macOS → Command Line Tool → Language: Objective-C.
Добавить файлы `.h` и `.m` в проект, собрать и запустить.

### Swift task4
```bash
cd task4
swiftc main.swift -o task4_app
./task4_app
```

### Swift Package Manager (task6, task7)
```bash
cd task6
swift build
swift run

cd ../task7
swift build
swift run
```

## Usage

- **task2**: вводится число A, программа выводит все нечётные числа Фибоначчи ≤ A
- **task3**: выводится результат подсчёта строк длиной > 5 + демонстрация операций с массивами
- **task4**: вводится трёхзначное число, программа анализирует сумму и произведение цифр
- **task6**: интерактивное меню из 22 пунктов для управления словарями Avto и Vendor
- **task7**: интерактивное меню из 10 пунктов для управления массивом строк, включая сортировку по гласным

## Authors

- **Корзун Михаил Олегович** — группа 12, вариант 8

## Links and Additional Notes

- [Отчёт](docs/Группа12_ПИ_лаб5.md)
- Скриншоты: [docs/screenshots/](docs/screenshots/)
- Предмет: Технологии программирования для мобильных приложений (ТПМП)
