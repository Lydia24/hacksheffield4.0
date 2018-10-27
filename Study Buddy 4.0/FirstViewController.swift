//
//  FirstViewController.swift
//  Study Buddy 4.0
//
//  Created by Russell Penn on 27/10/2018.
//  Copyright © 2018 HackSheffield Team. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var txtAdd: UITextField!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var btnAdd: UIButton!
    
    var list = ["Llama", "Alpaca", "Camel", "dat boi"]
    
    
    @IBAction func addItem(_ sender: Any) {
        if (txtAdd.text != ""){
            list.append(txtAdd.text!)
            txtAdd.text = ""
            myTableView.reloadData()
        }
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count)
    }
    

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return (cell)
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            self.list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

