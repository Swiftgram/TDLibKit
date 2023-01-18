//
//  GetFileExtension.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-d912fd14
//  https://github.com/tdlib/td/tree/d912fd14
//

import Foundation


/// Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. Can be called synchronously
public struct GetFileExtension: Codable, Equatable {

    /// The MIME type of the file
    public let mimeType: String?


    public init(mimeType: String?) {
        self.mimeType = mimeType
    }
}

