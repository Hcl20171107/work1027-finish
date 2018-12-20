//
//  ViewController.swift
//  work1027
//
//  Created by s20171103185 on 2018/10/27.
//  Copyright © 2018 s20171103185. All rights reserved.
//

import UIKit

// 实现一个基本的Stack类型
public struct ArrayStack<T> {
    
    // 声明一个数组，用于存储栈里面的元素
    fileprivate var elements = [T]()
    
    // 构造器
    public init() {}
    
    // 构造器
    public init<S : Sequence>(_ s: S) where S.Iterator.Element == T {
        self.elements = Array(s.reversed())
    }
    
    // 出栈操作，并且将该元素从栈顶删除
    mutating public func pop() -> T? {
        
        /**
         *  在栈的实现过程中，我们是采用数组来存储元素的，而数组中有一个popLast()方法，
         *  这个方法在我们设计pop()方法，实现从栈顶删除元素时，可以提供有效的帮助
         */
        return self.elements.popLast()
        
    }
    
    // 入栈操作，将该元素添加到栈底
    mutating public func push(element: T){
        self.elements.append(element)
    }
    
    // 单纯的出栈操作，不会将元素从栈里删除
    public func peek() -> T? {
        return self.elements.last
    }
    
    // 判断栈是否为空
    public func isEmpty() -> Bool {
        return self.elements.isEmpty
    }
    
    // 返回栈中元素的个数
    public var count: Int {
        return self.elements.count
    }
    
}

// 用来实现数组字面意思声明语法
extension ArrayStack: ExpressibleByArrayLiteral {
    
    /**
     *  这个方法可以让你像下面这样定义一个栈：
     *  var myStack: ArrayStack<Int> = [4, 5, 6, 7]
     */
    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}
/*
// 声明一个栈
var myStack = ArrayStack<Int>()

// 入栈操作
myStack.push(element: 5)
myStack.push(element: 44)
myStack.push(element: 23)

// 打印栈及其元素
print(myStack)

// 出栈操作(会从栈顶删除元素)
var x = myStack.pop()
x = myStack.pop()
x = myStack.pop()

// 前面的操作已经将栈里面的元素删除完了，所以这一步操作会返回nil
x = myStack.pop()

// 得到一个空的栈
x = myStack.pop()

// 打印栈
print(myStack)

// 继续进行入栈操作
myStack.push(element: 87)
myStack.push(element: 2)
myStack.push(element: 9)

// 打印栈
print(myStack)
print("**************")

// 使用新的元素覆盖原来栈里面的元素
myStack = [4,5,6,7]
print(myStack)

// 查看栈的类型
type(of: myStack)

print("**************")

/**
 *  给我们的栈添加for..in语法支持，并且实现从一个现有的栈中初始化出一个新
 *  的栈
 */
extension ArrayStack: Sequence {
    
    // 再添加一个构造器，用于从一个已经存在的Stack实例中初始化出一个新的Stack实例
    public func makeIterator() -> AnyIterator<T> {
        return AnyIterator(IndexingIterator(_elements: self.elements.lazy.reversed()))
    }
}

// 从现有的栈中初始化出一个新的栈
var stackFrommyStack = ArrayStack<Int>(myStack)

// 给新创建出来的栈添加元素
stackFrommyStack.push(element: 55)

// 继续给原来的栈添加元素
myStack.push(element: 70)
myStack.push(element: 10)

// 遍历原来栈中的元素
for el in myStack {
    print(el)
}*/

