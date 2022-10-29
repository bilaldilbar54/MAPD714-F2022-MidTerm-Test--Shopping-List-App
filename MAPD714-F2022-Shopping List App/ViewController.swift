//  Midterm Test - Simple Shopping List App
//  Author's name and StudentID:
//  Name: Muhammad Bilal Dilbar Hussain
//  Student ID: 301205152
//  Dated: 26/Oct/2022
//  App description: This is a simple shopping list app that allows user to enter the list name followed by the list items with their prices and quantities.
//  Xcode Version : Version 14.0.1 (14A400)

import UIKit

class ViewController: UIViewController
{
    //Shopping List Name Fields
    @IBOutlet weak var shoppingListName: UITextField!
    @IBOutlet weak var shoppingListNameLandscape: UITextField!
    
    //List Items Name Fields
    @IBOutlet weak var itemField1: UITextField!
    @IBOutlet weak var itemField1Landscape: UITextField!
    @IBOutlet weak var itemField2: UITextField!
    @IBOutlet weak var itemField2Landscape: UITextField!
    @IBOutlet weak var itemField3: UITextField!
    @IBOutlet weak var itemField3Landscape: UITextField!
    @IBOutlet weak var itemField4: UITextField!
    @IBOutlet weak var itemField4Landscape: UITextField!
    @IBOutlet weak var itemField5: UITextField!
    @IBOutlet weak var itemField5Landscape: UITextField!
    
    //List Items Price Fields
    @IBOutlet weak var itemPrice1: UITextField!
    @IBOutlet weak var itemPrice1Landscape: UITextField!
    @IBOutlet weak var itemPrice2: UITextField!
    @IBOutlet weak var itemPrice2Landscape: UITextField!
    @IBOutlet weak var itemPrice3: UITextField!
    @IBOutlet weak var itemPrice3Landscape: UITextField!
    @IBOutlet weak var itemPrice4: UITextField!
    @IBOutlet weak var itemPrice4Landscape: UITextField!
    @IBOutlet weak var itemPrice5: UITextField!
    @IBOutlet weak var itemPrice5Landscape: UITextField!
    
    //List Items Quantity Text Views
    @IBOutlet weak var itemQty1: UILabel!
    @IBOutlet weak var itemQty1Landscape: UILabel!
    @IBOutlet weak var itemQty2: UILabel!
    @IBOutlet weak var itemQty2Landscape: UILabel!
    @IBOutlet weak var itemQty3: UILabel!
    @IBOutlet weak var itemQty3Landscape: UILabel!
    @IBOutlet weak var itemQty4: UILabel!
    @IBOutlet weak var itemQty4Landscape: UILabel!
    @IBOutlet weak var itemQty5: UILabel!
    @IBOutlet weak var itemQty5Landscape: UILabel!
    
    //Stepper Outlets
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var stepper1Landscape: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var stepper2Landscape: UIStepper!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var stepper3Landscape: UIStepper!
    @IBOutlet weak var stepper4: UIStepper!
    @IBOutlet weak var stepper4Landscape: UIStepper!
    @IBOutlet weak var stepper5: UIStepper!
    @IBOutlet weak var stepper5Landscape: UIStepper!
    
    //Share Button Outlets
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var shareButtonLandscape: UIButton!
    
    //Variables To Store The Input
    var listName = ""
    var item1 = ""
    var item2 = ""
    var item3 = ""
    var item4 = ""
    var item5 = ""
    var qty1 = ""
    var qty2 = ""
    var qty3 = ""
    var qty4 = ""
    var qty5 = ""
    var price1 = ""
    var price2 = ""
    var price3 = ""
    var price4 = ""
    var price5 = ""
    var listDescription = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Setting The Share Button To Hidden
        shareButton.isHidden = true
        shareButtonLandscape.isHidden = true
        
