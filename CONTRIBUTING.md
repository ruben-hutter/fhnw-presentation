# Contributing to FHNW Presentation Template

Thank you for your interest in contributing to the FHNW Presentation Template! This document provides guidelines and instructions for contributing.

## Getting Started

### Prerequisites
- Typst 0.11.0 or newer ([install here](https://typst.app))
- Git
- Text editor of your choice

### Setting up Development Environment

1. **Fork and clone the repository:**
   ```bash
   git clone https://github.com/yourusername/fhnw-presentation.git
   cd fhnw-presentation
   ```

2. **Test your setup:**
   ```bash
   typst watch example-presentation.typ
   ```

   The example should compile without errors and display in your PDF viewer.

## How to Contribute

### Reporting Issues

Before reporting an issue, please:
1. Check the existing issues to avoid duplicates
2. Verify the issue with the latest version
3. Provide a minimal example if it's a bug

**When reporting, include:**
- Typst version (`typst --version`)
- Description of the problem
- Steps to reproduce
- Expected vs. actual behavior
- System information (OS, Typst installation method)

### Suggesting Enhancements

Enhancement suggestions are welcome! Please:
1. Use a clear, descriptive title
2. Explain the enhancement and why it would be useful
3. Provide examples or use cases
4. Consider if this aligns with the template's goals

### Code Contributions

#### Workflow
1. Create a feature branch: `git checkout -b feature/your-feature-name`
2. Make your changes
3. Test thoroughly with `typst watch`
4. Commit with clear messages: `git commit -m "Add: description of changes"`
5. Push to your fork: `git push origin feature/your-feature-name`
6. Open a Pull Request with a clear description

#### Code Style
- Use clear, descriptive variable names
- Comment complex logic
- Keep functions focused and reusable
- Follow Typst naming conventions (kebab-case for functions)
- Test your changes before submitting

#### Testing Changes
1. **Verify the example compiles:**
   ```bash
   typst compile example-presentation.typ
   ```

2. **Check for warnings:**
   ```bash
   typst watch example-presentation.typ
   ```

   There should be no warnings related to unknown fonts or syntax errors.

3. **Test all features:**
   - Create a new presentation using your changes
   - Test each block type (example, definition, alert)
   - Test all layout helpers (two-columns, three-columns)
   - Verify page numbering and footers
   - Check styling consistency

#### Documentation
- Update README.md if adding new features
- Update CHANGELOG.md following [Keep a Changelog](https://keepachangelog.com/) format
- Add inline comments for non-obvious code
- Include usage examples for new features

### Pull Request Process

1. Update the CHANGELOG.md with your changes
2. Ensure all tests pass and no warnings appear
3. Provide a clear PR description:
   - What problem does this solve?
   - How does it work?
   - Any breaking changes?
   - Screenshots or examples if applicable
4. Respond to feedback and review requests

## Design Principles

This template aims to be:
- **Professional:** Following FHNW branding guidelines
- **Clean:** Minimal, focused feature set
- **Flexible:** Easy to customize without complex configuration
- **Documented:** Clear examples and documentation
- **Maintainable:** Simple, readable code

When contributing, please keep these principles in mind.

## Questions?

Have questions? Feel free to:
- Open a GitHub Discussion
- Create an issue with your question
- Check existing issues for similar topics

## License

By contributing to this project, you agree that your contributions will be licensed under the MIT License.

## Acknowledgments

Thanks to all contributors who help make this template better!
