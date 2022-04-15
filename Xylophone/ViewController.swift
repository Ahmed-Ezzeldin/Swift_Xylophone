//
//  ViewController.swift
//  Xylophone
//
//  Created by Codemaker on 06/04/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        //        print("Sound is playing......");
        //        playSound(  filePath: "Sounds/C", fileName: "wav");
        print("Sender Tag: ( \(sender.tag) ) ");
        switch sender.tag {
        case 1:
            playSound(  filePath: "Sounds/C", fileType: "wav");
            break;
        case 2:
            playSound(  filePath: "Sounds/D", fileType: "wav");
            break;
        case 3:
            playSound(  filePath: "Sounds/E", fileType: "wav");
            break;
        case 4:
            playSound(  filePath: "Sounds/F", fileType: "wav");
            break;
        case 5:
            playSound(  filePath: "Sounds/G", fileType: "wav");
            break;
        case 6:
            playSound(  filePath: "Sounds/A", fileType: "wav");
            break;
        case 7:
            playSound(  filePath: "Sounds/B", fileType: "wav");
            break;
        default:
            playSound(  filePath: "Sounds/C", fileType: "wav");
            break;
        }
    }
    
    
    
    
    
    func playSound(filePath: String, fileType: String ) {
        guard let path = Bundle.main.path(forResource: filePath, ofType:fileType) else {
            return }
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
    
}

