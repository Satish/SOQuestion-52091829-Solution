//
//  ViewController.swift
//  SOQuestion-52091829-Solution
//
//  Created by Satish Chauhan on 8/30/18.
//  Copyright © 2018 Satish. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak private var imageView1: UIImageView! {
        didSet {
            imageView1.backgroundColor = UIColor.red
        }
    }
    @IBOutlet weak private var tableViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak private var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.tableFooterView = UIView()
        }
    }
    @IBOutlet weak private var label1: UILabel!
    @IBOutlet weak private var label2: UILabel!
    @IBOutlet weak private var label3: UILabel!
    @IBOutlet weak private var label4: UILabel!
    @IBOutlet weak private var label5: UILabel!
    @IBOutlet weak private var imageView2: UIImageView! {
        didSet {
            imageView2.backgroundColor = UIColor.red
        }
    }

    var items = [1,2,3,4,5,6,7]
    
    var sampleText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."

    override func viewDidLoad() {
        super.viewDidLoad()

        label1.text = sampleText
        label2.text = sampleText
        label3.text = sampleText
        label4.text = sampleText
        label5.text = sampleText
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        tableViewHeightConstraint.constant = tableView.contentSize.height
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sampleId", for: indexPath)
        cell.textLabel?.text = "\(items[indexPath.row])"

        return cell
    }

}

