//
//  SetBirthdate.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Changes the birthdate of the current user
public struct SetBirthdate: Codable, Equatable, Hashable {

    /// The new value of the current user's birthdate; pass null to remove the birthdate
    public let birthdate: Birthdate?


    public init(birthdate: Birthdate?) {
        self.birthdate = birthdate
    }
}

