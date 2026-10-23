//
//  Data.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Contains some binary data
public struct TdData: Codable, Equatable, Hashable {

    /// Data
    public let data: Data


    public init(data: Data) {
        self.data = data
    }
}

