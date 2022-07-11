import UIKit

class RatingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var ratingTableView: UITableView!
    let ratingID = "RatingTableViewCell"
    var modelRating = ModelRating()
    var newView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTableView()
        ratingTableView.backgroundColor = .white
        ratingTableView.separatorStyle = .singleLine
        ratingTableView.separatorColor = .darkGray

        ratingTableView.dataSource = self
        ratingTableView.delegate = self

        modelRating.setUpTopTenRating() // Инициализация рейтинга

    }


    func setUpTableView() {
        newView = UIView(frame: CGRect(x: 0, y: 290, width: view.frame.width, height: 800))
        newView.backgroundColor = view.backgroundColor
        newView.layer.cornerRadius = 50
        view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        view.addSubview(newView)
        newView.addSubview(ratingTableView)
        
        ratingTableView.layer.cornerRadius = 50
        ratingTableView.translatesAutoresizingMaskIntoConstraints = false
        ratingTableView.leadingAnchor.constraint(equalTo: newView.leadingAnchor, constant: 0).isActive = true
        ratingTableView.trailingAnchor.constraint(equalTo: newView.trailingAnchor, constant: 0).isActive = true
        ratingTableView.topAnchor.constraint(equalTo: newView.topAnchor, constant: 0).isActive = true
        ratingTableView.bottomAnchor.constraint(equalTo: newView.bottomAnchor, constant: 0).isActive = true
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelRating.arrayOfRating.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ratingID) as! RatingTableViewCell

        cell.backgroundColor = .tertiaryLabel

        let someRating = modelRating.arrayOfRating[indexPath.row]

        cell.number.text = someRating.number
        cell.studentFIO.text = someRating.studentFIO
        cell.points.text = someRating.points
        
        cell.number.textColor = .darkGray
        cell.studentFIO.textColor = .darkGray
        cell.points.textColor = .darkGray
        
        return cell
    }
}
