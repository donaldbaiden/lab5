// swift-tools-version:5.7
//
//  Package.swift
//  task6
//
//  Корзун Михаил Олегович, группа 12, вариант 8
//  Описание: Файл пакета Swift Package Manager для task6
//

import PackageDescription

let package = Package(
    name: "task6",
    targets: [
        .executableTarget(
            name: "task6",
            path: "Sources/task6"
        )
    ]
)
