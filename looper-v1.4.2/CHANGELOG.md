v1.4.2 - Apr 3, 2020
==========================

* Enhancement: Rename `.input-group-reflow` to `.input-group-plaintext`
* Enhancement: Replace `copy:vendor` task using gulp-npm-dist – *breaking changes*
* Enhancement: Improve component-steps UX
* Enhancement: Improve pagecover-img page to get better responsiveness
* Fixed: Summernote airmode bug
* Fixed: noUI slider-handle misplacement
* Fixed: Select2 dropdown width bug
* Fixed: Collections pages not loaded when using compact menu
* Fixed: Ganttview not focus when using compact menu
* Fixed: Top nav user avatar dropdown arrow on small devices
* Fixed: Dependencies vulnerabilities


v1.4.1 - Dec 1, 2019
==========================

* Enhancement: Update Bootstrap 4.4.1


v1.4.0 - Nov 27, 2019
==========================

* Enhancement: Update Bootstrap 4.4.0 and all dependencies to latest version
* Enhancement: Support aside Compact Menu
* Enhancement: Support nested dropdown
* Enhancement: Invoice demo script to support generating invoice dynamically
* Enhancement: Move up `variable-custom.scss` order in `theme.scss` and `theme-dark.scss`
* Enhancement: Integrate nested dropdown on `layout-horizontal-menu.html`
* Enhancement: Rename `aside` fn to `toggleAside`
* New: Bootstrap Icons
* New: Optional build commands through `npm`
* Fixed: Toasts button have same color with the header in dark mode
* Fixed: Avoid hard coded `.page-inner-fill` height calculation
* Fixed: dark theme input color as `.input-list-item`
* Fixed: Data uri encoded on svg background css – see `$custom-select-indicator`
* Fixed: Instant search mobile responsive
* Remove: @import "default/components/site"
* Remove: `.section` class


v1.3.0 - July 07, 2019
==========================

 * Enhancement: Rename `.overflow-x` to `overflow-x-auto` and `.overflow-y` to `.overflow-y-auto`
 * Enhancement: Make todos section (client page) dragable
 * New: Bootstrap-select plugin
 * New: `.sticker` component
 * New: Landing page
 * New: Translate position, oversizing, scaling, rotate and flip utility classes
 * New: Horizontal menu layout example
 * New: Instant search suggestions
 * New: Password strength meter plugin
 * New: Responsive headings, display(s), and lead text
 * New: Responsive `.card-deck` (`.card-deck-{xs|sm|md|lg|xl}`)
 * New: Responsive `.container`and `.container-fluid` (`.container-{xs|sm|md|lg|xl}` and `.container-fluid-{xs|sm|md|lg|xl}`)
 * Fixed: Floating button position on mobile devices
 * Fixed: Header alignment bug on ie11
 * Fixed: Select menu bug on dark skin
 * Fixed: Member list modal
 * Fixed: Placeholder bug on `.form-label-group` autofocus
 * Fixed: `.dropdown-arrow` placement bug
 * Fixed: Dropup, dropleft, and dropright placement bug
 * Fixed: Flatpickr daterange data-default-date selection
 * Fixed: Datatables copy notification on dark skin
 * Fixed: Font color datatables print view on dark skin
 * Fixed: `.input-group` validation feedback text
 * Deprecated: `.section-deck` class. Please use `.card-deck-xl` instead
 * Deprecated: `.section` class
 * Deprecated: `default/components/site.scss` file
 * Removed: `.gitignore` from ship package


v1.2.1 - March 29, 2019
==========================

 * Enhancement: Update Bootstrap v4.3.1 and all dependencies to latest version
 * Enhancement: Rename `.modal-dialog-overflow` to `.modal-dialog-scrollable`
 * New: Custom input number
 * Fixed: Validation classes on `.input-group`
 * Removed: Loader component (please use Bootstrap spinner instead)


v1.2.0 - January 29, 2019
==========================

 * Enhancement: Update Bootstrap v4.2.1 and all dependencies to latest version
 * Enhancement: Integrate our steps component width bs-stepper
 * Enhancement: Make switchers accessible, label support, and size lg variant
 * Enhancement: Separate our `@mixin`s to `_mixins.scss` file
 * New: Invoice pages (list and details)
 * New: Datatables responsive view with nested rows
 * New: Flatpickr month view demo (beta)
 * New: Text mask plugin
 * New: Parsley.js – form validation
 * New: bs-stepper plugin
 * New: html2pdf plugin
 * Fixed: NPM security issues and `404` error
 * Fixed: Some minor bugs with zindex
 * Deprecated: Looper loading component – please use bootstrap spinners instead
 * Removed: Deprecated plugins


