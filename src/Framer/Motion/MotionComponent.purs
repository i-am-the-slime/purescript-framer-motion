module Framer.Motion.MotionComponent where

import Effect (Effect)
import Framer.Motion.Attributes (MotionBaseAttributes)
import Framer.Motion.Types (MotionProps)
import React.Basic (JSX, ReactComponent)
import Yoga.React.DOM.Internal (FFIComponent, FFIComponent_)

foreign import createMotionElement ∷ ∀ props kids. String -> props -> kids -> JSX
foreign import createMotionElement_ ∷ ∀ props. String -> props -> JSX

foreign import custom
  ∷ ∀ old
   . ReactComponent { | old }
  -> Effect (ReactComponent { | MotionProps old })

-- HTML elements

a ∷ FFIComponent MotionBaseAttributes
a = createMotionElement "a"

a_ ∷ FFIComponent_ MotionBaseAttributes
a_ = createMotionElement_ "a"

abbr ∷ FFIComponent MotionBaseAttributes
abbr = createMotionElement "abbr"

address ∷ FFIComponent MotionBaseAttributes
address = createMotionElement "address"

area ∷ FFIComponent_ MotionBaseAttributes
area = createMotionElement_ "area"

article ∷ FFIComponent MotionBaseAttributes
article = createMotionElement "article"

aside ∷ FFIComponent MotionBaseAttributes
aside = createMotionElement "aside"

audio ∷ FFIComponent MotionBaseAttributes
audio = createMotionElement "audio"

b ∷ FFIComponent MotionBaseAttributes
b = createMotionElement "b"

blockquote ∷ FFIComponent MotionBaseAttributes
blockquote = createMotionElement "blockquote"

br ∷ FFIComponent_ MotionBaseAttributes
br = createMotionElement_ "br"

button ∷ FFIComponent MotionBaseAttributes
button = createMotionElement "button"

button_ ∷ FFIComponent_ MotionBaseAttributes
button_ = createMotionElement_ "button"

canvas ∷ FFIComponent MotionBaseAttributes
canvas = createMotionElement "canvas"

caption ∷ FFIComponent MotionBaseAttributes
caption = createMotionElement "caption"

cite ∷ FFIComponent MotionBaseAttributes
cite = createMotionElement "cite"

code ∷ FFIComponent MotionBaseAttributes
code = createMotionElement "code"

col ∷ FFIComponent_ MotionBaseAttributes
col = createMotionElement_ "col"

colgroup ∷ FFIComponent MotionBaseAttributes
colgroup = createMotionElement "colgroup"

datalist ∷ FFIComponent MotionBaseAttributes
datalist = createMotionElement "datalist"

dd ∷ FFIComponent MotionBaseAttributes
dd = createMotionElement "dd"

del ∷ FFIComponent MotionBaseAttributes
del = createMotionElement "del"

details ∷ FFIComponent MotionBaseAttributes
details = createMotionElement "details"

dfn ∷ FFIComponent MotionBaseAttributes
dfn = createMotionElement "dfn"

dialog ∷ FFIComponent MotionBaseAttributes
dialog = createMotionElement "dialog"

div ∷ FFIComponent MotionBaseAttributes
div = createMotionElement "div"

div_ ∷ FFIComponent_ MotionBaseAttributes
div_ = createMotionElement_ "div"

dl ∷ FFIComponent MotionBaseAttributes
dl = createMotionElement "dl"

dt ∷ FFIComponent MotionBaseAttributes
dt = createMotionElement "dt"

em ∷ FFIComponent MotionBaseAttributes
em = createMotionElement "em"

embed ∷ FFIComponent_ MotionBaseAttributes
embed = createMotionElement_ "embed"

fieldset ∷ FFIComponent MotionBaseAttributes
fieldset = createMotionElement "fieldset"

figcaption ∷ FFIComponent MotionBaseAttributes
figcaption = createMotionElement "figcaption"

figure ∷ FFIComponent MotionBaseAttributes
figure = createMotionElement "figure"

footer ∷ FFIComponent MotionBaseAttributes
footer = createMotionElement "footer"

