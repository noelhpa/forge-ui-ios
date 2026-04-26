//
//  ForgeScrollContainer.swift
//  ForgeUI
//
//  Created by Noel Hiram Pat Angulo on 4/25/26.
//

import SwiftUI

public struct ForgeScrollContainer<Content: View>: View {
    // MARK: Dimensions
    private let forgeScrollContainerStackSpacing: CGFloat = 16
    private let forgeScrollContainerHorizontalPadding: CGFloat = 16
    private let forgeScrollContainerVerticalPadding: CGFloat = 20

    // MARK: Properties
    private let content: Content

    // MARK: Initializer
    public init(
        @ViewBuilder content: () -> Content
    ) {
        self.content = content()
    }

    // MARK: Body
    public var body: some View {
        ScrollView {
            VStack(spacing: forgeScrollContainerStackSpacing) {
                content
            }
            .padding(.horizontal, forgeScrollContainerHorizontalPadding)
            .padding(.vertical, forgeScrollContainerVerticalPadding)
        }
    }
}

// MARK: - Preview

#Preview {
    ForgeScrollContainer(content: {
        ForgeButton(title: "Button 1", variant: .primary, action: {})
        ForgeButton(title: "Button 2", variant: .secondary, action: {})
        ForgeButton(title: "Button 3", variant: .tertiary, action: {})
    })
}
