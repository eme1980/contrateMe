# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Project Overview

This is a personal portfolio website ("contráteme" - "hire me") showcasing professional work experience. It's a static multipage HTML site built with Bootstrap 4, Sass, and Gulp 4 as the build system with live reloading via BrowserSync.

## Development Commands

### Setup
```bash
npm install
```

Note: Gulp must be installed globally (`npm install gulp -g`)

### Build Commands
- **Development server with live reload**: `npm run start` (runs `gulp serve`)
- **Production build**: `npm run build` (runs `gulp`)
- **Production build with minification**: `npm run prod` (sets NODE_ENV=prod)

### Gulp Tasks
Individual Gulp tasks can be run directly:
- `gulp html` - Process HTML with partials
- `gulp css` - Compile Sass to CSS
- `gulp js` - Process JavaScript files
- `gulp fonts` - Copy fonts to public/
- `gulp fontAwesome` - Copy FontAwesome assets
- `gulp del` - Clean the public/ directory

## Architecture

### Build System (gulpfile.js)

The Gulp pipeline handles:
- **HTML**: Processes partials from `src/assets/partials/`, beautifies output, minifies in production
- **Sass**: Compiles from `src/assets/sass/style.scss`, includes Bootstrap from node_modules, generates sourcemaps in dev, minifies in production
- **JavaScript**: Processes files with `gulp-js-import`, uglifies in production
- **Images**: Optimizes with imagemin in production
- **Fonts**: Copies custom fonts and FontAwesome icons

### Directory Structure

```
src/
  *.html              # Main page templates (currently: index.html)
  assets/
    partials/         # Reusable HTML components (header.html, footer.html)
    sass/             # Sass stylesheets
      style.scss      # Main entry point
      imports.scss    # Imports Bootstrap, fonts, mixins, etc.
      variables.scss  # Project variables
      mixins.scss     # Sass mixins
      form.scss       # Form styles
      animation.scss  # Animation definitions
      fonts.scss      # Font declarations
      icons.scss      # Icon styles
    js/               # JavaScript files
    img/              # Source images
    fonts/            # Custom fonts

public/               # Build output (do not edit directly)
```

### HTML Partial System

HTML files use `<partial>` tags to include reusable components:
```html
<partial src="header.html"></partial>
<partial src="footer.html"></partial>
```

Partials are resolved from `src/assets/partials/` and processed by `gulp-html-partial`.

### Sass Architecture

Sass follows an import-based structure:
1. `style.scss` imports `imports.scss`
2. `imports.scss` chains: variables → Bootstrap → fonts → icons → mixins → animations → forms
3. Bootstrap 4 is imported from node_modules with custom variable overrides

### Environment Modes

The build system has two modes controlled by `NODE_ENV`:
- **Development** (default): Generates beautified HTML/CSS, includes sourcemaps, no minification
- **Production** (`NODE_ENV=prod`): Minifies HTML/CSS/JS, optimizes images, no sourcemaps

### Live Development

BrowserSync watches for changes:
- HTML changes in `src/**/*.html`
- Sass changes in `src/assets/**/*.scss`
- JavaScript changes in `src/assets/**/*.js`
- Image changes in `src/assets/img/**/*`
- Font changes in `src/assets/**/*.{eot,svg,ttf,woff,woff2}`

Server runs from `public/` directory with auto-reload on changes.

## Working with This Codebase

### Adding New Pages
1. Create HTML file in `src/` (e.g., `src/about.html`)
2. Include partials: `<partial src="header.html"></partial>`
3. Gulp automatically processes and outputs to `public/`

### Modifying Styles
1. Edit Sass files in `src/assets/sass/`
2. Main styles in `style.scss`, variables in `variables.scss`
3. BrowserSync auto-reloads on save

### Adding JavaScript
1. Add `.js` files to `src/assets/js/`
2. Use `@import` comments for module imports (via gulp-js-import)
3. Files are copied individually to `public/assets/js/` (not concatenated)

### Deployment
Run `npm run prod` to generate optimized production build in `public/` directory. Deploy the contents of `public/` to your web host.
