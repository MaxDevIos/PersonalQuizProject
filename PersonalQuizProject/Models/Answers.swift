//
//  Answers.swift
//  PersonalQuizProject
//
//  Created by Maxim Kucherov on 31.08.2021.
//

enum CorrectOrWrong {
    case correct
    case wrong
    case neverMind
}

enum NumberCorrectAnswer: Character {
    case one = "😱"
    case two = "😥"
    case three = "🤔"
    case four = "😜"
    case five = "⭐️"
    case six = "🔥"
    
    var definition: String {
        switch self {
        case .one:
            return "Try one more time"
        case .two:
            return "Be careful"
        case .three:
            return "Not bad"
        case .four:
            return "You're nice"
        case .five:
            return "You're very good"
        case .six:
            return "You're the best one"
        }
    }
}

struct Answer {
    let text: String
    let type: CorrectOrWrong
}
