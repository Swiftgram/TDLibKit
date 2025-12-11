//
//  CleanFileName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
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

