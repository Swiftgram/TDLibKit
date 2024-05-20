//
//  PersonalDocument.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// A personal document, containing some information about a user
public struct PersonalDocument: Codable, Equatable, Hashable {

    /// List of files containing the pages of the document
    public let files: [DatedFile]

    /// List of files containing a certified English translation of the document
    public let translation: [DatedFile]


    public init(
        files: [DatedFile],
        translation: [DatedFile]
    ) {
        self.files = files
        self.translation = translation
    }
}

