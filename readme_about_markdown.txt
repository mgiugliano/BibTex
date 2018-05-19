See also: https://github.com/dsanson/Pandoc.tmbundle/blob/master/Support/doc/cheatsheet.markdown

Markdown is a lightweight markup language with plain text formatting syntax. 
It is designed so that it can be converted to HTML, LaTeX, PDF, Word, and many 
other formats using various tools such as Pandoc (see compileAll.sh).

Headers:
# This is an <h1> tag
## This is an <h2> tag 
###### This is an <h6> tag

Lists:
* Item 1
* Item 2
		* Item indented
		* Another item

Ordered Lists:
1. Item 1 
2. Item 2 
3. Item 3
		* Item 3a 
		* Item 3b

Emphasis:
*This text will be italic* 
_This will also be italic_
**This text will be bold** 
__This will also be bold__
*You **can** combine them*

Subscript and Superscript: 
The chemical formula for water is H~2~O
The exponential function is e^x^

LaTeX equations:
Simply incorporated by $e^x$ or by $$\int f(x) dx = 0$$

Insert Images:
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)

Citations (from a BibTex bibliography file):
[@Linaro:2011;@Pulizzi:2016]

Footnotes:
This is normal text[^1].
[^1]:This is the text of the footnote.

Insert hyperlinks:
http://github.com - automatic! 
[GitHub](http://github.com)

Note that Markdown provides backslash escapes for the following characters:
\ backslash
` backtick
* asterisk
_ underscore
{} curly braces
[] square brackets
`
() parentheses
# hashmark
+ plus sign
- minus sign (hyphen) . dot
! exclamation mark

