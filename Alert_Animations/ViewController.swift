//
//  ViewController.swift
//  PMAlertController
//
//  Created by Awadhesh Pratap Singh on 31/01/2023.
//

import UIKit
import PMAlertController

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showAlert(_ sender: AnyObject) {
        let alertVC = PMAlertController(title: "PSM", description: "Are you sure, you want to submt order.", image: UIImage(named: "flag.png"), style: .alert) //Image by freepik.com, taken on flaticon.com
        
        alertVC.addAction(PMAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(PMAlertAction(title: "Allow", style: .default, action: { () in
            print("Allow")
        }))
        
   //     alertVC.alertTitle.isHidden = true
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showWalkthrough(_ sender: AnyObject) {
        
        let alertVC = PMAlertController(title: "PSM", description: "Are you sure, you want to submt order.", image: UIImage(named: "flag.png"), style: .walkthrough) //Image by freepik.com, taken on flaticon.com
        
        alertVC.addAction(PMAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(PMAlertAction(title: "Allow", style: .default, action: { () in
            print("Allow")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showAlertWith3Buttons(_ sender: AnyObject) {
        
        let alertVC = PMAlertController(title: "PSM", description: "Are you sure, you want to submt order.", image: UIImage(named: "flag.png"), style: .alert) //Image by freepik.com, taken on flaticon.com
        
        alertVC.addAction(PMAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(PMAlertAction(title: "No Thanks", style: .cancel, action: { () in
            print("No thanks")
        }))
        
        alertVC.addAction(PMAlertAction(title: "Allow", style: .default, action: { () in
            print("Allow")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showWalkthroughWith3Buttons(_ sender: AnyObject) {
        let alertVC = PMAlertController(title: "PSM", description: "Are you sure, you want to submt order.", image: UIImage(named: "flag.png"), style: .walkthrough) //Image by freepik.com, taken on flaticon.com
        
        alertVC.addAction(PMAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(PMAlertAction(title: "No Thanks", style: .cancel, action: { () in
            print("No thanks")
        }))
        
        alertVC.addAction(PMAlertAction(title: "Allow", style: .default, action: { () in
            print("Allow")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showAlertWithTextEntry(_ sender: AnyObject) {
        let alertVC = PMAlertController(title: "PSM", description: "Are you sure, you want to submt order.", image: UIImage(named: "flag.png"), style: .alert)
        
        alertVC.addTextField { (textField) in
            textField?.placeholder = "This is a placeholder."
        }
        
        alertVC.addAction(PMAlertAction(title: "Cancel", style: .cancel))
        
        alertVC.addAction(PMAlertAction(title: "Ok", style: .default, action: { () in
            print (alertVC.textFields[0].text ?? "")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showWalkthroughWithCustomPaddings(_ sender: AnyObject) {
        let alertVC = PMAlertController(title: "PSM", description: "Are you sure, you want to submt order.", image: UIImage(named: "flag.png"), style: .walkthrough) //Image by freepik.com, taken on flaticon.com
        
        alertVC.headerViewTopSpaceConstraint.constant = 20
        alertVC.alertContentStackViewLeadingConstraint.constant = 20
        alertVC.alertContentStackViewTrailingConstraint.constant = 20
        alertVC.alertContentStackViewTopConstraint.constant = 20
        alertVC.alertActionStackViewLeadingConstraint.constant = 20
        alertVC.alertActionStackViewTrailingConstraint.constant = 20
        alertVC.alertActionStackViewTopConstraint.constant = 20
        alertVC.alertActionStackViewBottomConstraint.constant = 20
        alertVC.view.layoutIfNeeded()
        
        alertVC.addAction(PMAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(PMAlertAction(title: "Allow", style: .default, action: { () in
            print("Allow")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
}
