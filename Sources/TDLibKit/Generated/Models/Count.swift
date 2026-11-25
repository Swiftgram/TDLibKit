//
//  Count.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains a counter
public struct Count: Codable, Equatable, Hashable {

    /// Count
    public let count: Int


    public init(count: Int) {
        self.count = count
    }
}

