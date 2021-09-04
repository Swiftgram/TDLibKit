//
//  SetFileGenerationProgress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Informs TDLib on a file generation progress
public struct SetFileGenerationProgress: Codable {

    /// Expected size of the generated file, in bytes; 0 if unknown
    public let expectedSize: Int

    /// The identifier of the generation process
    public let generationId: TdInt64

    /// The number of bytes already generated
    public let localPrefixSize: Int


    public init(
        expectedSize: Int,
        generationId: TdInt64,
        localPrefixSize: Int
    ) {
        self.expectedSize = expectedSize
        self.generationId = generationId
        self.localPrefixSize = localPrefixSize
    }
}
