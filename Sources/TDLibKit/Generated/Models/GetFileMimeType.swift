//
//  GetFileMimeType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. Can be called synchronously
public struct GetFileMimeType: Codable {

    /// The name of the file or path to the file
    public let fileName: String


    public init(fileName: String) {
        self.fileName = fileName
    }
}

