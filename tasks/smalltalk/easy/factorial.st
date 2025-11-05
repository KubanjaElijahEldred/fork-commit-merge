" Smalltalk - Easy "

" Implement the Factorial class "
Integer extend [
    factorial [
        self <= 1 ifTrue: [ ^1 ].
        ^self * ((self - 1) factorial)
    ]
]

" Test the factorial method "
Transcript show: '5 factorial is: ', 5 factorial printString; cr.
