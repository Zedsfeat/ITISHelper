//
//  MySubjectsViewController.swift
//  ITISHelper
//
//  Created by zedsbook on 08.07.2022.
//

import UIKit

class MySubjectsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableViewOfMySubjects: UITableView!
    let mySubjectsID = "MySubjectsTableViewCell"
    var modelMySubjects = ModelMySubjects()
    var newView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        
        tableViewOfMySubjects.backgroundColor = .white
        tableViewOfMySubjects.separatorStyle = .singleLine
        tableViewOfMySubjects.separatorColor = .darkGray
        tableViewOfMySubjects.dataSource = self
        tableViewOfMySubjects.delegate = self
        
        
        setUpTableView()
        modelMySubjects.setUpSubjects()
    }
    
    func setUpTableView() {
        newView = UIView(frame: CGRect(x: 0, y: 465, width: view.frame.width, height: 800))
        newView.backgroundColor = view.backgroundColor
        newView.layer.cornerRadius = 50
        view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        view.addSubview(newView)
        newView.addSubview(tableViewOfMySubjects)
        
        tableViewOfMySubjects.layer.cornerRadius = 50
        
        tableViewOfMySubjects.translatesAutoresizingMaskIntoConstraints = false
        tableViewOfMySubjects.leadingAnchor.constraint(equalTo: newView.leadingAnchor, constant: 0).isActive = true
        tableViewOfMySubjects.trailingAnchor.constraint(equalTo: newView.trailingAnchor, constant: 0).isActive = true
        tableViewOfMySubjects.topAnchor.constraint(equalTo: newView.topAnchor, constant: 0).isActive = true
        tableViewOfMySubjects.bottomAnchor.constraint(equalTo: newView.bottomAnchor, constant: 0).isActive = true
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelMySubjects.arrayOfSubjects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: mySubjectsID) as! MySubjectsTableViewCell
        
        cell.backgroundColor = .tertiaryLabel
        
        let someSubject = modelMySubjects.arrayOfSubjects[indexPath.row]
        
        cell.labelName.text = someSubject.name
        cell.labelName.textColor = .darkGray
        cell.labelName.font = UIFont.systemFont(ofSize: 20)
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let subject = modelMySubjects.arrayOfSubjects
        if subject[0] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://colab.research.google.com/drive/1ZJ9oU_9M6ar41wPpS_V1McN189VBVrDT#scrollTo=wiA5ZvKF0GlA")!)
        } else if subject[1] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://colab.research.google.com/drive/1fOUQ3v0ojfd9QCdpILuonH3RRv7KgSQb")!)
        } else if subject[2] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://colab.research.google.com/drive/1lgv01T7mUZgEa4aQvrCpNdOKKNy2UxZ_#scrollTo=SmaiMP59hlnq")!)
        } else if subject[3] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://colab.research.google.com/drive/11KRoUkvhm9tFqAM-qUAwxhdT9jIzFSHV#scrollTo=onyMI_Ng1FgE")!)
        } else if subject[4] == subject[indexPath.row] {
            UIApplication.shared.open(URL(string: "https://colab.research.google.com/drive/19r7loBPuaXoUXsv0C83qudKTovo9ZwZT#scrollTo=NArkwN6SyuVu")!)
        }
    }
}
