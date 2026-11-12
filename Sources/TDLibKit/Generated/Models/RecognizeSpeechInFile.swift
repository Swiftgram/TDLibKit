//
//  RecognizeSpeechInFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Recognizes speech in an audio file and returns the recognized text. The file must be in OGG format with Opus codec and must have size up to 1 MB. The same rules as for recognizeSpeech apply to the Telegram Premium requirement and speech recognition trial; must not be used in secret chats
public struct RecognizeSpeechInFile: Codable, Equatable, Hashable {

    /// The audio file
    public let audioFile: InputFile?

    /// Unique identifier of the speech recognition, which will be used in updateSpeechRecognitionInFile to send partially recognized text; pass 0 if partial results aren't needed
    public let recognitionId: TdInt64?


    public init(
        audioFile: InputFile?,
        recognitionId: TdInt64?
    ) {
        self.audioFile = audioFile
        self.recognitionId = recognitionId
    }
}

