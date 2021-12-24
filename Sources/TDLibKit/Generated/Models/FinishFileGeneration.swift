//
//  FinishFileGeneration.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Finishes the file generation
public struct FinishFileGeneration: Codable, Equatable {

    /// If passed, the file generation has failed and must be terminated; pass null if the file generation succeeded
    public let error: Error?

    /// The identifier of the generation process
    public let generationId: TdInt64?


    public init(
        error: Error?,
        generationId: TdInt64?
    ) {
        self.error = error
        self.generationId = generationId
    }
}

