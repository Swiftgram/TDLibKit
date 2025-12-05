//
//  AffiliateProgramParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Describes parameters of an affiliate program
public struct AffiliateProgramParameters: Codable, Equatable, Hashable {

    /// The number of Telegram Stars received by the affiliate for each 1000 Telegram Stars received by the program owner; getOption("affiliate_program_commission_per_mille_min")-getOption("affiliate_program_commission_per_mille_max")
    public let commissionPerMille: Int

    /// Number of months the program will be active; 0-36. If 0, then the program is eternal
    public let monthCount: Int


    public init(
        commissionPerMille: Int,
        monthCount: Int
    ) {
        self.commissionPerMille = commissionPerMille
        self.monthCount = monthCount
    }
}

