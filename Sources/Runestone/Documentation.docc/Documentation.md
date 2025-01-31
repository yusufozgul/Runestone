# ``Runestone``

Performant code editor with syntax highlighting, line numbers, invisible characters and much more.

## Overview

Runestone provides a text view with support for features commonly found in code editors. This includes the following list of features.

- Syntax highlighting.
- Line numbers.
- Highlight the selected line.
- Show invisible characters (tabs, spaces and line breaks).
- Insertion of character pairs, e.g. inserting the trailing quotation mark when inserting the leading.
- Customization of colors and fonts.
- Toggle line wrapping on and off.
- Adjust height of lines.
- Add a page guide.
- Add vertical and horizontal overscroll.
- Highlight ranges in the text view.
- Search the text using regular expressions.
- Automatically detects if a file is using spaces or tabs for indentation.

The text view provided by Runestone does not subclass UITextView but has an API that is similar to the one of UITextView.

The framework is [available on GitHub](https://github.com/simonbs/runestone).

![Syntax highlighted code snippets in a grid with the Runestone logo on top.](hero.png)

The [Runestone Editor](https://apps.apple.com/us/app/runestone-editor/id1548193893) app was built on top of the Runestone framework and is free to download on the App Store.

[![Download Runestone Editor on the App Store](app-store-download.png)](https://apps.apple.com/us/app/runestone-editor/id1548193893)

## Topics

### Essentials

- <doc:GettingStarted>
- ``TextView``
- ``TextViewDelegate``
- ``TextViewState``

### Appearance

The appearance of <doc:TextView> can be customized using a <doc:Theme>. This is also for the text styling and colors used for syntax highlighting.

- <doc:CreatingATheme>
- ``Theme``

### Syntax Highlighting

Syntax highlighting is based on GitHub's [Tree-sitter](https://github.com/tree-sitter/tree-sitter) parser generator. It has support for most popular programming languages.

- <doc:AddingATreeSitterLanguage>
- ``FontTraits``
- ``LanguageMode``
- ``PlainTextLanguageMode``
- ``TreeSitterLanguageMode``
- ``TreeSitterLanguage``
- ``TreeSitterLanguageProvider``
- ``SyntaxNode``

### Selected Line

Highlight selected the line containing the caret.

- ``LineSelectionDisplayType``

### Indentation

Automatically indent when inserting a new line break.

- ``IndentStrategy``
- ``DetectedIndentStrategy``
- ``TreeSitterIndentationScopes``

### Search and Replace

Search the text for queries and replace matches with a string. Supports regular expressions.

- ``SearchQuery``
- ``SearchResult``
- ``SearchReplaceResult``
- ``BatchReplaceSet``
- ``HighlightedRange``
- ``HighlightedRangeLoopingMode``
- ``TextPreview``

### Character Pairs

Automatically insert and delete closing the closing component of a character pair such as quotes and brackets.

- ``CharacterPair``
- ``CharacterPairTrailingComponentDeletionMode``

### Navigation

- ``GoToLineSelection``
- ``TextLocation``
