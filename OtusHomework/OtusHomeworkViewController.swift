//
//  OtusHomeworkViewController.swift
//  OtusHomework
//
//  Created by Гладковский Николай Сергеевич on 28.11.2022.
//

import Foundation
import UIKit
import SnapKit

public protocol HasOtusHomeworkView: AnyObject {
    var squareView: UIView? { get }
    var squareViewController: UIViewController? { get }
}

public extension HasOtusHomeworkView {
    var squareView: UIView? {
        nil
    }
    
    var squareViewController: UIViewController? {
        nil
    }
}

public class OtusHomeworkViewController: UIViewController, HasOtusHomeworkView {
    
    public override func viewDidLoad() {
        view.backgroundColor = .gray
        let studentLabel = UILabel()
        studentLabel.font = .systemFont(ofSize: 48, weight: .ultraLight)
        studentLabel.text = "ФИО Студента"
        studentLabel.textColor = .darkGray
        studentLabel.textAlignment = .center
        studentLabel.numberOfLines = 0
        view.addSubview(studentLabel)
        
        studentLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
