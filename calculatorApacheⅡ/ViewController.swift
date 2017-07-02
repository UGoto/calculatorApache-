//
//  ViewController.swift
//  calculatorApacheⅡ
//
//  Created by Yuji Yamamoto on 2017/07/01.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempertureSeg: UISegmentedControl!
    @IBOutlet weak var mapSeg: UISegmentedControl!
    
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var totalScore: UILabel!
    
    //合計点数の変数を作成
    var amount:Int = 0
    //セグメントが選択されない時の初期値の設定
    var templatureNumber:Int = 5
    
    var mapNumber:Int = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //体温のセグメント設定
    @IBAction func tempertureSeg(_ sender: UISegmentedControl) {
        if tempertureSeg.selectedSegmentIndex == 0{
            templatureNumber = 5
        }else if tempertureSeg.selectedSegmentIndex == 1{
            templatureNumber = 4
        }else if sender.selectedSegmentIndex == 2{
            templatureNumber = 3
        }else if sender.selectedSegmentIndex == 3{
            templatureNumber = 2
        }else if sender.selectedSegmentIndex == 4{
            templatureNumber = 1
        }
        print(templatureNumber)
    }

    //平均血圧のセグメント設定
    @IBAction func mapSeg(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            mapNumber = 6
        }else if sender.selectedSegmentIndex == 1{
            mapNumber = 5
        }else if sender.selectedSegmentIndex == 2{
            mapNumber = 4
        }else if sender.selectedSegmentIndex == 3{
            mapNumber = 3
        }else if sender.selectedSegmentIndex == 4{
            mapNumber = 2
        }else{
            mapNumber = 1
        }
    }
    
    //結果buttonが押された時、totalに合計点が出力される。
    @IBAction func resultButton(_ sender: UIButton) {
        
        amount = mapNumber + templatureNumber
                totalScore.text = String(amount)
        

        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

