//
//  StudyTabViewController.swift
//  ITISHelper
//
//  Created by Ринат Хамидуллов on 09.07.2022.
//

import UIKit

class TabViewController: UIViewController {



    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let attributedString = NSMutableAttributedString(string: "Учебник")
        let range = NSRange(location: 0, length: attributedString.length)
        let url = URL(string: "https://www.apple.com")!

        attributedString.setAttributes([.link: url], range: range)
        textView.textStorage.setAttributedString(attributedString)

//         Define how links should look like within the text view
        textView.linkTextAttributes = [
            .foregroundColor: UIColor.white,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        textView.font = UIFont(name: "Callout", size: 30) //Do not work, why?
    }

    @IBAction func buttonClose(_ sender: Any) {
        dismiss(animated: true)
    }
}
