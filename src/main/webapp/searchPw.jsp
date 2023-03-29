<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="ko" class="js-focus-visible h-full">
<head>
<meta charset="utf-8">
<title>ACENSE : 비밀번호 찾기</title>
<link rel="icon" href="./assets/imgs/favicon.png" />

<style type="text/css">
/*
! tailwindcss v3.1.8 | MIT License | https://tailwindcss.com
*/
input:focus {
	border-color: black !important; -
	-tw-ring-color: none !important;
}

*, :after, :before {
	box-sizing: border-box;
	border: 0 solid #e5e7eb
}

:after, :before { -
	-tw-content: ""
}

html {
	line-height: 1.5;
	-webkit-text-size-adjust: 100%;
	-moz-tab-size: 4;
	-o-tab-size: 4;
	tab-size: 4;
	font-family: Pretendard, ui-sans-serif, system-ui, -apple-system,
		BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans,
		sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol,
		Noto Color Emoji
}

body {
	margin: 0;
	line-height: inherit
}

hr {
	height: 0;
	color: inherit;
	border-top-width: 1px
}

abbr:where([title]) {
	-webkit-text-decoration: underline dotted;
	text-decoration: underline dotted
}

h1, h2, h3, h4, h5, h6 {
	font-size: inherit;
	font-weight: inherit
}

a {
	color: inherit;
	text-decoration: inherit
}

b, strong {
	font-weight: bolder
}

code, kbd, pre, samp {
	font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas,
		Liberation Mono, Courier New, monospace;
	font-size: 1em
}

small {
	font-size: 80%
}

sub, sup {
	font-size: 75%;
	line-height: 0;
	position: relative;
	vertical-align: baseline
}

sub {
	bottom: -.25em
}

sup {
	top: -.5em
}

table {
	text-indent: 0;
	border-color: inherit;
	border-collapse: collapse
}

button, input, optgroup, select, textarea {
	font-family: inherit;
	font-size: 100%;
	font-weight: inherit;
	line-height: inherit;
	color: inherit;
	margin: 0;
	padding: 0
}

button, select {
	text-transform: none
}

[type=button], [type=reset], [type=submit], button {
	-webkit-appearance: button;
	background-color: transparent;
	background-image: none
}

:-moz-focusring {
	outline: auto
}

:-moz-ui-invalid {
	box-shadow: none
}

progress {
	vertical-align: baseline
}

::-webkit-inner-spin-button, ::-webkit-outer-spin-button {
	height: auto
}

[type=search] {
	-webkit-appearance: textfield;
	outline-offset: -2px
}

::-webkit-search-decoration {
	-webkit-appearance: none
}

::-webkit-file-upload-button {
	-webkit-appearance: button;
	font: inherit
}

summary {
	display: list-item
}

blockquote, dd, dl, figure, h1, h2, h3, h4, h5, h6, hr, p, pre {
	margin: 0
}

fieldset {
	margin: 0
}

fieldset, legend {
	padding: 0
}

menu, ol, ul {
	list-style: none;
	margin: 0;
	padding: 0
}

textarea {
	resize: vertical
}

input::-moz-placeholder, textarea::-moz-placeholder {
	color: #9ca3af
}

input::placeholder, textarea::placeholder {
	color: #9ca3af
}

[role=button], button {
	cursor: pointer
}

:disabled {
	cursor: default
}

audio, canvas, embed, iframe, img, object, svg, video {
	display: block;
	vertical-align: middle
}

img, video {
	max-width: 100%;
	height: auto
}

[multiple], [type=date], [type=datetime-local], [type=email], [type=month],
	[type=number], [type=password], [type=search], [type=tel], [type=text],
	[type=time], [type=url], [type=week], select, textarea {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background-color: #fff;
	border-color: #6b7280;
	border-width: 1px;
	border-radius: 0;
	padding: .5rem .75rem;
	font-size: 1rem;
	line-height: 1.5rem; -
	-tw-shadow: 0 0 #0000
}

[multiple]:focus, [type=date]:focus, [type=datetime-local]:focus, [type=email]:focus,
	[type=month]:focus, [type=number]:focus, [type=password]:focus, [type=search]:focus,
	[type=tel]:focus, [type=text]:focus, [type=time]:focus, [type=url]:focus,
	[type=week]:focus, select:focus, textarea:focus {
	outline: 2px solid transparent;
	outline-offset: 2px; -
	-tw-ring-inset: var(- -tw-empty, /*!*/ /*!*/); -
	-tw-ring-offset-width: 0px; -
	-tw-ring-offset-color: #fff; -
	-tw-ring-color: #135d93; -
	-tw-ring-offset-shadow: var(- -tw-ring-inset) 0 0 0
		var(- -tw-ring-offset-width) var(- -tw-ring-offset-color); -
	-tw-ring-shadow: var(- -tw-ring-inset) 0 0 0
		calc(1px + var(- -tw-ring-offset-width)) var(- -tw-ring-color);
	box-shadow: var(- -tw-ring-offset-shadow), var(- -tw-ring-shadow),
		var(- -tw-shadow);
	border-color: #135d93
}

input::-moz-placeholder, textarea::-moz-placeholder {
	color: #6b7280;
	opacity: 1
}

input::placeholder, textarea::placeholder {
	color: #6b7280;
	opacity: 1
}

::-webkit-datetime-edit-fields-wrapper {
	padding: 0
}

::-webkit-date-and-time-value {
	min-height: 1.5em
}

::-webkit-datetime-edit, ::-webkit-datetime-edit-day-field, ::-webkit-datetime-edit-hour-field,
	::-webkit-datetime-edit-meridiem-field, ::-webkit-datetime-edit-millisecond-field,
	::-webkit-datetime-edit-minute-field, ::-webkit-datetime-edit-month-field,
	::-webkit-datetime-edit-second-field, ::-webkit-datetime-edit-year-field
	{
	padding-top: 0;
	padding-bottom: 0
}

select {
	background-image:
		url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='M6 8l4 4 4-4'/%3e%3c/svg%3e");
	background-position: right .5rem center;
	background-repeat: no-repeat;
	background-size: 1.5em 1.5em;
	padding-right: 2.5rem;
	-webkit-print-color-adjust: exact;
	print-color-adjust: exact
}

[multiple] {
	background-image: none;
	background-position: 0 0;
	background-repeat: unset;
	background-size: initial;
	padding-right: .75rem;
	-webkit-print-color-adjust: unset;
	print-color-adjust: unset
}

[type=checkbox], [type=radio] {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	padding: 0;
	-webkit-print-color-adjust: exact;
	print-color-adjust: exact;
	display: inline-block;
	vertical-align: middle;
	background-origin: border-box;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
	flex-shrink: 0;
	height: 1rem;
	width: 1rem;
	color: #135d93;
	background-color: #fff;
	border-color: #6b7280;
	border-width: 1px; -
	-tw-shadow: 0 0 #0000
}

[type=checkbox] {
	border-radius: 0
}

[type=radio] {
	border-radius: 100%
}

[type=checkbox]:focus, [type=radio]:focus {
	outline: 2px solid transparent;
	outline-offset: 2px; -
	-tw-ring-inset: var(- -tw-empty, /*!*/ /*!*/); -
	-tw-ring-offset-width: 2px; -
	-tw-ring-offset-color: #fff; -
	-tw-ring-color: #135d93; -
	-tw-ring-offset-shadow: var(- -tw-ring-inset) 0 0 0
		var(- -tw-ring-offset-width) var(- -tw-ring-offset-color); -
	-tw-ring-shadow: var(- -tw-ring-inset) 0 0 0
		calc(2px + var(- -tw-ring-offset-width)) var(- -tw-ring-color);
	box-shadow: var(- -tw-ring-offset-shadow), var(- -tw-ring-shadow),
		var(- -tw-shadow)
}

[type=checkbox]:checked, [type=radio]:checked {
	border-color: transparent;
	background-color: currentColor;
	background-size: 100% 100%;
	background-position: 50%;
	background-repeat: no-repeat
}

[type=checkbox]:checked {
	background-image:
		url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e")
}

[type=radio]:checked {
	background-image:
		url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3ccircle cx='8' cy='8' r='3'/%3e%3c/svg%3e")
}

[type=checkbox]:checked:focus, [type=checkbox]:checked:hover, [type=radio]:checked:focus,
	[type=radio]:checked:hover {
	border-color: transparent;
	background-color: currentColor
}

[type=checkbox]:indeterminate {
	background-image:
		url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 16 16'%3e%3cpath stroke='white' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M4 8h8'/%3e%3c/svg%3e");
	border-color: transparent;
	background-color: currentColor;
	background-size: 100% 100%;
	background-position: 50%;
	background-repeat: no-repeat
}

[type=checkbox]:indeterminate:focus, [type=checkbox]:indeterminate:hover
	{
	border-color: transparent;
	background-color: currentColor
}

[type=file] {
	background: unset;
	border-color: inherit;
	border-width: 0;
	border-radius: 0;
	padding: 0;
	font-size: unset;
	line-height: inherit
}

[type=file]:focus {
	outline: 1px solid ButtonText;
	outline: 1px auto -webkit-focus-ring-color
}

a {
	color: #0090f9
}

a :hover {
	text-decoration: underline
}

a :visited {
	color: #a855f7
}

select.form-multiselect {
	-o-appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background-image: none;
	border-radius: .5rem;
	border-width: 1px; -
	-tw-border-opacity: 1;
	border-color: rgb(209, 213, 219/ var( - -tw-border-opacity)); -
	-tw-bg-opacity: 1;
	background-color: rgb(255, 255, 255/ var( - -tw-bg-opacity))
}

select.form-multiselect::-webkit-scrollbar {
	width: 20px
}

select.form-multiselect::-webkit-scrollbar-thumb {
	background-color: #d9d9d9;
	background-clip: padding-box;
	border: 8px solid transparent;
	border-radius: 20px
}

select.form-multiselect::-webkit-scrollbar-track {
	background-color: transparent
}

*, :after, :before { -
	-tw-border-spacing-x: 0; -
	-tw-border-spacing-y: 0; -
	-tw-translate-x: 0; -
	-tw-translate-y: 0; -
	-tw-rotate: 0; -
	-tw-skew-x: 0; -
	-tw-skew-y: 0; -
	-tw-scale-x: 1; -
	-tw-scale-y: 1; -
	-tw-pan-x:; -
	-tw-pan-y:; -
	-tw-pinch-zoom:; -
	-tw-scroll-snap-strictness: proximity; -
	-tw-ordinal:; -
	-tw-slashed-zero:; -
	-tw-numeric-figure:; -
	-tw-numeric-spacing:; -
	-tw-numeric-fraction:; -
	-tw-ring-inset:; -
	-tw-ring-offset-width: 0px; -
	-tw-ring-offset-color: #fff; -
	-tw-ring-color: rgba(0, 144, 249, .5); -
	-tw-ring-offset-shadow: 0 0 #0000; -
	-tw-ring-shadow: 0 0 #0000; -
	-tw-shadow: 0 0 #0000; -
	-tw-shadow-colored: 0 0 #0000; -
	-tw-blur:; -
	-tw-brightness:; -
	-tw-contrast:; -
	-tw-grayscale:; -
	-tw-hue-rotate:; -
	-tw-invert:; -
	-tw-saturate:; -
	-tw-sepia:; -
	-tw-drop-shadow:; -
	-tw-backdrop-blur:; -
	-tw-backdrop-brightness:; -
	-tw-backdrop-contrast:; -
	-tw-backdrop-grayscale:; -
	-tw-backdrop-hue-rotate:; -
	-tw-backdrop-invert:; -
	-tw-backdrop-opacity:; -
	-tw-backdrop-saturate:; -
	-tw-backdrop-sepia:
}

::backdrop { -
	-tw-border-spacing-x: 0; -
	-tw-border-spacing-y: 0; -
	-tw-translate-x: 0; -
	-tw-translate-y: 0; -
	-tw-rotate: 0; -
	-tw-skew-x: 0; -
	-tw-skew-y: 0; -
	-tw-scale-x: 1; -
	-tw-scale-y: 1; -
	-tw-pan-x:; -
	-tw-pan-y:; -
	-tw-pinch-zoom:; -
	-tw-scroll-snap-strictness: proximity; -
	-tw-ordinal:; -
	-tw-slashed-zero:; -
	-tw-numeric-figure:; -
	-tw-numeric-spacing:; -
	-tw-numeric-fraction:; -
	-tw-ring-inset:; -
	-tw-ring-offset-width: 0px; -
	-tw-ring-offset-color: #fff; -
	-tw-ring-color: rgba(0, 144, 249, .5); -
	-tw-ring-offset-shadow: 0 0 #0000; -
	-tw-ring-shadow: 0 0 #0000; -
	-tw-shadow: 0 0 #0000; -
	-tw-shadow-colored: 0 0 #0000; -
	-tw-blur:; -
	-tw-brightness:; -
	-tw-contrast:; -
	-tw-grayscale:; -
	-tw-hue-rotate:; -
	-tw-invert:; -
	-tw-saturate:; -
	-tw-sepia:; -
	-tw-drop-shadow:; -
	-tw-backdrop-blur:; -
	-tw-backdrop-brightness:; -
	-tw-backdrop-contrast:; -
	-tw-backdrop-grayscale:; -
	-tw-backdrop-hue-rotate:; -
	-tw-backdrop-invert:; -
	-tw-backdrop-opacity:; -
	-tw-backdrop-saturate:; -
	-tw-backdrop-sepia:
}

.form-input, .form-multiselect, .form-select, .form-textarea {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background-color: #fff;
	border-color: #6b7280;
	border-width: 1px;
	border-radius: 0;
	padding: .5rem .75rem;
	font-size: 1rem;
	line-height: 1.5rem; -
	-tw-shadow: 0 0 #0000
}

.form-input:focus, .form-multiselect:focus, .form-select:focus,
	.form-textarea:focus {
	outline: 2px solid transparent;
	outline-offset: 2px; -
	-tw-ring-inset: var(- -tw-empty, /*!*/ /*!*/); -
	-tw-ring-offset-width: 0px; -
	-tw-ring-offset-color: #fff; -
	-tw-ring-color: #135d93; -
	-tw-ring-offset-shadow: var(- -tw-ring-inset) 0 0 0
		var(- -tw-ring-offset-width) var(- -tw-ring-offset-color); -
	-tw-ring-shadow: var(- -tw-ring-inset) 0 0 0
		calc(1px + var(- -tw-ring-offset-width)) var(- -tw-ring-color);
	box-shadow: var(- -tw-ring-offset-shadow), var(- -tw-ring-shadow),
		var(- -tw-shadow);
	border-color: #135d93
}

.aspect-w-10 {
	position: relative;
	padding-bottom: calc(var(- -tw-aspect-h)/var(- -tw-aspect-w)* 100%); -
	-tw-aspect-w: 10
}

.aspect-w-10>* {
	position: absolute;
	height: 100%;
	width: 100%;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0
}

.aspect-h-6 { -
	-tw-aspect-h: 6
}

.prose {
	color: var(- -tw-prose-body);
	max-width: 65ch
}

.prose :where([class~=lead]):not(:where([class~=not-prose] *)) {
	color: var(- -tw-prose-lead);
	font-size: 1.25em;
	line-height: 1.6;
	margin-top: 1.2em;
	margin-bottom: 1.2em
}

.prose :where(a):not(:where([class~=not-prose] *)) {
	color: var(- -tw-prose-links);
	text-decoration: underline;
	font-weight: 500
}

.prose :where(strong):not(:where([class~=not-prose] *)) {
	color: var(- -tw-prose-bold);
	font-weight: 600
}

.prose :where(a strong):not(:where([class~=not-prose] *)) {
	color: inherit
}

.prose :where(blockquote strong):not(:where([class~=not-prose] *)) {
	color: inherit
}

.prose :where(thead th strong):not(:where([class~=not-prose] *)) {
	color: inherit
}

.prose :where(ol):not(:where([class~=not-prose] *)) {
	list-style-type: decimal;
	margin-top: 1.25em;
	margin-bottom: 1.25em;
	padding-left: 1.625em
}

.prose :where(ol[type=A]):not(:where([class~=not-prose] *)) {
	list-style-type: upper-alpha
}

.prose :where(ol[type=a]):not(:where([class~=not-prose] *)) {
	list-style-type: lower-alpha
}

.prose :where(ol[type=A s]):not(:where([class~=not-prose] *)) {
	list-style-type: upper-alpha
}

.prose :where(ol[type=a s]):not(:where([class~=not-prose] *)) {
	list-style-type: lower-alpha
}

.prose :where(ol[type=I]):not(:where([class~=not-prose] *)) {
	list-style-type: upper-roman
}

.prose :where(ol[type=i]):not(:where([class~=not-prose] *)) {
	list-style-type: lower-roman
}

.prose :where(ol[type=I s]):not(:where([class~=not-prose] *)) {
	list-style-type: upper-roman
}

.prose :where(ol[type=i s]):not(:where([class~=not-prose] *)) {
	list-style-type: lower-roman
}

.prose :where(ol[type="1"]):not(:where([class~=not-prose] *)) {
	list-style-type: decimal
}

.prose :where(ul):not(:where([class~=not-prose] *)) {
	list-style-type: disc;
	margin-top: 1.25em;
	margin-bottom: 1.25em;
	padding-left: 1.625em
}

.prose :where(ol>li):not(:where([class~=not-prose] *))::marker {
	font-weight: 400;
	color: var(- -tw-prose-counters)
}

.prose :where(ul>li):not(:where([class~=not-prose] *))::marker {
	color: var(- -tw-prose-bullets)
}

.prose :where(hr):not(:where([class~=not-prose] *)) {
	border-color: var(- -tw-prose-hr);
	border-top-width: 1px;
	margin-top: 3em;
	margin-bottom: 3em
}

.prose :where(blockquote):not(:where([class~=not-prose] *)) {
	font-weight: 500;
	font-style: italic;
	color: var(- -tw-prose-quotes);
	border-left-width: .25rem;
	border-left-color: var(- -tw-prose-quote-borders);
	quotes: "\201C" "\201D" "\2018" "\2019";
	margin-top: 1.6em;
	margin-bottom: 1.6em;
	padding-left: 1em
}

.prose :where(blockquote p:first-of-type):not(:where([class~=not-prose] *)):before
	{
	content: open-quote
}

.prose :where(blockquote p:last-of-type):not(:where([class~=not-prose] *)):after
	{
	content: close-quote
}

.prose :where(h1):not(:where([class~=not-prose] *)) {
	color: var(- -tw-prose-headings);
	font-weight: 800;
	font-size: 2.25em;
	margin-top: 0;
	margin-bottom: .8888889em;
	line-height: 1.1111111
}

.prose :where(h1 strong):not(:where([class~=not-prose] *)) {
	font-weight: 900;
	color: inherit
}

.prose :where(h2):not(:where([class~=not-prose] *)) {
	color: var(- -tw-prose-headings);
	font-weight: 700;
	font-size: 1.5em;
	margin-top: 2em;
	margin-bottom: 1em;
	line-height: 1.3333333
}

.prose :where(h2 strong):not(:where([class~=not-prose] *)) {
	font-weight: 800;
	color: inherit
}

.prose :where(h3):not(:where([class~=not-prose] *)) {
	color: var(- -tw-prose-headings);
	font-weight: 600;
	font-size: 1.25em;
	margin-top: 1.6em;
	margin-bottom: .6em;
	line-height: 1.6
}

.prose :where(h3 strong):not(:where([class~=not-prose] *)) {
	font-weight: 700;
	color: inherit
}

.prose :where(h4):not(:where([class~=not-prose] *)) {
	color: var(- -tw-prose-headings);
	font-weight: 600;
	margin-top: 1.5em;
	margin-bottom: .5em;
	line-height: 1.5
}

.prose :where(h4 strong):not(:where([class~=not-prose] *)) {
	font-weight: 700;
	color: inherit
}

.prose :where(img):not(:where([class~=not-prose] *)) {
	margin-top: 2em;
	margin-bottom: 2em
}

.prose :where(figure>*):not(:where([class~=not-prose] *)) {
	margin-top: 0;
	margin-bottom: 0
}

.prose :where(figcaption):not(:where([class~=not-prose] *)) {
	color: var(- -tw-prose-captions);
	font-size: .875em;
	line-height: 1.4285714;
	margin-top: .8571429em
}

.prose :where(code):not(:where([class~=not-prose] *)) {
	color: var(- -tw-prose-code);
	font-weight: 600;
	font-size: .875em
}

.prose :where(code):not(:where([class~=not-prose] *)):before {
	content: "`"
}

.prose :where(code):not(:where([class~=not-prose] *)):after {
	content: "`"
}

.prose :where(a code):not(:where([class~=not-prose] *)) {
	color: inherit
}

.prose :where(h1 code):not(:where([class~=not-prose] *)) {
	color: inherit
}

.prose :where(h2 code):not(:where([class~=not-prose] *)) {
	color: inherit;
	font-size: .875em
}

.prose :where(h3 code):not(:where([class~=not-prose] *)) {
	color: inherit;
	font-size: .9em
}

.prose :where(h4 code):not(:where([class~=not-prose] *)) {
	color: inherit
}

.prose :where(blockquote code):not(:where([class~=not-prose] *)) {
	color: inherit
}

.prose :where(thead th code):not(:where([class~=not-prose] *)) {
	color: inherit
}

.prose :where(pre):not(:where([class~=not-prose] *)) {
	color: var(- -tw-prose-pre-code);
	background-color: var(- -tw-prose-pre-bg);
	overflow-x: auto;
	font-weight: 400;
	font-size: .875em;
	line-height: 1.7142857;
	margin-top: 1.7142857em;
	margin-bottom: 1.7142857em;
	border-radius: .375rem;
	padding: .8571429em 1.1428571em
}

.prose :where(pre code):not(:where([class~=not-prose] *)) {
	background-color: transparent;
	border-width: 0;
	border-radius: 0;
	padding: 0;
	font-weight: inherit;
	color: inherit;
	font-size: inherit;
	font-family: inherit;
	line-height: inherit
}

.prose :where(pre code):not(:where([class~=not-prose] *)):before {
	content: none
}

.prose :where(pre code):not(:where([class~=not-prose] *)):after {
	content: none
}

.prose :where(table):not(:where([class~=not-prose] *)) {
	width: 100%;
	table-layout: auto;
	text-align: left;
	margin-top: 2em;
	margin-bottom: 2em;
	font-size: .875em;
	line-height: 1.7142857
}

