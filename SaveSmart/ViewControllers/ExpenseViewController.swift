//
//  ExpenseViewController.swift
//  SaveSmart
//
//  Created by CoopStudent on 7/29/22.
//

import UIKit


class ExpenseViewController : UIViewController {    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Click(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Confirm") as? ConfirmViewController else{
            return
        }
        vars.ecost = Int(cost.text!) ?? 0
        vars.ename = expense.text!
        vars.spent = vars.spent + vars.ecost
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @IBOutlet weak var expense: UITextField!
    
    @IBOutlet weak var cost: UITextField!
    
    @IBAction func Back(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Home") as? HomeViewController else{
            return
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}
