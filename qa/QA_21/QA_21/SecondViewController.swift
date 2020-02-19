//
//  SecondViewController.swift
//  QA_21
//
//  Created by REYNIKOV ANTON on 19.02.2020.
//  Copyright © 2020 REYNIKOV ANTON. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    /*
     Срабатывает после загрузки view.
     Этот метод вызывается после того, как контроллер представления
     загрузил свою иерархию представления в память.
     Вызван let secondViewController = SecondViewController()
     из func createSecondViewController() FirstViewController'а
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    //Срабатывает перед отображением view на экране
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    //Срабатывает перед тем как, размер view поменяется под размер экрана
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
    //Срабатывает после того как, размер view измениться под размер экрана
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }
    
    //Срабатывает при появлении view на экране
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    //Сработает при повороте экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition")
    }
    
    //Срабатывает перед тем, как закроется view
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    //Срабатывает после того, как закроется view
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    //Выгружается объект из памяти
    deinit {
        print("deinit")
    }
}

/*
 при инициализации проекта в FirstViewController
 и срабатывании функции func createSecondViewController()
 жизненный цикл будет таким:
 
 viewDidLoad
 deinit
 
 мы инициализировали SecondViewController и так как мы
 не отображаем SecondViewController, он тут же deinit
 
 
 при инициализации проекта в SecondViewController
 жизненный цикл будет таким:
 
 viewDidLoad
 viewWillAppear
 viewWillLayoutSubviews
 viewDidLayoutSubviews
 viewDidAppear
 
 при переходе из FirstViewController в SecondViewController
 жизненный цикл будет таким:
 
 viewDidLoad
 viewWillAppear
 viewWillLayoutSubviews
 viewDidLayoutSubviews
 viewWillLayoutSubviews
 viewDidLayoutSubviews
 viewDidAppear
 
 при возврате к FirstViewController
 жизненный цикл будет таким:
 
 deinit
 viewWillDisappear
 viewDidDisappear
 */
