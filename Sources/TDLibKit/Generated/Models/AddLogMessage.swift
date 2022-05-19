//
//  AddLogMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-18cd0dd9
//  https://github.com/tdlib/td/tree/18cd0dd9
//

import Foundation


/// Adds a message to TDLib internal log. Can be called synchronously
public struct AddLogMessage: Codable, Equatable {

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

