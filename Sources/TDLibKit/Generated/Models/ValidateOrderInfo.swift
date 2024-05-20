//
//  ValidateOrderInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Validates the order information provided by a user and returns the available shipping options for a flexible invoice
public struct ValidateOrderInfo: Codable, Equatable, Hashable {

    /// Pass true to save the order information
    public let allowSave: Bool?

    /// The invoice
    public let inputInvoice: InputInvoice?

    /// The order information, provided by the user; pass null if empty
    public let orderInfo: OrderInfo?


    public init(
        allowSave: Bool?,
        inputInvoice: InputInvoice?,
        orderInfo: OrderInfo?
    ) {
        self.allowSave = allowSave
        self.inputInvoice = inputInvoice
        self.orderInfo = orderInfo
    }
}

