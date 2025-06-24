//
//  GetFileExtension.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-64852808
//  https://github.com/tdlib/td/tree/64852808
//

import Foundation


/// Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. Can be called synchronously
public struct GetFileExtension: Codable, Equatable, Hashable {

    /// The MIME type of the file
    public let mimeType: String?


    public init(mimeType: String?) {
        self.mimeType = mimeType
    }
}

