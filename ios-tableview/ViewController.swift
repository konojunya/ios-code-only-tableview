//
//  ViewController.swift
//  ios-tableview
//
//  Created by konojunya on 2017/05/29.
//  Copyright © 2017年 konojunya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableView: UITableView?
    let datas = ["Apple","Banana","Orange"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView = {
            let tableView = UITableView(frame: self.view.bounds, style: .plain)
            tableView.autoresizingMask = [
                .flexibleWidth,
                .flexibleHeight
            ]
            tableView.delegate = self
            tableView.dataSource = self
            
            self.view.addSubview(tableView)
            
            return tableView
        }()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        ?? UITableViewCell(style: .default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = self.datas[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected! \(self.datas[indexPath.row])")
    }


}

