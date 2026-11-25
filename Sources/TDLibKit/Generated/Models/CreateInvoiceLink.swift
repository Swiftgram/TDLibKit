//
//  CreateInvoiceLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Creates a link for the given invoice; for bots only
public struct CreateInvoiceLink: Codable, Equatable, Hashable {

    /// Unique identifier of the business connection on behalf of which to send the request
    public let businessConnectionId: String?

    /// Information about the invoice of the type inputMessageInvoice
    public let invoice: InputMessageContent?


    public init(
        businessConnectionId: String?,
        invoice: InputMessageContent?
    ) {
        self.businessConnectionId = businessConnectionId
        self.invoice = invoice
    }
}

