//
//  TableViewCell.swift
//  Custom_TableView
//
//  Created by Imam MohammadUvesh on 21/12/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    //MARK: Outlets
    @IBOutlet weak var Tableimage: UIImageView!
    @IBOutlet weak var Tablelabel: UILabel!
    @IBOutlet weak var Tableimagetwo: UIImageView!
    
    override func awakeFromNib() {
        
    super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
                          
                          }
                          
    
    
}
