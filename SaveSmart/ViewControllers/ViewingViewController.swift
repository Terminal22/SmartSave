//
//  ViewingViewController.swift
//  SaveSmart
//
//  Created by CoopStudent on 7/29/22.
//

import UIKit

class ViewingViewController : UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        let thing = tablecontent[0]
        
        cell.textLabel?.text = thing
        
        return cell
    }
    
    
    var tablecontent = [vars.ename + " - $\(vars.ecost)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var expenseviewer: UITableView!
    
    
    @IBAction func buttonclicky(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Home") as? HomeViewController else{
            return
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    
}
