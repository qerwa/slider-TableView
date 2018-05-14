//
//  ViewController.swift
//  slider TableView
//
//  Created by D7703_17 on 2018. 5. 14..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
      
      
      @IBOutlet weak var Mys: UISlider!
      @IBOutlet weak var Myl: UILabel!
      @IBOutlet weak var Myt: UITableView!
      
      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            Myt.delegate = self
            Myt.dataSource = self
      }

      @IBAction func slider(_ sender: Any) {
            print("\(Mys.value) slider moved!")
            Myl.text = String(Int(Mys.value))
            Myt.reloadData()
            }
      
      
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 100
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = Myt.dequeueReusableCell(withIdentifier: "re", for: indexPath)
            cell.textLabel?.text = String(Int(Mys.value)+indexPath.row)
            return cell
      }


}