v1.1.1 - November 15, 2018
==========================

 * Enhancement: Generate series of `.app-aside-expand-*` responsive classes on `.aside` (now we dont need `.has-fullwidth` class)
 * Enhancement: Adding `.modal-docked` behavior to `.modal` – see `component-general.html` page
 * Enhancement: skinPerform method – avoid fade transition and white splash background on page load
 * Fixed: Gantt chart dragging bugs on firefox
 * Fixed: `.top-bar-seacrh` input color on dark skin
 * Fixed: object-fit issue on IE
 * Fixed: Floating label bug on IE


v1.1.0 - November 05, 2018
==========================

 * Enhancement: Make content layout fluid
 * Enhancement: Merge `pace.scss` and `quill.scss` to `_plugin.scss`
 * Enhancement: Handle autofocus input in modal/dropdown components
 * Enhancement: Increase `.app-aside` zindex on screen md & up
 * Enhancement: Re-order main menu
 * Enhancement: Rewrite theme script using ES2015 class
 * Enhancement: Refactoring SCSS files and folders
 * Enhancement: Switching between aside with light or dark background
 * Enhancement: Switching between header with light or dark background
 * Enhancement: Adding fluid width & expand classes for sidebar (now you can show the sidebar only when you need it)
 * Enhancement: Page fullscreen behavior
 * Enhancement: Board page
 * Enhancement: Message page
 * Enhancement: Dropdown datepicker
 * Enhancement: Banner message component
 * Enhancement: Subtle colors (use rgba format)
 * Enhancement: Jqvmap zoomin/out buttons
 * Enhancement: Pagination active bg
 * Enhancement: Update stacked-menu bg to transparent
 * Enhancement: Update default sidebar-bg to white
 * Enhancement: Update datatables sort icons
 * Enhancement: Update browserlist in `gulpfile.js`
 * New: Dark skin
 * New: Client page
 * New: Teams page
 * New: Team page
 * New: Project page
 * New: Gantt chart
 * New: Gantt view page
 * New: Calendar page
 * New: Create new task modal
 * New: View / edit task modal
 * New: New tasks list input
 * New: Payment method section to user-billing page
 * New: Mention component
 * New: Avatar-group transition `.avatar-group-animated`
 * New: Custom varibles file `_variable-custom.scss` to easily override theme variables
 * New: Filterlist fn to theme script
 * New: Scrollable content to tasks component
 * New: Modal right & left
 * New: Flagging class for macos due to line-height render issue between font-family
 * Fixed: Perfect scrollbar appearance issue in `.aside-menu`
 * Fixed: Overlap flatpickr zindex in modal
 * Fixed: `.message-title` line-height
 * Fixed: Form group size height
 * Fixed: Knobify footer item
 * Deprecated: Toastr


v1.0.3 - Not published
==========================

 * Enhancement: Update Bootstrap v4.1.3 and all dependencies to latest version
 * Enhancement: Improve grays color
 * Enhancement: Clean up and refactoring some scss files
 * New: Animation to `.progress`
 * Fixed: Minor bugs and more


v1.0.2 - June 22, 2018
======================

 * Enhancement: Addressing details information for plugins (plugins docs)
 * Enhancement: Renamed `.app-tasks` page to `.app-board`
 * Enhancement: Truncated long menu and `.btn-account` on aside panel
 * Enhancement: README file
 * New: footer section
 * New: `package-lock.json` to ship folder to avoid failed installation on windows machines
 * New: Table filter page (big filtering form for table view)
 * New: Summernote plugin
 * New: Bootstrap TouchSpin plugin (number input)
 * New: jsTree plugin
 * Fixed: loader on floating label (form input)
 * Fixed: missing `.tile-xl` and `.tile-xxl`
 * Fixed: not appropriate line-height on some components (button, input, nav-link, tile, avatar, etc)
 * Fixed: some minor bugs and broken links
 * Deprecated: Bootstrap Treeview plugin (will remove on next release)
 * Removed: Bower from our Build System


v1.0.1 - May 13, 2018
=====================

 * Enhancement: Update Bootstrap v4.1.1 and all dependencies to latest version
 * Enhancement: Refactoring form-basic page to provide a better experience for you
 * Enhancement: Included datatables buttons to datatables page
 * Enhancement: Integrated photoswipe to feeds and conversation page
 * New: Interactivity checkbox on table-basic page
 * Fixed: Unconsistent style on some components states (btn-account, form validation, etc)
 * Fixed: Minor bugs on looper styles


v1.0.0 - April 28, 2018
=======================

Initial Release
