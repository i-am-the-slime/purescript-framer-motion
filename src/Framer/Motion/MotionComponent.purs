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

addressImpl ∷ ∀ attrs. ReactComponent { | attrs }
addressImpl = motionComponentImpl "address"

address ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_address) => ReactComponent { | attrs }
address = addressImpl

areaImpl ∷ ∀ a. ReactComponent (Record a)
areaImpl = motionComponentImpl "area"

area ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_area) => ReactComponent { | attrs }
area = areaImpl

articleImpl ∷ ∀ t977. ReactComponent (Record t977)
articleImpl = motionComponentImpl "article"

article ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_article) => ReactComponent { | attrs }
article = articleImpl

asideImpl :: forall a. ReactComponent (Record a)
asideImpl = motionComponentImpl "aside"

aside ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_aside) => ReactComponent { | attrs }
aside = asideImpl
audioImpl :: forall a. ReactComponent (Record a)
audioImpl = motionComponentImpl "audio"

audio ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_audio) => ReactComponent { | attrs }
audio = audioImpl

bImpl :: forall a. ReactComponent (Record a)
bImpl = motionComponentImpl "b"

b ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_b) => ReactComponent { | attrs }
b = bImpl

baseImpl :: forall a. ReactComponent {|a}
baseImpl = motionComponentImpl "base"

base ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_base) => ReactComponent { | attrs }
base = baseImpl

bdiImpl :: forall a. ReactComponent {|a}
bdiImpl = motionComponentImpl "bdi"

bdi ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_bdi) => ReactComponent { | attrs }
bdi = bdiImpl

bdoImpl :: forall a. ReactComponent {|a}
bdoImpl = motionComponentImpl "bdo"

bdo ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_bdo) => ReactComponent { | attrs }
bdo = bdoImpl

-- No support in React Basic Hooks
-- big :: forall attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_big) => ReactComponent { | attrs }

blockquoteImpl :: forall a. ReactComponent {|a}
blockquoteImpl = motionComponentImpl "blockquote"

blockquote ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_blockquote) => ReactComponent { | attrs }
blockquote = blockquoteImpl

bodyImpl :: forall a. ReactComponent {|a}
bodyImpl = motionComponentImpl "body"

body ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_body) => ReactComponent { | attrs }
body = bodyImpl

brImpl :: forall a. ReactComponent {|a}
brImpl = motionComponentImpl "br"

br ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_br) => ReactComponent { | attrs }
br = brImpl

buttonImpl :: forall a. ReactComponent {|a}
buttonImpl = motionComponentImpl "button"

button ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_button) => ReactComponent { | attrs }
button = buttonImpl

canvasImpl :: forall a. ReactComponent {|a}
canvasImpl = motionComponentImpl "canvas"

canvas ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_canvas) => ReactComponent { | attrs }
canvas = canvasImpl

captionImpl :: forall a. ReactComponent {|a}
captionImpl = motionComponentImpl "caption"

caption ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_caption) => ReactComponent { | attrs }
caption = captionImpl

citeImpl :: forall a. ReactComponent {|a}
citeImpl = motionComponentImpl "cite"

cite ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_cite) => ReactComponent { | attrs }
cite = citeImpl

codeImpl :: forall a. ReactComponent {|a}
codeImpl = motionComponentImpl "code"

code ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_code) => ReactComponent { | attrs }
code = codeImpl

colImpl :: forall a. ReactComponent {|a}
colImpl = motionComponentImpl "col"

colImplImpl :: forall a. ReactComponent {|a}
colImplImpl = colImpl

col ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_col) => ReactComponent { | attrs }
col = colImpl

colgroupImpl :: forall a. ReactComponent {|a}
colgroupImpl = motionComponentImpl "colgroup"

colgroup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_colgroup) => ReactComponent { | attrs }
colgroup = colgroupImpl

_data ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_data) => ReactComponent { | attrs }
_data = motionComponentImpl "data"

datalistImpl :: forall a. ReactComponent {|a}
datalistImpl = motionComponentImpl "datalist"

