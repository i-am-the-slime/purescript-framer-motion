module Framer.Motion.MotionComponent where

import Effect (Effect)
import Framer.Motion.Types (MotionProps)
import Prim.Row (class Union)
import React.Basic (ReactComponent)
import React.Basic.DOM as DOM
import React.Basic.DOM.Internal (SharedSVGProps)
import React.Basic.DOM.SVG as SVG
import Type.Row (type (+))

foreign import motionComponentImpl ∷ ∀ a. String -> ReactComponent { | a }

foreign import custom ∷
  ∀ old.
  ReactComponent { | old } ->
  Effect (ReactComponent { | MotionProps old })

-- DOM
abbr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_abbr) => ReactComponent { | attrs }
abbr = motionComponentImpl "abbr"

address ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_address) => ReactComponent { | attrs }
address = motionComponentImpl "address"

area ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_area) => ReactComponent { | attrs }
area = motionComponentImpl "area"

article ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_article) => ReactComponent { | attrs }
article = motionComponentImpl "article"

aside ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_aside) => ReactComponent { | attrs }
aside = motionComponentImpl "aside"

audio ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_audio) => ReactComponent { | attrs }
audio = motionComponentImpl "audio"

b ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_b) => ReactComponent { | attrs }
b = motionComponentImpl "b"

base ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_base) => ReactComponent { | attrs }
base = motionComponentImpl "base"

bdi ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_bdi) => ReactComponent { | attrs }
bdi = motionComponentImpl "bdi"

bdo ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_bdo) => ReactComponent { | attrs }
bdo = motionComponentImpl "bdo"

-- No support in React Basic Hooks
-- big :: forall attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_big) => ReactComponent { | attrs }
-- big = motionComponentImpl "big"
blockquote ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_blockquote) => ReactComponent { | attrs }
blockquote = motionComponentImpl "blockquote"

body ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_body) => ReactComponent { | attrs }
body = motionComponentImpl "body"

br ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_br) => ReactComponent { | attrs }
br = motionComponentImpl "br"

button ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_button) => ReactComponent { | attrs }
button = motionComponentImpl "button"

canvas ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_canvas) => ReactComponent { | attrs }
canvas = motionComponentImpl "canvas"

caption ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_caption) => ReactComponent { | attrs }
caption = motionComponentImpl "caption"

cite ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_cite) => ReactComponent { | attrs }
cite = motionComponentImpl "cite"

code ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_code) => ReactComponent { | attrs }
code = motionComponentImpl "code"

col ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_col) => ReactComponent { | attrs }
col = motionComponentImpl "col"

colgroup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_colgroup) => ReactComponent { | attrs }
colgroup = motionComponentImpl "colgroup"

_data ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_data) => ReactComponent { | attrs }
_data = motionComponentImpl "data"

datalist ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_datalist) => ReactComponent { | attrs }
datalist = motionComponentImpl "datalist"

dd ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dd) => ReactComponent { | attrs }
dd = motionComponentImpl "dd"

del ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_del) => ReactComponent { | attrs }
del = motionComponentImpl "del"

details ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_details) => ReactComponent { | attrs }
details = motionComponentImpl "details"

dfn ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dfn) => ReactComponent { | attrs }
dfn = motionComponentImpl "dfn"

dialog ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dialog) => ReactComponent { | attrs }
dialog = motionComponentImpl "dialog"

div ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_div) => ReactComponent { | attrs }
div = motionComponentImpl "div"

dl ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dl) => ReactComponent { | attrs }
dl = motionComponentImpl "dl"

dt ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dt) => ReactComponent { | attrs }
dt = motionComponentImpl "dt"

em ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_em) => ReactComponent { | attrs }
em = motionComponentImpl "em"

embed ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_embed) => ReactComponent { | attrs }
embed = motionComponentImpl "embed"

fieldset ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_fieldset) => ReactComponent { | attrs }
fieldset = motionComponentImpl "fieldset"

figcaption ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_figcaption) => ReactComponent { | attrs }
figcaption = motionComponentImpl "figcaption"

figure ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_figure) => ReactComponent { | attrs }
figure = motionComponentImpl "figure"

footer ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_footer) => ReactComponent { | attrs }
footer = motionComponentImpl "footer"

form ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_form) => ReactComponent { | attrs }
form = motionComponentImpl "form"

h1 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h1) => ReactComponent { | attrs }
h1 = motionComponentImpl "h1"

