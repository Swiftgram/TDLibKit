//
//  Data.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-062f2605
//  https://github.com/tdlib/td/tree/062f2605
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

