//
//  ViewController.swift
//  LottieAnimationDemo
//
//  Created by Develop on 3/7/22.
//  Copyright © 2022 Develop. All rights reserved.
//

import UIKit
import Lottie

class LaunchVC: UIViewController {

    private let animationView = AnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnimations()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.5) {
               let vc = self.storyboard?.instantiateViewController(identifier: "HomeVC") as! HomeVC
                        vc.modalTransitionStyle = .crossDissolve
                        vc.modalPresentationStyle = .fullScreen
                        self.present(vc, animated: true)
                    }
        }
            
    
        
//        UIView.animate(withDuration: 2, animations: {
//            self.setupAnimations(completion: <#() -> ()#>)
//
//        }) { done in
//            let vc = self.storyboard?.instantiateViewController(identifier: "HomeVC") as! HomeVC
//            vc.modalTransitionStyle = .crossDissolve
//            vc.modalPresentationStyle = .fullScreen
//            self.present(vc, animated: true)
//        }
    

    private func setupAnimations(){
       
        animationView.frame = CGRect(x: 0, y: 0, width: view.frame.width , height: 400)
        animationView.center = view.center
        //animationView.backgroundColor = .red
        view.addSubview(animationView)
        animationView.animation = Animation.named("SocialMedia")
        animationView.loopMode = .playOnce
        animationView.contentMode = .scaleAspectFit
        animationView.play()

    }

}


