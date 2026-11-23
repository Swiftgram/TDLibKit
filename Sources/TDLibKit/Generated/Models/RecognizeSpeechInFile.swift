//
//  RecognizeSpeechInFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Recognizes speech in an audio file and returns the recognized text; can be used only if getOption("can_recognize_speech"); must not be used in secret chats. The file must be in OGG format with the Opus codec and must have a size of up to 1 MB
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

