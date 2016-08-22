//
//  ViewController.swift
//  FirebaseUITest
//
//  Created by AndAnotherOne on 8/22/16.
//  Copyright © 2016 AndAnotherOne. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabaseUI

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var firebaseRef: FIRDatabaseReference!
    var dataSource: FirebaseTableViewDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firebaseRef = FIRDatabase.database().reference()
        
        dataSource = FirebaseTableViewDataSource(ref: firebaseRef, cellClass: CoolCell.self, cellReuseIdentifier: "coolCell", view: tableView)

        
        dataSource.populateCellWithBlock { (cell: UITableViewCell, obj: NSObject) -> Void in
            let snap = obj as! FIRDataSnapshot // Force cast to an FDataSnapshot
            /* Populate cell with contents of the snapshot */
            print(snap)
            cell.textLabel?.text = snap.value as! String
            
        }
        
        self.tableView.dataSource = self.dataSource

    }
    
    

}

