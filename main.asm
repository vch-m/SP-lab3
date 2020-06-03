.586
.model flat, stdcall

option casemap :none ;розрізнювати великі та маленькі букви
include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\user32.inc
include module.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\user32.lib

.data
TextBuf db 64 dup(?)
Caption db "Лабораторна робота №3",0
Text db "Малашкін В'ячеслав", 10, 13, "Група ІО-83",0


value1 db 26
value2 db -26
value3 dw 26

value4 dw -26
value5 dd 26
value6 dd -26
value7 dq 26
value8 dq -26
value9 dd 26.0
value10 dd -26.0
value11 dd 26.26
value12 dq 26.0
value13 dq -52.0
value14 dq 26.26
value15 dt 26.0
value16 dt -52.0
value17 dt 26.26


.code

main:
invoke MessageBoxA, 0, ADDR Text, ADDR Caption, 0

  push offset TextBuf
  push offset value1
  push 8
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value2
  push 8
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value3
  push 16
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value4
  push 16
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value5
  push 32
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value6
  push 32
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value7
  push 64
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value8
  push 64
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value9
  push 32
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value10
  push 32
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value11
  push 32
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value12
  push 64
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value13
  push 64
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value14
  push 64
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value15
  push 80
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value16
  push 80
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0

  push offset TextBuf
  push offset value17
  push 80
  call StrHex_MY
  invoke MessageBoxA, 0, ADDR TextBuf, ADDR Caption, 0


invoke ExitProcess, 0

end main
