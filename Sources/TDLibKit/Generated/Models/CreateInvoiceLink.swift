//
//  CreateInvoiceLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-fe6f2f93
//  https://github.com/tdlib/td/tree/fe6f2f93
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

