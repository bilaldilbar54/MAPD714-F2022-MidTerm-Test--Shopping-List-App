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
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        shoppingListName.text = "My Shopping List"
        shoppingListNameLandscape.text = "My Shopping List"

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
    
    //Save Button Press Function in Portrait
    @IBAction func saveButtonPressed(_ sender: UIButton)
    {
        if let shopListName = shoppingListName.text
        {
            print("\nPortrait Mode:")
            print("Shopping List Name: \(shopListName)")
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
    
    //Save Button Press Function in Landscape
    @IBAction func saveButtonPressedLandscape(_ sender: UIButton)
    {
        if let shopListName = shoppingListNameLandscape.text
        {
            print("\nLandscape Mode:")
            print("Shopping List Name: \(shopListName)")
        }
        
        if let item1 = itemField1Landscape.text
        {
            if let price1 = itemPrice1Landscape.text
            {
                if let qty1 = itemQty1Landscape.text
                {
                    print ("Item 1 : \(item1), Price: \(price1), Quantity: \(qty1)")
                }
            }
        }
        
        if let item2 = itemField2Landscape.text
        {
            if let price2 = itemPrice2Landscape.text
            {
                if let qty2 = itemQty2Landscape.text
                {
                    print ("Item 2 : \(item2), Price: \(price2), Quantity: \(qty2)")
                }
            }
        }
        
        if let item3 = itemField3Landscape.text
        {
            if let price3 = itemPrice3Landscape.text
            {
                if let qty3 = itemQty3Landscape.text
                {
                    print ("Item 3 : \(item3), Price: \(price3), Quantity: \(qty3)")
                }
            }
        }
        
        if let item4 = itemField4Landscape.text
        {
            if let price4 = itemPrice4Landscape.text
            {
                if let qty4 = itemQty4Landscape.text
                {
                    print ("Item 4 : \(item4), Price: \(price4), Quantity: \(qty4)")
                }
            }
        }
        
        if let item5 = itemField5Landscape.text
        {
            if let price5 = itemPrice5Landscape.text
            {
                if let qty5 = itemQty5Landscape.text
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
        
        //Resetting All The Values
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
}

