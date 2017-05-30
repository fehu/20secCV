# LaTeX resume template

This is generalized CV template, based on
[a LaTeX resume template, tailored for the recent graduate who aspires to be a Data Scientist/Engineer](https://github.com/opensorceror/Data-Engineer-Resume-LaTeX).

<object data="https://raw.githubusercontent.com/fehu/20secCV/master/template.pdf" type="application/pdf" width="700px" height="700px">
    <embed src="https://raw.githubusercontent.com/fehu/20secCV/master/template.pdf">
        This browser does not support PDFs. Please download the PDF to view it: <a href="https://raw.githubusercontent.com/fehu/20secCV/master/template.pdf">Download PDF</a>.</p>
    </embed>
</object>

## Other versions

[**IT** version](https://github.com/fehu/20secCV/tree/IT) of the template.

## Description

##### Common CV fields:

Command | Description
--- | ---
`\cvname`     | Your name
`\cvjobtitle` | Job title
`\cvbirth`    | Birth date
`\cvcitizen`  | Citizenship
`\cvmatrial`  | Martial status
`\cvnumberphone` | Phone number
`\cvskype`    | Skype name
`\cvmail`     | E-mail
`\cvlinkedin` | LinkedIn account
`\cvgithub`   | Github account
`\cvsite`     | Personal website

All the fields must be defined. If you don't want to provide some information,
leave the corresponding fields empty, e.g. `\cvbirth{}`.

##### Extra sections:

Additional sections (in the left column) may be defined by providing your own
`\customCVsections` command. For example `\def\customCVsections{\languageSection}`.

Command | Section | Contents Definition
--- | --- | ---
`\languageSection` | Languages | `\languages{Fluent/English, ...}`

## Build

Must be compiled with *XeLaTeX*.

## License

The MIT License (MIT)

Copyright (c) 2017 Dmitry K

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

## License comment
IANAL, idgaf

## Original License

```
Copyright 2016 Harshavardhan Gadgil

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
