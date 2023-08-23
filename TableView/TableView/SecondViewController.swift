//
//  SecondViewController.swift
//  TableView
//
//  Created by Yogesh Patel on 16/10/21.
//

import UIKit

struct ContactModel{
    var fname: String
    var lname: String
//    var profileImage: UIImage
}

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var arrData = ["Yogesh", "Mihir", "Uvesh", "Pratik"]
    var dictData:[[String: Any]] = [
        [
            "fname": "Yogesh",
            "lname": "Patel",
          //  "profile": UIImage(systemName: "y.circle.fill")
        ],
        [
            "fname": "Mihir",
            "lname": "almaula"
        ],
        [
            "fname": "Uvesh",
            "lname": "Imam"
        ],
        [
            "fname": "Pratik",
            "lname": "Zora"
        ]
    ]
    
    var contactArray = [ContactModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")//cell create karyo
        
        let person1 = ContactModel(fname: "YYY", lname: "PPP")
        print(person1.fname)
        print(person1.lname)
        
        contactArray = [
            ContactModel(fname: "Yogesh", lname: "Patel"),
            ContactModel(fname: "Mihir", lname: "almaula"),
            ContactModel(fname: "Uvesh", lname: "Imam"),
            ContactModel(fname: "Pratik", lname: "Zora")
        ]
        
       //contactArray.append(person1)
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        /*
        cell?.textLabel?.text = dictData[indexPath.row]["fname"]
        //dictData[0]["fname"] //dict["fname"]
        cell?.detailTextLabel?.text = dictData[indexPath.row]["lname"]
//        cell?.imageView?.image = UIImage(systemName: "pencil.circle.fill")
         */
        
        let contact = contactArray[indexPath.row]
        cell?.textLabel?.text = contact.fname
        cell?.detailTextLabel?.text = contact.lname
        
        
        return cell!
    }
    
    
    //Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(contactArray[indexPath.row])
        if let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController{
            
            detailViewController.contactModel = contactArray[indexPath.row]
          //  detailViewController.dict = dictData[indexPath.row]//Assign karyu
            
            self.navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
}


/*
 IMAGE PASS KARVANI 6E - CELL IMAGE BATAVANI 6E.(CELL.IMAGEVIEW.IMAGE)
 //detail ma ae j image pass thase
 
 //Array of dictionary and arrya of model
 */