form ∷ FFIComponent MotionBaseAttributes
form = createMotionElement "form"

h1 ∷ FFIComponent MotionBaseAttributes
h1 = createMotionElement "h1"

h2 ∷ FFIComponent MotionBaseAttributes
h2 = createMotionElement "h2"

h3 ∷ FFIComponent MotionBaseAttributes
h3 = createMotionElement "h3"

h4 ∷ FFIComponent MotionBaseAttributes
h4 = createMotionElement "h4"

h5 ∷ FFIComponent MotionBaseAttributes
h5 = createMotionElement "h5"

h6 ∷ FFIComponent MotionBaseAttributes
h6 = createMotionElement "h6"

header ∷ FFIComponent MotionBaseAttributes
header = createMotionElement "header"

hgroup ∷ FFIComponent MotionBaseAttributes
hgroup = createMotionElement "hgroup"

hr ∷ FFIComponent_ MotionBaseAttributes
hr = createMotionElement_ "hr"

i ∷ FFIComponent MotionBaseAttributes
i = createMotionElement "i"

iframe ∷ FFIComponent MotionBaseAttributes
iframe = createMotionElement "iframe"

img ∷ FFIComponent_ MotionBaseAttributes
img = createMotionElement_ "img"

input ∷ FFIComponent_ MotionBaseAttributes
input = createMotionElement_ "input"

ins ∷ FFIComponent MotionBaseAttributes
ins = createMotionElement "ins"

kbd ∷ FFIComponent MotionBaseAttributes
kbd = createMotionElement "kbd"

label ∷ FFIComponent MotionBaseAttributes
label = createMotionElement "label"

legend ∷ FFIComponent MotionBaseAttributes
legend = createMotionElement "legend"

li ∷ FFIComponent MotionBaseAttributes
li = createMotionElement "li"

li_ ∷ FFIComponent_ MotionBaseAttributes
li_ = createMotionElement_ "li"

main ∷ FFIComponent MotionBaseAttributes
main = createMotionElement "main"

mark ∷ FFIComponent MotionBaseAttributes
mark = createMotionElement "mark"

menu ∷ FFIComponent MotionBaseAttributes
menu = createMotionElement "menu"

meter ∷ FFIComponent MotionBaseAttributes
meter = createMotionElement "meter"

nav ∷ FFIComponent MotionBaseAttributes
nav = createMotionElement "nav"

ol ∷ FFIComponent MotionBaseAttributes
ol = createMotionElement "ol"

optgroup ∷ FFIComponent MotionBaseAttributes
optgroup = createMotionElement "optgroup"

option ∷ FFIComponent MotionBaseAttributes
option = createMotionElement "option"

output ∷ FFIComponent MotionBaseAttributes
output = createMotionElement "output"

p ∷ FFIComponent MotionBaseAttributes
p = createMotionElement "p"

picture ∷ FFIComponent MotionBaseAttributes
picture = createMotionElement "picture"

pre ∷ FFIComponent MotionBaseAttributes
pre = createMotionElement "pre"

progress ∷ FFIComponent MotionBaseAttributes
progress = createMotionElement "progress"

q ∷ FFIComponent MotionBaseAttributes
q = createMotionElement "q"

rp ∷ FFIComponent MotionBaseAttributes
rp = createMotionElement "rp"

rt ∷ FFIComponent MotionBaseAttributes
rt = createMotionElement "rt"

ruby ∷ FFIComponent MotionBaseAttributes
ruby = createMotionElement "ruby"

s ∷ FFIComponent MotionBaseAttributes
s = createMotionElement "s"

samp ∷ FFIComponent MotionBaseAttributes
samp = createMotionElement "samp"

section ∷ FFIComponent MotionBaseAttributes
section = createMotionElement "section"

select ∷ FFIComponent MotionBaseAttributes
select = createMotionElement "select"

small ∷ FFIComponent MotionBaseAttributes
small = createMotionElement "small"

source ∷ FFIComponent_ MotionBaseAttributes
source = createMotionElement_ "source"

span ∷ FFIComponent MotionBaseAttributes
span = createMotionElement "span"