datalist ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_datalist) => ReactComponent { | attrs }
datalist = datalistImpl

ddImpl :: forall a. ReactComponent {|a}
ddImpl = motionComponentImpl "dd"

dd ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dd) => ReactComponent { | attrs }
dd = ddImpl

delImpl :: forall a. ReactComponent {|a}
delImpl = motionComponentImpl "del"

del ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_del) => ReactComponent { | attrs }
del = delImpl

detailsImpl :: forall a. ReactComponent {|a}
detailsImpl = motionComponentImpl "details"

details ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_details) => ReactComponent { | attrs }
details = detailsImpl

dfnImpl :: forall a. ReactComponent {|a}
dfnImpl = motionComponentImpl "dfn"

dfn ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dfn) => ReactComponent { | attrs }
dfn = dfnImpl

dialogImpl :: forall a. ReactComponent {|a}
dialogImpl = motionComponentImpl "dialog"

dialog ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dialog) => ReactComponent { | attrs }
dialog = dialogImpl

divImpl ∷ ∀ props. ReactComponent { | props }
divImpl = motionComponentImpl "div"

div ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_div) => ReactComponent { | attrs }
div = divImpl

dlImpl :: forall a. ReactComponent {|a}
dlImpl = motionComponentImpl "dl"

dl ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dl) => ReactComponent { | attrs }
dl = dlImpl

dtImpl :: forall a. ReactComponent {|a}
dtImpl = motionComponentImpl "dt"

dt ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dt) => ReactComponent { | attrs }
dt = dtImpl

emImpl :: forall a. ReactComponent {|a}
emImpl = motionComponentImpl "em"

em ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_em) => ReactComponent { | attrs }
em = emImpl

embedImpl :: forall a. ReactComponent {|a}
embedImpl = motionComponentImpl "embed"

embed ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_embed) => ReactComponent { | attrs }
embed = embedImpl

fieldsetImpl :: forall a. ReactComponent {|a}
fieldsetImpl = motionComponentImpl "fieldset"

fieldset ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_fieldset) => ReactComponent { | attrs }
fieldset = fieldsetImpl

figcaptionImpl :: forall a. ReactComponent {|a}
figcaptionImpl = motionComponentImpl "figcaption"

figcaption ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_figcaption) => ReactComponent { | attrs }
figcaption = figcaptionImpl

figureImpl :: forall a. ReactComponent {|a}
figureImpl = motionComponentImpl "figure"

figure ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_figure) => ReactComponent { | attrs }
figure = figureImpl

footerImpl :: forall a. ReactComponent {|a}
footerImpl = motionComponentImpl "footer"

footer ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_footer) => ReactComponent { | attrs }
footer = footerImpl

formImpl :: forall a. ReactComponent {|a}
formImpl = motionComponentImpl "form"

form ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_form) => ReactComponent { | attrs }
form = formImpl

h1Impl :: forall a. ReactComponent {|a}
h1Impl = motionComponentImpl "h1"

h1 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h1) => ReactComponent { | attrs }
h1 = h1Impl

h2Impl :: forall a. ReactComponent {|a}
h2Impl = motionComponentImpl "h2"

h2 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h2) => ReactComponent { | attrs }
h2 = h2Impl

h3Impl :: forall a. ReactComponent {|a}
h3Impl = motionComponentImpl "h3"

h3 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h3) => ReactComponent { | attrs }
h3 = h3Impl

h4Impl :: forall a. ReactComponent {|a}
h4Impl = motionComponentImpl "h4"

h4 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h4) => ReactComponent { | attrs }
h4 = h4Impl

h5Impl :: forall a. ReactComponent {|a}
h5Impl = motionComponentImpl "h5"

h5 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h5) => ReactComponent { | attrs }
h5 = h5Impl

h6Impl :: forall a. ReactComponent {|a}
h6Impl = motionComponentImpl "h6"

h6 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h6) => ReactComponent { | attrs }
h6 = h6Impl

headImpl :: forall a. ReactComponent {|a}
headImpl = motionComponentImpl "head"

head ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_head) => ReactComponent { | attrs }
head = headImpl

headerImpl :: forall a. ReactComponent {|a}
headerImpl = motionComponentImpl "header"

header ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_header) => ReactComponent { | attrs }
header = headerImpl

hgroupImpl :: forall a. ReactComponent {|a}
hgroupImpl = motionComponentImpl "hgroup"

hgroup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_hgroup) => ReactComponent { | attrs }
hgroup = hgroupImpl

hrImpl :: forall a. ReactComponent {|a}
hrImpl = motionComponentImpl "hr"

hr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_hr) => ReactComponent { | attrs }
hr = hrImpl

htmlImpl :: forall a. ReactComponent {|a}
htmlImpl = motionComponentImpl "html"

html ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_html) => ReactComponent { | attrs }
html = htmlImpl

iImpl :: forall a. ReactComponent {|a}
iImpl = motionComponentImpl "i"

i ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_i) => ReactComponent { | attrs }
i = iImpl

iframeImpl :: forall a. ReactComponent {|a}
iframeImpl = motionComponentImpl "iframe"

iframe ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_iframe) => ReactComponent { | attrs }
iframe = iframeImpl

imgImpl :: forall a. ReactComponent {|a}
imgImpl = motionComponentImpl "img"

img ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_img) => ReactComponent { | attrs }
img = imgImpl

inputImpl :: forall a. ReactComponent {|a}
inputImpl = motionComponentImpl "input"

input ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_input) => ReactComponent { | attrs }
input = inputImpl

insImpl :: forall a. ReactComponent {|a}
insImpl = motionComponentImpl "ins"

ins ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ins) => ReactComponent { | attrs }
ins = insImpl

kbdImpl :: forall a. ReactComponent {|a}
kbdImpl = motionComponentImpl "kbd"

kbd ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_kbd) => ReactComponent { | attrs }
kbd = kbdImpl

keygenImpl :: forall a. ReactComponent {|a}
keygenImpl = motionComponentImpl "keygen"

keygen ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_keygen) => ReactComponent { | attrs }
keygen = keygenImpl

labelImpl :: forall a. ReactComponent {|a}
labelImpl = motionComponentImpl "label"

label ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_label) => ReactComponent { | attrs }
label = labelImpl

legendImpl :: forall a. ReactComponent {|a}
legendImpl = motionComponentImpl "legend"

legend ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_legend) => ReactComponent { | attrs }
legend = legendImpl

liImpl :: forall a. ReactComponent {|a}
liImpl = motionComponentImpl "li"

li ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_li) => ReactComponent { | attrs }
li = liImpl

linkImpl :: forall a. ReactComponent {|a}
linkImpl = motionComponentImpl "link"

link ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_link) => ReactComponent { | attrs }
link = linkImpl

mainImpl :: forall a. ReactComponent {|a}
mainImpl = motionComponentImpl "main"

main ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_main) => ReactComponent { | attrs }
main = mainImpl

mapImpl :: forall a. ReactComponent {|a}
mapImpl = motionComponentImpl "map"

map ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_map) => ReactComponent { | attrs }
map = mapImpl

markImpl :: forall a. ReactComponent {|a}
markImpl = motionComponentImpl "mark"

mark ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_mark) => ReactComponent { | attrs }
mark = markImpl

menuImpl :: forall a. ReactComponent {|a}
menuImpl = motionComponentImpl "menu"

menu ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_menu) => ReactComponent { | attrs }
menu = menuImpl

menuitemImpl :: forall a. ReactComponent {|a}
menuitemImpl = motionComponentImpl "menuitem"

menuitem ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_menuitem) => ReactComponent { | attrs }
menuitem = menuitemImpl

metaImpl :: forall a. ReactComponent {|a}
metaImpl = motionComponentImpl "meta"

meta ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_meta) => ReactComponent { | attrs }
meta = metaImpl

meterImpl :: forall a. ReactComponent {|a}
meterImpl = motionComponentImpl "meter"

meter ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_meter) => ReactComponent { | attrs }
meter = meterImpl

