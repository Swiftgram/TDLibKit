//
//  CreateInvoiceLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Creates a link for the given invoice; for bots only
public struct CreateInvoiceLink: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which to send the request
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