class ViewController: UIViewController {
    var temp:Double = 0
    var ttemp:Double = 0
    var operatorFlag:Int = 0
    var re = 0
    var judge = 0
    var freguency = 0
    var a = 0
    var limit:Int = 0
    var wait1:Double = 0
    var wait2:Double = 0
    var number1 = 0
    var number2 = 0
    var num:Double = 0
    var n = 0
    var n2 = 0
    var temp2:Int = 0
    var temp3:Int = 0
    var temp4:Double = 0
    var temp5:Double = 0
    var myStack = ArrayStack<Double>()
    var stackmyStack = ArrayStack<Int>()
    var finish = ArrayStack<Double>()
    var myfinish = ArrayStack<Int>()
    @IBOutlet weak var result: UITextField!
    @IBAction func button1(_ sender: Any) {
        if re == 1{
            result.text = "1"
            re = 0
        }
        else if a == 1{
            result.text = ""
            result.text = result.text! + "1"
        }
        else{
            result.text = result.text! + "1"
        }
    }
    @IBAction func button2(_ sender: Any){
        if re == 1{
            result.text = "2"
            re = 0
        }
       else if a == 1{
            result.text = ""
            result.text = result.text! + "2"
        }
        else{
            result.text = result.text! + "2"
        }
    }
    @IBAction func button3(_ sender: Any) {
        if re == 1{
            result.text = "3"
            re = 0
        }
       else if a == 1{
            result.text = ""
            result.text = result.text! + "3"
        }
        else{
            result.text = result.text! + "3"
        }
    }
    @IBAction func button4(_ sender: Any) {
        if re == 1{
            result.text = "4"
            re = 0
        }
        else if a == 1{
            result.text = ""
            result.text = result.text! + "4"
        }
        else{
            result.text = result.text! + "4"
        }
    }
    @IBAction func button5(_ sender: Any) {
        if re == 1{
            result.text = "5"
            re = 0
        }
        else if a == 1{
            result.text = ""
            result.text = result.text! + "5"
        }
        else{
            result.text = result.text! + "5"
        }
    }
    @IBAction func button6(_ sender: Any) {
        if re == 1{
            result.text = "6"
            re = 0
        }
        else if a == 1{
            result.text = ""
            result.text = result.text! + "6"
        }
        else{
            result.text = result.text! + "6"
        }
    }
    @IBAction func button7(_ sender: Any) {
        if re == 1{
            result.text = "7"
            re = 0
        }
        else if a == 1{
            result.text = ""
            result.text = result.text! + "7"
        }
        else{
            result.text = result.text! + "7"
        }
    }
    @IBAction func button8(_ sender: Any) {
        if re == 1{
            result.text = "8"
            re = 0
        }
        else if a == 1{
            result.text = ""
            result.text = result.text! + "8"
        }
        else{
            result.text = result.text! + "8"
        }
    }
    @IBAction func button9(_ sender: Any) {
        if re == 1{
            result.text = "9"
            re = 0
        }
        else if a == 1{
            result.text = ""
            result.text = result.text! + "9"
        }
        else{
            result.text = result.text! + "9"
        }
    }
    @IBAction func button0(_ sender: Any) {
        if re == 1{
            result.text = "0"
            re = 0
        }
        else if a == 1{
            result.text = ""
            result.text = result.text! + "0"
        }
        else{
            result.text = result.text! + "0"
        }
    }
    @IBAction func buttonPoint(_ sender: Any) {
        if judge == 0{
            if re == 1{
                result.text = "0."
                re = 0
            }
            else {
                result.text = result.text! + "."
            }
            judge = 1
        }
        else{
            result.text = result.text! + ""
        }
    }
    @IBAction func buttonAdd(_ sender: Any) {
        if result.text == ""{
            result.text = "0"
            re = 1
        }
        /*else if operatorFlag == 2 {
            temp = temp - Double(result.text!)!
            result.text = "\(temp)"
            a = 1
            operatorFlag = 1
        }
        else if operatorFlag == 1{
            temp = temp + Double(result.text!)!
            result.text = "\(temp)"
            a = 1
        }*/
        else{
            if stackmyStack.isEmpty()
            {
                stackmyStack.push(element: 0)
            }
            temp = Double(result.text!)!
            myStack.push(element: temp)
            if number2 >= 1
            {
                temp2 = stackmyStack.pop()!
                if temp2 == 3
                {
                    temp = myStack.pop()! * myStack.pop()!
                    myStack.push(element: temp)
                    number2 = number2 - 1
                }
                else if temp2 == 4
                {
                    temp4 = myStack.pop()!
                    temp5 = myStack.pop()!
                    temp = temp5 / temp4
                    myStack.push(element: temp)
                    number2 = number2 - 1
                }
                else
                {
                    stackmyStack.push(element: temp2)
                }
            }
            temp = 0
            operatorFlag = 1
            limit = operatorFlag
            stackmyStack.push(element: limit)
            number2 = number2 + 1
            limit = 0
            result.text = ""
        }
    }
    @IBAction func buttonSub(_ sender: Any) {
        if result.text == ""{
            result.text = "0"
            re = 1
        }
        /*else if operatorFlag == 1{
            temp = temp + Double(result.text!)!
            result.text = "\(temp)"
            a = 1
            operatorFlag = 2
        }
        else if operatorFlag == 2 {
            temp = temp - Double(result.text!)!
            result.text = "\(temp)"
            a = 1
        }*/
        else{
            if stackmyStack.isEmpty()
            {
                stackmyStack.push(element: 0)
            }
            temp = Double(result.text!)!
            myStack.push(element: temp)
            if number2 >= 1
            {
                temp2 = stackmyStack.pop()!
                if temp2 == 3
                {
                    temp = myStack.pop()! * myStack.pop()!
                    myStack.push(element: temp)
                    number2 = number2 - 1
                }
                else if temp2 == 4
                {
                    temp4 = myStack.pop()!
                    temp5 = myStack.pop()!
                    temp = temp5 / temp4
                    myStack.push(element: temp)
                    number2 = number2 - 1
                }
                else
                {
                    stackmyStack.push(element: temp2)
                }
            }
            number1 = number1 + 1
            temp = 0
            operatorFlag = 2
            limit = operatorFlag
            stackmyStack.push(element: limit)
            number2 = number2 + 1
            limit = 0
            result.text = ""
        }
       
    }
    @IBAction func buttonMult(_ sender: Any) {
        if result.text == ""{
            result.text = "0"
            re = 1
        }
        /*else if operatorFlag == 4{
            temp = temp / Double(result.text!)!
            result.text = "\(temp)"
            a = 1
            operatorFlag = 3
        }
        else if operatorFlag == 3{
            temp = temp * Double(result.text!)!
            result.text = "\(temp)"
            a = 1
        }*/
        else{
            if stackmyStack.isEmpty()
            {
                stackmyStack.push(element: 0)
            }
            temp = Double(result.text!)!
            myStack.push(element: temp)
            if number2 >= 1
            {
                temp2 = stackmyStack.pop()!
                if temp2 == 3
                {
                    temp = myStack.pop()! * myStack.pop()!
                    myStack.push(element: temp)
                    number2 = number2 - 1
                }
                else if temp2 == 4
                {
                    temp4 = myStack.pop()!
                    temp5 = myStack.pop()!
                    temp = temp5 / temp4
                    myStack.push(element: temp)
                    number2 = number2 - 1
                }
                else
                {
                    stackmyStack.push(element: temp2)
                }
            }
            number1 = number1 + 1
            temp = 0
            operatorFlag = 3
            limit = operatorFlag
            stackmyStack.push(element: limit)
            number2 = number2 + 1
            limit = 0
            result.text = ""
        }
    }
    @IBAction func buttonDivi(_ sender: Any) {
        if result.text == ""{
            result.text = "0"
            re = 1
        }
        /*else if operatorFlag == 3{
            temp = temp * Double(result.text!)!
            result.text = "\(temp)"
            a = 1
            operatorFlag = 4
        }
        else if operatorFlag == 4{
            temp = temp / Double(result.text!)!
            result.text = "\(temp)"
            a = 1
        }*/
        else{
            if stackmyStack.isEmpty()
            {
                stackmyStack.push(element: 0)
            }
            temp = Double(result.text!)!
            myStack.push(element: temp)
            if number2 >= 1
            {
                temp2 = stackmyStack.pop()!
                if temp2 == 3
                {
                    temp = myStack.pop()! * myStack.pop()!
                    myStack.push(element: temp)
                    number2 = number2 - 1
                }
                else if temp2 == 4
                {
                    temp4 = myStack.pop()!
                    temp5 = myStack.pop()!
                    temp = temp5 / temp4
                    myStack.push(element: temp)
                    number2 = number2 - 1
                }
                else
                {
                    stackmyStack.push(element: temp2)
                }
            }
            number1 = number1 + 1
            temp = 0
            operatorFlag = 4
            limit = operatorFlag
            stackmyStack.push(element: limit)
            number2 = number2 + 1
            limit = 0
            result.text = ""
        }
    }

