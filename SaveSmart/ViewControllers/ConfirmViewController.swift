//
//  ConfirmViewController.swift
//  SaveSmart
//
//  Created by CoopStudent on 7/29/22.
//

import UIKit


class ConfirmViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func ClickedYes(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Expense") as? ExpenseViewController else{
            return
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    @IBAction func ClickedNo(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Rating") as? RatingViewController else{
            return
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    
    
    
}
