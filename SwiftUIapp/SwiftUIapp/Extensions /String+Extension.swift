//
//  String+Extension.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 29.02.2024.
//

import Foundation

extension String {
    public subscript(_ index: Int) -> Character {
        self[self.index(self.startIndex, offsetBy: index)]
    }
}
