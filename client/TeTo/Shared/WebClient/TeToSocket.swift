//
//  TeToSocket.swift
//  TeTo
//
//  Created by lujunhui.2nd on 2022/7/17.
//

import Foundation
import Combine

class TeToSocket: Socket {

    private var cancellable: [AnyCancellable] = []

    override
    func handleData(_ data: Data) {
        
    }
}
