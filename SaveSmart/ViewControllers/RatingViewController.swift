//
//  RatingViewController.swift
//  SaveSmart
//
//  Created by CoopStudent on 7/29/22.
//

import UIKit


class RatingViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ButtonClick(_ sender: Any) {
        
    }
    
    
    @IBAction func Click(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Home") as? HomeViewController else{
            return
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    
}
