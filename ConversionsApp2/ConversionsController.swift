//
//  ViewController.swift
//  ConversionsApp2
//
//  Created by Natalie Tuck on 2/4/16.
//  Copyright © 2016 Natalie Tuck. All rights reserved.
//

import UIKit

class ConversionsController: UIViewController {
    
   
    @IBOutlet weak var generateProblem: UILabel!
    
    var convertPracticeModel: ConvertPractice!
    @IBOutlet weak var questionDisplay: UILabel!
    
    
    @IBOutlet weak var EnterTextHere: UITextField!
    
    @IBAction func showAlert(sender: AnyObject) {
        let myAlert = UIAlertController(title: "Correct!", message: "Ready for the next problem?", preferredStyle: UIAlertControllerStyle.Alert);
        
        let yesAction = UIAlertAction(title: "Yes!", style: UIAlertActionStyle.Default){(ACTION)in print("Yes button tapped");
        }
        let backAction = UIAlertAction(title: "Back", style:UIAlertActionStyle.Default){(ACTION)in print("Back button tapped");
            }
        
        
        myAlert.addAction(yesAction)
        myAlert.addAction(backAction)
        
        self.presentViewController(myAlert, animated: true, completion: nil);
    }
    
    
//    showAlert(sender: AnyObject) {
//    let myAlert = UIAlertController(title: "Sorry that is incorrect...", message: "Would you like to try again?", preferredStyle: UIAlertControllerStyle.Alert);
//    
//    let yesAction = UIAlertAction(title: "Yes!", style: UIAlertActionStyle.Default){(ACTION)in print("Yes button tapped");
//    }
//    
//    //let noAction = UIAlertAction(title: "New Problem", style: UIAlertActionStyle.Default){(ACTION)in print ("No button tapped");
//    }
//    
//    myAlert.addAction(yesAction)
//    
//    self.presentViewController(myAlert, animated: true, completion: nil);
//    
//    }



    override func viewDidLoad() {
        super.viewDidLoad()
        convertPracticeModel = ConvertPractice()
        generateProblem.text = convertPracticeModel.question
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SubmitButton(sender: AnyObject) {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let result = convertPracticeModel.checkAnswer(Double(EnterTextHere.text!)!)
        if result == true {
            /// set the label in the destination view controller to correct
        } else {
            /// set the label in the destination view controller to incorrect
        }
        ///when submit is clicked, go to new view controller, check answer, updates feedback label
    }
    
   }
