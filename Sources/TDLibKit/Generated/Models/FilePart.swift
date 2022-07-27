//
//  FilePart.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-6283dce8
//  https://github.com/tdlib/td/tree/6283dce8
//

import Foundation


/// Contains a part of a file
public struct FilePart: Codable, Equatable {

    /// File bytes
    public let data: Data


    public init(data: Data) {
        self.data = data
    }
}

