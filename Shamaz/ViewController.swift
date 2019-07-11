//
//  ViewController.swift
//  Shamaz
//  Copyright © 2019 Fatima Salhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Buttons Outlets
    @IBOutlet weak var pastButton: UIButton!
    @IBOutlet weak var futureButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBOutlet weak var actingTask: UILabel!
    
    //Arrays for questions on Past
    let questionsOnPast = [
        "What did you ate yesterday for lunch?",
        "What was your previous job?",
        "Where did you go for your last holidays?",
        "What was the last dish you prepared?"
    ]
    //Arrays for questions on Future
    let questionsOnFuture = [
        "Where will you go for your next holidays?",
        "How do you see yourself after five years?",
        "Which friend will you meet next time?",
        "Which restaurant would you like to eat in soon?"
    ]
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        generateRandomMessagePlayer()
        enableNextButton(enable: false)
    }
    
    //Button generates random questions on Past
    @IBAction func pastButtonPressed(_ sender: Any) {
        enableNextButton(enable: true)
        
        generateRandomQuestionsOnPast()
    }
    
    //Button generates random questions on Future
    @IBAction func futureButtonPressed(_ sender: Any) {
        enableNextButton(enable: true)
        
        generateRandomQuestionOnFuture()
    }
    
    //Button generates random player Message with player number
    @IBAction func nextButtonPressed(_ sender: Any) {
        enableNextButton(enable: false)
        
        generateRandomMessagePlayer()
    }
    
    //toggle button enable property
    func enableNextButton(enable: Bool) {
        nextButton.isEnabled = enable
        pastButton.isEnabled = !enable
        futureButton.isEnabled = !enable
    }
    
    //Generates random questions on Past
    func generateRandomQuestionsOnPast() {
        let qPast = questionsOnPast.randomElement()!
        actingTask.text = qPast
    }
    
    //Generates random questions on Future
    func generateRandomQuestionOnFuture(){
        let qFuture = questionsOnFuture.randomElement()!
        actingTask.text = qFuture
    }
    
    //Generates random player number and message "player (number) tell us"
    func generateRandomMessagePlayer(){
        let player = Int.random(in: 1...10)
        let msg = "Player \(player) tell us"
        actingTask.text = msg
    }
    
    
    
}
