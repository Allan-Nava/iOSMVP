//
//  BaseModuleContract.swift
//  iOSMVP
//
//  Created by Allan Nava on 28/10/2020.
//

import UIKit

protocol BaseWireFrame {
    weak var viewController: UIViewController! {get set}
    //func presentLoginView();

}

protocol BasePresenterInterface {
    var baseRouter: BaseWireFrame! { get }
    var baseView: BaseViewInterface! { get }
}

protocol BaseViewInterface{
    var basePresenter:  BasePresenterInterface! { get }
}


protocol BaseDataManagerInputProtocol {
    
}

protocol BaseDataManagerOutputProtocol {

}

protocol BaseInputInteractor{
    var output: BaseOutputInteractor! { get set }
    
}


protocol BaseOutputInteractor {

}