h2 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h2) => ReactComponent { | attrs }
h2 = motionComponentImpl "h2"

h3 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h3) => ReactComponent { | attrs }
h3 = motionComponentImpl "h3"

h4 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h4) => ReactComponent { | attrs }
h4 = motionComponentImpl "h4"

h5 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h5) => ReactComponent { | attrs }
h5 = motionComponentImpl "h5"

h6 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h6) => ReactComponent { | attrs }
h6 = motionComponentImpl "h6"

head ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_head) => ReactComponent { | attrs }
head = motionComponentImpl "head"

header ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_header) => ReactComponent { | attrs }
header = motionComponentImpl "header"

hgroup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_hgroup) => ReactComponent { | attrs }
hgroup = motionComponentImpl "hgroup"

hr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_hr) => ReactComponent { | attrs }
hr = motionComponentImpl "hr"

html ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_html) => ReactComponent { | attrs }
html = motionComponentImpl "html"

i ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_i) => ReactComponent { | attrs }
i = motionComponentImpl "i"

iframe ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_iframe) => ReactComponent { | attrs }
iframe = motionComponentImpl "iframe"

img ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_img) => ReactComponent { | attrs }
img = motionComponentImpl "img"

input ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_input) => ReactComponent { | attrs }
input = motionComponentImpl "input"

ins ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ins) => ReactComponent { | attrs }
ins = motionComponentImpl "ins"

kbd ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_kbd) => ReactComponent { | attrs }
kbd = motionComponentImpl "kbd"

keygen ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_keygen) => ReactComponent { | attrs }
keygen = motionComponentImpl "keygen"

label ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_label) => ReactComponent { | attrs }
label = motionComponentImpl "label"

legend ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_legend) => ReactComponent { | attrs }
legend = motionComponentImpl "legend"

li ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_li) => ReactComponent { | attrs }
li = motionComponentImpl "li"

link ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_link) => ReactComponent { | attrs }
link = motionComponentImpl "link"

main ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_main) => ReactComponent { | attrs }
main = motionComponentImpl "main"

map ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_map) => ReactComponent { | attrs }
map = motionComponentImpl "map"

mark ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_mark) => ReactComponent { | attrs }
mark = motionComponentImpl "mark"

menu ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_menu) => ReactComponent { | attrs }
menu = motionComponentImpl "menu"

menuitem ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_menuitem) => ReactComponent { | attrs }
menuitem = motionComponentImpl "menuitem"

meta ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_meta) => ReactComponent { | attrs }
meta = motionComponentImpl "meta"

meter ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_meter) => ReactComponent { | attrs }
meter = motionComponentImpl "meter"

nav ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_nav) => ReactComponent { | attrs }
nav = motionComponentImpl "nav"

noscript ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_noscript) => ReactComponent { | attrs }
noscript = motionComponentImpl "noscript"

object ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_object) => ReactComponent { | attrs }
object = motionComponentImpl "object"

ol ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ol) => ReactComponent { | attrs }
ol = motionComponentImpl "ol"

optgroup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_optgroup) => ReactComponent { | attrs }
optgroup = motionComponentImpl "optgroup"

option ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_option) => ReactComponent { | attrs }
option = motionComponentImpl "option"

output ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_output) => ReactComponent { | attrs }
output = motionComponentImpl "output"

p ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_p) => ReactComponent { | attrs }
p = motionComponentImpl "p"

param ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_param) => ReactComponent { | attrs }
param = motionComponentImpl "param"

picture ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_picture) => ReactComponent { | attrs }
picture = motionComponentImpl "picture"

pre ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_pre) => ReactComponent { | attrs }
pre = motionComponentImpl "pre"

progress ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_progress) => ReactComponent { | attrs }
progress = motionComponentImpl "progress"

q ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_q) => ReactComponent { | attrs }
q = motionComponentImpl "q"

rp ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_rp) => ReactComponent { | attrs }
rp = motionComponentImpl "rp"

rt ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_rt) => ReactComponent { | attrs }
rt = motionComponentImpl "rt"

ruby ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ruby) => ReactComponent { | attrs }
ruby = motionComponentImpl "ruby"

s ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_s) => ReactComponent { | attrs }
s = motionComponentImpl "s"

samp ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_samp) => ReactComponent { | attrs }
samp = motionComponentImpl "samp"

script ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_script) => ReactComponent { | attrs }
script = motionComponentImpl "script"

section ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_section) => ReactComponent { | attrs }
section = motionComponentImpl "section"

select ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_select) => ReactComponent { | attrs }
select = motionComponentImpl "select"

small ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_small) => ReactComponent { | attrs }
small = motionComponentImpl "small"

source ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_source) => ReactComponent { | attrs }
source = motionComponentImpl "source"

span ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_span) => ReactComponent { | attrs }
span = motionComponentImpl "span"

strong ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_strong) => ReactComponent { | attrs }
strong = motionComponentImpl "strong"

style ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_style) => ReactComponent { | attrs }
style = motionComponentImpl "style"

sub ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_sub) => ReactComponent { | attrs }
sub = motionComponentImpl "sub"

summary ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_summary) => ReactComponent { | attrs }
summary = motionComponentImpl "summary"

sup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_sup) => ReactComponent { | attrs }
sup = motionComponentImpl "sup"

table ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_table) => ReactComponent { | attrs }
table = motionComponentImpl "table"

tbody ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_tbody) => ReactComponent { | attrs }
tbody = motionComponentImpl "tbody"

td ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_td) => ReactComponent { | attrs }
td = motionComponentImpl "td"

textarea ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_textarea) => ReactComponent { | attrs }
textarea = motionComponentImpl "textarea"

tfoot ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_tfoot) => ReactComponent { | attrs }
tfoot = motionComponentImpl "tfoot"

th ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_th) => ReactComponent { | attrs }
th = motionComponentImpl "th"

thead ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_thead) => ReactComponent { | attrs }
thead = motionComponentImpl "thead"

time ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_time) => ReactComponent { | attrs }
time = motionComponentImpl "time"

title ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_title) => ReactComponent { | attrs }
title = motionComponentImpl "title"

tr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_tr) => ReactComponent { | attrs }
tr = motionComponentImpl "tr"

track ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_track) => ReactComponent { | attrs }
track = motionComponentImpl "track"

u ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_u) => ReactComponent { | attrs }
u = motionComponentImpl "u"

ul ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ul) => ReactComponent { | attrs }
ul = motionComponentImpl "ul"

var ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_var) => ReactComponent { | attrs }
var = motionComponentImpl "var"

video ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_video) => ReactComponent { | attrs }
video = motionComponentImpl "video"

wbr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_wbr) => ReactComponent { | attrs }
wbr = motionComponentImpl "wbr"

-- No support in React.Basic.Hooks
-- webview :: forall attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_webview) => ReactComponent { | attrs }
-- webview = motionComponentImpl "webview"
svgAnimate ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_animate) => ReactComponent { | attrs }
svgAnimate = motionComponentImpl "animate"

circle ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_circle) => ReactComponent { | attrs }
circle = motionComponentImpl "circle"

clipPath ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_clipPath) => ReactComponent { | attrs }
clipPath = motionComponentImpl "clipPath"

defs ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_defs) => ReactComponent { | attrs }
defs = motionComponentImpl "defs"

desc ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_desc) => ReactComponent { | attrs }
desc = motionComponentImpl "desc"

ellipse ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_ellipse) => ReactComponent { | attrs }
ellipse = motionComponentImpl "ellipse"

feBlend ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feBlend) => ReactComponent { | attrs }
feBlend = motionComponentImpl "feBlend"

feColorMatrix ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feColorMatrix) => ReactComponent { | attrs }
feColorMatrix = motionComponentImpl "feColorMatrix"

feComponentTransfer ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feComponentTransfer) => ReactComponent { | attrs }
feComponentTransfer = motionComponentImpl "feComponentTransfer"

feComposite ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feComposite) => ReactComponent { | attrs }
feComposite = motionComponentImpl "feComposite"

feConvolveMatrix ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feConvolveMatrix) => ReactComponent { | attrs }
feConvolveMatrix = motionComponentImpl "feConvolveMatrix"

feDiffuseLighting ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDiffuseLighting) => ReactComponent { | attrs }
feDiffuseLighting = motionComponentImpl "feDiffuseLighting"

feDisplacementMap ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDisplacementMap) => ReactComponent { | attrs }
feDisplacementMap = motionComponentImpl "feDisplacementMap"

feDistantLight ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDistantLight) => ReactComponent { | attrs }
feDistantLight = motionComponentImpl "feDistantLight"

feDropShadow ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDropShadow) => ReactComponent { | attrs }
feDropShadow = motionComponentImpl "feDropShadow"

