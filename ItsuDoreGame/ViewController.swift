//
//  ViewController.swift
//  ItsuDoreGame
//
//  Created by Chihiro Nishiwaki on 2021/01/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelItsu: UILabel!
    @IBOutlet var labelDoko: UILabel!
    @IBOutlet var labelDare: UILabel!
    @IBOutlet var labelDoshita: UILabel!
    
    let itsuArray: [String] = ["一年前", "一週間前", "昨日", "今日", "１秒前"]
    let dokoArray: [String] = ["学校", "アルプス山脈のてっぺん", "地下300m", "味噌汁の中", "机の上"]
    let dareArray: [String] = ["先生", "自分", "後ろの席の人", "トイレの花子さん", "寿司屋のおっちゃん"]
    let doshitaArray: [String] = ["こけた", "マンドリンをした", "泣き出した", "お寿司に巻かれた", "目玉のオヤジと出会った"]
    
    var index: Int! = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelItsu.text = "----"
        labelDoko.text = "----"
        labelDare.text = "----"
        labelDoshita.text = "----"
        index = 0

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func change(){
        labelItsu.text = itsuArray[index]
        labelDoko.text = dokoArray[index]
        labelDare.text = dareArray[index]
        labelDoshita.text = doshitaArray[index]
        
        if index == 4{
            index = 0
        }else{
            index = index + 1
        }
    }
    
    @IBAction func reset() {
        index = 0
        labelItsu.text = "----"
        labelDoko.text = "----"
        labelDare.text = "----"
        labelDoshita.text = "----"
    }

    @IBAction func random() {
        let indexItsu = Int.random(in: 0...4)
        let indexDoko = Int.random(in: 0...4)
        let indexDare = Int.random(in: 0...4)
        let indexDoshita = Int.random(in: 0...4)
        
        labelItsu.text = itsuArray[indexItsu]
        labelDoko.text = dokoArray[indexDoko]
        labelDare.text = dareArray[indexDare]
        labelDoshita.text = doshitaArray[indexDoshita]
    }

}

