//
//  ViewController.swift
//  AnhKiet_TimTich
//
//  Created by Kiet Nguyen on 7/31/17.
//  Copyright © 2017 Kiet Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var A = [1,2,9,6] // Mang cho truoc 5,69,17,87,9,1
    var multiply: Tich!
    var KetQua = [Tich]()
    var max1 = 0 // tích lớn nhất trong mảng
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Thuc hien phep nhan khong trung
        for i in 0..<(A.count - 1) {
            for j  in i+1...(A.count - 1) {
                /*
                KetQua.append(A[i] * A[j]) //Thuc hien nhan 2 so roi luu vao mang Ket Qua
                PhepNhan.append(String(A[i]) + "*" + String(A[j])) // Luu phep tinh vao mang PhepNhan
                */
                multiply = Tich(multi: "\(A[i]) * \(A[j])", result: A[i]*A[j])
                KetQua.append(multiply)
            }
        }
        
        //Co the su dung nhu the nay
        /*let resultArray = KetQua.map({ (tich: Tich) -> Int in
            tich.result
        })*/
        
        //hoac
        
        let resultArray = KetQua.map { $0.result} // also works
        max1 = resultArray.max()!
        
        let sortResult = resultArray.sorted{$0 > $1}.filter{$0 < max1}
        print(resultArray)
        print(sortResult)
        print(sortResult[0])

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

