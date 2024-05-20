//
//  WriteGeneratedFilePart.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Writes a part of a generated file. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct write to the destination file
public struct WriteGeneratedFilePart: Codable, Equatable, Hashable {

    /// The data to write
    public let data: Data?

    /// The identifier of the generation process
    public let generationId: TdInt64?

    /// The offset from which to write the data to the file
    public let offset: Int64?


    public init(
        data: Data?,
        generationId: TdInt64?,
        offset: Int64?
    ) {
        self.data = data
        self.generationId = generationId
        self.offset = offset
    }
}

