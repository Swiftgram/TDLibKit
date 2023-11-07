//
//  FilePart.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-21d5184e
//  https://github.com/tdlib/td/tree/21d5184e
//

import Foundation


/// Contains a part of a file
public struct FilePart: Codable, Equatable, Hashable {

    /// File bytes
    public let data: Data


    public init(data: Data) {
        self.data = data
    }
}

