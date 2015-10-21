//
//  DashboardViewController.swift
//  Assassin
//
//  Created by Courtney Bohrer on 10/18/15.
//  Copyright © 2015 Courtney Bohrer. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, UIPopoverControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        
        //check if the user is logged in
        if(PFUser.currentUser() == nil){
            //if they are not, bring up the login screen
            let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewControllerWithIdentifier("LoginViewController") as! LoginViewController
            vc.modalPresentationStyle = UIModalPresentationStyle.Popover
            presentViewController(vc, animated: true, completion:nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTouchLogoutButton(sender: AnyObject) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("LoginViewController") as! LoginViewController
        vc.modalPresentationStyle = UIModalPresentationStyle.Popover
        presentViewController(vc, animated: true, completion:nil)
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
