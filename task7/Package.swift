// swift-tools-version:5.7
//
//  Package.swift
//  task7
//
//  Корзун Михаил Олегович, группа 12, вариант 8
//  Описание: Файл пакета Swift Package Manager для task7 (архитектура MVC)
//

import PackageDescription

let package = Package(
    name: "task7",
    targets: [
        .executableTarget(
            name: "task7",
            path: "Sources/task7"
        )
    ]
)