.prose :where(thead):not(:where([class~=not-prose] *)) {
	border-bottom-width: 1px;
	border-bottom-color: var(- -tw-prose-th-borders)
}

.prose :where(thead th):not(:where([class~=not-prose] *)) {
	color: var(- -tw-prose-headings);
	font-weight: 600;
	vertical-align: bottom;
	padding-right: .5714286em;
	padding-bottom: .5714286em;
	padding-left: .5714286em
}

.prose :where(tbody tr):not(:where([class~=not-prose] *)) {
	border-bottom-width: 1px;
	border-bottom-color: var(- -tw-prose-td-borders)
}

.prose :where(tbody tr:last-child):not(:where([class~=not-prose] *)) {
	border-bottom-width: 0
}

.prose :where(tbody td):not(:where([class~=not-prose] *)) {
	vertical-align: baseline
}

.prose :where(tfoot):not(:where([class~=not-prose] *)) {
	border-top-width: 1px;
	border-top-color: var(- -tw-prose-th-borders)
}

.prose :where(tfoot td):not(:where([class~=not-prose] *)) {
	vertical-align: top
}

.prose { -
	-tw-prose-body: #374151; -
	-tw-prose-headings: #111827; -
	-tw-prose-lead: #4b5563; -
	-tw-prose-links: #111827; -
	-tw-prose-bold: #111827; -
	-tw-prose-counters: #6b7280; -
	-tw-prose-bullets: #d1d5db; -
	-tw-prose-hr: #e5e7eb; -
	-tw-prose-quotes: #111827; -
	-tw-prose-quote-borders: #e5e7eb; -
	-tw-prose-captions: #6b7280; -
	-tw-prose-code: #111827; -
	-tw-prose-pre-code: #e5e7eb; -
	-tw-prose-pre-bg: #1f2937; -
	-tw-prose-th-borders: #d1d5db; -
	-tw-prose-td-borders: #e5e7eb; -
	-tw-prose-invert-body: #d1d5db; -
	-tw-prose-invert-headings: #fff; -
	-tw-prose-invert-lead: #9ca3af; -
	-tw-prose-invert-links: #fff; -
	-tw-prose-invert-bold: #fff; -
	-tw-prose-invert-counters: #9ca3af; -
	-tw-prose-invert-bullets: #4b5563; -
	-tw-prose-invert-hr: #374151; -
	-tw-prose-invert-quotes: #f3f4f6; -
	-tw-prose-invert-quote-borders: #374151; -
	-tw-prose-invert-captions: #9ca3af; -
	-tw-prose-invert-code: #fff; -
	-tw-prose-invert-pre-code: #d1d5db; -
	-tw-prose-invert-pre-bg: rgba(0, 0, 0, .5); -
	-tw-prose-invert-th-borders: #4b5563; -
	-tw-prose-invert-td-borders: #374151;
	font-size: 1rem;
	line-height: 1.75
}

.prose :where(p):not(:where([class~=not-prose] *)) {
	margin-top: 1.25em;
	margin-bottom: 1.25em
}

.prose :where(video):not(:where([class~=not-prose] *)) {
	margin-top: 2em;
	margin-bottom: 2em
}

.prose :where(figure):not(:where([class~=not-prose] *)) {
	margin-top: 2em;
	margin-bottom: 2em
}

.prose :where(li):not(:where([class~=not-prose] *)) {
	margin-top: .5em;
	margin-bottom: .5em
}

.prose :where(ol>li):not(:where([class~=not-prose] *)) {
	padding-left: .375em
}

.prose :where(ul>li):not(:where([class~=not-prose] *)) {
	padding-left: .375em
}

.prose :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
	margin-top: .75em;
	margin-bottom: .75em
}

.prose :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.25em
}

.prose :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.25em
}

.prose :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.25em
}

.prose :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.25em
}

.prose :where(ul ul, ul ol, ol ul, ol ol):not(:where([class~=not-prose] *))
	{
	margin-top: .75em;
	margin-bottom: .75em
}

.prose :where(hr+*):not(:where([class~=not-prose] *)) {
	margin-top: 0
}

.prose :where(h2+*):not(:where([class~=not-prose] *)) {
	margin-top: 0
}

.prose :where(h3+*):not(:where([class~=not-prose] *)) {
	margin-top: 0
}

.prose :where(h4+*):not(:where([class~=not-prose] *)) {
	margin-top: 0
}

.prose :where(thead th:first-child):not(:where([class~=not-prose] *)) {
	padding-left: 0
}

.prose :where(thead th:last-child):not(:where([class~=not-prose] *)) {
	padding-right: 0
}

.prose :where(tbody td, tfoot td):not(:where([class~=not-prose] *)) {
	padding: .5714286em
}

.prose :where(tbody td:first-child, tfoot td:first-child):not(:where([class~=not-prose] *))
	{
	padding-left: 0
}

.prose :where(tbody td:last-child, tfoot td:last-child):not(:where([class~=not-prose] *))
	{
	padding-right: 0
}

.prose :where(.prose>:first-child):not(:where([class~=not-prose] *)) {
	margin-top: 0
}

.prose :where(.prose>:last-child):not(:where([class~=not-prose] *)) {
	margin-bottom: 0
}

.prose-sm :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
	margin-top: .5714286em;
	margin-bottom: .5714286em
}

.prose-sm :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.1428571em
}

.prose-sm :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.1428571em
}

.prose-sm :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.1428571em
}

.prose-sm :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.1428571em
}

.prose-sm :where(.prose>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 0
}

.prose-sm :where(.prose>:last-child):not(:where([class~=not-prose] *)) {
	margin-bottom: 0
}

.prose-base :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
	margin-top: .75em;
	margin-bottom: .75em
}

.prose-base :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.25em
}

.prose-base :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.25em
}

.prose-base :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.25em
}

.prose-base :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.25em
}

.prose-base :where(.prose>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 0
}

.prose-base :where(.prose>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 0
}

.prose-lg :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
	margin-top: .8888889em;
	margin-bottom: .8888889em
}

.prose-lg :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.3333333em
}

.prose-lg :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.3333333em
}

.prose-lg :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.3333333em
}

.prose-lg :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.3333333em
}

.prose-lg :where(.prose>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 0
}

.prose-lg :where(.prose>:last-child):not(:where([class~=not-prose] *)) {
	margin-bottom: 0
}

.prose-xl :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
	margin-top: .8em;
	margin-bottom: .8em
}

.prose-xl :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.2em
}

.prose-xl :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.2em
}

.prose-xl :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.2em
}

.prose-xl :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.2em
}

.prose-xl :where(.prose>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 0
}

.prose-xl :where(.prose>:last-child):not(:where([class~=not-prose] *)) {
	margin-bottom: 0
}

.prose-2xl :where(.prose>ul>li p):not(:where([class~=not-prose] *)) {
	margin-top: .8333333em;
	margin-bottom: .8333333em
}

.prose-2xl :where(.prose>ul>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.3333333em
}

.prose-2xl :where(.prose>ul>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.3333333em
}

.prose-2xl :where(.prose>ol>li>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 1.3333333em
}

.prose-2xl :where(.prose>ol>li>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 1.3333333em
}

.prose-2xl :where(.prose>:first-child):not(:where([class~=not-prose] *))
	{
	margin-top: 0
}

.prose-2xl :where(.prose>:last-child):not(:where([class~=not-prose] *))
	{
	margin-bottom: 0
}

.prose-blue { -
	-tw-prose-links: #2563eb; -
	-tw-prose-invert-links: #3b82f6
}

.remirror-editor[contenteditable=false] {
	margin-top: -1rem !important;
	min-height: 0 !important;
	overflow: hidden !important;
	border-right-width: 0 !important;
	padding: 0 !important; -
	-tw-shadow: 0 0 #0000 !important; -
	-tw-shadow-colored: 0 0 #0000 !important
}

