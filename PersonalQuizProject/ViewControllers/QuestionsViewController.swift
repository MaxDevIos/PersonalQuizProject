//
//  QuestionsViewController.swift
//  PersonalQuizProject
//
//  Created by Maxim Kucherov on 31.08.2021.
//

import UIKit

class QuestionsViewController: UIViewController {

//MARK: - IB Outlet
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var rangedStackView: UIStackView!
    
    @IBOutlet var singleButtons: [UIButton]!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    @IBOutlet var rangedLabels: [UILabel]!
    
    @IBOutlet var rangedSlider: UISlider!
    
    @IBOutlet var questionProgressView: UIProgressView!
    
    
//MARK: - Public Properties
    
//MARK: - Private Properties
    
    private let questions = Question.getQuestion()
    private var questionIndex = 0
    private var answersChoosen: [Answer] = []
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    
//MARK: - Initializers
    
//MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
//MARK: - IB Actions
    
    @IBOutlet var singleAnswerButtonPressed: [UIButton]!
    
    @IBAction func multipleAnswerButtonPressed() {
    }
    
    @IBAction func rangedAnswerButtonPressed() {
    }
    
    
//MARK: - Public Methods
    
//MARK: - Private Methods
    

}

//MARK: - Extensions

extension QuestionsViewController {
    private func updateUI() {
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
    }
}
