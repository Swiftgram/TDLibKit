//
//  DatedFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// File with the date it was uploaded
public struct DatedFile: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the file was uploaded
    public let date: Int

    /// The file
    public let file: File


    public init(
        date: Int,
        file: File
    ) {
        self.date = date
        self.file = file
    }
}

