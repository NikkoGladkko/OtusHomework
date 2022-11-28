//
//  OtusHomeworkViewController.swift
//  OtusHomework
//
//  Created by Гладковский Николай Сергеевич on 28.11.2022.
//

import Foundation
import UIKit
import SnapKit

public class OtusHomeworkViewController: UIViewController {
    public override func viewDidLoad() {
        view.backgroundColor = .gray
        let imageView = UIImageView(image: UIImage(named: "profileImage"))
        view.addSubview(imageView)
        
        imageView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(imageView.snp.width)
        }
    }
}
