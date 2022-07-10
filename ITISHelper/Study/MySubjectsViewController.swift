//
//  MySubjectsViewController.swift
//  ITISHelper
//
//  Created by zedsbook on 08.07.2022.
//

import UIKit

class MySubjectsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableViewOfMySubjects: UITableView!
    let mySubjectsID = "mySubjectsID"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        tableViewOfMySubjects.dataSource = self
        tableViewOfMySubjects.delegate = self
        
        setUpTableView()
        
    }
    
    func setUpTableView() {
        tableViewOfMySubjects.translatesAutoresizingMaskIntoConstraints = false
        tableViewOfMySubjects.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        tableViewOfMySubjects.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        tableViewOfMySubjects.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        tableViewOfMySubjects.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        
        tableViewOfMySubjects.layer.cornerRadius = 25
        tableViewOfMySubjects.layer.borderColor = UIColor.white.cgColor
        tableViewOfMySubjects.layer.borderWidth = 3
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: mySubjectsID)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: mySubjectsID)
        }
        cell?.textLabel!.text = "Что-то"
        return cell!
    }
}
