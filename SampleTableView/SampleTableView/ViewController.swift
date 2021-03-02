//
//  ViewController.swift
//  SampleTableView
//
//  Created by 日置竜輔 on 2021/03/02.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let fruits = ["りんご", "みかん", "ブドウ", "スイカ", "バナナ", "レモン"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // セルの数を指定するブロック(今回なら５個)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    // Cell というIDのたtableViewセルを表示する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = fruits[indexPath.row]
        return cell
    }

}
