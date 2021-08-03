//
//  WriteGeneratedFilePart.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Writes a part of a generated file. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct write to the destination file
public struct WriteGeneratedFilePart: Codable {

    /// The data to write
    public let data: Data

    /// The identifier of the generation process
    public let generationId: TdInt64

    /// The offset from which to write the data to the file
    public let offset: Int


    public init(
        data: Data,
        generationId: TdInt64,
        offset: Int
    ) {
        self.data = data
        self.generationId = generationId
        self.offset = offset
    }
}

