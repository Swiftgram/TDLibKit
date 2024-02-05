//
//  CreateInvoiceLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-d79bd4b6
//  https://github.com/tdlib/td/tree/d79bd4b6
//

import Foundation


/// Creates a link for the given invoice; for bots only
public struct CreateInvoiceLink: Codable, Equatable, Hashable {

    /// Information about the invoice of the type inputMessageInvoice
    public let invoice: InputMessageContent?


    public init(invoice: InputMessageContent?) {
        self.invoice = invoice
    }
}

