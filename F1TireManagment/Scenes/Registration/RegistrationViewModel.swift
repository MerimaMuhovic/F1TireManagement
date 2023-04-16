//
//  RegistrationViewModel.swift
//

import Foundation
import ReactiveKit

class RegistrationViewModel: AppViewModel {
    private let userRepository: UserRepository!

    let username = Property<String?>("")
    let password = Property<String?>("")

    init(userRepository: UserRepository) {
        self.userRepository = userRepository
        super.init()
    }

    func doRegistration() {
        userRepository.create(username: username.value!, password: password.value!) { [weak self] error in
            if let error = error {
                self?.error.value = error
                return
            }
        }
    }
}