navImpl :: forall a. ReactComponent {|a}
navImpl = motionComponentImpl "nav"

nav ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_nav) => ReactComponent { | attrs }
nav = navImpl

noscriptImpl :: forall a. ReactComponent {|a}
noscriptImpl = motionComponentImpl "noscript"

noscript ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_noscript) => ReactComponent { | attrs }
noscript = noscriptImpl

objectImpl :: forall a. ReactComponent {|a}
objectImpl = motionComponentImpl "object"

object ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_object) => ReactComponent { | attrs }
object = objectImpl

olImpl :: forall a. ReactComponent {|a}
olImpl = motionComponentImpl "ol"

ol ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ol) => ReactComponent { | attrs }
ol = olImpl

optgroupImpl :: forall a. ReactComponent {|a}
optgroupImpl = motionComponentImpl "optgroup"

optgroup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_optgroup) => ReactComponent { | attrs }
optgroup = optgroupImpl

optionImpl :: forall a. ReactComponent {|a}
optionImpl = motionComponentImpl "option"

option ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_option) => ReactComponent { | attrs }
option = optionImpl

outputImpl :: forall a. ReactComponent {|a}
outputImpl = motionComponentImpl "output"

output ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_output) => ReactComponent { | attrs }
output = outputImpl

pImpl :: forall a. ReactComponent {|a}
pImpl = motionComponentImpl "p"

p ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_p) => ReactComponent { | attrs }
p = pImpl

paramImpl :: forall a. ReactComponent {|a}
paramImpl = motionComponentImpl "param"

param ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_param) => ReactComponent { | attrs }
param = paramImpl

pictureImpl :: forall a. ReactComponent {|a}
pictureImpl = motionComponentImpl "picture"

picture ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_picture) => ReactComponent { | attrs }
picture = pictureImpl

preImpl :: forall a. ReactComponent {|a}
preImpl = motionComponentImpl "pre"

pre ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_pre) => ReactComponent { | attrs }
pre = preImpl

progressImpl :: forall a. ReactComponent {|a}
progressImpl = motionComponentImpl "progress"

progress ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_progress) => ReactComponent { | attrs }
progress = progressImpl

qImpl :: forall a. ReactComponent {|a}
qImpl = motionComponentImpl "q"

q ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_q) => ReactComponent { | attrs }
q = qImpl

rpImpl :: forall a. ReactComponent {|a}
rpImpl = motionComponentImpl "rp"

rp ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_rp) => ReactComponent { | attrs }
rp = rpImpl

rtImpl :: forall a. ReactComponent {|a}
rtImpl = motionComponentImpl "rt"

rt ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_rt) => ReactComponent { | attrs }
rt = rtImpl

rubyImpl :: forall a. ReactComponent {|a}
rubyImpl = motionComponentImpl "ruby"

ruby ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ruby) => ReactComponent { | attrs }
ruby = rubyImpl

sImpl :: forall a. ReactComponent {|a}
sImpl = motionComponentImpl "s"

s ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_s) => ReactComponent { | attrs }
s = sImpl

sampImpl :: forall a. ReactComponent {|a}
sampImpl = motionComponentImpl "samp"

samp ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_samp) => ReactComponent { | attrs }
samp = sampImpl

scriptImpl :: forall a. ReactComponent {|a}
scriptImpl = motionComponentImpl "script"

script ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_script) => ReactComponent { | attrs }
script = scriptImpl

sectionImpl :: forall a. ReactComponent {|a}
sectionImpl = motionComponentImpl "section"

section ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_section) => ReactComponent { | attrs }
section = sectionImpl

selectImpl :: forall a. ReactComponent {|a}
selectImpl = motionComponentImpl "select"

select ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_select) => ReactComponent { | attrs }
select = selectImpl

smallImpl :: forall a. ReactComponent {|a}
smallImpl = motionComponentImpl "small"

small ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_small) => ReactComponent { | attrs }
small = smallImpl

sourceImpl :: forall a. ReactComponent {|a}
sourceImpl = motionComponentImpl "source"

source ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_source) => ReactComponent { | attrs }
source = sourceImpl

spanImpl :: forall a. ReactComponent {|a}
spanImpl = motionComponentImpl "span"

span ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_span) => ReactComponent { | attrs }
span = spanImpl

strongImpl :: forall a. ReactComponent {|a}
strongImpl = motionComponentImpl "strong"

strong ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_strong) => ReactComponent { | attrs }
strong = strongImpl

styleImpl :: forall a. ReactComponent {|a}
styleImpl = motionComponentImpl "style"

style ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_style) => ReactComponent { | attrs }
style = styleImpl

subImpl :: forall a. ReactComponent {|a}
subImpl = motionComponentImpl "sub"

sub ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_sub) => ReactComponent { | attrs }
sub = subImpl

summaryImpl :: forall a. ReactComponent {|a}
summaryImpl = motionComponentImpl "summary"

summary ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_summary) => ReactComponent { | attrs }
summary = summaryImpl

supImpl :: forall a. ReactComponent {|a}
supImpl = motionComponentImpl "sup"

sup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_sup) => ReactComponent { | attrs }
sup = supImpl

tableImpl :: forall a. ReactComponent {|a}
tableImpl = motionComponentImpl "table"

table ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_table) => ReactComponent { | attrs }
table = tableImpl

tbodyImpl :: forall a. ReactComponent {|a}
tbodyImpl = motionComponentImpl "tbody"

tbody ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_tbody) => ReactComponent { | attrs }
tbody = tbodyImpl

tdImpl :: forall a. ReactComponent {|a}
tdImpl = motionComponentImpl "td"

td ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_td) => ReactComponent { | attrs }
td = tdImpl

textareaImpl :: forall a. ReactComponent {|a}
textareaImpl = motionComponentImpl "textarea"

textarea ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_textarea) => ReactComponent { | attrs }
textarea = textareaImpl

tfootImpl :: forall a. ReactComponent {|a}
tfootImpl = motionComponentImpl "tfoot"

tfoot ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_tfoot) => ReactComponent { | attrs }
tfoot = tfootImpl

thImpl :: forall a. ReactComponent {|a}
thImpl = motionComponentImpl "th"

th ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_th) => ReactComponent { | attrs }
th = thImpl

theadImpl :: forall a. ReactComponent {|a}
theadImpl = motionComponentImpl "thead"

thead ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_thead) => ReactComponent { | attrs }
thead = theadImpl

timeImpl :: forall a. ReactComponent {|a}
timeImpl = motionComponentImpl "time"

time ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_time) => ReactComponent { | attrs }
time = timeImpl

titleImpl :: forall a. ReactComponent {|a}
titleImpl = motionComponentImpl "title"

title ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_title) => ReactComponent { | attrs }
title = titleImpl

trImpl :: forall a. ReactComponent {|a}
trImpl = motionComponentImpl "tr"

tr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_tr) => ReactComponent { | attrs }
tr = trImpl

trackImpl :: forall a. ReactComponent {|a}
trackImpl = motionComponentImpl "track"

track ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_track) => ReactComponent { | attrs }
track = trackImpl

uImpl :: forall a. ReactComponent {|a}
uImpl = motionComponentImpl "u"

u ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_u) => ReactComponent { | attrs }
u = uImpl

ulImpl :: forall a. ReactComponent {|a}
ulImpl = motionComponentImpl "ul"

ul ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ul) => ReactComponent { | attrs }
ul = ulImpl

varImpl :: forall a. ReactComponent {|a}
varImpl = motionComponentImpl "var"

var ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_var) => ReactComponent { | attrs }
var = varImpl

videoImpl :: forall a. ReactComponent {|a}
videoImpl = motionComponentImpl "video"

video ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_video) => ReactComponent { | attrs }
video = videoImpl

wbrImpl :: forall a. ReactComponent {|a}
wbrImpl = motionComponentImpl "wbr"

wbr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_wbr) => ReactComponent { | attrs }
wbr = wbrImpl

