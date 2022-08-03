//
//  ViewController.swift
//  SaveSmart
//
//  Created by CoopStudent on 7/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addName: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    
    
        
}

    @IBAction func Click(_ sender: Any) {
        
        vars.name = addName.text!
        performSegue(withIdentifier: "Seg", sender: self)
        
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Selection") as? SelectionViewController else{
           return
       }
       vc.modalPresentationStyle = .fullScreen
       present(vc, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let vc = segue.destination as! SelectionViewController
        vc.modalPresentationStyle = .fullScreen
        vars.name = addName.text!
    }
    
    }
