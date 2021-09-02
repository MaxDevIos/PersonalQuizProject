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

extension Question {
        
    enum NumberCorrectAnswer: Int {
        case one = 1
        case two
        case tree
        case four
        case five
        case six
        case seven
        
        var simbol: String {
            switch self {
            case .one: return "😱"
            case .two: return "😥"
            case .tree: return "🤔"
            case .four: return "😜"
            case .five: return "💥"
            case .six: return "⭐️"
            case .seven: return "🔥"
            }
        }
        
        var definition: String {
            switch self {
            case .one:
                return "Try one more time"
            case .two:
                return "Be careful"
            case .tree:
                return "Not bad"
            case .four:
                return "You're nice"
            case .five:
                return "You're very good"
            case .six:
                return "You're super"
            case .seven:
                return "You're the best one"
            }
        }
    }
}

struct Answer {
    let text: String
    let typeAnswer: CorrectOrWrong
}
