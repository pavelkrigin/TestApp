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
        
    init(name: String, surname: String? = nil, phone: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
    }
}