    @IBAction func buttonAC(_ sender: Any) {
        result.text = "0"
        re = 1
        judge = 0
        temp = 0
        ttemp = 0
        temp2 = 0
        temp3 = 0
        operatorFlag = 0
        a = 0
    }
    @IBAction func buttonResult(_ sender: Any) {
        if result.text == ""{
            result.text = "0"
        }
        else{
      /*  else{
            if operatorFlag == 1{
                temp = temp + Double(result.text!)!
                result.text = "\(temp)"
            }
            if operatorFlag == 2{
                temp = temp - Double(result.text!)!
                result.text = "\(temp)"
            }
            if operatorFlag == 3{
                temp = temp * Double(result.text!)!
                result.text = "\(temp)"
            }
            if operatorFlag == 4{
                temp = temp / Double(result.text!)!
                result.text = "\(temp)"
            }
        }*/
            myStack.push(element: Double(result.text!)!)
            if number2 > 1
            {
                temp2 = stackmyStack.pop()!
                temp3 = stackmyStack.pop()!
                if temp2 == 3 && temp3 != 4
                {
                    temp = myStack.pop()! * myStack.pop()!
                    myStack.push(element: temp)
                    number2 = number2 - 1
                    stackmyStack.push(element: temp3)
                }
                else if temp2 == 4 && temp3 != 3
                {
                    temp4 = myStack.pop()!
                    temp5 = myStack.pop()!
                    temp = temp5 / temp4
                    myStack.push(element: temp)
                    number2 = number2 - 1
                    stackmyStack.push(element: temp3)
                }
                else
                {
                    stackmyStack.push(element: temp3)
                    stackmyStack.push(element: temp2)
                }
            }
            number1 = number1 + 1
            
            while !stackmyStack.isEmpty()
            {
                myfinish.push(element: stackmyStack.pop()!)
            }
            while !myStack.isEmpty(){
                finish.push(element: myStack.pop()!)
            }
            for _ in 1...number2+1{
                n = myfinish.pop()!
                if n == 0
                {
                }
                else
                {
                    wait1 = finish.pop()!
                    wait2 = finish.pop()!
                    if n == 1{
                        num = wait1 + wait2
                        finish.push(element: num)
                        
                    }
                    else if n == 2{
                        num = wait1 - wait2
                        finish.push(element: num)
                    }
                    else if n == 3{
                        num = wait1 * wait2
                        finish.push(element: num)
                    }
                    else if n == 4{
                        num = wait1 / wait2
                        finish.push(element: num)
                    }
                }
            }
            temp = finish.pop()!
            result.text = "\(temp)"
            num = 0
            re = 1
            judge = 0
            temp = 0
            ttemp = 0
            operatorFlag = 0
            a = 0
            number2 = 0
            n = 0
            temp2 = 0
            temp3 = 0
        }
    }
    @IBAction func buttonMinus(_ sender: Any) {
            temp = Double(result.text!)!
            temp = Double(result.text!)! * -1
            result.text = "\(temp)"
    }
    @IBAction func buttonDelete(_ sender: Any) {
        var ttemp: String = result.text!
        for index in ttemp.indices{
            print("\(ttemp[index])",terminator: "")
        }
        let range = ttemp.index(ttemp.endIndex, offsetBy: -1)..<ttemp.endIndex
        ttemp.removeSubrange(range)
        result.text = "\(ttemp)"
    }
    @IBAction func buttonSqrt(_ sender: Any) {
        temp = Double(result.text!)!
        temp = sqrt(Double(result.text!)!)
        result.text = "\(temp)"
    }
    @IBAction func buttonSin(_ sender: Any) {
        temp = Double(result.text!)!
        temp = sin(Double(result.text!)!)
        result.text = "\(temp)"
    }
    @IBAction func buttonCos(_ sender: Any) {
        temp = Double(result.text!)!
        temp = cos(Double(result.text!)!)
        result.text = "\(temp)"
    }
    @IBAction func buttonPercent(_ sender: Any) {
        temp = Double(result.text!)!
        temp = Double(result.text!)! * 0.01
        result.text = "\(temp)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