-- No support in React.Basic.Hooks
-- webview :: forall attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_webview) => ReactComponent { | attrs }
-- webview = motionComponentImpl "webview"

svgAnimateImpl :: forall a. ReactComponent {|a}
svgAnimateImpl = motionComponentImpl "animate"

svgAnimate ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_animate) => ReactComponent { | attrs }
svgAnimate = svgAnimateImpl

circleImpl :: forall a. ReactComponent {|a}
circleImpl = motionComponentImpl "circle"

circle ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_circle) => ReactComponent { | attrs }
circle = circleImpl

clipPathImpl :: forall a. ReactComponent {|a}
clipPathImpl = motionComponentImpl "clipPath"

clipPath ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_clipPath) => ReactComponent { | attrs }
clipPath = clipPathImpl

defsImpl :: forall a. ReactComponent {|a}
defsImpl = motionComponentImpl "defs"

defs ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_defs) => ReactComponent { | attrs }
defs = defsImpl

descImpl :: forall a. ReactComponent {|a}
descImpl = motionComponentImpl "desc"

desc ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_desc) => ReactComponent { | attrs }
desc = descImpl

ellipseImpl :: forall a. ReactComponent {|a}
ellipseImpl = motionComponentImpl "ellipse"

ellipse ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_ellipse) => ReactComponent { | attrs }
ellipse = ellipseImpl

feBlendImpl :: forall a. ReactComponent {|a}
feBlendImpl = motionComponentImpl "feBlend"

feBlend ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feBlend) => ReactComponent { | attrs }
feBlend = feBlendImpl

feColorMatrixImpl :: forall a. ReactComponent {|a}
feColorMatrixImpl = motionComponentImpl "feColorMatrix"

feColorMatrix ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feColorMatrix) => ReactComponent { | attrs }
feColorMatrix = feColorMatrixImpl

feComponentTransferImpl :: forall a. ReactComponent {|a}
feComponentTransferImpl = motionComponentImpl "feComponentTransfer"

feComponentTransfer ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feComponentTransfer) => ReactComponent { | attrs }
feComponentTransfer = feComponentTransferImpl

feCompositeImpl :: forall a. ReactComponent {|a}
feCompositeImpl = motionComponentImpl "feComposite"

feComposite ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feComposite) => ReactComponent { | attrs }
feComposite = feCompositeImpl

feConvolveMatrixImpl :: forall a. ReactComponent {|a}
feConvolveMatrixImpl = motionComponentImpl "feConvolveMatrix"

feConvolveMatrix ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feConvolveMatrix) => ReactComponent { | attrs }
feConvolveMatrix = feConvolveMatrixImpl

feDiffuseLightingImpl :: forall a. ReactComponent {|a}
feDiffuseLightingImpl = motionComponentImpl "feDiffuseLighting"

feDiffuseLighting ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDiffuseLighting) => ReactComponent { | attrs }
feDiffuseLighting = feDiffuseLightingImpl

feDisplacementMapImpl :: forall a. ReactComponent {|a}
feDisplacementMapImpl = motionComponentImpl "feDisplacementMap"

feDisplacementMap ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDisplacementMap) => ReactComponent { | attrs }
feDisplacementMap = feDisplacementMapImpl

feDistantLightImpl :: forall a. ReactComponent {|a}
feDistantLightImpl = motionComponentImpl "feDistantLight"

feDistantLight ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDistantLight) => ReactComponent { | attrs }
feDistantLight = feDistantLightImpl

feDropShadowImpl :: forall a. ReactComponent {|a}
feDropShadowImpl = motionComponentImpl "feDropShadow"

feDropShadow ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDropShadow) => ReactComponent { | attrs }
feDropShadow = feDropShadowImpl

feFloodImpl :: forall a. ReactComponent {|a}
feFloodImpl = motionComponentImpl "feFlood"

feFlood ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFlood) => ReactComponent { | attrs }
feFlood = feFloodImpl

feFuncAImpl :: forall a. ReactComponent {|a}
feFuncAImpl = motionComponentImpl "feFuncA"

