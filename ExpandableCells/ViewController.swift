//
//  ViewController.swift
//  ExpandableCells
//
//  Created by Alexey Rashevskiy on 28/10/2016.
//  Copyright © 2016 Appuchino. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 85.0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell") as? MyTableViewCell else {
            fatalError()
        }
        cell.expand(expand: false)
        cell.selectionStyle = .none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let selectedCell = tableView.cellForRow(at: indexPath) as? MyTableViewCell else {
            fatalError()
        }
        selectedCell.expand(expand: true)
        UIView.animate(withDuration: 0.3, animations: {
            selectedCell.contentView.layoutIfNeeded()
        })
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        guard let selectedCell = tableView.cellForRow(at: indexPath) as? MyTableViewCell else {
            fatalError()
        }
        selectedCell.expand(expand: false)
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
}

