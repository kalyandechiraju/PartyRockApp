//
//  PartyRockTableViewCell.swift
//  PartyRock
//
//  Created by Kalyan Dechiraju on 27/03/17.
//  Copyright © 2017 Codelight Studios. All rights reserved.
//

import UIKit

class PartyRockTableViewCell: UITableViewCell {

    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var videoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(partyRock: PartyRockModel)  {
        videoLabel.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoImage.image = UIImage(data: data)
                }
            } catch {
                // Handle the error
            }
        }
    }

}
