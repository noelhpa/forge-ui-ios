//
//  ForgeScrollContainer.swift
//  ForgeUI
//
//  Created by Noel Hiram Pat Angulo on 4/25/26.
//

import SwiftUI

public struct ForgeScrollContainer<Content: View>: View {

    private let content: Content

    public init(
        @ViewBuilder content: () -> Content
    ) {
        self.content = content()
    }

    public var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                content
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 20)
        }
    }
}

#Preview {
    ForgeScrollContainer(content: {
        ForgeButton(title: "Button 1", variant: .primary, action: {})
        ForgeButton(title: "Button 2", variant: .secondary, action: {})
        ForgeButton(title: "Button 3", variant: .tertiary, action: {})
    })
}
