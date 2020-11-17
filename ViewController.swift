//
//  ViewController.swift
//  MyCalc
//
//  Created by 溝口孝之 on 2020/10/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //1ボタンをタップしたときの処理
    @IBAction func tap1Button(_ sender: Any) {
    let value = priceField.text! + "1"                  //数字の1を末尾に追加する
    if let price = Int(value){                    //文字列型の数字を数値型に変換する
                                                  //変換することで文字列の先頭にある0を削除する
           priceField.text = "\(price)"           //価格フィールドに数値を反映する
         }
       }
    
    //2ボタンをタップしたときの処理
    @IBAction func tap2Button(_sender:Any){
      let value = priceField.text! + "2"                 //数字の2を末尾に追加する
      if let price = Int(value){
        priceField.text="\(price)"
      }
    }
    
    //3ボタンをタップしたときの処理
    @IBAction func tap3Button(_sender:Any){
      let value = priceField.text! + "3"                 //数字の3を末尾に追加する
      if let price = Int(value){
        priceField.text="\(price)"
      }
    }
    
    //4ボタンをタップしたときの処理
    @IBAction func tap4Button(_sender:Any){
      let value = priceField.text! + "4"                 //数字の4を末尾に追加する
      if let price = Int(value){
        priceField.text="\(price)"
      }
    }
    
    //5ボタンをタップしたときの処理
    @IBAction func tap5Button(_sender:Any){
      let value = priceField.text! + "5"                 //数字の5を末尾に追加する
      if let price = Int(value){
        priceField.text="\(price)"
      }
    }
    
    //6ボタンをタップしたときの処理
    @IBAction func tap6Button(_sender:Any){
      let value = priceField.text! + "6"                 //数字の6を末尾に追加する
      if let price = Int(value){
        priceField.text="\(price)"
      }
    }
    
    //7ボタンをタップしたときの処理
    @IBAction func tap7Button(_sender:Any){
      let value = priceField.text! + "7"                 //数字の7を末尾に追加する
      if let price = Int(value){
        priceField.text="\(price)"
      }
    }
    
    //8ボタンをタップしたときの処理
    @IBAction func tap8Button(_sender:Any){
      let value = priceField.text! + "8"                 //数字の8を末尾に追加する
      if let price = Int(value){
        priceField.text="\(price)"
      }
    }
    
    //9ボタンをタップしたときの処理
    @IBAction func tap9Button(_sender:Any){
      let value = priceField.text! + "9"                 //数字の9を末尾に追加する
      if let price = Int(value){
        priceField.text="\(price)"
      }
    }
    
    //0ボタンをタップしたときの処理
    @IBAction func tap0Button(_sender:Any){
      let value = priceField.text! + "0"                 //数字の0を末尾に追加する
      if let price = Int(value){
        priceField.text="\(price)"
      }
    }
    
    //00ボタンをタップしたときの処理
    @IBAction func tap00Button(_sender:Any){
      let value = priceField.text! + "00"                //数字の00を末尾に追加する
      if let price = Int(value){
        priceField.text = "\(price)"
      }
    }

    //クリアボタンをタップしたときの処理
    @IBAction func tapClearButton(_sender:Any){
      priceField.text = "0"                             //数字の0を直接入れてクリアする
    }
    
    //最後の画面から戻ってきたときの処理
    @IBAction func restart(_ segue: UIStoryboardSegue) {
      priceField.text = "0"           //金額フィールドを0でクリアする
    }
    
    //画面遷移時の処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
      //次の画面を取り出す
      let viewController = segue.destination as! ResultViewController
      //金額フィールドの文字列を数値に変換する
      if let price = Int(priceField.text!) {
        //数値に変換した金額を次の画面に設定する
        viewController.price = price
      }
    }
    
}

