//
//  FinishFileGeneration.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Finishes the file generation
public struct FinishFileGeneration: Codable {

    /// If set, means that file generation has failed and should be terminated
    public let error: Error

    /// The identifier of the generation process
    public let generationId: TdInt64


    public init(
        error: Error,
        generationId: TdInt64
    ) {
        self.error = error
        self.generationId = generationId
    }
}

