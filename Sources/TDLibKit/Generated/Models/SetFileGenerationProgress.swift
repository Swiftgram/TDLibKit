//
//  SetFileGenerationProgress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-3edf14b6
//  https://github.com/tdlib/td/tree/3edf14b6
//

import Foundation


/// Informs TDLib on a file generation progress
public struct SetFileGenerationProgress: Codable, Equatable {

    /// Expected size of the generated file, in bytes; 0 if unknown
    public let expectedSize: Int?

    /// The identifier of the generation process
    public let generationId: TdInt64?

    /// The number of bytes already generated
    public let localPrefixSize: Int?


    public init(
        expectedSize: Int?,
        generationId: TdInt64?,
        localPrefixSize: Int?
    ) {
        self.expectedSize = expectedSize
        self.generationId = generationId
        self.localPrefixSize = localPrefixSize
    }
}

