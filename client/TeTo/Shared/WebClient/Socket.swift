//
//  Socket.swift
//  TeTo
//
//  Created by lujunhui.2nd on 2022/7/17.
//

import Foundation

class Socket: NSObject, ObservableObject, URLSessionWebSocketDelegate {

    private var url: URL?

    init(path: String) {
        super.init()
        url = URL(string: path)
    }

    private var websocket: URLSessionWebSocketTask?

    private lazy var session = URLSession(
        configuration: .default,
        delegate: self,
        delegateQueue: nil)

    private func send(_ data: Data) {
        websocket?.send(.data(data)) { err in
            guard let err = err else { return }
            print("error: \(err)")
        }
    }

    func connect() {
        guard websocket == nil else { fatalError("No websocket found") }
        guard let `url` = url else { fatalError("No url found") }
        let websocket = session.webSocketTask(with: url)
        self.websocket = websocket
        listen()
        websocket.resume()
    }

    func disconnect() {
        websocket?.cancel(with: .goingAway, reason: nil)
    }

    private func listen() {
        websocket?.receive { [weak self] result in
            switch result {
            case .success(let raw):
                self?.handleData(raw)
            case .failure(let error):
                self?.handleError(error)
            }
        }
    }

    private
    func handleData(_ raw: URLSessionWebSocketTask.Message) {
        switch raw {
        case .data(let data):
            handleData(data)
        case .string(let str):
            hendleData(str)
        default:
            print("error")
        }
    }

    func handleData(_ data: Data) {}

    func hendleData(_ string: String) {}

    func handleError(_ error: Error) {}

    deinit {
        cancel()
    }

    func cancel() {
        websocket?.cancel(with: .goingAway, reason: nil)
        websocket = nil
    }
}
