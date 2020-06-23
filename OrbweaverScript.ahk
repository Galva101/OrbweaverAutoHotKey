#Persistent ; (Interception hotkeys do not stop AHK from exiting, so use this)
#include Lib\AutoHotInterception.ahk

global AHI := new AutoHotInterception()

id := AHI.GetKeyboardId(0x1532, 0x0113)
cm1 := AHI.CreateContextManager(id)

#if cm1.IsActive

;Row 1 ###################################################

SC029::
Send, {Escape}
return

1::
Send, 1
return

2::
Send, 2
return

3::
Send, 3
return

4::
Send, 4
return

;Row 2 ###################################################

Tab::
Send, {Tab}
return

q::
Send, q
return

w::
Send, w
return

e::
Send, e
return

r::
Send, r
return

;Row 3 ###################################################

Capslock::
Send, Capslock
return

a::
Send, a
return

s::
Run, s
return

d::
Send, d
return

f::
Run f
return

;Row 4 ###################################################

LShift::
Send, LShift
return

y::
Send, y
return

x::
Run x
return

c::
Send c
return

v::
Send v
return

;Thumb Buttons ###################################################

LAlt::
Send LAlt
Sleep, 200
return

Up::
Send, Up
return

Down::
Send, Down
return

Left::
Send, Left
return

Right::
Send, Right
return

Space::
Send, Space
Sleep, 200
return

;###################################################

#if