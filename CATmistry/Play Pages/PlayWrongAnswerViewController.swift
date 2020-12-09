//
//  PlayWrongAnswerViewController.swift
//  CATmistry
//
//  Created by N HJ on 8/12/20.
//

import UIKit

class PlayWrongAnswerViewController: UIViewController {

    @IBOutlet weak var nextGameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nextGameButton.layer.cornerRadius = 25
    }
    
    @IBAction func unwindToGame(_ seg: UIStoryboardSegue) {
    }
    
    @IBAction func unwindToGameWrong(_ sender: Any) {
        performSegue(withIdentifier: "unwindToGameWrong", sender: self)
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}