//
//  ViewController.swift
//  RPSGame
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cpuImage: UIImageView!
    @IBOutlet weak var cpuLabel: UILabel!
    
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var playerLabel: UILabel!
    
    //defining player's points
    var playerPoints = 0
    var cpuPoints = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goButtonAction(_ sender: Any) {
        //generating numbers for both players
        let cpuNumber = Int.random(in: 1...3)
        let playerNumber = Int.random(in: 1...3)
        
        //rock = 1, paper = 2, scissors = 3
        
        //setting the images accorting to the numbers
        setHandImage(imageView: cpuImage, imageNumber: cpuNumber)
        setHandImage(imageView: playerImage, imageNumber: playerNumber)
        
        //calculating the winner
        
        //cpu = rock, player = rock
        if cpuNumber == 1 && playerNumber == 1 {
            print("draw")
        }
        
        //cpu = rock, player = paper
        if cpuNumber == 1 && playerNumber == 2 {
            playerPoints = playerPoints + 1
        }
        
        //cpu = rock, player = scissors
        if cpuNumber == 1 && playerNumber == 3 {
            cpuPoints = cpuPoints + 1
        }
        
        //cpu = paper, player = rock
        if cpuNumber == 2 && playerNumber == 1 {
            cpuPoints = cpuPoints + 1
        }
        
        //cpu = paper, player = paper
        if cpuNumber == 2 && playerNumber == 2 {
            print("draw")
        }
        
        //cpu = paper, player = scissors
        if cpuNumber == 2 && playerNumber == 3 {
            playerPoints = playerPoints + 1
        }
        
        //cpu = scissors, player = rock
        if cpuNumber == 3 && playerNumber == 1 {
            playerPoints = playerPoints + 1
        }
        
        //cpu = scissors, player = paper
        if cpuNumber == 3 && playerNumber == 2 {
            cpuPoints = cpuPoints + 1
        }
        
        //cpu = scissors, player = scissors
        if cpuNumber == 3 && playerNumber == 3 {
            print("draw")
        }
        
        //display the scores
        cpuLabel.text = "YOU: \(cpuPoints)"
        playerLabel.text = "YOU: \(playerPoints)"
        
        //add a little animation if you want
        UIView.transition(with: cpuImage, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil)
        UIView.transition(with: playerImage, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil)
    }
    
    //help with setting the images
    func setHandImage(imageView:UIImageView, imageNumber:Int) {
        switch imageNumber {
        case 1:
            imageView.image = UIImage(named: "rock")
        case 2:
            imageView.image = UIImage(named: "paper")
        case 3:
            imageView.image = UIImage(named: "scissors")
        default:
            print("error")
        }
    }
}

