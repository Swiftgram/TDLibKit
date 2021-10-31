//
//  CleanFileName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. Can be called synchronously
public struct CleanFileName: Codable {

    /// File name or path to the file
    public let fileName: String?


    public init(fileName: String?) {
        self.fileName = fileName
    }
}