        //Default Values
        shoppingListName.text = "Shopping List"
        shoppingListNameLandscape.text = "Shopping List"
        itemQty1.text = "0"
        itemQty1Landscape.text = "0"
        itemQty2.text = "0"
        itemQty2Landscape.text = "0"
        itemQty3.text = "0"
        itemQty3Landscape.text = "0"
        itemQty4.text = "0"
        itemQty4Landscape.text = "0"
        itemQty5.text = "0"
        itemQty5Landscape.text = "0"
        itemPrice1.text = "$"
        itemPrice1Landscape.text = "$"
        itemPrice2.text = "$"
        itemPrice2Landscape.text = "$"
        itemPrice3.text = "$"
        itemPrice3Landscape.text = "$"
        itemPrice4.text = "$"
        itemPrice4Landscape.text = "$"
        itemPrice5.text = "$"
        itemPrice5Landscape.text = "$"
    }

    //Stepper Functions For Portrait
    @IBAction func qtyStepper1(_ sender: UIStepper)
    {
        itemQty1.text = String((Int(sender.value)))
    }
    @IBAction func qtyStepper2(_ sender: UIStepper)
    {
        itemQty2.text = String((Int(sender.value)))
    }
    @IBAction func qtyStepper3(_ sender: UIStepper)
    {
        itemQty3.text = String((Int(sender.value)))
    }
    @IBAction func qtyStepper4(_ sender: UIStepper)
    {
        itemQty4.text = String((Int(sender.value)))
    }
    @IBAction func qtyStepper5(_ sender: UIStepper)
    {
        itemQty5.text = String((Int(sender.value)))
    }
    
    //Stepper Functions For Landscape
    @IBAction func qtyStepper1Landscape(_ sender: UIStepper)
    {
        itemQty1Landscape.text = String((Int(sender.value)))
    }
    
    @IBAction func qtyStepper2Landscape(_ sender: UIStepper)
    {
        itemQty2Landscape.text = String((Int(sender.value)))
    }
    
    @IBAction func qtyStepper3Landscape(_ sender: UIStepper)
    {
        itemQty3Landscape.text = String((Int(sender.value)))
    }
    
    @IBAction func qtyStepper4Landscape(_ sender: UIStepper)
    {
        itemQty4Landscape.text = String((Int(sender.value)))
    }
    
    @IBAction func qtyStepper5Landscape(_ sender: UIStepper)
    {
        itemQty5Landscape.text = String((Int(sender.value)))
    }
    
    //Save Button Pressed Function in Portrait
    @IBAction func saveButtonPressed(_ sender: UIButton)
    {
        //Getting The Input Values
        listName = shoppingListName.text!
        item1 = itemField1.text!
        item2 = itemField2.text!
        item3 = itemField3.text!
        item4 = itemField4.text!
        item5 = itemField5.text!
        price1 = itemPrice1.text!
        price2 = itemPrice2.text!
        price3 = itemPrice3.text!
        price4 = itemPrice4.text!
        price5 = itemPrice5.text!
        qty1 = itemQty1.text!
        qty2 = itemQty2.text!
        qty3 = itemQty3.text!
        qty4 = itemQty4.text!
        qty5 = itemQty5.text!
        
        //Displaying The Input In The Debug
        print("\nPortrait Mode:")
        print("List Name: \(listName)")
        print ("Item 1 : \(item1), Price: \(price1), Quantity: \(qty1)")
        print ("Item 2 : \(item2), Price: \(price2), Quantity: \(qty2)")
        print ("Item 3 : \(item3), Price: \(price3), Quantity: \(qty3)")
        print ("Item 4 : \(item4), Price: \(price4), Quantity: \(qty4)")
        print ("Item 5 : \(item5), Price: \(price5), Quantity: \(qty5)")

        //Appending The Input Values Into The Action Sheet
        listDescription = "List Name: \(listName)"
        listDescription.append("\nItem 1: \(item1), Qty: \(qty1)")
        listDescription.append("\nItem 2: \(item2), Qty: \(qty2)")
        listDescription.append("\nItem 3: \(item3), Qty: \(qty3)")
        listDescription.append("\nItem 4: \(item4), Qty: \(qty4)")
        listDescription.append("\nItem 5: \(item5), Qty: \(qty5)")
        
        //Action Sheet Will Popup After The Save Button Is Clicked
        let title = "Your Shopping List"
        let message = listDescription
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        let alertAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
        
        //Share Button Will Be Visible When The Save Button Is Clicked
        shareButton.isHidden = false
    }
    
    //Save Button Pressed Function in Landscape
    @IBAction func saveButtonPressedLandscape(_ sender: UIButton)
    {
        //Getting The Input Values
        listName = shoppingListNameLandscape.text!
        item1 = itemField1Landscape.text!
        item2 = itemField2Landscape.text!
        item3 = itemField3Landscape.text!
        item4 = itemField4Landscape.text!
        item5 = itemField5Landscape.text!
        price1 = itemPrice1Landscape.text!
        price2 = itemPrice2Landscape.text!
        price3 = itemPrice3Landscape.text!
        price4 = itemPrice4Landscape.text!
        price5 = itemPrice5Landscape.text!
        qty1 = itemQty1Landscape.text!
        qty2 = itemQty2Landscape.text!
        qty3 = itemQty3Landscape.text!
        qty4 = itemQty4Landscape.text!
        qty5 = itemQty5Landscape.text!
        
        //Displaying The Input Values In The Debug
        print("\nLandscape Mode:")
        print("List Name: \(listName)")
        print ("Item 1 : \(item1), Price: \(price1), Quantity: \(qty1)")
        print ("Item 2 : \(item2), Price: \(price2), Quantity: \(qty2)")
        print ("Item 3 : \(item3), Price: \(price3), Quantity: \(qty3)")
        print ("Item 4 : \(item4), Price: \(price4), Quantity: \(qty4)")
        print ("Item 5 : \(item5), Price: \(price5), Quantity: \(qty5)")

        //Appending The Input Values Into The Action Sheet
        listDescription = "List Name: \(listName)"
        listDescription.append("\nItem 1: \(item1), Qty: \(qty1)")
        listDescription.append("\nItem 2: \(item2), Qty: \(qty2)")
        listDescription.append("\nItem 3: \(item3), Qty: \(qty3)")
        listDescription.append("\nItem 4: \(item4), Qty: \(qty4)")
        listDescription.append("\nItem 5: \(item5), Qty: \(qty5)")
        
        //Action Sheet Will Popup After The Save Button Is Clicked
        let title = "Your Shopping List"
        let message = listDescription
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        let alertAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
        
        //Share Button Will Be Visible When The Save Button Is Clicked
        shareButtonLandscape.isHidden = false
    }
    
    //Cancel Button Pressed Function
    @IBAction func cancelButtonPressed(_ sender: UIButton)
    {
        print("\nCancel Button Pressed")
        print("Resetting Values")
        
        //Resetting All The Values
        shoppingListName.text = "Shopping List"
    
        itemField1.text = ""
        itemField1Landscape.text = ""
        itemField2.text = ""
        itemField2Landscape.text = ""
        itemField3.text = ""
        itemField3Landscape.text = ""
        itemField4.text = ""
        itemField4Landscape.text = ""
        itemField5.text = ""
        itemField5Landscape.text = ""
        
        itemPrice1.text = "$"
        itemPrice1Landscape.text = "$"
        itemPrice2.text = "$"
        itemPrice2Landscape.text = "$"
        itemPrice3.text = "$"
        itemPrice3Landscape.text = "$"
        itemPrice4.text = "$"
        itemPrice4Landscape.text = "$"
        itemPrice5.text = "$"
        itemPrice5Landscape.text = "$"
        
        itemQty1.text = "0"
        stepper1.value = 0
        itemQty1Landscape.text = "0"
        stepper1Landscape.value = 0
        itemQty2.text = "0"
        stepper2.value = 0
        itemQty2Landscape.text = "0"
        stepper2Landscape.value = 0
        itemQty3.text = "0"
        stepper3.value = 0
        itemQty3Landscape.text = "0"
        stepper3Landscape.value = 0
        itemQty4.text = "0"
        stepper4.value = 0
        itemQty4Landscape.text = "0"
        stepper4Landscape.value = 0
        itemQty5.text = "0"
        stepper5.value = 0
        itemQty5Landscape.text = "0"
        stepper5Landscape.value = 0
    }
    
    //Share Button Pressed Function
    @IBAction func shareButtonPressed(_ sender: UIButton)
    {
        //It Will Allow User To Share The List Created
        let message = listDescription
        let activityView = UIActivityViewController(activityItems: [message], applicationActivities: nil)
        present(activityView, animated: true, completion: nil)
    }
}

