//
//  ViewController.swift
//  iosApp
//
//  Created by Hemant Gokhale on 1/1/21.
//  Copyright © 2021 orgName. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchTextField.delegate = self
    }
    
    @IBAction func searchPressed(_ sender: UIButton) {
        doSearch()
    }
    
    func doSearch() {
        guard let city = searchTextField.text else { return }
        searchTextField.endEditing(true)
        searchTextField.text = ""
        print("fetch weather for \(city)")
    }

    //MARK:- UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        doSearch()
        return true
    }
}
