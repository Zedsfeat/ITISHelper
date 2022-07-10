import UIKit

class LeadersTableViewCell: UITableViewCell {

    
    @IBOutlet weak var labelLeader: UILabel!
    @IBOutlet weak var numerOfGroup: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
