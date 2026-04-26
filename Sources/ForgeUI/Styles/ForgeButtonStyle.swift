//
//  ForgeButtonStyle.swift
//  ForgeUI
//
//  Created by Noel Hiram Pat Angulo on 4/25/26.
//

import SwiftUI

struct ForgeButtonStyle: ButtonStyle {
    // MARK: Dimensions
    private let fontSize: CGFloat = 20
    private let buttonHeight: CGFloat = 52
    private let cornerRadius: CGFloat = 12

    private let pressedPrimaryBorderWidth: CGFloat = 1
    private let defaultPrimaryBorderWidth: CGFloat = 0
    private let secondaryBorderWidth: CGFloat = 1.5
    private let tertiaryBorderWidth: CGFloat = 2

    // MARK: Properties
    private let variant: ForgeButtonVariant
    private let theme: ForgeButtonTheme
    
    // MARK: Initializer
    init(
        variant: ForgeButtonVariant = .primary,
        theme: ForgeButtonTheme = .default
    ){
        self.variant = variant
        self.theme = theme
    }
    
    // MARK: Makebody
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: fontSize, weight: .bold))
            .foregroundStyle(foregroundColor(isPressed: configuration.isPressed))
            .frame(maxWidth: .infinity)
            .frame(height: buttonHeight)
            .background(backgroundColor(isPressed: configuration.isPressed))
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(
                        borderColor(isPressed: configuration.isPressed),
                        lineWidth: borderWidth(isPressed: configuration.isPressed)
                    )
            }
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}

// MARK: Configurator
private extension ForgeButtonStyle {
    
    private func foregroundColor(isPressed: Bool) -> Color {
        switch variant {
        case .primary:
            isPressed ? theme.primaryPressedForeground : theme.primaryForeground
            
        case .secondary:
            isPressed ? theme.secondaryPressedForeground : theme.secondaryForeground
            
        case .tertiary:
            isPressed ? theme.tertiaryPressedForeground : theme.tertiaryForeground
        }
    }
    
    func backgroundColor(isPressed: Bool) -> Color {
        switch variant {
        case .primary:
            return isPressed
            ? theme.primaryPressedBackground
            : theme.primaryBackground
            
        case .secondary:
            return isPressed
            ? theme.secondaryPressedBackground
            : theme.secondaryBackground
            
        case .tertiary:
            return isPressed ?
            theme.tertiaryPressedBackground
            : theme.tertiaryBackground
            
        }
    }
    
    func borderColor(isPressed: Bool) -> Color {
        switch variant {
        case .primary:
            return isPressed
            ? theme.primaryPressedBorder
            : theme.primaryBorder
            
        case .secondary:
            return isPressed ?
            theme.secondaryPressedBorder
            : theme.secondaryBorder
            
        case .tertiary:
            return theme.tertiaryBorder
        }
    }
    
    func borderWidth(isPressed: Bool) -> CGFloat {
        switch variant {
        case .primary:
            return isPressed ? pressedPrimaryBorderWidth : defaultPrimaryBorderWidth
        case .secondary:
            return secondaryBorderWidth
        case .tertiary:
            return tertiaryBorderWidth
        }
    }
}

public enum ForgeButtonVariant {
    case primary
    case secondary
    case tertiary
}
