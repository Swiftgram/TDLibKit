//
//  AnswerWidgetQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-6126ecae
//  https://github.com/tdlib/td/tree/6126ecae
//

import Foundation


/// Sets the result of a widget query; for bots only
public struct AnswerWidgetQuery: Codable, Equatable, Hashable {

    /// Data to be returned to the widget
    public let data: String?

    /// Identifier of the widget query
    public let widgetQueryId: TdInt64?


    public init(
        data: String?,
        widgetQueryId: TdInt64?
    ) {
        self.data = data
        self.widgetQueryId = widgetQueryId
    }
}

