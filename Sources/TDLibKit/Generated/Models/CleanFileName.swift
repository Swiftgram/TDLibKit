//
//  CleanFileName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Removes potentially dangerous characters from the name of a file. Returns an empty string on failure. Can be called synchronously
public struct CleanFileName: Codable, Equatable, Hashable {

    /// File name or path to the file
    public let fileName: String?


    public init(fileName: String?) {
        self.fileName = fileName
    }
}

