# Latex Template Documentation

1. [Setup LaTeX in Atom](#setup-latex-in-atom)
2. [LaTeX Introduction](#latex-introduction)
    - [Hierarchy](#hierarchy)
    - [Figure](#figure)
    - [Enumeration](#enumeration)
    - [Table](#table)
    - [Code](#code)
    - [Quotation marks](#quotation-marks)
3. [Quote](#quote)
    - [Create a bibliography](#create-a-bibliography)
    - [Cite media](#cite-media)
    - [Change the citation style](#change-the-citation-style)

## Setup LaTeX in Atom

### Required settings:

1. Download and install [Perl](https://www.perl.org/get.html)
2. Download and install [MiKTeX](https://miktex.org/download)
3. Download and install [Atom](https://atom.io/)
4. Open Atom
5. Press 'ctrl + ,' to open settings
6. Open the install tab
7. Install the following packages by writing the names in the search bar

    required:

    - latex - (required, ability to compile latex)

    ---

    optional (but highly recommended):

    - language-latex (syntax highlighting, makes the tex file much easier to read)
    - latex-autocomplete (helps you to create figures, items, etc.)
    - autocomplete-latex (helps you to create figures, items, etc.)
    - pdf-view - (shows the compiled pdf file in the editor)

### Optional settings:

#### 'latex' package settings:
![latex-image](https://user-images.githubusercontent.com/47224024/98450442-1db42900-213d-11eb-92b1-827688ae54e3.png)

- Ouput Directory: saves the meta files in the defined directory, this helps to keep your root directory clean
- Move Result to Source Directory: saves the pdf file in the same folder as the producing tex document
- Build on Save: starts a build when the file is safed ('ctrl + s' or by clicking 'File>Save..')
- Open Result after Successful Build: opens the pdf in the 'pdf-view' after the build finished

**To edit the settings:**

1. Open packages tab in the settings window
2. Search for the package latex and open the package settings

#### 'spell-check' package settings:
![spell-check-image](https://user-images.githubusercontent.com/47224024/98450472-3cb2bb00-213d-11eb-95d6-fa9f94c29a64.png)

- Grammars: the file types that will be spell checked
- Use Locales: if locals should be used for the spell check
- Locales: what locals should be used for the spell check (example: en-US, de-DE)

**To edit the settings:**

1. Open packages tab in the settings window
2. Search for the package 'spell-check' and open the package settings
3. Add 'text.tex.latex' and the end of the field 'Grammars'
4. Enable 'Use Locals'
5. Add desired language to 'Locales' (for german add: 'de-DE')
> To add support for more languages in 'Locales', check [here](https://atom.io/packages/spell-check) in the 'Changing the dictionary' section

## LaTeX Introduction

### Hierarchy
---
**Input:**

```latex
\chapter{chapter}
\section{section}
\subsection{sub section}
```
**Output:**

![hierarchy-image](https://user-images.githubusercontent.com/47224024/98449617-37517280-2135-11eb-86d5-0534ca5cbf4b.png)

### Figure
---
**Input:**
```latex
\begin{figure}[H]                               %H to display it exactly where its in the code
    \center                                     %centers image
    \includegraphics[scale = 0.3]{Logo}         %image in 'pictures' directory, scaled down to 30%
    \caption{caption}                           %will be the caption of the image
    \label{fig:Logo}                            %used to reference figure in text
\end{figure}
\noindent                                       %to remove indentation after figure
```
**Output:**

![figure-image](https://user-images.githubusercontent.com/47224024/98449863-dbd4b400-2137-11eb-8dfb-97e32a30c0d1.png)

### Enumeration
---
#### Ordered:
**Input:**
```latex
\begin{enumerate}
  \item first element
  \item second element
\end{enumerate}
```
**Output:**

![orderd-enum-image](https://user-images.githubusercontent.com/47224024/98450058-9a450880-2139-11eb-9b6e-104dc4e612b9.png)

#### Unorderd:
**Input:**
```latex
\begin{itemize}
    \item first element
    \item second element
\end{itemize}
```
**Output:**

![unorderd-enum-image](https://user-images.githubusercontent.com/47224024/98450026-54884000-2139-11eb-979b-8869f9f16854.png)

### Table
---
**Input:**
```latex
\begin{table}[H]
  \center                                       %to center the table
  \begin{tabular}{l|l|l}                        %l for the column, | for divider
  A & B & C                                     %& for the column divider
  \end{tabular}
  \caption{caption}                             %will be the caption of the image
  \label{fig:Logo}                              %used to reference figure in text
\end{table}
\noindent                                       %to remove indentation after table
```
**Output:**

![table-image](https://user-images.githubusercontent.com/47224024/98450294-f7da5480-213b-11eb-9452-9adcc3288edd.png)

> :exclamation:	To add the caption above just move `caption` and `label` above the 'tabular' enviroment

> :question: For easy table creation look [here](https://www.tablesgenerator.com/#)

### Code
---
**Input:**
WIP
**Output:**
WIP

### Quotation marks
---
**Input:**
```latex
%english
`single quotation marks'
``double quotation marks''

%german
\glq{}einfache Anführungszeichen\grq{}
\glqq{}doppelte Anführungszeichen\grqq{}
```

**Output:**

![image](https://user-images.githubusercontent.com/47224024/98483048-ba41fe00-2205-11eb-99f3-e3c31592eaf8.png)

![image](https://user-images.githubusercontent.com/47224024/98483075-ed848d00-2205-11eb-9a6f-c743b1276121.png)

## Quote
### Create a bibliography
To quote in LaTeX you have to create a bibliography file. In the template it can be found in the folder 'Directorys' and here you can add literature. An entry needs to have the following format:
```latex
@book{key,
 author = {author},
 year = {year},
 title = {title},
 .
 .
 .
}
```
To make this process easier, you can use other tools like 'Citavi' to create this file for you, and keep your bibliography up to date.

**WIP - How to use Citavi with LaTeX**
### Cite media

**Input:**
```latex
In this part of the text I cite a test entry.\cite{test}

% bibliography entry:
% @book{test,                                   %this is the key used in \cite{key}
%  author = {Author},
%  title = {Tile},
%  year = {2020}
% }
```
**Output:**

In the text you will get a reference to bibliography entry.

![image](https://user-images.githubusercontent.com/47224024/98483378-13129600-2208-11eb-99d9-3a2462ec0ca7.png)

In the bibliography you will get an entry for your media.

![image](https://user-images.githubusercontent.com/47224024/98483425-74d30000-2208-11eb-8372-0dad34fe5f43.png)

### Change the citation style

In the '[Cite entrys](#cite-entrys)' section, the citation style 'numeric-comp' was used, but you can change this to whatever you like. To find a list of possible citation styles go [here](https://www.overleaf.com/learn/latex/Biblatex_bibliography_styles).

To change the citation style in the template open the file 'Vorlage.tex' and search for the line `\usepackage[style=...]{biblatex}` in the 'Standard Packages' section. To change the citation style use a possible entry and add it after the '='.
> Example: `\usepackage[style=numeric-comp]{biblatex}`.


