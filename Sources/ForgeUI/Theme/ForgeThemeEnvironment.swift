//
//  ForgeThemeEnvironment.swift
//  ForgeUI
//
//  Created by Noel Hiram Pat Angulo on 4/25/26.
//

import SwiftUI

private struct ForgeThemeKey: EnvironmentKey {
    static let defaultValue: ForgeTheme = .default
}

public extension EnvironmentValues {
    var forgeTheme: ForgeTheme {
        get { self[ForgeThemeKey.self] }
        set { self[ForgeThemeKey.self] = newValue }
    }
}

public extension View {
    func forgeTheme(_ theme: ForgeTheme) -> some View {
        environment(\.forgeTheme, theme)
    }
}
