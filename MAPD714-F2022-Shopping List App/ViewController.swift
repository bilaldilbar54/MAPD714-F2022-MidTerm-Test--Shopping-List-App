//  Midterm Test - Simple Shopping List App
//  Author's name and StudentID:
//  Muhammad Bilal Dilbar Hussain
//  Student ID: 301205152
//  Dated: 26/Oct/2022
//  App description: This is a simple shopping list app that allows user to enter the list name followed by the list items with their prices and quantities.
//  Xcode Version : Version 14.0.1 (14A400)

import UIKit

class ViewController: UIViewController
{
    //Shopping List Name Field
    @IBOutlet weak var shoppingListName: UITextField!
    
    //List Items Name Fields
    @IBOutlet weak var itemField1: UITextField!
    @IBOutlet weak var itemField2: UITextField!
    @IBOutlet weak var itemField3: UITextField!
    @IBOutlet weak var itemField4: UITextField!
    @IBOutlet weak var itemField5: UITextField!
    
    //List Items Price Fields
    @IBOutlet weak var itemPrice1: UITextField!
    @IBOutlet weak var itemPrice2: UITextField!
    @IBOutlet weak var itemPrice3: UITextField!
    @IBOutlet weak var itemPrice4: UITextField!
    @IBOutlet weak var itemPrice5: UITextField!
    
    //List Items Quantity Text Views
    @IBOutlet weak var itemQty1: UILabel!
    @IBOutlet weak var itemQty2: UILabel!
    @IBOutlet weak var itemQty3: UILabel!
    @IBOutlet weak var itemQty4: UILabel!
    @IBOutlet weak var itemQty5: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        shoppingListName.text = "My Shopping List"
        
        itemQty1.text = "0"
        itemQty2.text = "0"
        itemQty3.text = "0"
        itemQty4.text = "0"
        itemQty5.text = "0"
        
        itemPrice1.text = "$"
        itemPrice2.text = "$"
        itemPrice3.text = "$"
        itemPrice4.text = "$"
        itemPrice5.text = "$"
    }

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
    
    @IBAction func saveButtonPressed(_ sender: UIButton)
    {
        if let shopListName = shoppingListName.text
        {
            print("\nShopping List Name: \(shopListName)")
        }
        
        if let item1 = itemField1.text
        {
            if let price1 = itemPrice1.text
            {
                if let qty1 = itemQty1.text
                {
                    print ("Item 1 : \(item1), Price: \(price1), Quantity: \(qty1)")
                }
            }
        }
        
        if let item2 = itemField2.text
        {
            if let price2 = itemPrice2.text
            {
                if let qty2 = itemQty2.text
                {
                    print ("Item 2 : \(item2), Price: \(price2), Quantity: \(qty2)")
                }
            }
        }
        
        if let item3 = itemField3.text
        {
            if let price3 = itemPrice3.text
            {
                if let qty3 = itemQty3.text
                {
                    print ("Item 3 : \(item3), Price: \(price3), Quantity: \(qty3)")
                }
            }
        }
        
        if let item4 = itemField4.text
        {
            if let price4 = itemPrice4.text
            {
                if let qty4 = itemQty4.text
                {
                    print ("Item 4 : \(item4), Price: \(price4), Quantity: \(qty4)")
                }
            }
        }
        
        if let item5 = itemField5.text
        {
            if let price5 = itemPrice5.text
            {
                if let qty5 = itemQty5.text
                {
                    print ("Item 5 : \(item5), Price: \(price5), Quantity: \(qty5)")
                }
            }
        }
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton)
    {
        print("\nCancel Button Pressed")
        print("Resetting Screen")
        
        shoppingListName.text = "My Shopping List"
        
        itemField1.text = ""
        itemField2.text = ""
        itemField3.text = ""
        itemField4.text = ""
        itemField5.text = ""
        
        itemPrice1.text = "$"
        itemPrice2.text = "$"
        itemPrice3.text = "$"
        itemPrice4.text = "$"
        itemPrice5.text = "$"
        
        itemQty1.text = "0"
        itemQty2.text = "0"
        itemQty3.text = "0"
        itemQty4.text = "0"
        itemQty5.text = "0"
    }
}

