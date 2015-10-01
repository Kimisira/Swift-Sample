//: Playground - noun: a place where people can play

import UIKit

var var1:Int = 2
var var2:String = "ABC"
var var3 = (1,2,3)
var var4 = ["No":"1001","Name":"山田"]

//変数が何型を見てくれるメソッド
print(var4.dynamicType)

//構文 if文
let age = 30
if  age < 20 {
    print("未成年")
}else{
    print("成人")
}

//for文
for i in 1...10{
    print(i)
}

let array = [10,20,30]
for avalue in array {
    print(avalue)
}

let dict = ["No":"1001","Name":"山田"]
for (key,value) in dict {
    print(key + ":" + value)
}

//関数
//引数も戻り値もない
func exfunc1(){
    print("Heelo!")
}
//引数なしの戻り値String
func exfunc2()->String{
    return "Hello!1"
}
//引数Intの戻り値Int
func exfunc4(num:Int)->Int{
    return num * 2
}
//複数引数リストで戻り値Int
func exfunc5(num1:Int,num2:Int)->Int {
    return num1 * num2
}

//関数の実行
exfunc1()
exfunc2()
exfunc4(5)
exfunc5(10,num2: 20)

//クラス
class ExClass1{
    var prop1:Int = 0
    func func1()->Int{
        return prop1 * 2
    }
}
class ExClass2:ExClass1{
    var prop2:Int = 0
    func func2()->Int{
        return prop1 * prop2
    }
}

var exClass1 = ExClass1()//インスタンスの生成
exClass1.prop1 = 5
exClass1.func1()


var exClass2 = ExClass2()
exClass2.prop1 = 3
exClass2.prop2 = 10

exClass2.func1()
exClass2.func2()

//オプショナル型
var str2:String = ""
var str3:String? = nil
var str4:String? = "ABC"
str4!

//if文の場合nilの判断
if str3 != nil{
    str3!
}
else{
    print("nil!")
}

//配列
var array1:[Int] = [1,2,3] //[Int]型Array
for value in array1 {
    value
}

var array2:[String] = [] //[String]型Array(空のArray)
array2.append("ABC")     //要素の追加
array2.append("DEF")
array2[1]                //ABC先頭の要素を取得

var array3:[AnyObject] = []  //[AnyObject]型の空のArray
array3.append("ABC")
array3.append(10)
array3.removeAtIndex(1)    //２番目の要素の削除
array3

//辞書
var dictionary1:[String:Int] = [:] //空のDictionary
dictionary1["英語"] = 80      //要素の追加(キーがない場合)
dictionary1["数学"] = 90
dictionary1["国語"] = 70
dictionary1["数学"] = 100     //値の修正(キーがある場合)
dictionary1["英語"]! + 30

for (key,value)in dictionary1 {
    print(key,value)
}
dictionary1["国語"] = nil  //値が非オプショナル型ならnilで削除
dictionary1

var dictionary2:[String:AnyObject] = ["No.":10001,"Name":"鈴木"] //値はAnyObject型でもよい

//型変換
//数値計算での型合わせ(型変換)
var num1 = 4 //Int型
var num2 = 2.5 //Double型
var num3:UInt32 = 10 //UInt32型
var num4:CGFloat = 31.25 //CGFloat型

var answer1 = Double(num1)*num2     //答えはDouble型
var answer2 = num1 + Int(num3)      //答えはInt型
var answer3 = CGFloat(num2) * 31.25 //答えはCGFloat型

//アップキャスト、ダウンキャスト
class Parent{}
class Child:Parent {}//Parentクラスを継承
func run(){
    var parent1 = Parent()
    var child1 = Child()
    
    parent1 = child1//アップキャスト(スーパークラスへ型を合わせる)
    
    child1 = parent1 as! Child //ダウンキャスト(サブクラスへ型を合わせる.失敗する事もある)
}

//クロージャー、継承、構造体
let ABC = {(s1:Int,s2:Int)->Int in
    return s1 * s2
}
let dfg = ABC(2,2)

class Test {
    var age = 14
    var name:String = ""
    
    init(){
        age = 38
        name = "山本太郎"
    }
    
    deinit{
        age
        name
    }
    func show()->(Int,String){
        return(age,name)
    }
}
var test = Test()
test.show()

test.age = 10
test.name = "ああああ"
test.show()



