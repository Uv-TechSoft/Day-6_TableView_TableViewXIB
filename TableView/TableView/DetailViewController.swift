//
//  DetailViewController.swift
//  TableView
//
//  Created by Yogesh Patel on 16/10/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var fnameLabel: UILabel!
    @IBOutlet weak var lnameLabel: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var dict = [String: String]()
    var contactModel: ContactModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        fnameLabel.text = dict["fname"]
        lnameLabel.text = dict["lname"]
         */
        
        fnameLabel.text = contactModel?.fname
        lnameLabel.text = contactModel?.lname
    }
    
}
