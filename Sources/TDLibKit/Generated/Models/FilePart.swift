//
//  FilePart.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-b4c07559
//  https://github.com/tdlib/td/tree/b4c07559
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

