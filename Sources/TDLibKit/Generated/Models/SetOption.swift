//
//  SetOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sets the value of an option. (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set. Can be called before authorization
public struct SetOption: Codable, Equatable, Hashable {

    /// The name of the option
    public let name: String?

    /// The new value of the option; pass null to reset option value to a default value
    public let value: OptionValue?


    public init(
        name: String?,
        value: OptionValue?
    ) {
        self.name = name
        self.value = value
    }
}

