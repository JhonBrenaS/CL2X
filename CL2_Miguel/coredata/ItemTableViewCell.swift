//
//  ItemTableViewCell.swift
//  CL2_Miguel
//
//  Created by Whiz on 7/12/24.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblCiudad: UILabel!
    
    @IBOutlet weak var lblDepartamento: UILabel!
    
    @IBOutlet weak var lblDelito: UILabel!
    
    @IBOutlet weak var lblDescripcion: UILabel!
    
    @IBOutlet weak var lblFecha: UILabel!
    
    @IBOutlet weak var lblHora: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    
    

}
