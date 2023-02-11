//
//  GetOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-6ba394fc
//  https://github.com/tdlib/td/tree/6ba394fc
//

import Foundation


/// Returns the value of an option by its name. (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before authorization. Can be called synchronously for options "version" and "commit_hash"
public struct GetOption: Codable, Equatable {

    /// The name of the option
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

