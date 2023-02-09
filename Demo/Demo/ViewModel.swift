//
//  ViewModel.swift
//  Demo
//
//  Created by Rohit Ajmera on 09/02/23.
//

import Foundation
import UIKit


struct Movie {
    var name: String?
    var imageName: String?
}

class DemoCell: UITableViewCell {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgMovie: UIImageView!
    var data: Movie? {
        didSet {
            lblName.text = data?.name
            imgMovie.image = UIImage(named: data?.imageName ?? "")
        }
    }
}

class ViewModel {
    let cellIdentifier = "cell_demo"
    let arrItems: [Movie]? = [Movie(name: "Baahubali", imageName: "image"),
                              Movie(name: "Pathaan", imageName: "image"),
                              Movie(name: "KGF Chapter", imageName: "image"),
                              Movie(name: "Dangal", imageName: "image"),
                              Movie(name: "Sanju", imageName: "image")]
}
