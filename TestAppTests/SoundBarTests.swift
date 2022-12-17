//
//  SoundBarTests.swift
//  SoundBarTests
//
//  Created by Pavel Krigin on 3.12.22..
//

import XCTest
@testable import TestApp // таким образом убираем ошибку

final class SoundBarTests: XCTestCase {
    
    var sut: SoundBar!  //тут объявляем экз класса, !неявное извлечение опционала
    var items: [String] = []

    override func setUp() {
        super.setUp() //вызываем метод setUp у суперкласса//тут инициализируем экземпляр класса
        sut = SoundBar() // инициализация
    }
  
    override func tearDown() {
        sut = nil // выгрузка данных из памяти
        //сначала выгружаем данные из памяти, а потом уже вызываем метод tearDown() у суперкласса
        super.tearDown()
    }
    

    func testSetVolumeShouldBeReturn0WhenLowestVolume() {
        //givven (что дано)
        sut.setVolume(to: -1)
        
        //when (что произошло)
        let volume = sut.volume
        
        //then (что должно получиться)
        XCTAssert(volume == 0, "Lowest volume should be equal 0")
    }
    
    func testSetVolumeShouldBeReturn100WhenHighestVolume() {
        sut.setVolume(to: 101)
        XCTAssert(sut.volume == 100, "Highest volume should be equal 100")
    }
    
    func testPerformanceExample()  {
        measure {
          getMoreItems ()
        }
    }
    
    private func getItems() {
        let numbers = 1...1_000_000 //диапазон чисел
        
        for number in numbers {
            let item = "Item: \(number)"
            items.append(item)
        }
    }
    
    private func getMoreItems() { //функция высшего порядка
        items = (1...1_000_000).map { "Item: \($0)" } //блок замыкания этой функции
    }
}
