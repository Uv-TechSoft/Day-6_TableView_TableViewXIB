//
//  ViewController.swift
//  Custom_TableView
//
//  Created by Imam MohammadUvesh on 21/12/21.
//

import UIKit

struct DetailsDataModel
{
    var textLableOne: String
    var imageFirst: UIImage?
    var imageSecond: UIImage?
}
class ViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
   
    //MARK: Variables
    var arrDetailsData = [DetailsDataModel]()
    
    //MARK: Helper Method
    override func viewDidLoad() {
        super.viewDidLoad()
        configuration()
       
        //MARK: Registering Cell of Table View
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
}

//MARK: Providing Value to Model Array
extension ViewController
{
    // MARK: Functions
    func configuration()
    {
        contactConfiguration()
        
    }

    func contactConfiguration()
    {
        arrDetailsData = [
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill")),
            DetailsDataModel(textLableOne: "Text1", imageFirst: UIImage(systemName: "person.circle.fill"), imageSecond: UIImage(systemName: "person.circle.fill"))
            
     ]
    }
}

//MARK: TableView DataSource
extension ViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrDetailsData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell else
        {
            return UITableViewCell()
        }
        cell.Tablelabel.text = arrDetailsData[indexPath.row].textLableOne
        cell.Tableimage.image = arrDetailsData[indexPath.row].imageFirst
        cell.Tableimage.image = arrDetailsData[indexPath.row].imageSecond

        return cell
    }
}

