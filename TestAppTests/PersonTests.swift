//
//  PersonTests.swift
//  TestAppTests
//
//  Created by Pavel Krigin on 16.12.22..
//

import XCTest
@testable import TestApp

final class PersonTests: XCTestCase {
    var person: Person! //! неявное извлечение, это опциональная пер-я, будем инициализировать при инициализации класса ниже

    override func setUp() {
        super.setUp()
        person = Person( // иницивлизация этой переменной
            name: "Foo",
            surname: "Bar",
            phone: "Baz")
    }

    override func tearDown() {
        person = nil //выгрузка из памяти экз класса
        super.tearDown()
    }

    func testInitInstancePersonWithNameAndPhone() {
//        let person = Person(name: "Foo", surname: "Bar", phone: "Baz")
        XCTAssertEqual(person.name, "Foo")
        XCTAssertEqual(person.phone, "Baz ")
    }
    
    func testInitInstancePersonWithFullNameAndPhone() {
//        let person = Person(name: "Foo", surname: "Bar", phone: "Baz")
        XCTAssertEqual(person.surname, "Bar")

    }
    
    //возможность присваивания изображения
    func testInitInstancePersonWithImage() {
        let image = UIImage(systemName: "person.circle")
        let imageData = image?.pngData()
        let person = Person(
            name: "Foo",
            surname: "Bar",
            phone: "Baz",
            imageData: imageData
        )
        XCTAssertNotNil(person.imageData)
    }
}
