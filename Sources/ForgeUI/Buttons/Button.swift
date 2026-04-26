//
//  ForgeButton.swift
//  ForgeUI
//
//  Created by Noel Hiram Pat Angulo on 4/25/26.
//

import SwiftUI

/// This button will receive the title and the action from parent app also the theme parent colors can be inyecatble and the button style will adopt the parent theme

public struct ForgeButton: View {
    // MARK: Button properties
    @Environment(\.forgeTheme) private var theme
    private let title: String
    private let variant: ForgeButtonVariant
    private let action: () -> Void
    
    // MARK: Initilizers
    public init(
        title: String,
        variant: ForgeButtonVariant = .primary,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.variant = variant
        self.action = action
    }
    
    // MARK: Body
    public var body: some View {
        Button(action: action) {
            Text(title)
        }
        .buttonStyle(
            ForgeButtonStyle(
                variant: self.variant,
                theme: theme.buttons
            )
        )
    }
}

// MARK: Preview

#Preview {
    ForgeButton(title: "Log in", variant: .primary, action: {})
}
