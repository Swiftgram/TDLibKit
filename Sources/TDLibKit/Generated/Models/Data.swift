//
//  Data.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
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