feFuncA ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncA) => ReactComponent { | attrs }
feFuncA = feFuncAImpl

feFuncBImpl :: forall a. ReactComponent {|a}
feFuncBImpl = motionComponentImpl "feFuncB"

feFuncB ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncB) => ReactComponent { | attrs }
feFuncB = feFuncBImpl

feFuncGImpl :: forall a. ReactComponent {|a}
feFuncGImpl = motionComponentImpl "feFuncG"

feFuncG ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncG) => ReactComponent { | attrs }
feFuncG = feFuncGImpl

feFuncRImpl :: forall a. ReactComponent {|a}
feFuncRImpl = motionComponentImpl "feFuncR"

feFuncR ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncR) => ReactComponent { | attrs }
feFuncR = feFuncRImpl

feGaussianBlurImpl :: forall a. ReactComponent {|a}
feGaussianBlurImpl = motionComponentImpl "feGaussianBlur"

feGaussianBlur ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feGaussianBlur) => ReactComponent { | attrs }
feGaussianBlur = feGaussianBlurImpl

feImageImpl :: forall a. ReactComponent {|a}
feImageImpl = motionComponentImpl "feImage"

feImage ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feImage) => ReactComponent { | attrs }
feImage = feImageImpl

feMergeImpl :: forall a. ReactComponent {|a}
feMergeImpl = motionComponentImpl "feMerge"

feMerge ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feMerge) => ReactComponent { | attrs }
feMerge = feMergeImpl

feMergeNodeImpl :: forall a. ReactComponent {|a}
feMergeNodeImpl = motionComponentImpl "feMergeNode"

feMergeNode ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feMergeNode) => ReactComponent { | attrs }
feMergeNode = feMergeNodeImpl

feMorphologyImpl :: forall a. ReactComponent {|a}
feMorphologyImpl = motionComponentImpl "feMorphology"

feMorphology ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feMorphology) => ReactComponent { | attrs }
feMorphology = feMorphologyImpl

feOffsetImpl :: forall a. ReactComponent {|a}
feOffsetImpl = motionComponentImpl "feOffset"

feOffset ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feOffset) => ReactComponent { | attrs }
feOffset = feOffsetImpl

fePointLightImpl :: forall a. ReactComponent {|a}
fePointLightImpl = motionComponentImpl "fePointLight"

fePointLight ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_fePointLight) => ReactComponent { | attrs }
fePointLight = fePointLightImpl

feSpecularLightingImpl :: forall a. ReactComponent {|a}
feSpecularLightingImpl = motionComponentImpl "feSpecularLighting"

feSpecularLighting ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feSpecularLighting) => ReactComponent { | attrs }
feSpecularLighting = feSpecularLightingImpl

feSpotLightImpl :: forall a. ReactComponent {|a}
feSpotLightImpl = motionComponentImpl "feSpotLight"

feSpotLight ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feSpotLight) => ReactComponent { | attrs }
feSpotLight = feSpotLightImpl

feTileImpl :: forall a. ReactComponent {|a}
feTileImpl = motionComponentImpl "feTile"

feTile ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feTile) => ReactComponent { | attrs }
feTile = feTileImpl

feTurbulenceImpl :: forall a. ReactComponent {|a}
feTurbulenceImpl = motionComponentImpl "feTurbulence"

feTurbulence ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feTurbulence) => ReactComponent { | attrs }
feTurbulence = feTurbulenceImpl

filterImpl :: forall a. ReactComponent {|a}
filterImpl = motionComponentImpl "filter"

filter ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_filter) => ReactComponent { | attrs }
filter = filterImpl

foreignObjectImpl :: forall a. ReactComponent {|a}
foreignObjectImpl = motionComponentImpl "foreignObject"

foreignObject ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_foreignObject) => ReactComponent { | attrs }
foreignObject = foreignObjectImpl

gImpl :: forall a. ReactComponent {|a}
gImpl = motionComponentImpl "g"

g ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_g) => ReactComponent { | attrs }
g = gImpl

