//
//  CreateInvoiceLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-6283dce8
//  https://github.com/tdlib/td/tree/6283dce8
//

import Foundation


/// Creates a link for the given invoice; for bots only
public struct CreateInvoiceLink: Codable, Equatable {

    /// Information about the invoice of the type inputMessageInvoice
    public let invoice: InputMessageContent?


    public init(invoice: InputMessageContent?) {
        self.invoice = invoice
    }
}

