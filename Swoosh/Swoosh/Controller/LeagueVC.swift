//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Ahmet Ayyildiz on 30/08/2017.
//  Copyright © 2017 ayyildizSoftware. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    @IBOutlet weak var nextBtn: Buttons!
    
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.isEnabled = false
        player = Player()
    }

    @IBAction func mensTapped(_ sender: Any) {
        sendInformation(leauge: "mens")
    }
    
    @IBAction func womensTapped(_ sender: Any) {
        sendInformation(leauge: "womens")
    }
    
    @IBAction func coedTapped(_ sender: Any) {
        sendInformation(leauge: "coed")
    }
    
    func sendInformation(leauge: String){
        player.desiredLeague = leauge
        nextBtn.isEnabled = true
    }
    
    @IBAction func nextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
    
}