imageImpl :: forall a. ReactComponent {|a}
imageImpl = motionComponentImpl "image"

image ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_image) => ReactComponent { | attrs }
image = imageImpl

lineImpl :: forall a. ReactComponent {|a}
lineImpl = motionComponentImpl "line"

line ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_line) => ReactComponent { | attrs }
line = lineImpl

linearGradientImpl :: forall a. ReactComponent {|a}
linearGradientImpl = motionComponentImpl "linearGradient"

linearGradient ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_linearGradient) => ReactComponent { | attrs }
linearGradient = linearGradientImpl

markerImpl :: forall a. ReactComponent {|a}
markerImpl = motionComponentImpl "marker"

marker ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_marker) => ReactComponent { | attrs }
marker = markerImpl

maskImpl :: forall a. ReactComponent {|a}
maskImpl = motionComponentImpl "mask"

mask ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_mask) => ReactComponent { | attrs }
mask = maskImpl

metadataImpl :: forall a. ReactComponent {|a}
metadataImpl = motionComponentImpl "metadata"

metadata ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_metadata) => ReactComponent { | attrs }
metadata = metadataImpl

pathImpl :: forall a. ReactComponent {|a}
pathImpl = motionComponentImpl "path"

path ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SharedSVGProps SVG.Props_path) => ReactComponent { | attrs }
path = pathImpl

patternImpl :: forall a. ReactComponent {|a}
patternImpl = motionComponentImpl "pattern"

pattern ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_pattern) => ReactComponent { | attrs }
pattern = patternImpl

polygonImpl :: forall a. ReactComponent {|a}
polygonImpl = motionComponentImpl "polygon"

polygon ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_polygon) => ReactComponent { | attrs }
polygon = polygonImpl

polylineImpl :: forall a. ReactComponent {|a}
polylineImpl = motionComponentImpl "polyline"

polyline ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_polyline) => ReactComponent { | attrs }
polyline = polylineImpl

radialGradientImpl :: forall a. ReactComponent {|a}
radialGradientImpl = motionComponentImpl "radialGradient"

radialGradient ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_radialGradient) => ReactComponent { | attrs }
radialGradient = radialGradientImpl

rectImpl :: forall a. ReactComponent {|a}
rectImpl = motionComponentImpl "rect"

rect ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_rect) => ReactComponent { | attrs }
rect = rectImpl

stopImpl :: forall a. ReactComponent {|a}
stopImpl = motionComponentImpl "stop"

stop ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_stop) => ReactComponent { | attrs }
stop = stopImpl

svgImpl :: forall a. ReactComponent {|a}
svgImpl = motionComponentImpl "svg"

svg ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SharedSVGProps SVG.Props_svg) => ReactComponent { | attrs }
svg = svgImpl

svgSwitchImpl :: forall a. ReactComponent {|a}
svgSwitchImpl = motionComponentImpl "switch"

svgSwitch ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_switch) => ReactComponent { | attrs }
svgSwitch = svgSwitchImpl

symbolImpl :: forall a. ReactComponent {|a}
symbolImpl = motionComponentImpl "symbol"

symbol ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_symbol) => ReactComponent { | attrs }
symbol = symbolImpl

textImpl :: forall a. ReactComponent {|a}
textImpl = motionComponentImpl "text"

text ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_text) => ReactComponent { | attrs }
text = textImpl

textPathImpl :: forall a. ReactComponent {|a}
textPathImpl = motionComponentImpl "textPath"

textPath ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_textPath) => ReactComponent { | attrs }
textPath = textPathImpl

tspanImpl :: forall a. ReactComponent {|a}
tspanImpl = motionComponentImpl "tspan"

tspan ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_tspan) => ReactComponent { | attrs }
tspan = tspanImpl

useImpl :: forall a. ReactComponent {|a}
useImpl = motionComponentImpl "use"

use ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_use) => ReactComponent { | attrs }
use = useImpl

viewImpl :: forall a. ReactComponent {|a}
viewImpl = motionComponentImpl "view"

view ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_view) => ReactComponent { | attrs }
view = viewImpl

