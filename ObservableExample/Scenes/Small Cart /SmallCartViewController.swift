//
//  SmallCartViewController.swift
//  ObservableExample
//
//  Created by Andrei Hogea on 01/03/2019.
//  Copyright © 2019 Nodes. All rights reserved.
//

import UIKit

class SmallCartViewController: UIViewController {
    
    @IBOutlet weak var cartImageView: UIImageView! {
        didSet {
            cartImageView.tintColor = .black 
        }
    }
    @IBOutlet weak var productsLabel: UILabel! {
        didSet {
            productsLabel.text = "0 items"
            productsLabel.font = UIFont.systemFont(ofSize: 11, weight: .medium)
        }
    }
    @IBOutlet weak var priceLabel: UILabel! {
        didSet {
            priceLabel.text = Current.priceFormatter.string(from: 0 as NSNumber)!
            priceLabel.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        }
    }
    
    private var observerReference: Int!
    
    // MARK: - Init
    
    class func instantiate() -> SmallCartViewController {
        let name = "\(SmallCartViewController.self)"
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: name) as! SmallCartViewController
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray.withAlphaComponent(0.2)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.3).cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = view.bounds.height / 2
        view.clipsToBounds = true
    }
    
}
