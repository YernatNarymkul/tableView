//
//  ViewController.swift
//  tableViewHomeWork
//
//  Created by Ернат on 28.02.2025.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Переменные
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    //MARK: - Переменная для передачи данных 
    var person = Person()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //MARK: - передача данных структуры в массив
        nameLabel.text = person.name
        descriptionLabel.text = person.discription
        imageView.image = UIImage(named: person.imageView)
        
    }
}

