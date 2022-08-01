//
//  SelectionViewController.swift
//  SaveSmart
//
//  Created by CoopStudent on 7/27/22.
//

import UIKit

class SelectionViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        texting.text = (vars.name + "!")
    }
    @IBOutlet weak var texting: UILabel!
    
    @IBOutlet weak var field: UITextField!
    
    @IBAction func ButtonPress(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Home") as? HomeViewController else{
           return
       }
       vc.modalPresentationStyle = .fullScreen
       vars.total = Int(field.text!) ?? 0
       present(vc, animated: true)
    }
    
    
}
