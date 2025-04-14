//
//  ReportStoryResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-04adfc87
//  https://github.com/tdlib/td/tree/04adfc87
//

import Foundation


/// Describes result of story report
public indirect enum ReportStoryResult: Codable, Equatable, Hashable {

    /// The story was reported successfully
    case reportStoryResultOk

    /// The user must choose an option to report the story and repeat request with the chosen option
    case reportStoryResultOptionRequired(ReportStoryResultOptionRequired)

    /// The user must add additional text details to the report
    case reportStoryResultTextRequired(ReportStoryResultTextRequired)


    private enum Kind: String, Codable {
        case reportStoryResultOk
        case reportStoryResultOptionRequired
        case reportStoryResultTextRequired
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .reportStoryResultOk:
            self = .reportStoryResultOk
        case .reportStoryResultOptionRequired:
            let value = try ReportStoryResultOptionRequired(from: decoder)
            self = .reportStoryResultOptionRequired(value)
        case .reportStoryResultTextRequired:
            let value = try ReportStoryResultTextRequired(from: decoder)
            self = .reportStoryResultTextRequired(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .reportStoryResultOk:
            try container.encode(Kind.reportStoryResultOk, forKey: .type)
        case .reportStoryResultOptionRequired(let value):
            try container.encode(Kind.reportStoryResultOptionRequired, forKey: .type)
            try value.encode(to: encoder)
        case .reportStoryResultTextRequired(let value):
            try container.encode(Kind.reportStoryResultTextRequired, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user must choose an option to report the story and repeat request with the chosen option
public struct ReportStoryResultOptionRequired: Codable, Equatable, Hashable {

    /// List of available options
    public let options: [ReportOption]

    /// Title for the option choice
    public let title: String


    public init(
        options: [ReportOption],
        title: String
    ) {
        self.options = options
        self.title = title
    }
}

/// The user must add additional text details to the report
public struct ReportStoryResultTextRequired: Codable, Equatable, Hashable {

    /// True, if the user can skip text adding
    public let isOptional: Bool

    /// Option identifier for the next reportStory request
    public let optionId: Data


    public init(
        isOptional: Bool,
        optionId: Data
    ) {
        self.isOptional = isOptional
        self.optionId = optionId
    }
}

