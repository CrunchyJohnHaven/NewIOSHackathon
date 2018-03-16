
//
//  ViewControllerTwo.swift
//  IOSMapKitProject
//
//  Created by Maria Stezhko on 3/15/18.
//  Copyright © 2018 john. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var clueLabel: UILabel!
    weak var delegate: CancelButtonDelegate?
    var step: Int?
    var location: Artwork?
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        print("Cancel pressed")
        delegate?.cancelButtonPressed(by: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = location?.title
        descriptionLabel.text = location?.eventDescription
        clueLabel.text = location?.longNextClue
        imageView.image = location?.image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

