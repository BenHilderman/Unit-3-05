// Made by: Benjamin Hilderman
// Made on: October 2018
// Made for: ICS3U
// this app calculates the factorial of a chosen number

import UIKit

import PlaygroundSupport

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var instructionLabel : UILabel!
    var userInputTextField : UITextField!
    var calculateButton : UIButton!
    var answerLabel : UILabel!
    
    override func viewDidLoad() {
        // create background colour
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        instructionLabel = UILabel(frame: CGRect(x: 250, y: 50, width: 500, height: 50))
        instructionLabel.text = "Enter a number greater than 0 to find it's factorial"
        view.addSubview(instructionLabel)
        
        userInputTextField = UITextField(frame: CGRect(x: 360, y: 150, width: 200, height: 50))
        userInputTextField.borderStyle = UITextBorderStyle.roundedRect
        userInputTextField.placeholder = "Enter Number"
        view.addSubview(userInputTextField)
        
        
        calculateButton = UIButton(frame: CGRect(x: 410, y: 230, width: 100, height: 50))
        calculateButton.setTitle("Calculate", for: UIControlState.normal)
        calculateButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        calculateButton.addTarget(self, action: #selector(CheckTheNumber), for: UIControlEvents.touchUpInside)
        view.addSubview(calculateButton)
        
        
        answerLabel = UILabel(frame: CGRect(x: 300, y: 350, width: 500, height: 50))
        answerLabel.text = nil
        view.addSubview(answerLabel)
        
    }
    
    @objc func CheckTheNumber() {
        // calculate the number
        
        var userInput : Int =  Int(userInputTextField.text!)!
        
        if userInput >= 0{
            var answer = 1
            while userInput >= 1{
                answer = answer * userInput
                userInput = userInput - 1
            }
            answerLabel.text = "The factorial is \(answer)"
        }
        else {
            answerLabel.text = "Enter a number greater than 0 to find it's factorial" 
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

PlaygroundPage.current.liveView = ViewController()