.remirror-editor[contenteditable=false], .remirror-editor[contenteditable=true]
	{
	box-shadow: var(- -tw-ring-offset-shadow, 0 0 #0000),
		var(- -tw-ring-shadow, 0 0 #0000), var(- -tw-shadow) !important
}

.remirror-editor[contenteditable=true] {
	min-height: 300px !important;
	overflow-y: auto !important; -
	-tw-bg-opacity: 1 !important;
	background-color: rgb(255, 255, 255/ var( - -tw-bg-opacity)) !important;
	padding: .5rem !important; -
	-tw-shadow: 0 0 #0000 !important; -
	-tw-shadow-colored: 0 0 #0000 !important
}

.dark .remirror-editor[contenteditable=true] { -
	-tw-bg-opacity: 1 !important;
	background-color: rgb(17, 24, 39/ var( - -tw-bg-opacity)) !important
}

.remirror-comment[contenteditable=true] {
	max-height: 600px !important;
	min-height: 90px !important;
	overflow-y: auto !important; -
	-tw-bg-opacity: 1 !important;
	background-color: rgb(255, 255, 255/ var( - -tw-bg-opacity)) !important;
	padding: .5rem !important; -
	-tw-shadow: 0 0 #0000 !important; -
	-tw-shadow-colored: 0 0 #0000 !important;
	box-shadow: var(- -tw-ring-offset-shadow, 0 0 #0000),
		var(- -tw-ring-shadow, 0 0 #0000), var(- -tw-shadow) !important
}

.dark .remirror-comment[contenteditable=true] { -
	-tw-bg-opacity: 1 !important;
	background-color: rgb(17, 24, 39/ var( - -tw-bg-opacity)) !important
}

.remirror-reply[contenteditable=true] {
	max-height: 600px !important;
	min-height: 70px !important;
	overflow-y: auto !important; -
	-tw-bg-opacity: 1 !important;
	background-color: rgb(255, 255, 255/ var( - -tw-bg-opacity)) !important;
	padding: .5rem !important; -
	-tw-shadow: 0 0 #0000 !important; -
	-tw-shadow-colored: 0 0 #0000 !important;
	box-shadow: var(- -tw-ring-offset-shadow, 0 0 #0000),
		var(- -tw-ring-shadow, 0 0 #0000), var(- -tw-shadow) !important
}

.dark .remirror-reply[contenteditable=true] { -
	-tw-bg-opacity: 1 !important;
	background-color: rgb(17, 24, 39/ var( - -tw-bg-opacity)) !important
}

.remirror-editor h1 {
	padding-top: 1rem;
	padding-bottom: 1rem;
	font-size: 2.25rem;
	line-height: 2.5rem;
	font-weight: 700; -
	-tw-text-opacity: 1;
	color: rgb(17, 24, 39/ var( - -tw-text-opacity))
}

.dark .remirror-editor h1 { -
	-tw-text-opacity: 1;
	color: rgb(243, 244, 246/ var( - -tw-text-opacity))
}

.remirror-editor h2 {
	padding-top: .75rem;
	padding-bottom: .75rem;
	font-size: 1.875rem;
	line-height: 2.25rem;
	font-weight: 700; -
	-tw-text-opacity: 1;
	color: rgb(17, 24, 39/ var( - -tw-text-opacity))
}

.dark .remirror-editor h2 { -
	-tw-text-opacity: 1;
	color: rgb(243, 244, 246/ var( - -tw-text-opacity))
}

.remirror-editor h3 {
	padding-top: .5rem;
	padding-bottom: .5rem;
	font-size: 1.5rem;
	line-height: 2rem;
	font-weight: 700; -
	-tw-text-opacity: 1;
	color: rgb(17, 24, 39/ var( - -tw-text-opacity))
}

.dark .remirror-editor h3 { -
	-tw-text-opacity: 1;
	color: rgb(243, 244, 246/ var( - -tw-text-opacity))
}

.remirror-editor h4 {
	padding-top: .25rem;
	padding-bottom: .25rem;
	font-size: 1.25rem;
	line-height: 1.75rem;
	font-weight: 700; -
	-tw-text-opacity: 1;
	color: rgb(17, 24, 39/ var( - -tw-text-opacity))
}

.dark .remirror-editor h4 { -
	-tw-text-opacity: 1;
	color: rgb(243, 244, 246/ var( - -tw-text-opacity))
}

.remirror-editor h5 {
	padding-top: .25rem;
	padding-bottom: .25rem;
	font-size: 1.125rem;
	line-height: 1.75rem;
	font-weight: 700; -
	-tw-text-opacity: 1;
	color: rgb(17, 24, 39/ var( - -tw-text-opacity))
}

.dark .remirror-editor h5 { -
	-tw-text-opacity: 1;
	color: rgb(243, 244, 246/ var( - -tw-text-opacity))
}

.remirror-editor h6 {
	padding-top: .25rem;
	padding-bottom: .25rem;
	font-size: 1rem;
	line-height: 1.5rem;
	font-weight: 600; -
	-tw-text-opacity: 1;
	color: rgb(17, 24, 39/ var( - -tw-text-opacity))
}

.dark .remirror-editor h6 { -
	-tw-text-opacity: 1;
	color: rgb(243, 244, 246/ var( - -tw-text-opacity))
}

.remirror-editor p {
	padding-top: .375rem;
	padding-bottom: .375rem;
	vertical-align: middle
}

.remirror-editor p>code {
	border-radius: .25rem;
	border-width: 1px;
	border-color: hsla(220, 9%, 46%, .3); -
	-tw-bg-opacity: 1;
	background-color: rgb(243, 244, 246/ var( - -tw-bg-opacity));
	padding-left: .25rem;
	padding-right: .25rem;
	padding-bottom: .125rem;
	font-size: .875rem;
	line-height: 1.25rem
}

.dark .remirror-editor p>code {
	border-color: hsla(220, 9%, 46%, .7); -
	-tw-bg-opacity: 1;
	background-color: rgb(55, 65, 81/ var( - -tw-bg-opacity))
}

.dark .remirror-editor pre[class*=language-] { -
	-tw-bg-opacity: 1 !important;
	background-color: rgb(55, 65, 81/ var( - -tw-bg-opacity)) !important
}

.remirror-editor p>a {
	text-decoration-line: underline
}

.remirror-editor blockquote {
	margin-top: .375rem;
	margin-bottom: .375rem;
	border-left-width: 3px;
	border-color: hsla(220, 9%, 46%, .3);
	padding-left: 1rem;
	font-style: italic; -
	-tw-text-opacity: 1;
	color: rgb(156, 163, 175/ var( - -tw-text-opacity))
}

.dark .remirror-editor blockquote {
	border-color: hsla(220, 9%, 46%, .7); -
	-tw-text-opacity: 1;
	color: rgb(107, 114, 128/ var( - -tw-text-opacity))
}

.remirror-editor hr {
	margin-top: 1rem !important;
	margin-bottom: 1rem !important;
	border-top-width: 1px !important;
	border-color: hsla(220, 9%, 46%, .3) !important
}

.dark .remirror-editor hr {
	border-color: hsla(220, 9%, 46%, .7) !important
}

.remirror-editor ol, .remirror-editor ul {
	padding-left: 2rem
}

.remirror-editor ul>li {
	list-style-type: disc
}

.remirror-editor ol>li {
	list-style-type: decimal
}

.remirror-editor ul ul>li {
	list-style-type: circle
}

.remirror-editor ul ul ul>li {
	list-style-type: square
}

.remirror-editor li>p {
	padding-top: 0;
	padding-bottom: 0
}

.remirror-editor input[type=checkbox] {
	height: 1rem;
	width: 1rem;
	border-radius: .25rem;
	border-color: hsla(220, 9%, 46%, .3); -
	-tw-text-opacity: 1;
	color: rgb(0, 144, 249/ var( - -tw-text-opacity));
	filter: none
}

.remirror-editor input[type=checkbox]:focus { -
	-tw-ring-opacity: 1; -
	-tw-ring-color: rgb(0, 144, 249/ var( - -tw-ring-opacity))
}

.dark .remirror-editor input[type=checkbox] {
	border-color: hsla(220, 9%, 46%, .7)
}

.remirror-editor pre[class*=language-] {
	white-space: pre-wrap !important
}

.remirror-editor button {
	position: relative;
	display: inline-flex;
	align-items: center;
	border-width: 1px;
	border-color: hsla(220, 9%, 46%, .3); -
	-tw-bg-opacity: 1;
	background-color: rgb(255, 255, 255/ var( - -tw-bg-opacity));
	padding: .5rem .75rem;
	font-size: .875rem;
	line-height: 1.25rem;
	font-weight: 500
}

@media ( hover :hover) and (pointer:fine) {
	.remirror-editor button:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(249, 250, 251/ var( - -tw-bg-opacity))
	}
}

.dark .remirror-editor button {
	border-color: hsla(220, 9%, 46%, .7)
}

.remirror-editor table {
	min-width: 100% !important;
	border-width: 1px !important;
	border-color: hsla(220, 9%, 46%, .3) !important
}

.dark .remirror-editor table {
	border-color: hsla(220, 9%, 46%, .7) !important
}

.remirror-editor thead { -
	-tw-bg-opacity: 1;
	background-color: rgb(243, 244, 246/ var( - -tw-bg-opacity))
}

.dark .remirror-editor thead { -
	-tw-bg-opacity: 1;
	background-color: rgb(55, 65, 81/ var( - -tw-bg-opacity))
}

.remirror-editor tr>:not([hidden]) ~:not([hidden]) { -
	-tw-divide-x-reverse: 0;
	border-right-width: calc(1px * var(- -tw-divide-x-reverse));
	border-left-width: calc(1px * calc(1 - var(- -tw-divide-x-reverse)));
	border-color: hsla(220, 9%, 46%, .3)
}

.dark .remirror-editor tr>:not([hidden]) ~:not([hidden]) {
	border-color: hsla(220, 9%, 46%, .7)
}

.remirror-editor tr:first-child { -
	-tw-bg-opacity: 1;
	background-color: rgb(243, 244, 246/ var( - -tw-bg-opacity))
}

.dark .remirror-editor tr:first-child { -
	-tw-bg-opacity: 1;
	background-color: rgb(55, 65, 81/ var( - -tw-bg-opacity))
}

.remirror-editor th:first-child {
	border-width: 0 !important
}

.remirror-editor th {
	padding: .875rem .75rem;
	text-align: left;
	font-size: .875rem;
	line-height: 1.25rem;
	font-weight: 600
}

.remirror-editor tbody>:not([hidden]) ~:not([hidden]) { -
	-tw-divide-y-reverse: 0 !important;
	border-top-width: calc(1px * calc(1 - var(- -tw-divide-y-reverse)))
		!important;
	border-bottom-width: calc(1px * var(- -tw-divide-y-reverse)) !important;
	border-color: hsla(220, 9%, 46%, .3) !important
}

.dark .remirror-editor tbody>:not([hidden]) ~:not([hidden]) {
	border-color: hsla(220, 9%, 46%, .7) !important
}

.remirror-editor td {
	white-space: nowrap !important;
	border-color: hsla(220, 9%, 46%, .3) !important;
	padding: 1rem .75rem !important;
	font-size: .875rem !important;
	line-height: 1.25rem !important; -
	-tw-text-opacity: 1 !important;
	color: rgb(107, 114, 128/ var( - -tw-text-opacity)) !important
}

.dark .remirror-editor td {
	border-color: hsla(220, 9%, 46%, .7) !important; -
	-tw-text-opacity: 1 !important;
	color: rgb(156, 163, 175/ var( - -tw-text-opacity)) !important
}

.remirror-editor span.remirror-mention-atom.remirror-mention-atom-at {
	cursor: pointer
}

.dark .remirror-editor span.remirror-mention-atom.remirror-mention-atom-at
	{ -
	-tw-bg-opacity: 1;
	background-color: rgb(55, 65, 81/ var( - -tw-bg-opacity)); -
	-tw-text-opacity: 1;
	color: rgb(216, 180, 254/ var( - -tw-text-opacity))
}

.remirror-editor span.remirror-mention-atom.remirror-mention-atom-at:before
	{
	content: "@"
}

.remirror-editor iframe {
	max-width: 100%
}

.remirror-editor .ProseMirror-selectednode {
	outline: 2px solid transparent !important;
	outline-offset: 2px !important
}

.remirror-theme .remirror-floating-popover {
	z-index: 10 !important
}

.remirror-theme .remirror-floating-popover [aria-label=popover-link]>:not([hidden])
	 ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(-.125rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(-.125rem * var(- -tw-space-y-reverse))
}

.remirror-theme .remirror-floating-popover [aria-label=popover-link] {
	border-radius: .375rem; -
	-tw-shadow: 0 4px 6px -1px rgba(0, 0, 0, .1), 0 2px 4px -2px
		rgba(0, 0, 0, .1); -
	-tw-shadow-colored: 0 4px 6px -1px var(- -tw-shadow-color), 0 2px 4px
		-2px var(- -tw-shadow-color);
	box-shadow: var(- -tw-ring-offset-shadow, 0 0 #0000),
		var(- -tw-ring-shadow, 0 0 #0000), var(- -tw-shadow)
}

.remirror-theme .remirror-floating-popover [aria-label=popover-link]>div:first-child button
	{
	border-top-left-radius: .375rem;
	border-top-right-radius: .375rem
}

.remirror-theme .remirror-floating-popover [aria-label=popover-link]>div:last-child button
	{
	border-bottom-right-radius: .375rem;
	border-bottom-left-radius: .375rem;
	line-height: 1
}

.remirror-theme * {
	font-family: Pretendard, ui-sans-serif, system-ui, -apple-system,
		BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans,
		sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol,
		Noto Color Emoji
}

.suggestions {
	margin-top: -.5rem;
	margin-left: .5rem;
	border-radius: .375rem;
	border-width: 1px; -
	-tw-border-opacity: 1;
	border-color: rgb(107, 114, 128/ var( - -tw-border-opacity))
}

.suggestions .suggestion {
	padding: .25rem;
	font-size: .875rem;
	line-height: 1.25rem
}

.suggestions .suggestion.hovered {
	cursor: pointer; -
	-tw-bg-opacity: 1;
	background-color: rgb(19, 93, 147/ var( - -tw-bg-opacity)); -
	-tw-text-opacity: 1;
	color: rgb(255, 255, 255/ var( - -tw-text-opacity))
}

.suggestions .suggestion.highlighted { -
	-tw-bg-opacity: 1;
	background-color: rgb(165, 209, 246/ var( - -tw-bg-opacity))
}

.swiper .swiper-pagination {
	position: relative !important;
	padding-top: 1rem !important
}

.swiper .swiper-pagination-bullet {
	height: .5rem;
	width: .5rem
}

.swiper .swiper-pagination-bullet-active {
	height: .5rem;
	width: 1.5rem;
	border-radius: .375rem; -
	-tw-bg-opacity: 1;
	background-color: rgb(0, 144, 249/ var( - -tw-bg-opacity));
	transition: width .1s
}

.sr-only {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	white-space: nowrap;
	border-width: 0
}

.pointer-events-none {
	pointer-events: none
}

.pointer-events-auto {
	pointer-events: auto
}

.static {
	position: static
}

.fixed {
	position: fixed
}

.absolute {
	position: absolute
}

.relative {
	position: relative
}

.sticky {
	position: sticky
}

.inset-0 {
	right: 0;
	left: 0
}

.inset-0, .inset-y-0 {
	top: 0;
	bottom: 0
}

.inset-x-0 {
	left: 0;
	right: 0
}

.-inset-x-8 {
	left: -2rem;
	right: -2rem
}

.-inset-y-8 {
	top: -2rem;
	bottom: -2rem
}

.top-0 {
	top: 0
}

.-top-1\.5 {
	top: -.375rem
}

.right-5 {
	right: 1.25rem
}

.-top-1 {
	top: -.25rem
}

.left-0 {
	left: 0
}

.top-\[-10rem\] {
	top: -10rem
}

.left-\[calc\(50\%-11rem\)\] {
	left: calc(50% - 11rem)
}

.left-\[calc\(50\%-5rem\)\] {
	left: calc(50% - 5rem)
}

.-bottom-1 {
	bottom: -.25rem
}

.top-10 {
	top: 2.5rem
}

.right-0 {
	right: 0
}

.bottom-0 {
	bottom: 0
}

.top-4 {
	top: 1rem
}

.left-4 {
	left: 1rem
}

.-top-\[10px\] {
	top: -10px
}

.-top-12 {
	top: -3rem
}

.right-1\/4 {
	right: 25%
}

.top-2\.5 {
	top: .625rem
}

.top-2 {
	top: .5rem
}

.top-16 {
	top: 4rem
}

.-left-2 {
	left: -.5rem
}

.-top-\[8px\] {
	top: -8px
}

.-top-\[6px\] {
	top: -6px
}

.-top-\[4px\] {
	top: -4px
}

.-top-\[9px\] {
	top: -9px
}

.top-1\.5 {
	top: .375rem
}

.left-3 {
	left: .75rem
}

.top-1 {
	top: .25rem
}

.left-1\/2 {
	left: 50%
}

.-top-\[1px\] {
	top: -1px
}

.right-10 {
	right: 2.5rem
}

.left-2 {
	left: .5rem
}

.left-0\.5 {
	left: .125rem
}

.right-0\.5 {
	right: .125rem
}

.-bottom-\[7px\] {
	bottom: -7px
}

.right-4 {
	right: 1rem
}

.-bottom-\[31px\] {
	bottom: -31px
}

.right-16 {
	right: 4rem
}

.isolate {
	isolation: isolate
}

.z-10 {
	z-index: 10
}

.-z-10 {
	z-index: -10
}

.z-20 {
	z-index: 20
}

.z-0 {
	z-index: 0
}

.m-auto {
	margin: auto
}

.m-10 {
	margin: 2.5rem
}

.my-20 {
	margin-top: 5rem;
	margin-bottom: 5rem
}

.mx-auto {
	margin-left: auto;
	margin-right: auto
}

.my-8 {
	margin-top: 2rem;
	margin-bottom: 2rem
}

.my-4 {
	margin-top: 1rem;
	margin-bottom: 1rem
}

.my-10 {
	margin-top: 2.5rem;
	margin-bottom: 2.5rem
}

.my-2 {
	margin-top: .5rem;
	margin-bottom: .5rem
}

.my-7 {
	margin-top: 1.75rem;
	margin-bottom: 1.75rem
}

.my-1 {
	margin-top: .25rem;
	margin-bottom: .25rem
}

.-my-1 {
	margin-top: -.25rem;
	margin-bottom: -.25rem
}

.my-0 {
	margin-top: 0;
	margin-bottom: 0
}

.my-6 {
	margin-top: 1.5rem;
	margin-bottom: 1.5rem
}

.my-0\.5 {
	margin-top: .125rem;
	margin-bottom: .125rem
}

.mx-1\.5 {
	margin-left: .375rem;
	margin-right: .375rem
}

.mx-1 {
	margin-left: .25rem;
	margin-right: .25rem
}

.mx-0\.5 {
	margin-left: .125rem;
	margin-right: .125rem
}

.mx-0 {
	margin-left: 0;
	margin-right: 0
}

.-my-0\.5 {
	margin-top: -.125rem;
	margin-bottom: -.125rem
}

.-my-0 {
	margin-top: 0;
	margin-bottom: 0
}

.my-1\.5 {
	margin-top: .375rem;
	margin-bottom: .375rem
}

.mx-4 {
	margin-left: 1rem;
	margin-right: 1rem
}

.my-16 {
	margin-top: 4rem;
	margin-bottom: 4rem
}

.mx-6 {
	margin-left: 1.5rem;
	margin-right: 1.5rem
}

.my-5 {
	margin-top: 1.25rem;
	margin-bottom: 1.25rem
}

.mx-5 {
	margin-left: 1.25rem;
	margin-right: 1.25rem
}

.mx-2 {
	margin-left: .5rem;
	margin-right: .5rem
}

.my-3 {
	margin-top: .75rem;
	margin-bottom: .75rem
}

.my-12 {
	margin-top: 3rem;
	margin-bottom: 3rem
}

.mt-7 {
	margin-top: 1.75rem
}

.mt-2 {
	margin-top: .5rem
}

.mt-12 {
	margin-top: 3rem
}

.mt-4 {
	margin-top: 1rem
}

.mt-8 {
	margin-top: 2rem
}

.mt-10 {
	margin-top: 2.5rem
}

.mb-8 {
	margin-bottom: 2rem
}

.mt-16 {
	margin-top: 4rem
}

.mb-7 {
	margin-bottom: 1.75rem
}

.mt-5 {
	margin-top: 1.25rem
}

.mb-9 {
	margin-bottom: 2.25rem
}

.mt-14 {
	margin-top: 3.5rem
}

.mt-6 {
	margin-top: 1.5rem
}

.mt-1 {
	margin-top: .25rem;
	margin-bottom: 25px;
}

.-mb-\[1px\] {
	margin-bottom: -1px
}

.mt-3 {
	margin-top: .75rem
}

.ml-2 {
	margin-left: .5rem
}

.ml-5 {
	margin-left: 1.25rem
}

.ml-4 {
	margin-left: 1rem
}

.mt-9 {
	margin-top: 2.25rem
}

.ml-3 {
	margin-left: .75rem
}

.-mr-2 {
	margin-right: -.5rem
}

.mb-2 {
	margin-bottom: .5rem
}

.-ml-px {
	margin-left: -1px
}

.mt-0\.5 {
	margin-top: .125rem
}

.mt-0 {
	margin-top: 0
}

.-mt-32 {
	margin-top: -8rem
}

.mt-20 {
	margin-top: 5rem
}

.mr-1 {
	margin-right: .25rem
}

.ml-1 {
	margin-left: .25rem
}

.mb-14 {
	margin-bottom: 3.5rem
}

.ml-auto {
	margin-left: auto
}

.-mr-1\.5 {
	margin-right: -.375rem
}

.-mr-1 {
	margin-right: -.25rem
}

.ml-6 {
	margin-left: 1.5rem
}

.mb-4 {
	margin-bottom: 1rem
}

.mb-6 {
	margin-bottom: 1.5rem
}

.ml-2\.5 {
	margin-left: .625rem
}

.mt-1\.5 {
	margin-top: .375rem
}

.-mb-\[0\.5px\] {
	margin-bottom: -.5px
}

.mb-5 {
	margin-bottom: 1.25rem
}

.mr-2 {
	margin-right: .5rem
}

.ml-\[102px\] {
	margin-left: 102px
}

.mr-5 {
	margin-right: 1.25rem
}

.-mt-2 {
	margin-top: -.5rem
}

.mb-16 {
	margin-bottom: 4rem
}

.mr-10 {
	margin-right: 2.5rem
}

.mr-0\.5 {
	margin-right: .125rem
}

.mr-0 {
	margin-right: 0
}

.ml-0\.5 {
	margin-left: .125rem
}

.ml-0 {
	margin-left: 0
}

.mb-\[10px\] {
	margin-bottom: 10px
}

.mr-6 {
	margin-right: 1.5rem
}

.mb-1\.5 {
	margin-bottom: .375rem
}

.mb-1 {
	margin-bottom: .25rem
}

.mr-auto {
	margin-right: auto
}

.mt-2\.5 {
	margin-top: .625rem
}

.-ml-1 {
	margin-left: -.25rem
}

.mr-3 {
	margin-right: .75rem
}

.ml-3\.5 {
	margin-left: .875rem
}

.-mt-px {
	margin-top: -1px
}

.-ml-\[100\%\] {
	margin-left: -100%
}

.mb-3 {
	margin-bottom: .75rem
}

.mb-12 {
	margin-bottom: 3rem
}

.-ml-32 {
	margin-left: -8rem
}

.-ml-24 {
	margin-left: -6rem
}

.-mr-8 {
	margin-right: -2rem
}

.-ml-40 {
	margin-left: -10rem
}

.block {
	display: block
}

.inline-block {
	display: inline-block
}

.inline {
	display: inline
}

.flex {
	display: flex
}

.inline-flex {
	display: inline-flex
}

.flow-root {
	display: flow-root
}

.grid {
	display: grid
}

.contents {
	display: contents
}

.hidden {
	display: none
}

.\!hidden {
	display: none !important
}

.h-12 {
	height: 3rem
}

.h-5 {
	height: 1.25rem
}

.h-full {
	height: 100%
}

.h-4 {
	height: 1rem
}

.h-16 {
	height: 4rem
}

.h-\[70px\] {
	height: 70px
}

.h-40 {
	height: 10rem
}

.h-10 {
	height: 2.5rem
}

.h-6 {
	height: 1.5rem
}

.h-\[2\.625rem\] {
	height: 2.625rem
}

.h-3 {
	height: .75rem
}

.h-56 {
	height: 14rem
}

.h-\[10rem\] {
	height: 10rem
}

.h-8 {
	height: 2rem
}

.h-1\/2 {
	height: 50%
}

.h-80 {
	height: 20rem
}

.h-32 {
	height: 8rem
}

.h-9 {
	height: 2.25rem
}

.h-2\.5 {
	height: .625rem
}

.h-2 {
	height: .5rem
}

.h-\[72px\] {
	height: 72px
}

.h-\[71px\] {
	height: 71px
}

.h-\[38px\] {
	height: 38px
}

.h-7 {
	height: 1.75rem
}

.h-\[140px\] {
	height: 140px
}

.h-3\.5 {
	height: .875rem
}

.h-24 {
	height: 6rem
}

.h-\[30px\] {
	height: 30px
}

.h-\[44px\] {
	height: 44px
}

.h-\[35px\] {
	height: 35px
}

.h-\[800px\] {
	height: 800px
}

.h-36 {
	height: 9rem
}

.h-1 {
	height: .25rem
}

.h-1\/3 {
	height: 33.333333%
}

.h-0\.5 {
	height: .125rem
}

.h-0 {
	height: 0
}

.h-1\.5 {
	height: .375rem
}

.h-\[74px\] {
	height: 74px
}

.h-\[68px\] {
	height: 68px
}

.h-\[73px\] {
	height: 73px
}

.h-28 {
	height: 7rem
}

.h-14 {
	height: 3.5rem
}

.h-\[3px\] {
	height: 3px
}

.h-64 {
	height: 16rem
}

.h-\[2px\] {
	height: 2px
}

.h-px {
	height: 1px
}

.max-h-\[380px\] {
	max-height: 380px
}

.max-h-64 {
	max-height: 16rem
}

.max-h-\[572px\] {
	max-height: 572px
}

.max-h-\[300px\] {
	max-height: 300px
}

.min-h-screen {
	min-height: 100vh
}

.min-h-full {
	min-height: 100%
}

.min-h-\[300px\] {
	min-height: 300px
}

.w-full {
	width: 100%
}

.w-12 {
	width: 3rem
}

.w-5 {
	width: 1.25rem
}

.w-\[180px\] {
	width: 180px
}

.w-\[179px\] {
	width: 179px
}

.w-48 {
	width: 12rem
}

.w-4 {
	width: 1rem
}

.w-\[87px\] {
	width: 87px
}

.w-auto {
	width: auto
}

.w-36 {
	width: 9rem
}

.w-40 {
	width: 10rem
}

.w-10 {
	width: 2.5rem
}

.w-11 {
	width: 2.75rem
}

.w-0\.5 {
	width: .125rem
}

.w-0 {
	width: 0
}

.w-6 {
	width: 1.5rem
}

.w-20 {
	width: 5rem
}

.w-\[380px\] {
	width: 380px
}

.w-8 {
	width: 2rem
}

.w-2\.5 {
	width: .625rem
}

.w-2 {
	width: .5rem
}

.w-\[150px\] {
	width: 150px
}

.w-\[113px\] {
	width: 113px
}

.w-\[80px\] {
	width: 80px
}

.w-\[90px\] {
	width: 90px
}

.w-28 {
	width: 7rem
}

.w-\[35px\] {
	width: 35px
}

.w-\[55px\] {
	width: 55px
}

.w-3 {
	width: .75rem
}

.w-1\/2 {
	width: 50%
}

.w-fit {
	width: -moz-fit-content;
	width: fit-content
}

.w-14 {
	width: 3.5rem
}

.w-3\.5 {
	width: .875rem
}

.w-44 {
	width: 11rem
}

.w-4\/5 {
	width: 80%
}

.w-\[152px\] {
	width: 152px
}

.w-24 {
	width: 6rem
}

.w-\[28px\] {
	width: 28px
}

.w-\[44px\] {
	width: 44px
}

.w-7 {
	width: 1.75rem
}

.w-60 {
	width: 15rem
}

.w-16 {
	width: 4rem
}

.w-\[1px\] {
	width: 1px
}

.w-56 {
	width: 14rem
}

.w-\[85px\] {
	width: 85px
}

.w-1 {
	width: .25rem
}

.w-1\.5 {
	width: .375rem
}

.w-\[116px\] {
	width: 116px
}

.w-\[118px\] {
	width: 118px
}

.w-64 {
	width: 16rem
}

.w-\[112px\] {
	width: 112px
}

.w-1\/3 {
	width: 33.333333%
}

.w-1\/4 {
	width: 25%
}

.w-\[145px\] {
	width: 145px
}

.w-\[117px\] {
	width: 117px
}

.w-96 {
	width: 24rem
}

.w-1\/5 {
	width: 20%
}

.w-7\/12 {
	width: 58.333333%
}

.w-3\/4 {
	width: 75%
}

.w-32 {
	width: 8rem
}

.w-72 {
	width: 18rem
}

.w-80 {
	width: 20rem
}

.w-px {
	width: 1px
}

.min-w-0 {
	min-width: 0
}

.min-w-fit {
	min-width: -moz-fit-content;
	min-width: fit-content
}

.max-w-xl {
	max-width: 36rem
}

.max-w-7xl {
	max-width: 80rem
}

.max-w-2xl {
	max-width: 42rem
}

.max-w-lg {
	max-width: 32rem
}

.max-w-md {
	max-width: 28rem
}

.max-w-3xl {
	max-width: 48rem
}

.max-w-none {
	max-width: none
}

.max-w-5xl {
	max-width: 64rem
}

.max-w-prose {
	max-width: 65ch
}

.max-w-6xl {
	max-width: 72rem
}

.max-w-\[640px\] {
	max-width: 640px
}

.max-w-4xl {
	max-width: 56rem
}

.max-w-\[14rem\] {
	max-width: 14rem
}

.flex-1 {
	flex: 1 1 0%
}

.flex-auto {
	flex: 1 1 auto
}

.flex-none {
	flex: none
}

.flex-shrink-0, .shrink-0 {
	flex-shrink: 0
}

.flex-grow {
	flex-grow: 1
}

.flex-grow-0 {
	flex-grow: 0
}

.grow {
	flex-grow: 1
}

.origin-top {
	transform-origin: top
}

.origin-top-right {
	transform-origin: top right
}

.translate-x-5 { -
	-tw-translate-x: 1.25rem
}

.translate-x-0, .translate-x-5 {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.translate-x-0 { -
	-tw-translate-x: 0px
}

.-translate-x-1\/2 { -
	-tw-translate-x: -50%
}

.-translate-x-1\/2, .translate-x-14 {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.translate-x-14 { -
	-tw-translate-x: 3.5rem
}

.-translate-y-44 { -
	-tw-translate-y: -11rem
}

.-translate-x-5, .-translate-y-44 {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.-translate-x-5 { -
	-tw-translate-x: -1.25rem
}

.-translate-y-4 { -
	-tw-translate-y: -1rem
}

.-translate-x-3, .-translate-y-4 {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.-translate-x-3 { -
	-tw-translate-x: -0.75rem
}

.-translate-y-2 { -
	-tw-translate-y: -0.5rem
}

.-translate-y-2, .translate-y-1 {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.translate-y-1 { -
	-tw-translate-y: 0.25rem
}

.translate-y-0 { -
	-tw-translate-y: 0px
}

.-translate-x-80, .translate-y-0 {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.-translate-x-80 { -
	-tw-translate-x: -20rem
}

.translate-x-7 { -
	-tw-translate-x: 1.75rem
}

.translate-x-1, .translate-x-7 {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.translate-x-1 { -
	-tw-translate-x: 0.25rem
}

.-translate-y-1 { -
	-tw-translate-y: -0.25rem
}

.-translate-y-1, .translate-y-4 {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.translate-y-4 { -
	-tw-translate-y: 1rem
}

.rotate-\[60deg\] { -
	-tw-rotate: 60deg
}

.rotate-\[150deg\], .rotate-\[60deg\] {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.rotate-\[150deg\] { -
	-tw-rotate: 150deg
}

.rotate-180 { -
	-tw-rotate: 180deg
}

.-rotate-180, .rotate-180 {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.-rotate-180 { -
	-tw-rotate: -180deg
}

.rotate-0 { -
	-tw-rotate: 0deg
}

.rotate-0, .scale-95 {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.scale-95 { -
	-tw-scale-x: .95; -
	-tw-scale-y: .95
}

.scale-100 { -
	-tw-scale-x: 1; -
	-tw-scale-y: 1
}

.-scale-x-100, .scale-100 {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.-scale-x-100 { -
	-tw-scale-x: -1
}

.transform {
	transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

.transform-gpu {
	transform: translate3d(var(- -tw-translate-x), var(- -tw-translate-y), 0)
		rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
		skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
		scaleY(var(- -tw-scale-y))
}

@
keyframes pulse { 50%{
	opacity: .5
}

}
.animate-pulse {
	animation: pulse 2s cubic-bezier(.4, 0, .6, 1) infinite
}

@
keyframes spin {
	to {transform: rotate(1turn)
}

}
.animate-spin {
	animation: spin 1s linear infinite
}

.cursor-pointer {
	cursor: pointer
}

.cursor-default {
	cursor: default
}

.select-none {
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none
}

.resize-none {
	resize: none
}

.list-disc {
	list-style-type: disc
}

.list-decimal {
	list-style-type: decimal
}

.appearance-none {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none
}

.grid-cols-3 {
	grid-template-columns: repeat(3, minmax(0, 1fr))
}

.grid-cols-1 {
	grid-template-columns: repeat(1, minmax(0, 1fr))
}

.grid-cols-2 {
	grid-template-columns: repeat(2, minmax(0, 1fr))
}

.flex-row {
	flex-direction: row
}

.flex-col {
	flex-direction: column
}

.flex-wrap {
	flex-wrap: wrap
}

.items-start {
	align-items: flex-start
}

.items-end {
	align-items: flex-end
}

.items-center {
	align-items: center
}

.items-stretch {
	align-items: stretch
}

.justify-start {
	justify-content: flex-start
}

.justify-end {
	justify-content: flex-end
}

.justify-center {
	justify-content: center
}

.justify-between {
	justify-content: space-between
}

.gap-3 {
	gap: .75rem
}

.gap-4 {
	gap: 1rem
}

.gap-1 {
	gap: .25rem
}

.gap-x-10 {
	-moz-column-gap: 2.5rem;
	column-gap: 2.5rem
}

.gap-y-10 {
	row-gap: 2.5rem
}

.gap-y-2 {
	row-gap: .5rem
}

.gap-y-6 {
	row-gap: 1.5rem
}

.gap-y-4 {
	row-gap: 1rem
}

.gap-x-4 {
	-moz-column-gap: 1rem;
	column-gap: 1rem
}

.gap-x-1 {
	-moz-column-gap: .25rem;
	column-gap: .25rem
}

.gap-x-2 {
	-moz-column-gap: .5rem;
	column-gap: .5rem
}

.gap-y-12 {
	row-gap: 3rem
}

.gap-x-0\.5 {
	-moz-column-gap: .125rem;
	column-gap: .125rem
}

.gap-x-0 {
	-moz-column-gap: 0;
	column-gap: 0
}

.gap-x-3 {
	-moz-column-gap: .75rem;
	column-gap: .75rem
}

.gap-x-6 {
	-moz-column-gap: 1.5rem;
	column-gap: 1.5rem
}

.gap-y-3 {
	row-gap: .75rem
}

.gap-x-5 {
	-moz-column-gap: 1.25rem;
	column-gap: 1.25rem
}

.gap-y-7 {
	row-gap: 1.75rem
}

.gap-x-1\.5 {
	-moz-column-gap: .375rem;
	column-gap: .375rem
}

.gap-y-2\.5 {
	row-gap: .625rem
}

.gap-x-8 {
	-moz-column-gap: 2rem;
	column-gap: 2rem
}

.gap-y-1 {
	row-gap: .25rem
}

.gap-y-1\.5 {
	row-gap: .375rem
}

.gap-x-2\.5 {
	-moz-column-gap: .625rem;
	column-gap: .625rem
}

.space-x-4>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(1rem * var(- -tw-space-x-reverse));
	margin-left: calc(1rem * calc(1 - var(- -tw-space-x-reverse)))
}

.space-y-4>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(1rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(1rem * var(- -tw-space-y-reverse))
}

.space-y-2>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(.5rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(.5rem * var(- -tw-space-y-reverse))
}

.space-y-8>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(2rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(2rem * var(- -tw-space-y-reverse))
}

.space-y-6>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(1.5rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(1.5rem * var(- -tw-space-y-reverse))
}

.space-x-1>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(.25rem * var(- -tw-space-x-reverse));
	margin-left: calc(.25rem * calc(1 - var(- -tw-space-x-reverse)))
}

.space-x-8>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(2rem * var(- -tw-space-x-reverse));
	margin-left: calc(2rem * calc(1 - var(- -tw-space-x-reverse)))
}

.space-x-2>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(.5rem * var(- -tw-space-x-reverse));
	margin-left: calc(.5rem * calc(1 - var(- -tw-space-x-reverse)))
}

.-space-y-2>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(-.5rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(-.5rem * var(- -tw-space-y-reverse))
}

.space-y-1>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(.25rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(.25rem * var(- -tw-space-y-reverse))
}

.space-y-14>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(3.5rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(3.5rem * var(- -tw-space-y-reverse))
}

.space-y-12>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(3rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(3rem * var(- -tw-space-y-reverse))
}

.space-y-3>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(.75rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(.75rem * var(- -tw-space-y-reverse))
}

.space-x-0\.5>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(.125rem * var(- -tw-space-x-reverse));
	margin-left: calc(.125rem * calc(1 - var(- -tw-space-x-reverse)))
}

.space-x-0>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(0px * var(- -tw-space-x-reverse));
	margin-left: calc(0px * calc(1 - var(- -tw-space-x-reverse)))
}

.-space-x-0\.5>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(-.125rem * var(- -tw-space-x-reverse));
	margin-left: calc(-.125rem * calc(1 - var(- -tw-space-x-reverse)))
}

.-space-x-0>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(0px * var(- -tw-space-x-reverse));
	margin-left: calc(0px * calc(1 - var(- -tw-space-x-reverse)))
}

.space-x-5>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(1.25rem * var(- -tw-space-x-reverse));
	margin-left: calc(1.25rem * calc(1 - var(- -tw-space-x-reverse)))
}

.-space-x-px>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(-1px * var(- -tw-space-x-reverse));
	margin-left: calc(-1px * calc(1 - var(- -tw-space-x-reverse)))
}

.space-y-7>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(1.75rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(1.75rem * var(- -tw-space-y-reverse))
}

.space-x-3>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(.75rem * var(- -tw-space-x-reverse));
	margin-left: calc(.75rem * calc(1 - var(- -tw-space-x-reverse)))
}

.space-y-1\.5>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(.375rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(.375rem * var(- -tw-space-y-reverse))
}

.-space-x-1>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(-.25rem * var(- -tw-space-x-reverse));
	margin-left: calc(-.25rem * calc(1 - var(- -tw-space-x-reverse)))
}

.space-x-7>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(1.75rem * var(- -tw-space-x-reverse));
	margin-left: calc(1.75rem * calc(1 - var(- -tw-space-x-reverse)))
}

.space-y-5>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(1.25rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(1.25rem * var(- -tw-space-y-reverse))
}

.space-y-10>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(2.5rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(2.5rem * var(- -tw-space-y-reverse))
}

.space-y-\[9px\]>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(9px * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(9px * var(- -tw-space-y-reverse))
}

.space-y-2\.5>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(.625rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(.625rem * var(- -tw-space-y-reverse))
}

.space-y-3\.5>:not([hidden]) ~:not([hidden]) { -
	-tw-space-y-reverse: 0;
	margin-top: calc(.875rem * calc(1 - var(- -tw-space-y-reverse)));
	margin-bottom: calc(.875rem * var(- -tw-space-y-reverse))
}

.space-x-10>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(2.5rem * var(- -tw-space-x-reverse));
	margin-left: calc(2.5rem * calc(1 - var(- -tw-space-x-reverse)))
}

.space-x-2\.5>:not([hidden]) ~:not([hidden]) { -
	-tw-space-x-reverse: 0;
	margin-right: calc(.625rem * var(- -tw-space-x-reverse));
	margin-left: calc(.625rem * calc(1 - var(- -tw-space-x-reverse)))
}

.divide-y>:not([hidden]) ~:not([hidden]) { -
	-tw-divide-y-reverse: 0;
	border-top-width: calc(1px * calc(1 - var(- -tw-divide-y-reverse)));
	border-bottom-width: calc(1px * var(- -tw-divide-y-reverse))
}

.divide-y-2>:not([hidden]) ~:not([hidden]) { -
	-tw-divide-y-reverse: 0;
	border-top-width: calc(2px * calc(1 - var(- -tw-divide-y-reverse)));
	border-bottom-width: calc(2px * var(- -tw-divide-y-reverse))
}

.divide-x>:not([hidden]) ~:not([hidden]) { -
	-tw-divide-x-reverse: 0;
	border-right-width: calc(1px * var(- -tw-divide-x-reverse));
	border-left-width: calc(1px * calc(1 - var(- -tw-divide-x-reverse)))
}

.divide-dashed>:not([hidden]) ~:not([hidden]) {
	border-style: dashed
}

.divide-gray-200>:not([hidden]) ~:not([hidden]) { -
	-tw-divide-opacity: 1;
	border-color: rgb(229, 231, 235/ var( - -tw-divide-opacity))
}

.divide-gray-500\/30>:not([hidden]) ~:not([hidden]) {
	border-color: hsla(220, 9%, 46%, .3)
}

.divide-gray-500\/50>:not([hidden]) ~:not([hidden]) {
	border-color: hsla(220, 9%, 46%, .5)
}

.divide-okky-5>:not([hidden]) ~:not([hidden]) { -
	-tw-divide-opacity: 1;
	border-color: rgb(214, 214, 214/ var( - -tw-divide-opacity))
}

.self-center {
	align-self: center
}

.overflow-auto {
	overflow: auto
}

.overflow-hidden {
	overflow: hidden
}

.overflow-y-auto {
	overflow-y: auto
}

.overflow-x-hidden {
	overflow-x: hidden
}

.overflow-y-hidden {
	overflow-y: hidden
}

.overflow-y-scroll {
	overflow-y: scroll
}

.truncate {
	overflow: hidden;
	white-space: nowrap
}

.text-ellipsis, .truncate {
	text-overflow: ellipsis
}

.whitespace-normal {
	white-space: normal
}

.break-all {
	word-break: break-all
}

.rounded-lg {
	border-radius: .5rem
}

.rounded-md {
	border-radius: .375rem
}

.rounded-xl {
	border-radius: .75rem
}

.rounded {
	border-radius: .25rem
}

.rounded-full {
	border-radius: 9999px
}

.rounded-sm {
	border-radius: .125rem
}

.rounded-3xl {
	border-radius: 1.5rem
}

.rounded-\[39px\] {
	border-radius: 39px
}

.rounded-\[43px\] {
	border-radius: 43px
}

.rounded-2xl {
	border-radius: 1rem
}

.rounded-none {
	border-radius: 0
}

.rounded-t-lg {
	border-top-left-radius: .5rem;
	border-top-right-radius: .5rem
}

.rounded-b-sm {
	border-bottom-right-radius: .125rem;
	border-bottom-left-radius: .125rem
}

.rounded-l-md {
	border-top-left-radius: .375rem;
	border-bottom-left-radius: .375rem
}

.rounded-r-md {
	border-top-right-radius: .375rem;
	border-bottom-right-radius: .375rem
}

.rounded-t-none {
	border-top-left-radius: 0;
	border-top-right-radius: 0
}

.rounded-t-md {
	border-top-left-radius: .375rem;
	border-top-right-radius: .375rem
}

.border {
	border-width: 1px
}

.border-2 {
	border-width: 2px
}

.border-x-0 {
	border-left-width: 0;
	border-right-width: 0
}

.border-y {
	border-top-width: 1px
}

.border-b, .border-y {
	border-bottom-width: 1px
}

.border-t {
	border-top-width: 1px
}

.border-b-2 {
	border-bottom-width: 2px
}

.border-l-2 {
	border-left-width: 2px
}

.border-l {
	border-left-width: 1px
}

.border-l-4 {
	border-left-width: 4px
}

.border-r-0 {
	border-right-width: 0
}

.border-t-2 {
	border-top-width: 2px
}

.border-none {
	border-style: none
}

.border-gray-200 { -
	-tw-border-opacity: 1;
	border-color: rgb(229, 231, 235/ var( - -tw-border-opacity))
}

.border-transparent {
	border-color: transparent
}

.border-gray-500\/30 {
	border-color: hsla(220, 9%, 46%, .3)
}

.border-blue-500 { -
	-tw-border-opacity: 1;
	border-color: rgb(0, 144, 249/ var( - -tw-border-opacity))
}

.border-gray-300 { -
	-tw-border-opacity: 1;
	border-color: rgb(209, 213, 219/ var( - -tw-border-opacity))
}

.border-gray-500\/50 {
	border-color: hsla(220, 9%, 46%, .5)
}

.border-\[\#0b7fc7\] { -
	-tw-border-opacity: 1;
	border-color: rgb(11, 127, 199/ var( - -tw-border-opacity))
}

.border-white { -
	-tw-border-opacity: 1;
	border-color: rgb(255, 255, 255/ var( - -tw-border-opacity))
}

.border-red-500 { -
	-tw-border-opacity: 1;
	border-color: rgb(239, 68, 68/ var( - -tw-border-opacity))
}

.border-gray-200\/90 {
	border-color: rgba(229, 231, 235, .9)
}

.border-gray-400 { -
	-tw-border-opacity: 1;
	border-color: rgb(156, 163, 175/ var( - -tw-border-opacity))
}

.border-red-100 { -
	-tw-border-opacity: 1;
	border-color: rgb(254, 226, 226/ var( - -tw-border-opacity))
}

.border-yellow-100 { -
	-tw-border-opacity: 1;
	border-color: rgb(254, 249, 195/ var( - -tw-border-opacity))
}

.border-blue-100 { -
	-tw-border-opacity: 1;
	border-color: rgb(209, 233, 250/ var( - -tw-border-opacity))
}

.border-gray-100 { -
	-tw-border-opacity: 1;
	border-color: rgb(243, 244, 246/ var( - -tw-border-opacity))
}

.border-slate-300\/70 {
	border-color: rgba(203, 213, 225, .7)
}

.border-y-gray-500\/30 {
	border-top-color: hsla(220, 9%, 46%, .3)
}

.border-b-gray-500\/30, .border-y-gray-500\/30 {
	border-bottom-color: hsla(220, 9%, 46%, .3)
}

.bg-blue-50 { -
	-tw-bg-opacity: 1;
	background-color: rgb(240, 246, 250/ var( - -tw-bg-opacity))
}

.bg-blue-500 { -
	-tw-bg-opacity: 1;
	background-color: rgb(0, 144, 249/ var( - -tw-bg-opacity))
}

.bg-white { -
	-tw-bg-opacity: 1;
	background-color: rgb(255, 255, 255/ var( - -tw-bg-opacity))
}

.bg-red-600 { -
	-tw-bg-opacity: 1;
	background-color: rgb(220, 38, 38/ var( - -tw-bg-opacity))
}

.bg-blue-600 { -
	-tw-bg-opacity: 1;
	background-color: rgb(19, 93, 147/ var( - -tw-bg-opacity))
}

.bg-gray-900 { -
	-tw-bg-opacity: 1;
	background-color: rgb(17, 24, 39/ var( - -tw-bg-opacity))
}

.bg-gray-200 { -
	-tw-bg-opacity: 1;
	background-color: rgb(229, 231, 235/ var( - -tw-bg-opacity))
}

.bg-white\/90 {
	background-color: hsla(0, 0%, 100%, .9)
}

.bg-gray-50 { -
	-tw-bg-opacity: 1;
	background-color: rgb(249, 250, 251/ var( - -tw-bg-opacity))
}

.bg-\[\#1da1f2\] { -
	-tw-bg-opacity: 1;
	background-color: rgb(29, 161, 242/ var( - -tw-bg-opacity))
}

.bg-blue-400 { -
	-tw-bg-opacity: 1;
	background-color: rgb(11, 127, 211/ var( - -tw-bg-opacity))
}

.bg-blue-200 { -
	-tw-bg-opacity: 1;
	background-color: rgb(165, 209, 246/ var( - -tw-bg-opacity))
}

.bg-gray-300 { -
	-tw-bg-opacity: 1;
	background-color: rgb(209, 213, 219/ var( - -tw-bg-opacity))
}

.bg-transparent {
	background-color: transparent
}

.bg-red-500 { -
	-tw-bg-opacity: 1;
	background-color: rgb(239, 68, 68/ var( - -tw-bg-opacity))
}

.bg-gray-800 { -
	-tw-bg-opacity: 1;
	background-color: rgb(31, 41, 55/ var( - -tw-bg-opacity))
}

.bg-white\/95 {
	background-color: hsla(0, 0%, 100%, .95)
}

.bg-green-100 { -
	-tw-bg-opacity: 1;
	background-color: rgb(220, 252, 231/ var( - -tw-bg-opacity))
}

.bg-gray-200\/50 {
	background-color: rgba(229, 231, 235, .5)
}

.bg-gray-600 { -
	-tw-bg-opacity: 1;
	background-color: rgb(75, 85, 99/ var( - -tw-bg-opacity))
}

.bg-blue-100 { -
	-tw-bg-opacity: 1;
	background-color: rgb(209, 233, 250/ var( - -tw-bg-opacity))
}

.bg-gray-100 { -
	-tw-bg-opacity: 1;
	background-color: rgb(243, 244, 246/ var( - -tw-bg-opacity))
}

.bg-gray-400 { -
	-tw-bg-opacity: 1;
	background-color: rgb(156, 163, 175/ var( - -tw-bg-opacity))
}

.bg-black { -
	-tw-bg-opacity: 1;
	background-color: rgb(0, 0, 0/ var( - -tw-bg-opacity))
}

.bg-gray-900\/10 {
	background-color: rgba(17, 24, 39, .1)
}

.bg-blue-500\/95 {
	background-color: rgba(0, 144, 249, .95)
}

.bg-slate-200 { -
	-tw-bg-opacity: 1;
	background-color: rgb(226, 232, 240/ var( - -tw-bg-opacity))
}

.bg-gray-700 { -
	-tw-bg-opacity: 1;
	background-color: rgb(55, 65, 81/ var( - -tw-bg-opacity))
}

.bg-\[\#EFF6FF\] { -
	-tw-bg-opacity: 1;
	background-color: rgb(239, 246, 255/ var( - -tw-bg-opacity))
}

.bg-okky-12 { -
	-tw-bg-opacity: 1;
	background-color: rgb(107, 114, 128/ var( - -tw-bg-opacity))
}

.bg-blue-800 { -
	-tw-bg-opacity: 1;
	background-color: rgb(9, 35, 99/ var( - -tw-bg-opacity))
}

.bg-slate-900 { -
	-tw-bg-opacity: 1;
	background-color: rgb(15, 23, 42/ var( - -tw-bg-opacity))
}

.bg-yellow-50 { -
	-tw-bg-opacity: 1;
	background-color: rgb(254, 252, 232/ var( - -tw-bg-opacity))
}

.bg-gray-500\/30 {
	background-color: hsla(220, 9%, 46%, .3)
}

.bg-gray-50\/50 {
	background-color: rgba(249, 250, 251, .5)
}

.bg-red-100 { -
	-tw-bg-opacity: 1;
	background-color: rgb(254, 226, 226/ var( - -tw-bg-opacity))
}

.bg-gray-500 { -
	-tw-bg-opacity: 1;
	background-color: rgb(107, 114, 128/ var( - -tw-bg-opacity))
}

.bg-slate-100 { -
	-tw-bg-opacity: 1;
	background-color: rgb(241, 245, 249/ var( - -tw-bg-opacity))
}

.bg-slate-900\/20 {
	background-color: rgba(15, 23, 42, .2)
}

.bg-\[\#FEE500\] { -
	-tw-bg-opacity: 1;
	background-color: rgb(254, 229, 0/ var( - -tw-bg-opacity))
}

.bg-opacity-75 { -
	-tw-bg-opacity: 0.75
}

.bg-opacity-25 { -
	-tw-bg-opacity: 0.25
}

.bg-opacity-0 { -
	-tw-bg-opacity: 0
}

.bg-opacity-90 { -
	-tw-bg-opacity: 0.9
}

.bg-gradient-to-r {
	background-image: linear-gradient(to right, var(- -tw-gradient-stops))
}

.bg-gradient-to-b {
	background-image: linear-gradient(to bottom, var(- -tw-gradient-stops))
}

.from-blue-400 { -
	-tw-gradient-from: #0b7fd3; -
	-tw-gradient-to: rgba(11, 127, 211, 0); -
	-tw-gradient-stops: var(- -tw-gradient-from), var(- -tw-gradient-to)
}

.from-blue-500 { -
	-tw-gradient-from: #0090f9; -
	-tw-gradient-to: rgba(0, 144, 249, 0); -
	-tw-gradient-stops: var(- -tw-gradient-from), var(- -tw-gradient-to)
}

.from-gray-900 { -
	-tw-gradient-from: #111827; -
	-tw-gradient-to: rgba(17, 24, 39, 0); -
	-tw-gradient-stops: var(- -tw-gradient-from), var(- -tw-gradient-to)
}

.to-blue-500 { -
	-tw-gradient-to: #0090f9
}

.to-blue-600 { -
	-tw-gradient-to: #135d93
}

.to-blue-400 { -
	-tw-gradient-to: #0b7fd3
}

.to-pink-600 { -
	-tw-gradient-to: #db2777
}

.bg-clip-text {
	-webkit-background-clip: text;
	background-clip: text
}

.bg-left-bottom {
	background-position: 0 100%
}

.bg-left-top {
	background-position: 0 0
}

.bg-\[right_top_1000px\] {
	background-position: right top 1000px
}

.bg-\[top_left_1500px\] {
	background-position: top left 1500px
}

.bg-bottom {
	background-position: bottom
}

.bg-right-bottom {
	background-position: 100% 100%
}

.bg-right-top {
	background-position: 100% 0
}

.fill-current {
	fill: currentColor
}

.object-contain {
	-o-object-fit: contain;
	object-fit: contain
}

.object-cover {
	-o-object-fit: cover;
	object-fit: cover
}

.p-3 {
	padding: .75rem
}

.p-2 {
	padding: .5rem
}

.p-4 {
	padding: 1rem
}

.p-6 {
	padding: 1.5rem
}

.p-0 {
	padding: 0
}

.p-1 {
	padding: .25rem
}

.p-1\.5 {
	padding: .375rem
}

.p-8 {
	padding: 2rem
}

.p-\[2px\] {
	padding: 2px
}

.px-4 {
	padding-left: 1rem;
	padding-right: 1rem
}

.py-4 {
	padding-top: 1rem;
	padding-bottom: 1rem
}

.py-2 {
	padding-top: .5rem;
	padding-bottom: .5rem
}

.px-3 {
	padding-left: .75rem;
	padding-right: .75rem
}

.px-6 {
	padding-left: 1.5rem;
	padding-right: 1.5rem
}

.py-3 {
	padding-top: .75rem;
	padding-bottom: .75rem
}

.px-2 {
	padding-left: .5rem;
	padding-right: .5rem
}

.px-14 {
	padding-left: 3.5rem;
	padding-right: 3.5rem
}

.py-12 {
	padding-top: 3rem;
	padding-bottom: 3rem
}

.px-20 {
	padding-left: 5rem;
	padding-right: 5rem
}

.py-1 {
	padding-top: .25rem;
	padding-bottom: .25rem
}

.py-5 {
	padding-top: 1.25rem;
	padding-bottom: 1.25rem
}

.py-2\.5 {
	padding-top: .625rem;
	padding-bottom: .625rem
}

.py-24 {
	padding-top: 6rem;
	padding-bottom: 6rem
}

.py-16 {
	padding-top: 4rem;
	padding-bottom: 4rem
}

.py-6 {
	padding-top: 1.5rem;
	padding-bottom: 1.5rem
}

.px-5 {
	padding-left: 1.25rem;
	padding-right: 1.25rem
}

.px-8 {
	padding-left: 2rem;
	padding-right: 2rem
}

.py-8 {
	padding-top: 2rem;
	padding-bottom: 2rem
}

.py-10 {
	padding-top: 2.5rem;
	padding-bottom: 2.5rem
}

.px-2\.5 {
	padding-left: .625rem;
	padding-right: .625rem
}

.py-0\.5 {
	padding-top: .125rem;
	padding-bottom: .125rem
}

.py-0 {
	padding-top: 0;
	padding-bottom: 0
}

.py-1\.5 {
	padding-top: .375rem;
	padding-bottom: .375rem
}

.px-1 {
	padding-left: .25rem;
	padding-right: .25rem
}

.px-3\.5 {
	padding-left: .875rem;
	padding-right: .875rem
}

.py-7 {
	padding-top: 1.75rem;
	padding-bottom: 1.75rem
}

.px-10 {
	padding-left: 2.5rem;
	padding-right: 2.5rem
}

.px-7 {
	padding-left: 1.75rem;
	padding-right: 1.75rem
}

.py-\[7px\] {
	padding-top: 7px;
	padding-bottom: 7px
}

.px-12 {
	padding-left: 3rem;
	padding-right: 3rem
}

.pb-4 {
	padding-bottom: 1rem
}

.pl-3 {
	padding-left: .75rem
}

.pl-1 {
	padding-left: .25rem
}

.pl-4 {
	padding-left: 1rem
}

.pr-8 {
	padding-right: 2rem
}

.pt-4 {
	padding-top: 1rem
}

.pt-2 {
	padding-top: .5rem
}

.pb-3 {
	padding-bottom: .75rem
}

.pb-16 {
	padding-bottom: 4rem
}

.pt-12 {
	padding-top: 3rem
}

.pb-10 {
	padding-bottom: 2.5rem
}

.pb-12 {
	padding-bottom: 3rem
}

.pb-32 {
	padding-bottom: 8rem
}

.pb-2 {
	padding-bottom: .5rem
}

.pl-0\.5 {
	padding-left: .125rem
}

.pl-0 {
	padding-left: 0
}

.pr-2 {
	padding-right: .5rem
}

.pt-1 {
	padding-top: .25rem
}

.pt-0\.5 {
	padding-top: .125rem
}

.pt-0 {
	padding-top: 0
}

.pt-3 {
	padding-top: .75rem
}

.pr-10 {
	padding-right: 2.5rem
}

.pl-5 {
	padding-left: 1.25rem
}

.pb-5 {
	padding-bottom: 1.25rem
}

.pr-4 {
	padding-right: 1rem
}

.pt-6 {
	padding-top: 1.5rem
}

.pb-6 {
	padding-bottom: 1.5rem
}

.pt-5 {
	padding-top: 1.25rem
}

.pl-6 {
	padding-left: 1.5rem
}

.pr-12 {
	padding-right: 3rem
}

.pl-2\.5 {
	padding-left: .625rem
}

.pl-2 {
	padding-left: .5rem
}

.pb-20 {
	padding-bottom: 5rem
}

.pl-7 {
	padding-left: 1.75rem
}

.text-left {
	text-align: left
}

.text-center {
	text-align: center
}

.text-right {
	text-align: right
}

.align-bottom {
	vertical-align: bottom
}

.font-sans {
	font-family: Pretendard, ui-sans-serif, system-ui, -apple-system,
		BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans,
		sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol,
		Noto Color Emoji
}

.text-2xl {
	font-size: 1.5rem;
	line-height: 2rem
}

.text-sm {
	font-size: .875rem;
	line-height: 1.25rem
}

.text-base {
	font-size: 1rem;
	line-height: 1.5rem
}

.text-xl {
	font-size: 1.25rem;
	line-height: 1.75rem
}

.text-xs {
	font-size: .75rem;
	line-height: 1rem
}

.text-3xl {
	font-size: 1.875rem;
	line-height: 2.25rem
}

.text-lg {
	font-size: 1.125rem;
	line-height: 1.75rem
}

.text-4xl {
	font-size: 2.25rem;
	line-height: 2.5rem
}

.text-2xs {
	font-size: .625rem
}

.text-3xs {
	font-size: .475rem
}

.text-tinier {
	font-size: 11px;
	line-height: 11px
}

.text-5xl {
	font-size: 3rem;
	line-height: 1
}

.font-extrabold {
	font-weight: 800
}

.font-medium {
	font-weight: 500
}

.font-bold {
	font-weight: 700
}

.font-semibold {
	font-weight: 600
}

.font-normal {
	font-weight: 400
}

.font-light {
	font-weight: 300
}

.font-thin {
	font-weight: 100
}

.uppercase {
	text-transform: uppercase
}

.capitalize {
	text-transform: capitalize
}

.italic {
	font-style: italic
}

.not-italic {
	font-style: normal
}

.leading-10 {
	line-height: 2.5rem
}

.leading-6 {
	line-height: 1.5rem
}

.leading-normal {
	line-height: 1.5
}

.leading-4 {
	line-height: 1rem
}

.leading-none {
	line-height: 1
}

.leading-8 {
	line-height: 2rem
}

.leading-7 {
	line-height: 1.75rem
}

.leading-5 {
	line-height: 1.25rem
}

.leading-relaxed {
	line-height: 1.625
}

.tracking-tight {
	letter-spacing: -.025em
}

.tracking-wide {
	letter-spacing: .025em
}

.text-gray-500 { -
	-tw-text-opacity: 1;
	color: rgb(107, 114, 128/ var( - -tw-text-opacity))
}

.text-blue-500 { -
	-tw-text-opacity: 1;
	color: rgb(0, 144, 249/ var( - -tw-text-opacity))
}

.text-gray-400 { -
	-tw-text-opacity: 1;
	color: rgb(156, 163, 175/ var( - -tw-text-opacity))
}

.text-gray-900 { -
	-tw-text-opacity: 1;
	color: rgb(17, 24, 39/ var( - -tw-text-opacity))
}

.text-blue-800 { -
	-tw-text-opacity: 1;
	color: rgb(9, 35, 99/ var( - -tw-text-opacity))
}

.text-white { -
	-tw-text-opacity: 1;
	color: rgb(255, 255, 255/ var( - -tw-text-opacity))
}

.text-gray-600 { -
	-tw-text-opacity: 1;
	color: rgb(75, 85, 99/ var( - -tw-text-opacity))
}

.text-gray-700 { -
	-tw-text-opacity: 1;
	color: rgb(55, 65, 81/ var( - -tw-text-opacity))
}

.text-red-500 { -
	-tw-text-opacity: 1;
	color: rgb(239, 68, 68/ var( - -tw-text-opacity))
}

.text-red-100 { -
	-tw-text-opacity: 1;
	color: rgb(254, 226, 226/ var( - -tw-text-opacity))
}

.text-gray-100 { -
	-tw-text-opacity: 1;
	color: rgb(243, 244, 246/ var( - -tw-text-opacity))
}

.text-blue-400 { -
	-tw-text-opacity: 1;
	color: rgb(11, 127, 211/ var( - -tw-text-opacity))
}

.text-blue-600 { -
	-tw-text-opacity: 1;
	color: rgb(19, 93, 147/ var( - -tw-text-opacity))
}

.text-transparent {
	color: transparent
}

.text-gray-50 { -
	-tw-text-opacity: 1;
	color: rgb(249, 250, 251/ var( - -tw-text-opacity))
}

.text-blue-50 { -
	-tw-text-opacity: 1;
	color: rgb(240, 246, 250/ var( - -tw-text-opacity))
}

.text-gray-800 { -
	-tw-text-opacity: 1;
	color: rgb(31, 41, 55/ var( - -tw-text-opacity))
}

.text-gray-200 { -
	-tw-text-opacity: 1;
	color: rgb(229, 231, 235/ var( - -tw-text-opacity))
}

.text-blue-200 { -
	-tw-text-opacity: 1;
	color: rgb(165, 209, 246/ var( - -tw-text-opacity))
}

.text-red-900 { -
	-tw-text-opacity: 1;
	color: rgb(127, 29, 29/ var( - -tw-text-opacity))
}

.text-gray-300 { -
	-tw-text-opacity: 1;
	color: rgb(209, 213, 219/ var( - -tw-text-opacity))
}

.text-green-800 { -
	-tw-text-opacity: 1;
	color: rgb(22, 101, 52/ var( - -tw-text-opacity))
}

.text-blue-700 { -
	-tw-text-opacity: 1;
	color: rgb(15, 51, 123/ var( - -tw-text-opacity))
}

.text-red-600 { -
	-tw-text-opacity: 1;
	color: rgb(220, 38, 38/ var( - -tw-text-opacity))
}

.text-black { -
	-tw-text-opacity: 1;
	color: rgb(0, 0, 0/ var( - -tw-text-opacity))
}

.text-okky-9 { -
	-tw-text-opacity: 1;
	color: rgb(17, 24, 39/ var( - -tw-text-opacity))
}

.text-inherit {
	color: inherit
}

.text-okky-13 { -
	-tw-text-opacity: 1;
	color: rgb(104, 104, 104/ var( - -tw-text-opacity))
}

.text-slate-400 { -
	-tw-text-opacity: 1;
	color: rgb(148, 163, 184/ var( - -tw-text-opacity))
}

.text-slate-900 { -
	-tw-text-opacity: 1;
	color: rgb(15, 23, 42/ var( - -tw-text-opacity))
}

.text-green-500 { -
	-tw-text-opacity: 1;
	color: rgb(34, 197, 94/ var( - -tw-text-opacity))
}

.text-blue-100 { -
	-tw-text-opacity: 1;
	color: rgb(209, 233, 250/ var( - -tw-text-opacity))
}

.text-red-800 { -
	-tw-text-opacity: 1;
	color: rgb(153, 27, 27/ var( - -tw-text-opacity))
}

.text-red-700 { -
	-tw-text-opacity: 1;
	color: rgb(185, 28, 28/ var( - -tw-text-opacity))
}

.text-yellow-800 { -
	-tw-text-opacity: 1;
	color: rgb(133, 77, 14/ var( - -tw-text-opacity))
}

.text-yellow-700 { -
	-tw-text-opacity: 1;
	color: rgb(161, 98, 7/ var( - -tw-text-opacity))
}

.text-yellow-400 { -
	-tw-text-opacity: 1;
	color: rgb(250, 204, 21/ var( - -tw-text-opacity))
}

.text-green-600 { -
	-tw-text-opacity: 1;
	color: rgb(22, 163, 74/ var( - -tw-text-opacity))
}

.text-slate-700 { -
	-tw-text-opacity: 1;
	color: rgb(51, 65, 85/ var( - -tw-text-opacity))
}

.text-\[\#191919\] { -
	-tw-text-opacity: 1;
	color: rgb(25, 25, 25/ var( - -tw-text-opacity))
}

.underline {
	text-decoration-line: underline
}

.no-underline {
	text-decoration-line: none
}

.underline-offset-4 {
	text-underline-offset: 4px
}

.antialiased {
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale
}

.placeholder-gray-500\/80::-moz-placeholder {
	color: hsla(220, 9%, 46%, .8)
}

.placeholder-gray-500\/80::placeholder {
	color: hsla(220, 9%, 46%, .8)
}

.placeholder-gray-400::-moz-placeholder { -
	-tw-placeholder-opacity: 1;
	color: rgb(156, 163, 175/ var( - -tw-placeholder-opacity))
}

.placeholder-gray-400::placeholder { -
	-tw-placeholder-opacity: 1;
	color: rgb(156, 163, 175/ var( - -tw-placeholder-opacity))
}

.opacity-10 {
	opacity: .1
}

.opacity-0 {
	opacity: 0
}

.opacity-100 {
	opacity: 1
}

.opacity-80 {
	opacity: .8
}

.opacity-40 {
	opacity: .4
}

.opacity-50 {
	opacity: .5
}

.opacity-25 {
	opacity: .25
}

.opacity-75 {
	opacity: .75
}

.opacity-30 {
	opacity: .3
}

.mix-blend-multiply {
	mix-blend-mode: multiply
}

.shadow-sm { -
	-tw-shadow: 0 1px 2px 0 rgba(0, 0, 0, .05); -
	-tw-shadow-colored: 0 1px 2px 0 var(- -tw-shadow-color)
}

.shadow-lg, .shadow-sm {
	box-shadow: var(- -tw-ring-offset-shadow, 0 0 #0000),
		var(- -tw-ring-shadow, 0 0 #0000), var(- -tw-shadow)
}

.shadow-lg { -
	-tw-shadow: 0 10px 15px -3px rgba(0, 0, 0, .1), 0 4px 6px -4px
		rgba(0, 0, 0, .1); -
	-tw-shadow-colored: 0 10px 15px -3px var(- -tw-shadow-color), 0 4px 6px
		-4px var(- -tw-shadow-color)
}

.shadow { -
	-tw-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px -1px
		rgba(0, 0, 0, .1); -
	-tw-shadow-colored: 0 1px 3px 0 var(- -tw-shadow-color), 0 1px 2px -1px
		var(- -tw-shadow-color)
}

.shadow, .shadow-md {
	box-shadow: var(- -tw-ring-offset-shadow, 0 0 #0000),
		var(- -tw-ring-shadow, 0 0 #0000), var(- -tw-shadow)
}

.shadow-md { -
	-tw-shadow: 0 4px 6px -1px rgba(0, 0, 0, .1), 0 2px 4px -2px
		rgba(0, 0, 0, .1); -
	-tw-shadow-colored: 0 4px 6px -1px var(- -tw-shadow-color), 0 2px 4px
		-2px var(- -tw-shadow-color)
}

.shadow-xl { -
	-tw-shadow: 0 20px 25px -5px rgba(0, 0, 0, .1), 0 8px 10px -6px
		rgba(0, 0, 0, .1); -
	-tw-shadow-colored: 0 20px 25px -5px var(- -tw-shadow-color), 0 8px 10px
		-6px var(- -tw-shadow-color);
	box-shadow: var(- -tw-ring-offset-shadow, 0 0 #0000),
		var(- -tw-ring-shadow, 0 0 #0000), var(- -tw-shadow)
}

.ring-1 { -
	-tw-ring-offset-shadow: var(- -tw-ring-inset) 0 0 0
		var(- -tw-ring-offset-width) var(- -tw-ring-offset-color); -
	-tw-ring-shadow: var(- -tw-ring-inset) 0 0 0
		calc(1px + var(- -tw-ring-offset-width)) var(- -tw-ring-color)
}

.ring-0, .ring-1 {
	box-shadow: var(- -tw-ring-offset-shadow), var(- -tw-ring-shadow),
		var(- -tw-shadow, 0 0 #0000)
}

.ring-0 { -
	-tw-ring-offset-shadow: var(- -tw-ring-inset) 0 0 0
		var(- -tw-ring-offset-width) var(- -tw-ring-offset-color); -
	-tw-ring-shadow: var(- -tw-ring-inset) 0 0 0
		calc(0px + var(- -tw-ring-offset-width)) var(- -tw-ring-color)
}

.ring-gray-900 { -
	-tw-ring-opacity: 1; -
	-tw-ring-color: rgb(17, 24, 39/ var( - -tw-ring-opacity))
}

.ring-black { -
	-tw-ring-opacity: 1; -
	-tw-ring-color: rgb(0, 0, 0/ var( - -tw-ring-opacity))
}

.ring-opacity-5 { -
	-tw-ring-opacity: 0.05
}

.blur-3xl { -
	-tw-blur: blur(64px)
}

.blur, .blur-3xl {
	filter: var(- -tw-blur) var(- -tw-brightness) var(- -tw-contrast)
		var(- -tw-grayscale) var(- -tw-hue-rotate) var(- -tw-invert)
		var(- -tw-saturate) var(- -tw-sepia) var(- -tw-drop-shadow)
}

.blur { -
	-tw-blur: blur(8px)
}

.blur-sm { -
	-tw-blur: blur(4px)
}

.blur-\[1px\], .blur-sm {
	filter: var(- -tw-blur) var(- -tw-brightness) var(- -tw-contrast)
		var(- -tw-grayscale) var(- -tw-hue-rotate) var(- -tw-invert)
		var(- -tw-saturate) var(- -tw-sepia) var(- -tw-drop-shadow)
}

.blur-\[1px\] { -
	-tw-blur: blur(1px)
}

.filter {
	filter: var(- -tw-blur) var(- -tw-brightness) var(- -tw-contrast)
		var(- -tw-grayscale) var(- -tw-hue-rotate) var(- -tw-invert)
		var(- -tw-saturate) var(- -tw-sepia) var(- -tw-drop-shadow)
}

.transition {
	transition-property: color, background-color, border-color,
		text-decoration-color, fill, stroke, opacity, box-shadow, transform,
		filter, -webkit-backdrop-filter;
	transition-property: color, background-color, border-color,
		text-decoration-color, fill, stroke, opacity, box-shadow, transform,
		filter, backdrop-filter;
	transition-property: color, background-color, border-color,
		text-decoration-color, fill, stroke, opacity, box-shadow, transform,
		filter, backdrop-filter, -webkit-backdrop-filter;
	transition-timing-function: cubic-bezier(.4, 0, .2, 1);
	transition-duration: .15s
}

.transition-colors {
	transition-property: color, background-color, border-color,
		text-decoration-color, fill, stroke;
	transition-timing-function: cubic-bezier(.4, 0, .2, 1);
	transition-duration: .15s
}

.transition-opacity {
	transition-property: opacity;
	transition-timing-function: cubic-bezier(.4, 0, .2, 1);
	transition-duration: .15s
}

.transition-all {
	transition-property: all;
	transition-timing-function: cubic-bezier(.4, 0, .2, 1)
}

.duration-150, .transition-all {
	transition-duration: .15s
}

.duration-100 {
	transition-duration: .1s
}

.duration-200 {
	transition-duration: .2s
}

.duration-75 {
	transition-duration: 75ms
}

.duration-300 {
	transition-duration: .3s
}

.ease-out {
	transition-timing-function: cubic-bezier(0, 0, .2, 1)
}

.ease-in {
	transition-timing-function: cubic-bezier(.4, 0, 1, 1)
}

.ease-in-out {
	transition-timing-function: cubic-bezier(.4, 0, .2, 1)
}

.line-clamp-1 {
	-webkit-line-clamp: 1
}

.line-clamp-1, .line-clamp-2 {
	overflow: hidden;
	display: -webkit-box;
	-webkit-box-orient: vertical
}

.line-clamp-2 {
	-webkit-line-clamp: 2
}

.line-clamp-3 {
	overflow: hidden;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 3
}

.scrollbar { -
	-scrollbar-track-x: #9ca3af; -
	-scrollbar-track-y: #9ca3af; -
	-scrollbar-thumb-x: #4b5563; -
	-scrollbar-thumb-y: #4b5563; -
	-scrollbar-track-radius-x: 0.375rem; -
	-scrollbar-track-radius-y: 0.375rem; -
	-scrollbar-thumb-radius-x: 0.375rem; -
	-scrollbar-thumb-radius-y: 0.375rem; -
	-scrollbar-width-x: 0.25rem; -
	-scrollbar-width-y: 0.25rem; -
	-scrollbar-auto-track: #9ca3af; -
	-scrollbar-auto-thumb: #4b5563; -
	-scrollbar-auto-track-radius: 0.375rem; -
	-scrollbar-auto-thumb-radius: 0.375rem; -
	-scrollbar-auto-width: 0.25rem;
	overflow: overlay
}

.scrollbar scrollbar-hidden { -
	-scrollbar-track-x: transparent; -
	-scrollbar-track-y: transparent; -
	-scrollbar-thumb-x: transparent; -
	-scrollbar-thumb-y: transparent
}

.scrollbar hover\:scrollbar-hidden:hover { -
	-scrollbar-track-y: transparent; -
	-scrollbar-thumb-y: transparent
}

.scrollbar hover\:scrollbar-auto:hover, .scrollbar scrollbar-auto { -
	-scrollbar-track-x: var(- -scrollbar-auto-track); -
	-scrollbar-track-y: var(- -scrollbar-auto-track); -
	-scrollbar-thumb-x: var(- -scrollbar-auto-thumb); -
	-scrollbar-thumb-y: var(- -scrollbar-auto-thumb)
}

.scrollbar hover\:scrollbar-x-hidden, .scrollbar scrollbar-x-hidden { -
	-scrollbar-track-x: transparent; -
	-scrollbar-thumb-x: transparent
}

.scrollbar hover\:scrollbar-y-hidden, .scrollbar scrollbar-y-hidden { -
	-scrollbar-track-y: transparent; -
	-scrollbar-thumb-y: transparent
}

.scrollbar::-webkit-scrollbar {
	height: var(- -scrollbar-width-x);
	width: var(- -scrollbar-width-y)
}

.scrollbar::-webkit-scrollbar-track {
	background-color: var(- -scrollbar-track-x);
	border-radius: var(- -scrollbar-track-radius-x);
	-webkit-border-radius: var(- -scrollbar-track-radius-x)
}

.scrollbar::-webkit-scrollbar-thumb {
	background-color: var(- -scrollbar-thumb-x);
	border-radius: var(- -scrollbar-thumb-radius-x)
}

.scrollbar::-webkit-scrollbar:horizontal {
	height: var(- -scrollbar-width-x)
}

.scrollbar::-webkit-scrollbar-track:horizontal {
	background-color: var(- -scrollbar-track-x);
	border-radius: var(- -scrollbar-track-radius-x);
	-webkit-border-radius: var(- -scrollbar-track-radius-x)
}

.scrollbar::-webkit-scrollbar-thumb:horizontal {
	background-color: var(- -scrollbar-thumb-x);
	border-radius: var(- -scrollbar-thumb-radius-x)
}

.scrollbar::-webkit-scrollbar:vertical {
	width: var(- -scrollbar-width-y)
}

.scrollbar::-webkit-scrollbar-track:vertical {
	background-color: var(- -scrollbar-track-y);
	border-radius: var(- -scrollbar-track-radius-y);
	-webkit-border-radius: var(- -scrollbar-track-radius-y)
}

.scrollbar::-webkit-scrollbar-thumb:vertical {
	background-color: var(- -scrollbar-thumb-y);
	border-radius: var(- -scrollbar-thumb-radius-y)
}

.scrollbar::-webkit-scrollbar:hover {
	height: var(- -scrollbar-width-x);
	width: var(- -scrollbar-width-y)
}

.scrollbar::-webkit-scrollbar-track:hover {
	background-color: var(- -scrollbar-track-x);
	border-radius: var(- -scrollbar-track-radius-x);
	-webkit-border-radius: var(- -scrollbar-track-radius-x)
}

.scrollbar::-webkit-scrollbar-thumb:hover {
	background-color: var(- -scrollbar-thumb-x);
	border-radius: var(- -scrollbar-thumb-radius-x)
}

.scrollbar::-webkit-scrollbar:horizontal:hover {
	height: var(- -scrollbar-width-x)
}

.scrollbar::-webkit-scrollbar-track:horizontal:hover {
	background-color: var(- -scrollbar-track-x);
	border-radius: var(- -scrollbar-track-radius-x);
	-webkit-border-radius: var(- -scrollbar-track-radius-x)
}

.scrollbar::-webkit-scrollbar-thumb:horizontal:hover {
	background-color: var(- -scrollbar-thumb-x);
	border-radius: var(- -scrollbar-thumb-radius-x)
}

.scrollbar::-webkit-scrollbar:vertical:hover {
	width: var(- -scrollbar-width-y)
}

.scrollbar::-webkit-scrollbar-track:vertical:hover {
	background-color: var(- -scrollbar-track-y);
	border-radius: var(- -scrollbar-track-radius-y);
	-webkit-border-radius: var(- -scrollbar-track-radius-y)
}

.scrollbar::-webkit-scrollbar-thumb:vertical:hover {
	background-color: var(- -scrollbar-thumb-y);
	border-radius: var(- -scrollbar-thumb-radius-y)
}

.scrollbar-track-transparent { -
	-scrollbar-track-x: transparent; -
	-scrollbar-track-y: transparent
}

.scrollbar-track-transparent::-webkit-scrollbar-track { -
	-scrollbar-track-x: transparent; -
	-scrollbar-track-y: transparent
}

.break-keep-all {
	word-break: keep-all
}

.scroll-hidden {
	-ms-overflow-style: none;
	scrollbar-width: none
}

.scroll-hidden::-webkit-scrollbar {
	display: none
}

.scrollbar-okky { -
	-scrollbar-width-y: 20px
}

.scrollbar-okky::-webkit-scrollbar-width:vertical { -
	-scrollbar-width-y: 20px
}

.scrollbar-okky::-webkit-scrollbar-thumb:vertical {
	background-color: #d9d9d9;
	background-clip: padding-box;
	border: 8px solid transparent;
	border-radius: 20px
}

.\[background-image\:linear-gradient\(90deg\2c rgba\(56\2c 189\2c 248\2c 0\)_0\%\2c \#0EA5E9_32\.29\%\2c rgba\(236\2c 72\2c 153\2c 0\.3\)_67\.19\%\2c rgba\(236\2c 72\2c 153\2c 0\)_100\%\)\]
	{
	background-image: linear-gradient(90deg, rgba(56, 189, 248, 0), #0ea5e9
		32.29%, rgba(236, 72, 153, .3) 67.19%, rgba(236, 72, 153, 0))
}

.\[mask-image\:linear-gradient\(to_left\2c transparent\2c white_4rem\2c white_calc\(100\%-4rem\)\2c transparent\)\]
	{
	-webkit-mask-image: linear-gradient(270deg, transparent, #fff 4rem, #fff calc(100% - 4rem),
		transparent);
	mask-image: linear-gradient(270deg, transparent, #fff 4rem, #fff calc(100% - 4rem),
		transparent)
}

.\[mask-image\:linear-gradient\(to_top\2c transparent\2c white_4rem\2c white_calc\(100\%-4rem\)\2c transparent\)\]
	{
	-webkit-mask-image: linear-gradient(0deg, transparent, #fff 4rem, #fff calc(100% - 4rem),
		transparent);
	mask-image: linear-gradient(0deg, transparent, #fff 4rem, #fff calc(100% - 4rem),
		transparent)
}

.first\:my-0:first-child {
	margin-top: 0;
	margin-bottom: 0
}

.first\:mt-0:first-child {
	margin-top: 0
}

.last\:-mr-2:last-child {
	margin-right: -.5rem
}

.last\:hidden:last-child {
	display: none
}

.last\:pb-0:last-child {
	padding-bottom: 0
}

.focus-within\:border-blue-500:focus-within { -
	-tw-border-opacity: 1;
	border-color: rgb(0, 144, 249/ var( - -tw-border-opacity))
}

.focus-within\:opacity-100:focus-within {
	opacity: 1
}

.focus-within\:ring-2:focus-within { -
	-tw-ring-offset-shadow: var(- -tw-ring-inset) 0 0 0
		var(- -tw-ring-offset-width) var(- -tw-ring-offset-color); -
	-tw-ring-shadow: var(- -tw-ring-inset) 0 0 0
		calc(2px + var(- -tw-ring-offset-width)) var(- -tw-ring-color);
	box-shadow: var(- -tw-ring-offset-shadow), var(- -tw-ring-shadow),
		var(- -tw-shadow, 0 0 #0000)
}

.focus-within\:ring-1:focus-within { -
	-tw-ring-offset-shadow: var(- -tw-ring-inset) 0 0 0
		var(- -tw-ring-offset-width) var(- -tw-ring-offset-color); -
	-tw-ring-shadow: var(- -tw-ring-inset) 0 0 0
		calc(1px + var(- -tw-ring-offset-width)) var(- -tw-ring-color);
	box-shadow: var(- -tw-ring-offset-shadow), var(- -tw-ring-shadow),
		var(- -tw-shadow, 0 0 #0000)
}

.focus-within\:ring-blue-500:focus-within { -
	-tw-ring-opacity: 1; -
	-tw-ring-color: rgb(0, 144, 249/ var( - -tw-ring-opacity))
}

.focus-within\:ring-offset-2:focus-within { -
	-tw-ring-offset-width: 2px
}

@media ( hover :hover) and (pointer:fine) {
	.hover\:cursor-pointer:hover {
		cursor: pointer
	}
	.hover\:border-gray-100:hover { -
		-tw-border-opacity: 1;
		border-color: rgb(243, 244, 246/ var( - -tw-border-opacity))
	}
	.hover\:border-blue-500:hover { -
		-tw-border-opacity: 1;
		border-color: rgb(0, 144, 249/ var( - -tw-border-opacity))
	}
	.hover\:border-gray-500:hover { -
		-tw-border-opacity: 1;
		border-color: rgb(107, 114, 128/ var( - -tw-border-opacity))
	}
	.hover\:border-gray-500\/70:hover {
		border-color: hsla(220, 9%, 46%, .7)
	}
	.hover\:border-gray-400:hover { -
		-tw-border-opacity: 1;
		border-color: rgb(156, 163, 175/ var( - -tw-border-opacity))
	}
	.hover\:border-gray-300:hover { -
		-tw-border-opacity: 1;
		border-color: rgb(209, 213, 219/ var( - -tw-border-opacity))
	}
	.hover\:border-gray-900:hover { -
		-tw-border-opacity: 1;
		border-color: rgb(17, 24, 39/ var( - -tw-border-opacity))
	}
	.hover\:bg-blue-400:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(11, 127, 211/ var( - -tw-bg-opacity))
	}
	.hover\:bg-red-700:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(185, 28, 28/ var( - -tw-bg-opacity))
	}
	.hover\:bg-gray-100:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(243, 244, 246/ var( - -tw-bg-opacity))
	}
	.hover\:bg-blue-700:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(15, 51, 123/ var( - -tw-bg-opacity))
	}
	.hover\:bg-gray-50:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(249, 250, 251/ var( - -tw-bg-opacity))
	}
	.hover\:bg-blue-600:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(19, 93, 147/ var( - -tw-bg-opacity))
	}
	.hover\:bg-\[\#1da1f2\]:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(29, 161, 242/ var( - -tw-bg-opacity))
	}
	.hover\:bg-gray-900\/10:hover {
		background-color: rgba(17, 24, 39, .1)
	}
	.hover\:bg-gray-300:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(209, 213, 219/ var( - -tw-bg-opacity))
	}
	.hover\:bg-slate-100:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(241, 245, 249/ var( - -tw-bg-opacity))
	}
	.hover\:bg-slate-50:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(248, 250, 252/ var( - -tw-bg-opacity))
	}
	.hover\:bg-gray-200:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(229, 231, 235/ var( - -tw-bg-opacity))
	}
	.hover\:bg-blue-200:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(165, 209, 246/ var( - -tw-bg-opacity))
	}
	.hover\:bg-opacity-100:hover { -
		-tw-bg-opacity: 1
	}
	.hover\:from-blue-400:hover { -
		-tw-gradient-from: #0b7fd3; -
		-tw-gradient-to: rgba(11, 127, 211, 0); -
		-tw-gradient-stops: var(- -tw-gradient-from), var(- -tw-gradient-to)
	}
	.hover\:to-blue-500:hover { -
		-tw-gradient-to: #0090f9
	}
	.hover\:fill-current:hover {
		fill: currentColor
	}
	.hover\:text-blue-400:hover { -
		-tw-text-opacity: 1;
		color: rgb(11, 127, 211/ var( - -tw-text-opacity))
	}
	.hover\:text-blue-500:hover { -
		-tw-text-opacity: 1;
		color: rgb(0, 144, 249/ var( - -tw-text-opacity))
	}
	.hover\:text-gray-500:hover { -
		-tw-text-opacity: 1;
		color: rgb(107, 114, 128/ var( - -tw-text-opacity))
	}
	.hover\:text-gray-900:hover { -
		-tw-text-opacity: 1;
		color: rgb(17, 24, 39/ var( - -tw-text-opacity))
	}
	.hover\:text-gray-700:hover { -
		-tw-text-opacity: 1;
		color: rgb(55, 65, 81/ var( - -tw-text-opacity))
	}
	.hover\:text-blue-200:hover { -
		-tw-text-opacity: 1;
		color: rgb(165, 209, 246/ var( - -tw-text-opacity))
	}
	.hover\:text-red-500:hover { -
		-tw-text-opacity: 1;
		color: rgb(239, 68, 68/ var( - -tw-text-opacity))
	}
	.hover\:text-blue-300:hover { -
		-tw-text-opacity: 1;
		color: rgb(116, 173, 229/ var( - -tw-text-opacity))
	}
	.hover\:text-blue-100:hover { -
		-tw-text-opacity: 1;
		color: rgb(209, 233, 250/ var( - -tw-text-opacity))
	}
	.hover\:text-gray-800:hover { -
		-tw-text-opacity: 1;
		color: rgb(31, 41, 55/ var( - -tw-text-opacity))
	}
	.hover\:underline:hover {
		text-decoration-line: underline
	}
	.hover\:no-underline:hover {
		text-decoration-line: none
	}
	.hover\:opacity-100:hover {
		opacity: 1
	}
}

.focus\:z-10:focus {
	z-index: 10
}

.focus\:border-gray-500:focus { -
	-tw-border-opacity: 1;
	border-color: rgb(107, 114, 128/ var( - -tw-border-opacity))
}

.focus\:border-gray-700:focus { -
	-tw-border-opacity: 1;
	border-color: rgb(55, 65, 81/ var( - -tw-border-opacity))
}

.focus\:border-blue-500:focus { -
	-tw-border-opacity: 1;
	border-color: rgb(0, 144, 249/ var( - -tw-border-opacity))
}

.focus\:outline-none:focus {
	outline: 2px solid transparent;
	outline-offset: 2px
}

.focus\:outline-0:focus {
	outline-width: 0
}

.focus\:ring-0:focus { -
	-tw-ring-offset-shadow: var(- -tw-ring-inset) 0 0 0
		var(- -tw-ring-offset-width) var(- -tw-ring-offset-color); -
	-tw-ring-shadow: var(- -tw-ring-inset) 0 0 0
		calc(0px + var(- -tw-ring-offset-width)) var(- -tw-ring-color)
}

.focus\:ring-0:focus, .focus\:ring-2:focus {
	box-shadow: var(- -tw-ring-offset-shadow), var(- -tw-ring-shadow),
		var(- -tw-shadow, 0 0 #0000)
}

.focus\:ring-2:focus { -
	-tw-ring-offset-shadow: var(- -tw-ring-inset) 0 0 0
		var(- -tw-ring-offset-width) var(- -tw-ring-offset-color); -
	-tw-ring-shadow: var(- -tw-ring-inset) 0 0 0
		calc(2px + var(- -tw-ring-offset-width)) var(- -tw-ring-color)
}

.focus\:ring-1:focus { -
	-tw-ring-offset-shadow: var(- -tw-ring-inset) 0 0 0
		var(- -tw-ring-offset-width) var(- -tw-ring-offset-color); -
	-tw-ring-shadow: var(- -tw-ring-inset) 0 0 0
		calc(1px + var(- -tw-ring-offset-width)) var(- -tw-ring-color);
	box-shadow: var(- -tw-ring-offset-shadow), var(- -tw-ring-shadow),
		var(- -tw-shadow, 0 0 #0000)
}

.focus\:ring-inset:focus { -
	-tw-ring-inset: inset
}

.focus\:ring-blue-500:focus { -
	-tw-ring-opacity: 1; -
	-tw-ring-color: rgb(0, 144, 249/ var( - -tw-ring-opacity))
}

.focus\:ring-blue-600:focus { -
	-tw-ring-opacity: 1; -
	-tw-ring-color: rgb(19, 93, 147/ var( - -tw-ring-opacity))
}

.focus\:ring-blue-400:focus { -
	-tw-ring-opacity: 1; -
	-tw-ring-color: rgb(11, 127, 211/ var( - -tw-ring-opacity))
}

.focus\:ring-white:focus { -
	-tw-ring-opacity: 1; -
	-tw-ring-color: rgb(255, 255, 255/ var( - -tw-ring-opacity))
}

.focus\:ring-offset-0:focus { -
	-tw-ring-offset-width: 0px
}

.focus\:ring-offset-2:focus { -
	-tw-ring-offset-width: 2px
}

.focus\:ring-offset-gray-100:focus { -
	-tw-ring-offset-color: #f3f4f6
}

.disabled\:bg-blue-500:disabled { -
	-tw-bg-opacity: 1;
	background-color: rgb(0, 144, 249/ var( - -tw-bg-opacity))
}

.disabled\:bg-red-600:disabled { -
	-tw-bg-opacity: 1;
	background-color: rgb(220, 38, 38/ var( - -tw-bg-opacity))
}

.disabled\:bg-white:disabled { -
	-tw-bg-opacity: 1;
	background-color: rgb(255, 255, 255/ var( - -tw-bg-opacity))
}

.disabled\:opacity-40:disabled {
	opacity: .4
}

.disabled\:opacity-50:disabled {
	opacity: .5
}

.disabled\:opacity-70:disabled {
	opacity: .7
}

@media ( hover :hover) and (pointer:fine) {
	.group:hover .group-hover\:border-gray-400 { -
		-tw-border-opacity: 1;
		border-color: rgb(156, 163, 175/ var( - -tw-border-opacity))
	}
	.group:hover .group-hover\:bg-blue-500 { -
		-tw-bg-opacity: 1;
		background-color: rgb(0, 144, 249/ var( - -tw-bg-opacity))
	}
	.group:hover .group-hover\:bg-gray-300 { -
		-tw-bg-opacity: 1;
		background-color: rgb(209, 213, 219/ var( - -tw-bg-opacity))
	}
	.group:hover .group-hover\:text-red-500 { -
		-tw-text-opacity: 1;
		color: rgb(239, 68, 68/ var( - -tw-text-opacity))
	}
	.group:hover .group-hover\:text-blue-500 { -
		-tw-text-opacity: 1;
		color: rgb(0, 144, 249/ var( - -tw-text-opacity))
	}
	.group:hover .group-hover\:text-gray-800 { -
		-tw-text-opacity: 1;
		color: rgb(31, 41, 55/ var( - -tw-text-opacity))
	}
	.group:hover .group-hover\:text-gray-500 { -
		-tw-text-opacity: 1;
		color: rgb(107, 114, 128/ var( - -tw-text-opacity))
	}
	.group:hover .group-hover\:text-gray-700 { -
		-tw-text-opacity: 1;
		color: rgb(55, 65, 81/ var( - -tw-text-opacity))
	}
}

.dark .dark\:block {
	display: block
}

.dark .dark\:hidden {
	display: none
}

.dark .dark\:divide-gray-600>:not([hidden]) ~:not([hidden]) { -
	-tw-divide-opacity: 1;
	border-color: rgb(75, 85, 99/ var( - -tw-divide-opacity))
}

.dark .dark\:divide-gray-500\/70>:not([hidden]) ~:not([hidden]) {
	border-color: hsla(220, 9%, 46%, .7)
}

.dark .dark\:border {
	border-width: 1px
}

.dark .dark\:border-gray-600 { -
	-tw-border-opacity: 1;
	border-color: rgb(75, 85, 99/ var( - -tw-border-opacity))
}

.dark .dark\:border-gray-500\/70 {
	border-color: hsla(220, 9%, 46%, .7)
}

.dark .dark\:border-blue-200 { -
	-tw-border-opacity: 1;
	border-color: rgb(165, 209, 246/ var( - -tw-border-opacity))
}

.dark .dark\:border-blue-400 { -
	-tw-border-opacity: 1;
	border-color: rgb(11, 127, 211/ var( - -tw-border-opacity))
}

.dark .dark\:border-gray-700 { -
	-tw-border-opacity: 1;
	border-color: rgb(55, 65, 81/ var( - -tw-border-opacity))
}

.dark .dark\:border-gray-800\/90 {
	border-color: rgba(31, 41, 55, .9)
}

.dark .dark\:border-gray-400\/70 {
	border-color: rgba(156, 163, 175, .7)
}

.dark .dark\:border-gray-800 { -
	-tw-border-opacity: 1;
	border-color: rgb(31, 41, 55/ var( - -tw-border-opacity))
}

.dark .dark\:border-red-700 { -
	-tw-border-opacity: 1;
	border-color: rgb(185, 28, 28/ var( - -tw-border-opacity))
}

.dark .dark\:border-yellow-700 { -
	-tw-border-opacity: 1;
	border-color: rgb(161, 98, 7/ var( - -tw-border-opacity))
}

.dark .dark\:border-blue-700 { -
	-tw-border-opacity: 1;
	border-color: rgb(15, 51, 123/ var( - -tw-border-opacity))
}

.dark .dark\:border-gray-500\/80 {
	border-color: hsla(220, 9%, 46%, .8)
}

.dark .dark\:border-slate-300\/30 {
	border-color: rgba(203, 213, 225, .3)
}

.dark .dark\:border-y-gray-500\/70 {
	border-top-color: hsla(220, 9%, 46%, .7)
}

.dark .dark\:border-b-gray-500\/70, .dark .dark\:border-y-gray-500\/70 {
	border-bottom-color: hsla(220, 9%, 46%, .7)
}

.dark .dark\:bg-gray-700 { -
	-tw-bg-opacity: 1;
	background-color: rgb(55, 65, 81/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-gray-800 { -
	-tw-bg-opacity: 1;
	background-color: rgb(31, 41, 55/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-gray-500\/20 {
	background-color: hsla(220, 9%, 46%, .2)
}

.dark .dark\:bg-black { -
	-tw-bg-opacity: 1;
	background-color: rgb(0, 0, 0/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-gray-900 { -
	-tw-bg-opacity: 1;
	background-color: rgb(17, 24, 39/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-gray-900\/50 {
	background-color: rgba(17, 24, 39, .5)
}

.dark .dark\:bg-blue-400 { -
	-tw-bg-opacity: 1;
	background-color: rgb(11, 127, 211/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-blue-500 { -
	-tw-bg-opacity: 1;
	background-color: rgb(0, 144, 249/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-slate-700 { -
	-tw-bg-opacity: 1;
	background-color: rgb(51, 65, 85/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-gray-900\/90 {
	background-color: rgba(17, 24, 39, .9)
}

.dark .dark\:bg-gray-800\/50 {
	background-color: rgba(31, 41, 55, .5)
}

.dark .dark\:bg-gray-400\/70 {
	background-color: rgba(156, 163, 175, .7)
}

.dark .dark\:bg-white { -
	-tw-bg-opacity: 1;
	background-color: rgb(255, 255, 255/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-gray-500 { -
	-tw-bg-opacity: 1;
	background-color: rgb(107, 114, 128/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-gray-100 { -
	-tw-bg-opacity: 1;
	background-color: rgb(243, 244, 246/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-blue-500\/80 {
	background-color: rgba(0, 144, 249, .8)
}

.dark .dark\:bg-gray-300 { -
	-tw-bg-opacity: 1;
	background-color: rgb(209, 213, 219/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-gray-600 { -
	-tw-bg-opacity: 1;
	background-color: rgb(75, 85, 99/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-blue-200 { -
	-tw-bg-opacity: 1;
	background-color: rgb(165, 209, 246/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-red-700\/50 {
	background-color: rgba(185, 28, 28, .5)
}

.dark .dark\:bg-yellow-700\/50 {
	background-color: rgba(161, 98, 7, .5)
}

.dark .dark\:bg-blue-700\/50 {
	background-color: rgba(15, 51, 123, .5)
}

.dark .dark\:bg-gray-700\/50 {
	background-color: rgba(55, 65, 81, .5)
}

.dark .dark\:bg-gray-500\/70 {
	background-color: hsla(220, 9%, 46%, .7)
}

.dark .dark\:bg-slate-800 { -
	-tw-bg-opacity: 1;
	background-color: rgb(30, 41, 59/ var( - -tw-bg-opacity))
}

.dark .dark\:bg-gray-900\/30 {
	background-color: rgba(17, 24, 39, .3)
}

.dark .dark\:bg-slate-100\/70 {
	background-color: rgba(241, 245, 249, .7)
}

.dark .dark\:bg-opacity-25 { -
	-tw-bg-opacity: 0.25
}

.dark .dark\:from-blue-400 { -
	-tw-gradient-from: #0b7fd3; -
	-tw-gradient-to: rgba(11, 127, 211, 0); -
	-tw-gradient-stops: var(- -tw-gradient-from), var(- -tw-gradient-to)
}

.dark .dark\:to-blue-500 { -
	-tw-gradient-to: #0090f9
}

.dark .dark\:to-pink-500 { -
	-tw-gradient-to: #ec4899
}

.dark .dark\:text-blue-300 { -
	-tw-text-opacity: 1;
	color: rgb(116, 173, 229/ var( - -tw-text-opacity))
}

.dark .dark\:text-gray-600 { -
	-tw-text-opacity: 1;
	color: rgb(75, 85, 99/ var( - -tw-text-opacity))
}

.dark .dark\:text-gray-100 { -
	-tw-text-opacity: 1;
	color: rgb(243, 244, 246/ var( - -tw-text-opacity))
}

.dark .dark\:text-blue-200 { -
	-tw-text-opacity: 1;
	color: rgb(165, 209, 246/ var( - -tw-text-opacity))
}

.dark .dark\:text-gray-400 { -
	-tw-text-opacity: 1;
	color: rgb(156, 163, 175/ var( - -tw-text-opacity))
}

.dark .dark\:text-gray-300 { -
	-tw-text-opacity: 1;
	color: rgb(209, 213, 219/ var( - -tw-text-opacity))
}

.dark .dark\:text-gray-500 { -
	-tw-text-opacity: 1;
	color: rgb(107, 114, 128/ var( - -tw-text-opacity))
}

.dark .dark\:text-white { -
	-tw-text-opacity: 1;
	color: rgb(255, 255, 255/ var( - -tw-text-opacity))
}

.dark .dark\:text-gray-900 { -
	-tw-text-opacity: 1;
	color: rgb(17, 24, 39/ var( - -tw-text-opacity))
}

.dark .dark\:text-blue-900 { -
	-tw-text-opacity: 1;
	color: rgb(5, 24, 82/ var( - -tw-text-opacity))
}

.dark .dark\:text-gray-200 { -
	-tw-text-opacity: 1;
	color: rgb(229, 231, 235/ var( - -tw-text-opacity))
}

.dark .dark\:text-gray-700 { -
	-tw-text-opacity: 1;
	color: rgb(55, 65, 81/ var( - -tw-text-opacity))
}

.dark .dark\:text-gray-800 { -
	-tw-text-opacity: 1;
	color: rgb(31, 41, 55/ var( - -tw-text-opacity))
}

.dark .dark\:text-blue-500 { -
	-tw-text-opacity: 1;
	color: rgb(0, 144, 249/ var( - -tw-text-opacity))
}

.dark .dark\:text-gray-50\/95 {
	color: rgba(249, 250, 251, .95)
}

.dark .dark\:text-red-200 { -
	-tw-text-opacity: 1;
	color: rgb(254, 202, 202/ var( - -tw-text-opacity))
}

.dark .dark\:text-yellow-200 { -
	-tw-text-opacity: 1;
	color: rgb(254, 240, 138/ var( - -tw-text-opacity))
}

.dark .dark\:text-slate-200 { -
	-tw-text-opacity: 1;
	color: rgb(226, 232, 240/ var( - -tw-text-opacity))
}

@media ( hover :hover) and (pointer:fine) {
	.dark .dark\:hover\:border-blue-200:hover { -
		-tw-border-opacity: 1;
		border-color: rgb(165, 209, 246/ var( - -tw-border-opacity))
	}
	.dark .dark\:hover\:border-gray-500\/30:hover {
		border-color: hsla(220, 9%, 46%, .3)
	}
	.dark .dark\:hover\:border-gray-100:hover { -
		-tw-border-opacity: 1;
		border-color: rgb(243, 244, 246/ var( - -tw-border-opacity))
	}
	.dark .dark\:hover\:border-gray-400:hover { -
		-tw-border-opacity: 1;
		border-color: rgb(156, 163, 175/ var( - -tw-border-opacity))
	}
	.dark .dark\:hover\:bg-gray-600:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(75, 85, 99/ var( - -tw-bg-opacity))
	}
	.dark .dark\:hover\:bg-gray-900:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(17, 24, 39/ var( - -tw-bg-opacity))
	}
	.dark .dark\:hover\:bg-gray-100\/10:hover {
		background-color: rgba(243, 244, 246, .1)
	}
	.dark .dark\:hover\:bg-gray-700:hover { -
		-tw-bg-opacity: 1;
		background-color: rgb(55, 65, 81/ var( - -tw-bg-opacity))
	}
	.dark .dark\:hover\:text-blue-200:hover { -
		-tw-text-opacity: 1;
		color: rgb(165, 209, 246/ var( - -tw-text-opacity))
	}
	.dark .dark\:hover\:text-blue-300:hover { -
		-tw-text-opacity: 1;
		color: rgb(116, 173, 229/ var( - -tw-text-opacity))
	}
	.dark .dark\:hover\:text-blue-500:hover { -
		-tw-text-opacity: 1;
		color: rgb(0, 144, 249/ var( - -tw-text-opacity))
	}
	.dark .dark\:hover\:text-gray-300:hover { -
		-tw-text-opacity: 1;
		color: rgb(209, 213, 219/ var( - -tw-text-opacity))
	}
	.dark .dark\:hover\:no-underline:hover {
		text-decoration-line: none
	}
}

.dark .dark\:focus\:border-gray-500:focus { -
	-tw-border-opacity: 1;
	border-color: rgb(107, 114, 128/ var( - -tw-border-opacity))
}

@media ( hover :hover) and (pointer:fine) {
	.dark .group:hover .dark\:group-hover\:bg-gray-600 { -
		-tw-bg-opacity: 1;
		background-color: rgb(75, 85, 99/ var( - -tw-bg-opacity))
	}
	.dark .group:hover .dark\:group-hover\:bg-blue-200 { -
		-tw-bg-opacity: 1;
		background-color: rgb(165, 209, 246/ var( - -tw-bg-opacity))
	}
	.dark .group:hover .dark\:group-hover\:text-blue-200 { -
		-tw-text-opacity: 1;
		color: rgb(165, 209, 246/ var( - -tw-text-opacity))
	}
	.dark .group:hover .dark\:group-hover\:text-gray-200 { -
		-tw-text-opacity: 1;
		color: rgb(229, 231, 235/ var( - -tw-text-opacity))
	}
}

@media ( min-width :640px) {
	.sm\:aspect-w-16 {
		position: relative;
		padding-bottom: calc(var(- -tw-aspect-h)/var(- -tw-aspect-w)* 100%); -
		-tw-aspect-w: 16
	}
	.sm\:aspect-w-16>* {
		position: absolute;
		height: 100%;
		width: 100%;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0
	}
	.sm\:aspect-h-7 { -
		-tw-aspect-h: 7
	}
	.sm\:absolute {
		position: absolute
	}
	.sm\:right-14 {
		right: 3.5rem
	}
	.sm\:top-\[-20rem\] {
		top: -20rem
	}
	.sm\:left-\[calc\(50\%-30rem\)\] {
		left: calc(50% - 30rem)
	}
	.sm\:left-\[calc\(50\%-5rem\)\] {
		left: calc(50% - 5rem)
	}
	.sm\:top-0 {
		top: 0
	}
	.sm\:right-16 {
		right: 4rem
	}
	.sm\:top-1 {
		top: .25rem
	}
	.sm\:top-0\.5 {
		top: .125rem
	}
	.sm\:col-span-2 {
		grid-column: span 2/span 2
	}
	.sm\:col-span-4 {
		grid-column: span 4/span 4
	}
	.sm\:col-start-1 {
		grid-column-start: 1
	}
	.sm\:my-32 {
		margin-top: 8rem;
		margin-bottom: 8rem
	}
	.sm\:my-16 {
		margin-top: 4rem;
		margin-bottom: 4rem
	}
	.sm\:my-8 {
		margin-top: 2rem;
		margin-bottom: 2rem
	}
	.sm\:mx-auto {
		margin-left: auto;
		margin-right: auto
	}
	.sm\:my-0 {
		margin-top: 0;
		margin-bottom: 0
	}
	.sm\:my-10 {
		margin-top: 2.5rem;
		margin-bottom: 2.5rem
	}
	.sm\:my-6 {
		margin-top: 1.5rem;
		margin-bottom: 1.5rem
	}
	.sm\:mx-6 {
		margin-left: 1.5rem;
		margin-right: 1.5rem
	}
	.sm\:my-14 {
		margin-top: 3.5rem;
		margin-bottom: 3.5rem
	}
	.sm\:mx-0 {
		margin-left: 0;
		margin-right: 0
	}
	.sm\:mt-20 {
		margin-top: 5rem
	}
	.sm\:mt-7 {
		margin-top: 1.75rem
	}
	.sm\:mb-14 {
		margin-bottom: 3.5rem
	}
	.sm\:mt-16 {
		margin-top: 4rem
	}
	.sm\:mt-12 {
		margin-top: 3rem
	}
	.sm\:mt-3 {
		margin-top: .75rem
	}
	.sm\:mt-10 {
		margin-top: 2.5rem
	}
	.sm\:-mt-14 {
		margin-top: -3.5rem
	}
	.sm\:ml-6 {
		margin-left: 1.5rem
	}
	.sm\:mt-4 {
		margin-top: 1rem
	}
	.sm\:ml-5 {
		margin-left: 1.25rem
	}
	.sm\:mt-9 {
		margin-top: 2.25rem
	}
	.sm\:mb-9 {
		margin-bottom: 2.25rem
	}
	.sm\:mb-16 {
		margin-bottom: 4rem
	}
	.sm\:ml-9 {
		margin-left: 2.25rem
	}
	.sm\:mb-8 {
		margin-bottom: 2rem
	}
	.sm\:mb-0 {
		margin-bottom: 0
	}
	.sm\:mb-20 {
		margin-bottom: 5rem
	}
	.sm\:mt-14 {
		margin-top: 3.5rem
	}
	.sm\:ml-4 {
		margin-left: 1rem
	}
	.sm\:mt-8 {
		margin-top: 2rem
	}
	.sm\:mt-2 {
		margin-top: .5rem
	}
	.sm\:ml-0 {
		margin-left: 0
	}
	.sm\:ml-14 {
		margin-left: 3.5rem
	}
	.sm\:mt-3\.5 {
		margin-top: .875rem
	}
	.sm\:mb-4 {
		margin-bottom: 1rem
	}
	.sm\:mt-6 {
		margin-top: 1.5rem
	}
	.sm\:ml-8 {
		margin-left: 2rem
	}
	.sm\:mt-5 {
		margin-top: 1.25rem
	}
	.sm\:mt-0 {
		margin-top: 0
	}
	.sm\:ml-3 {
		margin-left: .75rem
	}
	.sm\:-ml-40 {
		margin-left: -10rem
	}
	.sm\:mt-32 {
		margin-top: 8rem
	}
	.sm\:block {
		display: block
	}
	.sm\:inline-block {
		display: inline-block
	}
	.sm\:inline {
		display: inline
	}
	.sm\:flex {
		display: flex
	}
	.sm\:inline-flex {
		display: inline-flex
	}
	.sm\:hidden {
		display: none
	}
	.sm\:h-20 {
		height: 5rem
	}
	.sm\:h-\[86px\] {
		height: 86px
	}
	.sm\:h-\[30rem\] {
		height: 30rem
	}
	.sm\:h-\[20rem\] {
		height: 20rem
	}
	.sm\:h-10 {
		height: 2.5rem
	}
	.sm\:h-auto {
		height: auto
	}
	.sm\:h-\[88px\] {
		height: 88px
	}
	.sm\:h-\[90px\] {
		height: 90px
	}
	.sm\:h-\[92px\] {
		height: 92px
	}
	.sm\:h-3 {
		height: .75rem
	}
	.sm\:h-12 {
		height: 3rem
	}
	.sm\:h-6 {
		height: 1.5rem
	}
	.sm\:h-16 {
		height: 4rem
	}
	.sm\:h-4 {
		height: 1rem
	}
	.sm\:h-5 {
		height: 1.25rem
	}
	.sm\:h-7 {
		height: 1.75rem
	}
	.sm\:h-screen {
		height: 100vh
	}
	.sm\:h-72 {
		height: 18rem
	}
	.sm\:w-\[110px\] {
		width: 110px
	}
	.sm\:w-\[164px\] {
		width: 164px
	}
	.sm\:w-48 {
		width: 12rem
	}
	.sm\:w-full {
		width: 100%
	}
	.sm\:w-36 {
		width: 9rem
	}
	.sm\:w-\[640px\] {
		width: 640px
	}
	.sm\:w-20 {
		width: 5rem
	}
	.sm\:w-\[183px\] {
		width: 183px
	}
	.sm\:w-\[140px\] {
		width: 140px
	}
	.sm\:w-\[98px\] {
		width: 98px
	}
	.sm\:w-\[130px\] {
		width: 130px
	}
	.sm\:w-3 {
		width: .75rem
	}
	.sm\:w-12 {
		width: 3rem
	}
	.sm\:w-10 {
		width: 2.5rem
	}
	.sm\:w-52 {
		width: 13rem
	}
	.sm\:w-96 {
		width: 24rem
	}
	.sm\:w-6 {
		width: 1.5rem
	}
	.sm\:w-44 {
		width: 11rem
	}
	.sm\:w-16 {
		width: 4rem
	}
	.sm\:w-4 {
		width: 1rem
	}
	.sm\:w-72 {
		width: 18rem
	}
	.sm\:w-11 {
		width: 2.75rem
	}
	.sm\:w-5 {
		width: 1.25rem
	}
	.sm\:w-7 {
		width: 1.75rem
	}
	.sm\:w-auto {
		width: auto
	}
	.sm\:w-60 {
		width: 15rem
	}
	.sm\:max-w-md {
		max-width: 28rem
	}
	.sm\:max-w-lg {
		max-width: 32rem
	}
	.sm\:max-w-3xl {
		max-width: 48rem
	}
	.sm\:max-w-2xl {
		max-width: 42rem
	}
	.sm\:max-w-5xl {
		max-width: 64rem
	}
	.sm\:max-w-\[250px\] {
		max-width: 250px
	}
	.sm\:max-w-sm {
		max-width: 24rem
	}
	.sm\:max-w-xl {
		max-width: 36rem
	}
	.sm\:-translate-x-\[9rem\] { -
		-tw-translate-x: -9rem
	}
	.sm\:-translate-x-\[9rem\], .sm\:-translate-y-9 {
		transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
			rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
			skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
			scaleY(var(- -tw-scale-y))
	}
	.sm\:-translate-y-9 { -
		-tw-translate-y: -2.25rem
	}
	.sm\:translate-x-\[22px\] { -
		-tw-translate-x: 22px
	}
	.sm\:translate-x-0\.5, .sm\:translate-x-\[22px\] {
		transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
			rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
			skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
			scaleY(var(- -tw-scale-y))
	}
	.sm\:translate-x-0\.5 { -
		-tw-translate-x: 0.125rem
	}
	.sm\:translate-x-0 { -
		-tw-translate-x: 0px
	}
	.sm\:translate-x-0, .sm\:translate-y-0 {
		transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
			rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
			skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
			scaleY(var(- -tw-scale-y))
	}
	.sm\:translate-y-0 { -
		-tw-translate-y: 0px
	}
	.sm\:scale-95 { -
		-tw-scale-x: .95; -
		-tw-scale-y: .95
	}
	.sm\:scale-100, .sm\:scale-95 {
		transform: translate(var(- -tw-translate-x), var(- -tw-translate-y))
			rotate(var(- -tw-rotate)) skewX(var(- -tw-skew-x))
			skewY(var(- -tw-skew-y)) scaleX(var(- -tw-scale-x))
			scaleY(var(- -tw-scale-y))
	}
	.sm\:scale-100 { -
		-tw-scale-x: 1; -
		-tw-scale-y: 1
	}
	.sm\:select-auto {
		-webkit-user-select: auto;
		-moz-user-select: auto;
		user-select: auto
	}
	.sm\:grid-cols-2 {
		grid-template-columns: repeat(2, minmax(0, 1fr))
	}
	.sm\:grid-cols-3 {
		grid-template-columns: repeat(3, minmax(0, 1fr))
	}
	.sm\:flex-row {
		flex-direction: row
	}
	.sm\:flex-row-reverse {
		flex-direction: row-reverse
	}
	.sm\:items-start {
		align-items: flex-start
	}
	.sm\:items-center {
		align-items: center
	}
	.sm\:justify-end {
		justify-content: flex-end
	}
	.sm\:justify-center {
		justify-content: center
	}
	.sm\:gap-x-8 {
		-moz-column-gap: 2rem;
		column-gap: 2rem
	}
	.sm\:gap-x-5 {
		-moz-column-gap: 1.25rem;
		column-gap: 1.25rem
	}
	.sm\:gap-x-2 {
		-moz-column-gap: .5rem;
		column-gap: .5rem
	}
	.sm\:gap-x-36 {
		-moz-column-gap: 9rem;
		column-gap: 9rem
	}
	.sm\:gap-x-9 {
		-moz-column-gap: 2.25rem;
		column-gap: 2.25rem
	}
	.sm\:gap-x-1\.5 {
		-moz-column-gap: .375rem;
		column-gap: .375rem
	}
	.sm\:gap-x-1 {
		-moz-column-gap: .25rem;
		column-gap: .25rem
	}
	.sm\:gap-x-16 {
		-moz-column-gap: 4rem;
		column-gap: 4rem
	}
	.sm\:gap-x-12 {
		-moz-column-gap: 3rem;
		column-gap: 3rem
	}
	.sm\:gap-x-52 {
		-moz-column-gap: 13rem;
		column-gap: 13rem
	}
	.sm\:gap-x-4 {
		-moz-column-gap: 1rem;
		column-gap: 1rem
	}
	.sm\:gap-y-7 {
		row-gap: 1.75rem
	}
	.sm\:gap-x-10 {
		-moz-column-gap: 2.5rem;
		column-gap: 2.5rem
	}
	.sm\:gap-x-6 {
		-moz-column-gap: 1.5rem;
		column-gap: 1.5rem
	}
	.sm\:gap-y-0 {
		row-gap: 0
	}
	.sm\:space-y-5>:not([hidden]) ~:not([hidden]) { -
		-tw-space-y-reverse: 0;
		margin-top: calc(1.25rem * calc(1 - var(- -tw-space-y-reverse)));
		margin-bottom: calc(1.25rem * var(- -tw-space-y-reverse))
	}
	.sm\:space-x-8>:not([hidden]) ~:not([hidden]) { -
		-tw-space-x-reverse: 0;
		margin-right: calc(2rem * var(- -tw-space-x-reverse));
		margin-left: calc(2rem * calc(1 - var(- -tw-space-x-reverse)))
	}
	.sm\:space-x-7>:not([hidden]) ~:not([hidden]) { -
		-tw-space-x-reverse: 0;
		margin-right: calc(1.75rem * var(- -tw-space-x-reverse));
		margin-left: calc(1.75rem * calc(1 - var(- -tw-space-x-reverse)))
	}
	.sm\:space-x-6>:not([hidden]) ~:not([hidden]) { -
		-tw-space-x-reverse: 0;
		margin-right: calc(1.5rem * var(- -tw-space-x-reverse));
		margin-left: calc(1.5rem * calc(1 - var(- -tw-space-x-reverse)))
	}
	.sm\:space-y-14>:not([hidden]) ~:not([hidden]) { -
		-tw-space-y-reverse: 0;
		margin-top: calc(3.5rem * calc(1 - var(- -tw-space-y-reverse)));
		margin-bottom: calc(3.5rem * var(- -tw-space-y-reverse))
	}
	.sm\:space-x-10>:not([hidden]) ~:not([hidden]) { -
		-tw-space-x-reverse: 0;
		margin-right: calc(2.5rem * var(- -tw-space-x-reverse));
		margin-left: calc(2.5rem * calc(1 - var(- -tw-space-x-reverse)))
	}
	.sm\:space-y-0>:not([hidden]) ~:not([hidden]) { -
		-tw-space-y-reverse: 0;
		margin-top: calc(0px * calc(1 - var(- -tw-space-y-reverse)));
		margin-bottom: calc(0px * var(- -tw-space-y-reverse))
	}
	.sm\:space-y-3>:not([hidden]) ~:not([hidden]) { -
		-tw-space-y-reverse: 0;
		margin-top: calc(.75rem * calc(1 - var(- -tw-space-y-reverse)));
		margin-bottom: calc(.75rem * var(- -tw-space-y-reverse))
	}
	.sm\:space-x-4>:not([hidden]) ~:not([hidden]) { -
		-tw-space-x-reverse: 0;
		margin-right: calc(1rem * var(- -tw-space-x-reverse));
		margin-left: calc(1rem * calc(1 - var(- -tw-space-x-reverse)))
	}
	.sm\:space-y-7>:not([hidden]) ~:not([hidden]) { -
		-tw-space-y-reverse: 0;
		margin-top: calc(1.75rem * calc(1 - var(- -tw-space-y-reverse)));
		margin-bottom: calc(1.75rem * var(- -tw-space-y-reverse))
	}
	.sm\:space-x-2>:not([hidden]) ~:not([hidden]) { -
		-tw-space-x-reverse: 0;
		margin-right: calc(.5rem * var(- -tw-space-x-reverse));
		margin-left: calc(.5rem * calc(1 - var(- -tw-space-x-reverse)))
	}
	.sm\:divide-x>:not([hidden]) ~:not([hidden]) { -
		-tw-divide-x-reverse: 0;
		border-right-width: calc(1px * var(- -tw-divide-x-reverse));
		border-left-width: calc(1px * calc(1 - var(- -tw-divide-x-reverse)))
	}
	.sm\:divide-y-0>:not([hidden]) ~:not([hidden]) { -
		-tw-divide-y-reverse: 0;
		border-top-width: calc(0px * calc(1 - var(- -tw-divide-y-reverse)));
		border-bottom-width: calc(0px * var(- -tw-divide-y-reverse))
	}
	.sm\:overflow-hidden {
		overflow: hidden
	}
	.sm\:rounded-sm {
		border-radius: .125rem
	}
	.sm\:rounded-lg {
		border-radius: .5rem
	}
	.sm\:rounded-t-lg {
		border-top-left-radius: .5rem;
		border-top-right-radius: .5rem
	}
	.sm\:border-0 {
		border-width: 0
	}
	.sm\:border-t-0 {
		border-top-width: 0
	}
	.sm\:p-6 {
		padding: 1.5rem
	}
	.sm\:p-8 {
		padding: 2rem
	}
	.sm\:p-0 {
		padding: 0
	}
	.sm\:px-0 {
		padding-left: 0;
		padding-right: 0
	}
	.sm\:py-4 {
		padding-top: 1rem;
		padding-bottom: 1rem
	}
	.sm\:px-8 {
		padding-left: 2rem;
		padding-right: 2rem
	}
	.sm\:px-6 {
		padding-left: 1.5rem;
		padding-right: 1.5rem
	}
	.sm\:py-32 {
		padding-top: 8rem;
		padding-bottom: 8rem
	}
	.sm\:py-24 {
		padding-top: 6rem;
		padding-bottom: 6rem
	}
	.sm\:px-10 {
		padding-left: 2.5rem;
		padding-right: 2.5rem
	}
	.sm\:py-5 {
		padding-top: 1.25rem;
		padding-bottom: 1.25rem
	}
	.sm\:py-16 {
		padding-top: 4rem;
		padding-bottom: 4rem
	}
	.sm\:px-3 {
		padding-left: .75rem;
		padding-right: .75rem
	}
	.sm\:px-2\.5 {
		padding-left: .625rem;
		padding-right: .625rem
	}
	.sm\:px-2 {
		padding-left: .5rem;
		padding-right: .5rem
	}
	.sm\:py-10 {
		padding-top: 2.5rem;
		padding-bottom: 2.5rem
	}
	.sm\:py-8 {
		padding-top: 2rem;
		padding-bottom: 2rem
	}
	.sm\:px-4 {
		padding-left: 1rem;
		padding-right: 1rem
	}
	.sm\:pb-8 {
		padding-bottom: 2rem
	}
	.sm\:pl-8 {
		padding-left: 2rem
	}
	.sm\:pr-10 {
		padding-right: 2.5rem
	}
	.sm\:pl-1 {
		padding-left: .25rem
	}
	.sm\:pb-24 {
		padding-bottom: 6rem
	}
	.sm\:pb-0 {
		padding-bottom: 0
	}
	.sm\:pr-4 {
		padding-right: 1rem
	}
	.sm\:pl-0 {
		padding-left: 0
	}
	.sm\:pl-7 {
		padding-left: 1.75rem
	}
	.sm\:pl-3 {
		padding-left: .75rem
	}
	.sm\:pb-4 {
		padding-bottom: 1rem
	}
	.sm\:text-left {
		text-align: left
	}
	.sm\:text-center {
		text-align: center
	}
	.sm\:align-middle {
		vertical-align: middle
	}
	.sm\:text-5xl {
		font-size: 3rem;
		line-height: 1
	}
	.sm\:text-lg {
		font-size: 1.125rem;
		line-height: 1.75rem
	}
	.sm\:text-3xl {
		font-size: 1.875rem;
		line-height: 2.25rem
	}
	.sm\:text-base {
		font-size: 1rem;
		line-height: 1.5rem
	}
	.sm\:text-xl {
		font-size: 1.25rem;
		line-height: 1.75rem
	}
	.sm\:text-sm {
		font-size: .875rem;
		line-height: 1.25rem
	}
	.sm\:text-4xl {
		font-size: 2.25rem;
		line-height: 2.5rem
	}
	.sm\:text-6xl {
		font-size: 3.75rem;
		line-height: 1
	}
	.sm\:text-2xl {
		font-size: 1.5rem;
		line-height: 2rem
	}
	.sm\:text-3\/2xs {
		font-size: .725rem
	}
	.sm\:text-xs {
		font-size: .75rem;
		line-height: 1rem
	}
	.sm\:leading-none {
		line-height: 1
	}
	.sm\:leading-10 {
		line-height: 2.5rem
	}
	.sm\:leading-5 {
		line-height: 1.25rem
	}
	.sm\:leading-normal {
		line-height: 1.5
	}
}

@media ( min-width :768px) {
	.md\:absolute {
		position: absolute
	}
	.md\:inset-y-0 {
		top: 0;
		bottom: 0
	}
	.md\:left-0 {
		left: 0
	}
	.md\:right-0 {
		right: 0
	}
	.md\:-mt-px {
		margin-top: -1px
	}
	.md\:mt-4 {
		margin-top: 1rem
	}
	.md\:mt-5 {
		margin-top: 1.25rem
	}
	.md\:block {
		display: block
	}
	.md\:flex {
		display: flex
	}
	.md\:hidden {
		display: none
	}
	.md\:h-96 {
		height: 24rem
	}
	.md\:w-auto {
		width: auto
	}
	.md\:max-w-3xl {
		max-width: 48rem
	}
	.md\:flex-row {
		flex-direction: row
	}
	.md\:items-center {
		align-items: center
	}
	.md\:justify-end {
		justify-content: flex-end
	}
	.md\:justify-center {
		justify-content: center
	}
	.md\:space-x-10>:not([hidden]) ~:not([hidden]) { -
		-tw-space-x-reverse: 0;
		margin-right: calc(2.5rem * var(- -tw-space-x-reverse));
		margin-left: calc(2.5rem * calc(1 - var(- -tw-space-x-reverse)))
	}
	.md\:px-8 {
		padding-left: 2rem;
		padding-right: 2rem
	}
	.md\:text-3xl {
		font-size: 1.875rem;
		line-height: 2.25rem
	}
	.md\:text-5xl {
		font-size: 3rem;
		line-height: 1
	}
}

@media ( min-width :1024px) {
	.lg\:aspect-none {
		position: static;
		padding-bottom: 0
	}
	.lg\:aspect-none>* {
		position: static;
		height: auto;
		width: auto;
		top: auto;
		right: auto;
		bottom: auto;
		left: auto
	}
	.lg\:static {
		position: static
	}
	.lg\:absolute {
		position: absolute
	}
	.lg\:relative {
		position: relative
	}
	.lg\:inset-0 {
		right: 0;
		left: 0
	}
	.lg\:inset-0, .lg\:inset-y-0 {
		top: 0;
		bottom: 0
	}
	.lg\:right-0 {
		right: 0
	}
	.lg\:top-2\.5 {
		top: .625rem
	}
	.lg\:top-2 {
		top: .5rem
	}
	.lg\:z-10 {
		z-index: 10
	}
	.lg\:col-span-3 {
		grid-column: span 3/span 3
	}
	.lg\:col-span-9 {
		grid-column: span 9/span 9
	}
	.lg\:col-span-2 {
		grid-column: span 2/span 2
	}
	.lg\:m-0 {
		margin: 0
	}
	.lg\:my-0 {
		margin-top: 0;
		margin-bottom: 0
	}
	.lg\:my-10 {
		margin-top: 2.5rem;
		margin-bottom: 2.5rem
	}
	.lg\:mx-auto {
		margin-left: auto;
		margin-right: auto
	}
	.lg\:mx-0 {
		margin-left: 0;
		margin-right: 0
	}
	.lg\:-my-8 {
		margin-top: -2rem;
		margin-bottom: -2rem
	}
	.lg\:my-2 {
		margin-top: .5rem;
		margin-bottom: .5rem
	}
	.lg\:mx-4 {
		margin-left: 1rem;
		margin-right: 1rem
	}
	.lg\:mx-16 {
		margin-left: 4rem;
		margin-right: 4rem
	}
	.lg\:mt-\[18px\] {
		margin-top: 18px
	}
	.lg\:mt-10 {
		margin-top: 2.5rem
	}
	.lg\:ml-52 {
		margin-left: 13rem
	}
	.lg\:mt-0 {
		margin-top: 0
	}
	.lg\:-mr-5 {
		margin-right: -1.25rem
	}
	.lg\:-mt-10 {
		margin-top: -2.5rem
	}
	.lg\:ml-\[105px\] {
		margin-left: 105px
	}
	.lg\:ml-10 {
		margin-left: 2.5rem
	}
	.lg\:block {
		display: block
	}
	.lg\:inline {
		display: inline
	}
	.lg\:flex {
		display: flex
	}
	.lg\:grid {
		display: grid
	}
	.lg\:hidden {
		display: none
	}
	.lg\:h-12 {
		height: 3rem
	}
	.lg\:h-full {
		height: 100%
	}
	.lg\:h-2 {
		height: .5rem
	}
	.lg\:max-h-full {
		max-height: 100%
	}
	.lg\:w-12 {
		width: 3rem
	}
	.lg\:w-1\/2 {
		width: 50%
	}
	.lg\:w-\[960px\] {
		width: 960px
	}
	.lg\:w-full {
		width: 100%
	}
	.lg\:w-\[235px\] {
		width: 235px
	}
	.lg\:w-auto {
		width: auto
	}
	.lg\:w-2\/3 {
		width: 66.666667%
	}
	.lg\:w-1\/3 {
		width: 33.333333%
	}
	.lg\:max-w-7xl {
		max-width: 80rem
	}
	.lg\:max-w-none {
		max-width: none
	}
	.lg\:max-w-5xl {
		max-width: 64rem
	}
	.lg\:shrink-0 {
		flex-shrink: 0
	}
	.lg\:grow-0 {
		flex-grow: 0
	}
	.lg\:grid-cols-12 {
		grid-template-columns: repeat(12, minmax(0, 1fr))
	}
	.lg\:grid-cols-2 {
		grid-template-columns: repeat(2, minmax(0, 1fr))
	}
	.lg\:grid-cols-3 {
		grid-template-columns: repeat(3, minmax(0, 1fr))
	}
	.lg\:flex-row {
		flex-direction: row
	}
	.lg\:items-start {
		align-items: flex-start
	}
	.lg\:items-center {
		align-items: center
	}
	.lg\:gap-8 {
		gap: 2rem
	}
	.lg\:gap-x-8 {
		-moz-column-gap: 2rem;
		column-gap: 2rem
	}
	.lg\:space-x-10>:not([hidden]) ~:not([hidden]) { -
		-tw-space-x-reverse: 0;
		margin-right: calc(2.5rem * var(- -tw-space-x-reverse));
		margin-left: calc(2.5rem * calc(1 - var(- -tw-space-x-reverse)))
	}
	.lg\:space-x-8>:not([hidden]) ~:not([hidden]) { -
		-tw-space-x-reverse: 0;
		margin-right: calc(2rem * var(- -tw-space-x-reverse));
		margin-left: calc(2rem * calc(1 - var(- -tw-space-x-reverse)))
	}
	.lg\:space-x-6>:not([hidden]) ~:not([hidden]) { -
		-tw-space-x-reverse: 0;
		margin-right: calc(1.5rem * var(- -tw-space-x-reverse));
		margin-left: calc(1.5rem * calc(1 - var(- -tw-space-x-reverse)))
	}
	.lg\:divide-x>:not([hidden]) ~:not([hidden]) { -
		-tw-divide-x-reverse: 0;
		border-right-width: calc(1px * var(- -tw-divide-x-reverse));
		border-left-width: calc(1px * calc(1 - var(- -tw-divide-x-reverse)))
	}
	.lg\:divide-y-0>:not([hidden]) ~:not([hidden]) { -
		-tw-divide-y-reverse: 0;
		border-top-width: calc(0px * calc(1 - var(- -tw-divide-y-reverse)));
		border-bottom-width: calc(0px * var(- -tw-divide-y-reverse))
	}
	.lg\:overflow-visible {
		overflow: visible
	}
	.lg\:p-0 {
		padding: 0
	}
	.lg\:px-0 {
		padding-left: 0;
		padding-right: 0
	}
	.lg\:px-8 {
		padding-left: 2rem;
		padding-right: 2rem
	}
	.lg\:py-32 {
		padding-top: 8rem;
		padding-bottom: 8rem
	}
	.lg\:py-56 {
		padding-top: 14rem;
		padding-bottom: 14rem
	}
	.lg\:py-20 {
		padding-top: 5rem;
		padding-bottom: 5rem
	}
	.lg\:py-2 {
		padding-top: .5rem;
		padding-bottom: .5rem
	}
	.lg\:pr-16 {
		padding-right: 4rem
	}
	.lg\:pl-20 {
		padding-left: 5rem
	}
	.lg\:pr-8 {
		padding-right: 2rem
	}
	.lg\:pb-0 {
		padding-bottom: 0
	}
	.lg\:pl-8 {
		padding-left: 2rem
	}
	.lg\:pr-72 {
		padding-right: 18rem
	}
	.lg\:text-left {
		text-align: left
	}
	.lg\:text-6xl {
		font-size: 3.75rem;
		line-height: 1
	}
	.lg\:text-4xl {
		font-size: 2.25rem;
		line-height: 2.5rem
	}
	.lg\:text-3xl {
		font-size: 1.875rem;
		line-height: 2.25rem
	}
	.lg\:text-2xl {
		font-size: 1.5rem;
		line-height: 2rem
	}
	.lg\:text-lg {
		font-size: 1.125rem;
		line-height: 1.75rem
	}
}

@media ( min-width :1280px) {
	.xl\:absolute {
		position: absolute
	}
	.xl\:relative {
		position: relative
	}
	.xl\:inset-0 {
		right: 0;
		left: 0
	}
	.xl\:inset-0, .xl\:inset-y-0 {
		top: 0;
		bottom: 0
	}
	.xl\:top-0 {
		top: 0
	}
	.xl\:left-0 {
		left: 0
	}
	.xl\:col-start-2 {
		grid-column-start: 2
	}
	.xl\:-mt-20 {
		margin-top: -5rem
	}
	.xl\:-mr-20 {
		margin-right: -5rem
	}
	.xl\:inline {
		display: inline
	}
	.xl\:grid {
		display: grid
	}
	.xl\:h-full {
		height: 100%
	}
	.xl\:w-32 {
		width: 8rem
	}
	.xl\:grid-flow-col-dense {
		grid-auto-flow: column dense
	}
	.xl\:grid-cols-2 {
		grid-template-columns: repeat(2, minmax(0, 1fr))
	}
	.xl\:gap-x-14 {
		-moz-column-gap: 3.5rem;
		column-gap: 3.5rem
	}
	.xl\:bg-gradient-to-r {
		background-image: linear-gradient(to right, var(- -tw-gradient-stops))
	}
	.xl\:pr-12 {
		padding-right: 3rem
	}
	.xl\:pl-12 {
		padding-left: 3rem
	}
	.xl\:pr-16 {
		padding-right: 4rem
	}
	.xl\:text-6xl {
		font-size: 3.75rem;
		line-height: 1
	}
}
</style>
</head>
<body
	class="flex h-full select-none flex-col font-sans text-gray-900 antialiased dark:bg-gray-800 dark:text-gray-100 sm:select-auto">
	<div id="__next" data-reactroot="">
		<div class="mt-20 flex justify-center px-6 pb-16 sm:mt-32 sm:px-0">
			<div class="w-full max-w-md">
				<!-- 메인 로고 -->
				<div
					style="width: 25%; display: block; margin: auto; margin-bottom: 40px;">
					<a class="navbar-brand" href="main.do"><img class="acense"
						src="assets/imgs/ace.png" alt="메인로고"></a>
				</div>
				<h1 class="mt-6 text-center text-2xl font-bold sm:text-3xl">비밀번호
					찾기</h1>

				<p class="mt-2 text-center text-sm text-gray-600 dark:text-gray-400"
					style="margin-top: 20px;">
					회원가입시 입력하신 아이디와 이메일 주소를 입력하시면,<br> 해당 이메일로 인증번호를 보내드립니다.
				</p>
				<div class="mx-4 sm:mx-0">

					<div class="relative my-7">
						<div class="absolute inset-0 flex items-center">
							<div
								class="w-full border-t border-gray-500/30 dark:border-gray-500/70"></div>
						</div>
						<div class="relative flex justify-center text-sm">
							<span class="bg-white px-2 text-gray-500 dark:bg-gray-800">ACENSE</span>
						</div>
					</div>
					<form class="mt-8 space-y-6" action="searchPw.do" method="POST">
						<div>
							<div class="space-y-6 rounded-md shadow-sm">
								<div>
									<label for="user-id"
										class="block text-sm font-medium text-gray-700 dark:text-gray-300">아이디</label>
									<div class="mt-1">
										<input id="user-id" type="text" required
											class="block w-full appearance-none rounded-md border border-gray-500/30 px-3 py-2 text-sm placeholder-gray-500/80 shadow-sm focus:border-gray-500 focus:outline-none focus:ring-0 dark:bg-gray-500/20 sm:text-base"
											placeholder="4~15자 이내로 입력해주세요" name="id"
											style="width: 80%; display: inline-block;">
										<div
											style="width: 14%; display: inline-block; padding-top: 7px; padding-bottom: 7px; border-radius: 7px; margin-left: 9px;">
											<button disabled="disabled" type="button" id="idCheck">확인</button>
										</div>
									</div>

								</div>

								<div>
									<label for="email-address"
										class="block text-sm font-medium text-gray-700 dark:text-gray-300">이메일</label>
									<div class="mt-1">
										<input id="email-address" type="email" required
											onchange="valiFormEmail(this)"
											class="block w-full appearance-none rounded-md border border-gray-500/30 px-3 py-2 text-sm placeholder-gray-500/80 shadow-sm focus:border-gray-500 focus:outline-none focus:ring-0 dark:bg-gray-500/20 sm:text-base"
											placeholder="acensecommu@sixsense.com" name="mEmail"
											style="width: 80%; display: inline-block;">
										<div
											style="width: auto%; display: inline-block; padding-top: 7px; padding-bottom: 7px; border-radius: 7px; margin-left: 9px;">
											<button type="button" class="btn" disabled="disabled">발송</button>
										</div>
									</div>
									<div class="mt-1 jm" style="display: none;">
										<input id="emailChk" type="text" required
											onchange="valiFormNum(this)"
											class="block w-full appearance-none rounded-md border border-gray-500/30 px-3 py-2 text-sm placeholder-gray-500/80 shadow-sm focus:border-gray-500 focus:outline-none focus:ring-0 dark:bg-gray-500/20 sm:text-base"
											placeholder="인증번호 확인" name="mEmailChk" maxlength="6"
											title="인증번호 6자리를 입력해주세요."
											style="width: 80%; display: inline-block;">
										<div
											style="width: 14%; display: inline-block; padding-top: 7px; padding-bottom: 7px; border-radius: 7px; margin-left: 9px;">
											<button type="button" class="chkBtn" disabled="disabled">확인</button>
										</div>
									</div>
								</div>


							</div>
						</div>

						<div
							style="border: 1px solid black; border-radius: 5px; margin-top: 40px; margin-bottom: 40px;">
							<button type="submit" id="searchPwSub" disabled="disabled"
								class="flex w-full justify-center rounded-md border border-transparent bg-blue-500 px-4 py-2 text-sm font-medium text-white hover:bg-blue-400 focus:outline-none disabled:bg-blue-500 disabled:opacity-40">비밀번호
								찾기</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<ins class="adsbygoogle adsbygoogle-noablate"
		data-adsbygoogle-status="done" style="display: none !important;"
		data-ad-status="unfilled">
		<div id="aswift_0_host"
			style="border: none; height: 0px; width: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; background-color: transparent; display: inline-block;"
			tabindex="0" title="Advertisement" aria-label="Advertisement">
			<iframe id="aswift_0" name="aswift_0"
				style="left: 0; position: absolute; top: 0; border: 0; width: undefinedpx; height: undefinedpx;"
				sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation"
				frameborder="0" marginwidth="0" marginheight="0" vspace="0"
				hspace="0" allowtransparency="true" scrolling="no"
				src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-8103607814406874&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;lmt=1676747719&amp;plat=3%3A65536%2C4%3A65536%2C9%3A32768%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1048576%2C32%3A32%2C41%3A32%2C42%3A32&amp;format=0x0&amp;url=https%3A%2F%2Fokky.kr%2F&amp;ea=0&amp;pra=5&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTA5LjAuNTQxNC4xMjIiLFtdLGZhbHNlLG51bGwsIjY0IixbWyJOb3RfQSBCcmFuZCIsIjk5LjAuMC4wIl0sWyJHb29nbGUgQ2hyb21lIiwiMTA5LjAuNTQxNC4xMjIiXSxbIkNocm9taXVtIiwiMTA5LjAuNTQxNC4xMjIiXV0sZmFsc2Vd&amp;dt=1676747718068&amp;bpp=223&amp;bdt=331&amp;idt=1285&amp;shv=r20230215&amp;mjsv=m202302130101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Df8e97a88071350e2-227b2365fbd9009c%3AT%3D1676739513%3ART%3D1676739513%3AS%3DALNI_Ma3fuipHtEZH0ntDkfw_zxKKY-Wdw&amp;gpic=UID%3D00000bc5fc377125%3AT%3D1676739513%3ART%3D1676739513%3AS%3DALNI_MbFrMtUSQyryRkOTOwXTFe1Hd-j1A&amp;nras=1&amp;correlator=2086685573874&amp;frm=20&amp;pv=2&amp;ga_vid=46208694.1676739513&amp;ga_sid=1676747720&amp;ga_hid=686236853&amp;ga_fc=1&amp;u_tz=540&amp;u_his=3&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_sd=1&amp;dmc=8&amp;adx=-12245933&amp;ady=-12245933&amp;biw=702&amp;bih=746&amp;scr_x=0&amp;scr_y=0&amp;eid=44759876%2C44759927%2C44759837%2C31071870&amp;oid=2&amp;pvsid=3173972906615691&amp;tmod=1381573698&amp;uas=0&amp;nvt=3&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1920%2C0%2C0%2C0%2C719%2C746&amp;vis=2&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=32768&amp;bc=31&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;dtd=1448"
				data-google-container-id="a!1" data-load-complete="true"></iframe>
		</div>
	</ins>
	<script src="https://www.googletagmanager.com/gtag/js?id=G-YB6VRG1VMM"
		data-nscript="afterInteractive"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script data-nscript="afterInteractive">
		/* 아이디 정규식 스크립트 */
		const id = document.getElementById('user-id');
		id
				.addEventListener(
						'input',
						function() {
							let regExp = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/ ㄱ-ㅎㅏ-ㅣ가-힣]/gim;
							id.value = id.value.replace(regExp, '');
							$('#idCheck').attr("disabled", false); // 인증버튼 눌리게 활성화
							console.log('eventlistener실행.');
							if (id.value == 0) {
								$('#idCheck').attr("disabled", true); // 쓰고 지웠을때 공백일때 확인버튼 다시 비활성화
							}

						})

		/* 아이디 중복 체크 */
		let idFlag = false;
		let flag = false;
		$('#idCheck').click(function() {
			var id = $('#user-id').val();
			$.ajax({
				url : 'idCheck.do',
				type : 'post',
				data : {
					id : id
				},
				dataType : 'json',
				success : function(result) {
					if (result == 1) {
						alert("존재하지 않는 아이디입니다.");
						idFlag = false;
					} else {
						alert("이메일 인증을 진행해 주세요.");
						idFlag = true;
					}
				},
				error : function() {
					alert("서버요청실패");
				}
			})
		})

		/* 이메일값 가져와서 정규식 검사 */
		function valiFormEmail(obj) {
			if (validEmail(obj) == false) {
				alert("올바른 이메일 주소를 입력하세요.");
				obj.value = '';
				$('.btn').attr("disabled", true); // 인증버튼 안눌리게 비활성화
				return false;
			}
			console.log(idFlag);
			if (idFlag) {
				$('.btn').attr("disabled", false);
			}
		}

		function validEmail(obj) {
			var pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			return (obj.value.match(pattern) != null);
		}

		let checkNum = 0;
		/* 인증이메일 발송여부 확인메세지 띄우기 */
		$('.btn').click(function() {
			let flag = false;
			var email = $('#email-address').val();
			var id = $('#user-id').val();
			$.ajax({
				url : 'searchId.do',
				type : 'post',
				data : {
					'mEmail' : email,
					'id' : id
				},
				dataType : 'json',
				success : function(authKey) {
					if (authKey == 0) {
						alert("가입된 정보가 없습니다.  이메일을 다시 확인해주세요.");
					} else {
						alert("인증메일 발송 성공");
						checkNum = authKey;
						$(".jm").show(); // 인증버튼 성공시에 확인창+확인 부분 나타나게하기
					}
				},
				error : function() {
					alert("서버요청실패");
				}
			})
		})

		/* 인증번호 정규식 검사 */
		function valiFormNum(obj) {
			if (validNum(obj) == false) {
				alert("올바른 인증번호를 입력하세요.");
				obj.value = '';
				$('.chkBtn').attr("disabled", true); // 인증버튼 안눌리게 비활성화
				return false;
			}
			$('.chkBtn').attr("disabled", false); // 인증버튼 눌리게 활성화

		}

		function validNum(obj) {
			var pattern = /^[0-9]{6}$/;
			return (obj.value.match(pattern) != null);
		}

		/* 인증확인 성공유무 */
		$('.chkBtn').click(function() {
			var confirm = $('#emailChk').val();
			$.ajax({
				url : 'emailNumConfirm.do',
				type : 'post',
				data : {
					mEmailChk : confirm, //내가쓴 인증번호 값
					mAuthkey : checkNum
				//내가쓴 인증번호 값
				},
				dataType : 'json',
				success : function(result) {
					if (result == 1) {
						alert("인증번호 일치");
						$('#searchPwSub').attr("disabled", false);
					} else {
						alert("인증번호 불일치 : 인증번호를 다시 확인해주세요.");
					}
				},
				error : function() {
					alert("서버요청실패");
				}
			})
		})
	</script>
	<next-route-announcer>
	<p aria-live="assertive" id="__next-route-announcer__" role="alert"
		style="border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; width: 1px; white-space: nowrap; overflow-wrap: normal;">OKKY
		- All That Developer</p>
	</next-route-announcer>
	<iframe src="https://www.google.com/recaptcha/api2/aframe" width="0"
		height="0" style="display: none;"></iframe>


</body>
<iframe id="google_esf" name="google_esf"
	src="https://googleads.g.doubleclick.net/pagead/html/r20230215/r20190131/zrt_lookup.html"
	style="display: none;"></iframe>
</html>