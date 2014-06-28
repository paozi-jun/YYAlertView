

import UIKit

class MainViewController: UIViewController {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
        var btn1 = UIButton(frame:CGRectMake(50, 400, 100, 50))
        btn1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn1.setTitle("Two Button", forState: UIControlState.Normal)
        btn1.addTarget(self, action: "twoBtnClicked", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn1)
        
        var btn2 = UIButton(frame:CGRectMake(50, 200, 100, 50))
        btn2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn2.setTitle("One Button", forState: UIControlState.Normal)
        btn2.addTarget(self, action: "oneBtnClicked", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn2)
        // Do any additional setup after loading the view.
    }

    func twoBtnClicked(){
        var alert = YYAlertView(title:"Congratulations",content:"You have bought something", leftTitle:"Ok",rightTitle:"Fine")
        alert.show()
        alert.leftBlock = {()->() in
            println("left button clicked")
        };
        alert.rightBlock = {()->() in
            println("right button clicked")
        };
        alert.dismissBlock = {()->() in
            println("Do something interesting after dismiss block")
        };
    }
    
    func oneBtnClicked(){
        var alert = YYAlertView(title:"Congratulations",content:"You have bought something", leftTitle:nil,rightTitle:"Fine")
        alert.show()
        alert.leftBlock = {()->() in
            println("left button clicked")
        };
        alert.rightBlock = {()->() in
            println("right button clicked")
        };
        alert.dismissBlock = {()->() in
            println("Do something interesting after dismiss block")
        };
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
