//
//  TrayViewController.swift
//  FoodTaskerMobile
//
//  Created by Developer on 2017-01-27.
//  Copyright © 2017 Mohammed Alghamdi. All rights reserved.
//

import UIKit

class TrayViewController: UIViewController {

    @IBOutlet weak var menuBarButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
        }
            menuBarButton.target = self.revealViewController()
            menuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }
}

extension TrayViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrayItemCell", for: indexPath)
        
        return cell
    }
}
