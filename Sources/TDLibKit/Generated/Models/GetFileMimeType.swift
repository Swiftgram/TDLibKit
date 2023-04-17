//
//  GetFileMimeType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. Can be called synchronously
public struct GetFileMimeType: Codable, Equatable {

    /// The name of the file or path to the file
    public let fileName: String?


    public init(fileName: String?) {
        self.fileName = fileName
    }
}

