//
//  ViewController.swift
//  AnhKiet_TimTich
//
//  Created by Kiet Nguyen on 7/31/17.
//  Copyright © 2017 Kiet Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var A = [10,2,35,4,5,69,17,8,9,1]
    var PhepNhan = [String]()
    var KetQua: [Int] = []
    var temp1 = 0 // bien tam cua mang so
    var temp2: String = "" // bien tam cua mang ky tu
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Thuc hien phép nhan khong trung
        for i in 0..<(A.count - 1) {
            for j  in i+1...(A.count - 1) {
                KetQua.append(A[i] * A[j])
                PhepNhan.append(String(A[i]) + "*" + String(A[j]))
            }
        }
        
        // Sap Xep Giam Dan
        for i in 0..<(KetQua.count-1) {
            for j in i+1...(KetQua.count-1) {
                if (KetQua[i] < KetQua[j]){
                    //Sap Xep Mang So
                    temp1 = KetQua[i]
                    KetQua[i] = KetQua[j]
                    KetQua[j] = temp1
                    //Sap Xep Mang Ky Tu
                    temp2 = PhepNhan[i]
                    PhepNhan[i] = PhepNhan[j]
                    PhepNhan[j] = temp2
                }
            }
        }

        print("Tích lớn thứ nhì là: ",PhepNhan[1], " = ", KetQua[1])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