feFlood ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFlood) => ReactComponent { | attrs }
feFlood = motionComponentImpl "feFlood"

feFuncA ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncA) => ReactComponent { | attrs }
feFuncA = motionComponentImpl "feFuncA"

feFuncB ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncB) => ReactComponent { | attrs }
feFuncB = motionComponentImpl "feFuncB"

feFuncG ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncG) => ReactComponent { | attrs }
feFuncG = motionComponentImpl "feFuncG"

feFuncR ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncR) => ReactComponent { | attrs }
feFuncR = motionComponentImpl "feFuncR"

feGaussianBlur ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feGaussianBlur) => ReactComponent { | attrs }
feGaussianBlur = motionComponentImpl "feGaussianBlur"

feImage ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feImage) => ReactComponent { | attrs }
feImage = motionComponentImpl "feImage"

feMerge ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feMerge) => ReactComponent { | attrs }
feMerge = motionComponentImpl "feMerge"

feMergeNode ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feMergeNode) => ReactComponent { | attrs }
feMergeNode = motionComponentImpl "feMergeNode"

feMorphology ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feMorphology) => ReactComponent { | attrs }
feMorphology = motionComponentImpl "feMorphology"

feOffset ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feOffset) => ReactComponent { | attrs }
feOffset = motionComponentImpl "feOffset"

fePointLight ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_fePointLight) => ReactComponent { | attrs }
fePointLight = motionComponentImpl "fePointLight"

feSpecularLighting ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feSpecularLighting) => ReactComponent { | attrs }
feSpecularLighting = motionComponentImpl "feSpecularLighting"

feSpotLight ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feSpotLight) => ReactComponent { | attrs }
feSpotLight = motionComponentImpl "feSpotLight"

feTile ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feTile) => ReactComponent { | attrs }
feTile = motionComponentImpl "feTile"

feTurbulence ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feTurbulence) => ReactComponent { | attrs }
feTurbulence = motionComponentImpl "feTurbulence"

filter ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_filter) => ReactComponent { | attrs }
filter = motionComponentImpl "filter"

foreignObject ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_foreignObject) => ReactComponent { | attrs }
foreignObject = motionComponentImpl "foreignObject"

g ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_g) => ReactComponent { | attrs }
g = motionComponentImpl "g"

image ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_image) => ReactComponent { | attrs }
image = motionComponentImpl "image"

line ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_line) => ReactComponent { | attrs }
line = motionComponentImpl "line"

linearGradient ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_linearGradient) => ReactComponent { | attrs }
linearGradient = motionComponentImpl "linearGradient"

marker ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_marker) => ReactComponent { | attrs }
marker = motionComponentImpl "marker"

mask ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_mask) => ReactComponent { | attrs }
mask = motionComponentImpl "mask"

metadata ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_metadata) => ReactComponent { | attrs }
metadata = motionComponentImpl "metadata"

path ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SharedSVGProps SVG.Props_path) => ReactComponent { | attrs }
path = motionComponentImpl "path"

pattern ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_pattern) => ReactComponent { | attrs }
pattern = motionComponentImpl "pattern"

polygon ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_polygon) => ReactComponent { | attrs }
polygon = motionComponentImpl "polygon"

polyline ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_polyline) => ReactComponent { | attrs }
polyline = motionComponentImpl "polyline"

radialGradient ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_radialGradient) => ReactComponent { | attrs }
radialGradient = motionComponentImpl "radialGradient"

rect ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_rect) => ReactComponent { | attrs }
rect = motionComponentImpl "rect"

stop ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_stop) => ReactComponent { | attrs }
stop = motionComponentImpl "stop"

svg ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SharedSVGProps SVG.Props_svg) => ReactComponent { | attrs }
svg = motionComponentImpl "svg"

svgSwitch ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_switch) => ReactComponent { | attrs }
svgSwitch = motionComponentImpl "switch"

symbol ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_symbol) => ReactComponent { | attrs }
symbol = motionComponentImpl "symbol"

text ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_text) => ReactComponent { | attrs }
text = motionComponentImpl "text"

textPath ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_textPath) => ReactComponent { | attrs }
textPath = motionComponentImpl "textPath"

tspan ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_tspan) => ReactComponent { | attrs }
tspan = motionComponentImpl "tspan"

use ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_use) => ReactComponent { | attrs }
use = motionComponentImpl "use"

view ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_view) => ReactComponent { | attrs }
view = motionComponentImpl "view"
