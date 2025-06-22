DIM pic AS LONG
DIM bck AS LONG
DIM note AS LONG
DIM filexp AS LONG
_MOUSEHIDE
SCREEN _NEWIMAGE(800, 600, 32)
bck = _LOADIMAGE("mac.jpg")
pic = _LOADIMAGE("inv.png")
note = _LOADIMAGE("note.png")
filexp = _LOADIMAGE("fiexpl.png")
_PUTIMAGE (0, 0), bck
_PUTIMAGE (90, 5), note
_PUTIMAGE (90, 60), filexp
PRINT "TESTING"
PRINT "ONLY."
PRINT "APPLICATIONS"
PRINT "DO"
PRINT "NOT"
PRINT "WORK"
PRINT "YET."
DO
    WHILE _MOUSEINPUT
        _LIMIT 1000
        PCOPY _DISPLAY, 1
        _PUTIMAGE (_MOUSEX, _MOUSEY), pic
        _DISPLAY
        PCOPY 1, _DISPLAY
    WEND
LOOP WHILE INKEY$ = ""

