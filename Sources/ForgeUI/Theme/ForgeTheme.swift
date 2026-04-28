//
//  ForgeTheme.swift
//  ForgeUI
//
//  Created by Noel Hiram Pat Angulo on 4/25/26.
//

import SwiftUI
/// This will be filled with all themes for the components

// TODO: Move default colors with appropiate name to defaultColors constant file

// MARK: ForgeTheme

public struct ForgeTheme: Sendable {
    // MARK: Themable elements
    public let buttons: ForgeButtonTheme
    
    // MARK: Initializer
    public init(
        buttons: ForgeButtonTheme = .default
    ) {
        self.buttons = buttons
    }
    
    public static let `default` = ForgeTheme()
}

// MARK: ForgeButtonTheme

public struct ForgeButtonTheme: Sendable {
    public let primaryBackground: Color
    public let primaryPressedBackground: Color
    public let primaryForeground: Color
    public let primaryPressedForeground: Color
    public let primaryBorder: Color
    public let primaryPressedBorder: Color

    public let secondaryBackground: Color
    public let secondaryPressedBackground: Color
    public let secondaryForeground: Color
    public let secondaryPressedForeground: Color
    public let secondaryBorder: Color
    public let secondaryPressedBorder: Color

    public let tertiaryBackground: Color
    public let tertiaryPressedBackground: Color
    public let tertiaryForeground: Color
    public let tertiaryPressedForeground: Color
    public let tertiaryBorder: Color
    public let tertiaryPressedBorder: Color

    public init(
        primaryBackground: Color = Color(red: 43/255, green: 122/255, blue: 111/255),
        primaryPressedBackground: Color = Color(red: 31/255, green: 92/255, blue: 84/255),
        primaryForeground: Color = .white,
        primaryPressedForeground: Color = .white,
        primaryBorder: Color = .clear,
        primaryPressedBorder: Color = Color(red: 232/255, green: 244/255, blue: 242/255),

        secondaryBackground: Color = Color(red: 245/255, green: 242/255, blue: 237/255),
        secondaryPressedBackground: Color = Color(red: 232/255, green: 230/255, blue: 225/255),
        secondaryForeground: Color = Color(red: 44/255, green: 44/255, blue: 44/255),
        secondaryPressedForeground: Color = Color(red: 44/255, green: 44/255, blue: 44/255),
        secondaryBorder: Color = Color(red: 232/255, green: 230/255, blue: 225/255),
        secondaryPressedBorder: Color = Color(red: 107/255, green: 107/255, blue: 107/255),

        tertiaryBackground: Color = .clear,
        tertiaryPressedBackground: Color = Color(red: 232/255, green: 244/255, blue: 242/255),
        tertiaryForeground: Color = Color(red: 44/255, green: 44/255, blue: 44/255),
        tertiaryPressedForeground: Color = Color(red: 44/255, green: 44/255, blue: 44/255),
        tertiaryBorder: Color = Color(red: 43/255, green: 122/255, blue: 111/255),
        tertiaryPressedBorder: Color = Color(red: 43/255, green: 122/255, blue: 111/255)
    ) {
        self.primaryBackground = primaryBackground
        self.primaryPressedBackground = primaryPressedBackground
        self.primaryForeground = primaryForeground
        self.primaryPressedForeground = primaryPressedForeground
        self.primaryBorder = primaryBorder
        self.primaryPressedBorder = primaryPressedBorder

        self.secondaryBackground = secondaryBackground
        self.secondaryPressedBackground = secondaryPressedBackground
        self.secondaryForeground = secondaryForeground
        self.secondaryPressedForeground = secondaryPressedForeground
        self.secondaryBorder = secondaryBorder
        self.secondaryPressedBorder = secondaryPressedBorder

        self.tertiaryBackground = tertiaryBackground
        self.tertiaryPressedBackground = tertiaryPressedBackground
        self.tertiaryForeground = tertiaryForeground
        self.tertiaryPressedForeground = tertiaryPressedForeground
        self.tertiaryBorder = tertiaryBorder
        self.tertiaryPressedBorder = tertiaryPressedBorder
    }

    public static let `default` = ForgeButtonTheme()
}
