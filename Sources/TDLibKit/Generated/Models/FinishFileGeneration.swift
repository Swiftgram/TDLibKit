//
//  FinishFileGeneration.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Finishes the file generation
public struct FinishFileGeneration: Codable, Equatable, Hashable {

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

