//
//  ViewController.swift
//  blm_2
//
//  Created by JoseLuisRodriguezRomero on 25/05/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    private let myMenu = ["Lector de codigos QR, Lista de productos"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
        
    }

}

/*
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "mycell")
                cell?.backgroundColor = .gray
                cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
                cell?.accessoryType = .disclosureIndicator
            }
            cell!.textLabel?.text = myMenu[indexPath.row]
            return cell!
        }
            
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? MyCustomTableViewCell
        
        cell?.myFirstLabel.text = String(indexPath.row + 1)
        cell!.mySecondLabel.text = myMenu[indexPath.row]
        
        if indexPath.row == 2 {
            cell!.mySecondLabel.text = "ajsldkjaklsjd kjajkjsdlk jas kajsdkl jakj akljsdkaljs kjaskdjaskj dkaljsdka jskdjaklsjdalksjdklajsdka jksjdaklj sd"
        }

        return cell!
    }
    
}
 */
