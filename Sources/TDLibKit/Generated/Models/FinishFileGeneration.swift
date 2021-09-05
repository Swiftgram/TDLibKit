//
//  FinishFileGeneration.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
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

