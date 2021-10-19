//
//  FilePart.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
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

