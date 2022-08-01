//
//  HomeViewController.swift
//  SaveSmart
//
//  Created by CoopStudent on 7/28/22.
//

import UIKit

class HomeViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = vars.name + ", Your current spending is..."
        Money.text = "$\(vars.spent) out of $\(vars.total)"
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func Click(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Expense") as? ExpenseViewController else{
            return
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    @IBOutlet weak var Money: UILabel!
    
    
    @IBAction func Click2(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Viewing") as? ViewingViewController else{
            return
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    
}
