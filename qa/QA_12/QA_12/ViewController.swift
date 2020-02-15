//
//  ViewController.swift
//  QA_12
//
//  Created by REYNIKOV ANTON on 15.02.2020.
//  Copyright © 2020 REYNIKOV ANTON. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = storyboard.instantiateViewController(withIdentifier: "VC1") as! ViewController1
        let vc2 = storyboard.instantiateViewController(withIdentifier: "VC2") as! ViewController2
        let vc3 = storyboard.instantiateViewController(withIdentifier: "VC3") as! ViewController3
        let vc = navigationController
        //1 Push VC2
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            vc?.pushViewController(vc2, animated: false)
            //VC1 - незадействован, просто переход на VC2. VC - root

        }
        //2 Present VC3
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            vc?.present(vc3, animated: false)
            /*Ничего не произошло, так как задействован единый стек навигации для отображения
             (present или push) нового ViewController’а. При таком подходе старые
             ViewController’ы обычно продолжают храниться в памяти. VC - root
             */
        }
        //3 Dismissed VC3
        DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
            vc?.dismiss(animated: false)
            //#3 deallocated и возврат к VC2
        }
        //4&5 Popping to VC(root)
        DispatchQueue.main.asyncAfter(deadline: .now() + 20) {
            vc?.popToRootViewController(animated: false)
            //#2 deallocated и возврат к VC(root)
            //VC1 так и не использовали
        }
    }
}

/*
 □ Пуш VC #2 заставит VC #1 освободиться (deallocate).
 
 □ Представление (presenting) VC #3 приведет к освобождению VC #2 и VC #1.
 
 ■ VC #3 будет освобожден после увольнения (dismissed).
 
 ■ VC #2 будет освобожден после подключения (popping) к корневому (root) VC.
 
 □ VC #1 будет освобожден после подключения к корневому VC.
 */
