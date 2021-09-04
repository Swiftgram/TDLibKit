//
//  MessageCopyOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Options to be used when a message content is copied without a link to the original message. Service messages and messageInvoice can't be copied
public struct MessageCopyOptions: Codable {

    /// New message caption. Ignored if replace_caption is false
    public let newCaption: FormattedText

    /// True, if media caption of the message copy needs to be replaced. Ignored if send_copy is false
    public let replaceCaption: Bool

    /// True, if content of the message needs to be copied without a link to the original message. Always true if the message is forwarded to a secret chat
    public let sendCopy: Bool


    public init(
        newCaption: FormattedText,
        replaceCaption: Bool,
        sendCopy: Bool
    ) {
        self.newCaption = newCaption
        self.replaceCaption = replaceCaption
        self.sendCopy = sendCopy
    }
}
