//
//  ViewController.swift
//  CalculatorJAC
//
//  Created by Consultant on 1/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BorrarTodo()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var Calculo: UILabel!
    @IBOutlet weak var Resultado: UILabel!
    var CalculoEnPantalla: String = ""
    
    
    
    func BorrarTodo(){
        CalculoEnPantalla = ""
        Calculo.text = ""
        Resultado.text = ""
        
    }
    
    func anadirCalculo (value: String){
        CalculoEnPantalla += value
        Calculo.text = CalculoEnPantalla
    }
    
    @IBAction func ACBotton(_ sender: Any) {
        BorrarTodo()
    }
    
    
    @IBAction func ChangeSignButton(_ sender: Any) {
    }
    
    
    @IBAction func PercentageButton(_ sender: Any) {
        anadirCalculo(value: "%")
        
        
        
    }
    
    
    @IBAction func DivideButton(_ sender: Any) {
        anadirCalculo(value: "/")
        
    }
    
    
    @IBAction func MultiplyButton(_ sender: Any) {
        anadirCalculo(value: "*")
        
    }
    
    
    @IBAction func SubstractButton(_ sender: Any) {
        anadirCalculo(value: "-")
        
    }
    
    
    @IBAction func AddButton(_ sender: Any) {
        anadirCalculo(value: "+")
        
    }
    
    
    @IBAction func EqualButton(_ sender: Any) {
        
     
            let expression = NSExpression(format: CalculoEnPantalla)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = FormatoResultado(result: result)
            Resultado.text = resultString
        
    }
    func FormatoResultado(result: Double) ->String{
        
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String (format: "%.0f", result)
            
        }else {
            return String (format: "%.2f", result)
        }
        
    }
    
    @IBAction func DotButton(_ sender: Any) {
        anadirCalculo(value: ".")

    }
    
    
    
    @IBAction func ZeroButton(_ sender: Any) {
        anadirCalculo(value: "0")

    }
    
    
    @IBAction func OneButton(_ sender: Any) {
        anadirCalculo(value: "1")

    }
    
    @IBAction func TwoButton(_ sender: Any) {
        anadirCalculo(value: "2")

    }
    
    @IBAction func ThreeButton(_ sender: Any) {
        anadirCalculo(value: "3")

    }
    
    
    @IBAction func FourButton(_ sender: Any) {
        anadirCalculo(value: "4")

    }
    
    
    @IBAction func FiveButton(_ sender: Any) {
        anadirCalculo(value: "5")

    }
    
    
    @IBAction func SixButton(_ sender: Any) {
        anadirCalculo(value: "6")

    }
    
    @IBAction func SevenButton(_ sender: Any) {
        anadirCalculo(value: "7")

    }
    
    @IBAction func EightButton(_ sender: Any) {
        anadirCalculo(value: "8")

    }
    
    @IBAction func NineButton(_ sender: Any) {
        anadirCalculo(value: "9")

    }
    
    
    
}

