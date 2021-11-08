//
//  InputPersonalDocument.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-911c5fc3
//  https://github.com/tdlib/td/tree/911c5fc3
//

import Foundation


/// A personal document to be saved to Telegram Passport
public struct InputPersonalDocument: Codable {

    /// List of files containing the pages of the document
    public let files: [InputFile]

    /// List of files containing a certified English translation of the document
    public let translation: [InputFile]


    public init(
        files: [InputFile],
        translation: [InputFile]
    ) {
        self.files = files
        self.translation = translation
    }
}

