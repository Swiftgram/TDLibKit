//
//  WidgetPublicData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Contains public data of a widget
public struct WidgetPublicData: Codable, Equatable, Hashable {

    /// Public data of the widget
    public let data: String

    /// The number of seconds after which the public data can be polled again
    public let pollPeriod: Int


    public init(
        data: String,
        pollPeriod: Int
    ) {
        self.data = data
        self.pollPeriod = pollPeriod
    }
}

