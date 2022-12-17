//
//  Person.swift
//  TestApp
//
//  Created by Pavel Krigin on 16.12.22..
//

import Foundation

class Person {
    let name: String
    var surname: String? //опционал
    let phone: String
    var imageData: Data?
        
    init(name: String, surname: String? = nil, phone: String, imageData: Data? = nil) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.imageData = imageData
    }
}
