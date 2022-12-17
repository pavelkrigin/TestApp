//
//  SoundBar.swift
//  TestApp
//
//  Created by Pavel Krigin on 3.12.22..
//

import Foundation

final class SoundBar {
    private(set) var volume = 0
    
    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
}
