//
//  AddLogMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Adds a message to TDLib internal log. Can be called synchronously
public struct AddLogMessage: Codable, Equatable, Hashable {

    /// Text of a message to log
    public let text: String?

    /// The minimum verbosity level needed for the message to be logged; 0-1023
    public let verbosityLevel: Int?


    public init(
        text: String?,
        verbosityLevel: Int?
    ) {
        self.text = text
        self.verbosityLevel = verbosityLevel
    }
}

