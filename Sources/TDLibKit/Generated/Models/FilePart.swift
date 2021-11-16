//
//  FilePart.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Contains a part of a file
public struct FilePart: Codable {

    /// File bytes
    public let data: Data


    public init(data: Data) {
        self.data = data
    }
}

