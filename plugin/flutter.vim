function! StatelessWidget()
    let name = input("Widget Name: ")
    let lineNumber = line(".") - 1
    call append(lineNumber, "import 'package:flutter/material.dart';")
    call append(lineNumber + 1, "")
    call append(lineNumber + 2, "class " . name . " extends StatelessWidget {")
    call append(lineNumber + 3, "")
    call append(lineNumber + 4, "@override")
    call append(lineNumber + 5, "Widget build(BuildContext context) {")
    call append(lineNumber + 6, "return Container(")
    call append(lineNumber + 7, ");")
    call append(lineNumber + 8, "}")
    call append(lineNumber + 9, "}")
    normal! gg=G
    execute lineNumber + 7
endfunc

function! StatefulWidget()
    let name = input("Widget Name: ")
    let lineNumber = line(".") - 1
    call append(lineNumber, "import 'package:flutter/material.dart';")
    call append(lineNumber + 1, "")
    call append(lineNumber + 2, "class " . name . " extends StatefulWidget {")
    call append(lineNumber + 3, "")
    call append(lineNumber + 4, "@override")
    call append(lineNumber + 5, "State<StatefulWidget> createState() {")
    call append(lineNumber + 6, "return _" . name . "State();")
    call append(lineNumber + 7, "}")
    call append(lineNumber + 8, "}")
    call append(lineNumber + 9, "")
    call append(lineNumber + 10, "class _" . name . "State extends State<" . name . "> {")
    call append(lineNumber + 11, "")
    call append(lineNumber + 12, "@override")
    call append(lineNumber + 13, "Widget build(BuildContext context) {")
    call append(lineNumber + 14, "return Container(")
    call append(lineNumber + 15, ");")
    call append(lineNumber + 16, "}")
    call append(lineNumber + 17, "}")
    normal! gg=G
    execute lineNumber + 15
endfunc

:command! StatefulWidget :call StatefulWidget()
:command! StatelessWidget :call StatelessWidget()