span_ ∷ FFIComponent_ MotionBaseAttributes
span_ = createMotionElement_ "span"

strong ∷ FFIComponent MotionBaseAttributes
strong = createMotionElement "strong"

sub ∷ FFIComponent MotionBaseAttributes
sub = createMotionElement "sub"

summary ∷ FFIComponent MotionBaseAttributes
summary = createMotionElement "summary"

sup ∷ FFIComponent MotionBaseAttributes
sup = createMotionElement "sup"

table ∷ FFIComponent MotionBaseAttributes
table = createMotionElement "table"

tbody ∷ FFIComponent MotionBaseAttributes
tbody = createMotionElement "tbody"

td ∷ FFIComponent MotionBaseAttributes
td = createMotionElement "td"

textarea ∷ FFIComponent MotionBaseAttributes
textarea = createMotionElement "textarea"

tfoot ∷ FFIComponent MotionBaseAttributes
tfoot = createMotionElement "tfoot"

th ∷ FFIComponent MotionBaseAttributes
th = createMotionElement "th"

thead ∷ FFIComponent MotionBaseAttributes
thead = createMotionElement "thead"

time ∷ FFIComponent MotionBaseAttributes
time = createMotionElement "time"

tr ∷ FFIComponent MotionBaseAttributes
tr = createMotionElement "tr"

u ∷ FFIComponent MotionBaseAttributes
u = createMotionElement "u"

ul ∷ FFIComponent MotionBaseAttributes
ul = createMotionElement "ul"

video ∷ FFIComponent MotionBaseAttributes
video = createMotionElement "video"

-- SVG elements

svg ∷ FFIComponent MotionBaseAttributes
svg = createMotionElement "svg"

svg_ ∷ FFIComponent_ MotionBaseAttributes
svg_ = createMotionElement_ "svg"

path ∷ FFIComponent MotionBaseAttributes
path = createMotionElement "path"

path_ ∷ FFIComponent_ MotionBaseAttributes
path_ = createMotionElement_ "path"

g ∷ FFIComponent MotionBaseAttributes
g = createMotionElement "g"

g_ ∷ FFIComponent_ MotionBaseAttributes
g_ = createMotionElement_ "g"

circle ∷ FFIComponent MotionBaseAttributes
circle = createMotionElement "circle"

clipPath ∷ FFIComponent MotionBaseAttributes
clipPath = createMotionElement "clipPath"

defs ∷ FFIComponent MotionBaseAttributes
defs = createMotionElement "defs"

ellipse ∷ FFIComponent MotionBaseAttributes
ellipse = createMotionElement "ellipse"

foreignObject ∷ FFIComponent MotionBaseAttributes
foreignObject = createMotionElement "foreignObject"

image ∷ FFIComponent_ MotionBaseAttributes
image = createMotionElement_ "image"

line ∷ FFIComponent MotionBaseAttributes
line = createMotionElement "line"

linearGradient ∷ FFIComponent MotionBaseAttributes
linearGradient = createMotionElement "linearGradient"

marker ∷ FFIComponent MotionBaseAttributes
marker = createMotionElement "marker"

mask ∷ FFIComponent MotionBaseAttributes
mask = createMotionElement "mask"

polygon ∷ FFIComponent MotionBaseAttributes
polygon = createMotionElement "polygon"

polyline ∷ FFIComponent MotionBaseAttributes
polyline = createMotionElement "polyline"

radialGradient ∷ FFIComponent MotionBaseAttributes
radialGradient = createMotionElement "radialGradient"

rect ∷ FFIComponent MotionBaseAttributes
rect = createMotionElement "rect"

stop ∷ FFIComponent MotionBaseAttributes
stop = createMotionElement "stop"

text ∷ FFIComponent MotionBaseAttributes
text = createMotionElement "text"

textPath ∷ FFIComponent MotionBaseAttributes
textPath = createMotionElement "textPath"

tspan ∷ FFIComponent MotionBaseAttributes
tspan = createMotionElement "tspan"

use ∷ FFIComponent MotionBaseAttributes
use = createMotionElement "use"
