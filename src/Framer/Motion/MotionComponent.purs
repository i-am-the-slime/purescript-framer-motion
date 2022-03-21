module Framer.Motion.MotionComponent where

import Effect (Effect)
import Framer.Motion.Types (MotionProps)
import Prim.Row (class Union)
import React.Basic (ReactComponent)
import React.Basic.DOM as DOM
import React.Basic.DOM.Internal (SharedSVGProps)
import React.Basic.DOM.SVG as SVG
import Type.Row (type (+))

foreign import mkMotionComponentImpl ∷ ∀ a. String -> Effect (ReactComponent { | a })

foreign import custom ∷
  ∀ old.
  ReactComponent { | old } ->
  Effect (ReactComponent { | MotionProps old })

-- DOM
-- abbr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_abbr) => ReactComponent { | attrs }
-- abbr = unsafePerformEffect $ mkMotionComponentImpl "abbr"

-- addressImpl ∷ ∀ attrs. ReactComponent { | attrs }
-- addressImpl = unsafePerformEffect $ mkMotionComponentImpl "address"

-- address ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_address) => ReactComponent { | attrs }
-- address = addressImpl

-- areaImpl ∷ ∀ a. ReactComponent (Record a)
-- areaImpl = unsafePerformEffect $ mkMotionComponentImpl "area"

-- area ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_area) => ReactComponent { | attrs }
-- area = areaImpl

-- articleImpl ∷ ∀ t977. ReactComponent (Record t977)
-- articleImpl = unsafePerformEffect $ mkMotionComponentImpl "article"

-- article ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_article) => ReactComponent { | attrs }
-- article = articleImpl

-- asideImpl :: forall a. ReactComponent (Record a)
-- asideImpl = unsafePerformEffect $ mkMotionComponentImpl "aside"

-- aside ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_aside) => ReactComponent { | attrs }
-- aside = asideImpl
-- audioImpl :: forall a. ReactComponent (Record a)
-- audioImpl = unsafePerformEffect $ mkMotionComponentImpl "audio"

-- audio ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_audio) => ReactComponent { | attrs }
-- audio = audioImpl

-- bImpl :: forall a. ReactComponent (Record a)
-- bImpl = unsafePerformEffect $ mkMotionComponentImpl "b"

-- b ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_b) => ReactComponent { | attrs }
-- b = bImpl

-- baseImpl :: forall a. ReactComponent {|a}
-- baseImpl = unsafePerformEffect $ mkMotionComponentImpl "base"

-- base ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_base) => ReactComponent { | attrs }
-- base = baseImpl

-- bdiImpl :: forall a. ReactComponent {|a}
-- bdiImpl = unsafePerformEffect $ mkMotionComponentImpl "bdi"

-- bdi ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_bdi) => ReactComponent { | attrs }
-- bdi = bdiImpl

-- bdoImpl :: forall a. ReactComponent {|a}
-- bdoImpl = unsafePerformEffect $ mkMotionComponentImpl "bdo"

-- bdo ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_bdo) => ReactComponent { | attrs }
-- bdo = bdoImpl

-- -- No support in React Basic Hooks
-- -- big :: forall attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_big) => ReactComponent { | attrs }

-- blockquoteImpl :: forall a. ReactComponent {|a}
-- blockquoteImpl = unsafePerformEffect $ mkMotionComponentImpl "blockquote"

-- blockquote ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_blockquote) => ReactComponent { | attrs }
-- blockquote = blockquoteImpl

-- bodyImpl :: forall a. ReactComponent {|a}
-- bodyImpl = unsafePerformEffect $ mkMotionComponentImpl "body"

-- body ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_body) => ReactComponent { | attrs }
-- body = bodyImpl

-- brImpl :: forall a. ReactComponent {|a}
-- brImpl = unsafePerformEffect $ mkMotionComponentImpl "br"

-- br ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_br) => ReactComponent { | attrs }
-- br = brImpl

foreign import buttonImpl :: forall a. ReactComponent {|a}

button ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_button) => ReactComponent { | attrs }
button = buttonImpl

-- canvasImpl :: forall a. ReactComponent {|a}
-- canvasImpl = unsafePerformEffect $ mkMotionComponentImpl "canvas"

-- canvas ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_canvas) => ReactComponent { | attrs }
-- canvas = canvasImpl

-- captionImpl :: forall a. ReactComponent {|a}
-- captionImpl = unsafePerformEffect $ mkMotionComponentImpl "caption"

-- caption ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_caption) => ReactComponent { | attrs }
-- caption = captionImpl

-- citeImpl :: forall a. ReactComponent {|a}
-- citeImpl = unsafePerformEffect $ mkMotionComponentImpl "cite"

-- cite ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_cite) => ReactComponent { | attrs }
-- cite = citeImpl

-- codeImpl :: forall a. ReactComponent {|a}
-- codeImpl = unsafePerformEffect $ mkMotionComponentImpl "code"

-- code ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_code) => ReactComponent { | attrs }
-- code = codeImpl

-- colImpl :: forall a. ReactComponent {|a}
-- colImpl = unsafePerformEffect $ mkMotionComponentImpl "col"

-- colImplImpl :: forall a. ReactComponent {|a}
-- colImplImpl = colImpl

-- col ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_col) => ReactComponent { | attrs }
-- col = colImpl

-- colgroupImpl :: forall a. ReactComponent {|a}
-- colgroupImpl = unsafePerformEffect $ mkMotionComponentImpl "colgroup"

-- colgroup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_colgroup) => ReactComponent { | attrs }
-- colgroup = colgroupImpl

-- _data ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_data) => ReactComponent { | attrs }
-- _data = unsafePerformEffect $ mkMotionComponentImpl "data"

-- datalistImpl :: forall a. ReactComponent {|a}
-- datalistImpl = unsafePerformEffect $ mkMotionComponentImpl "datalist"

-- datalist ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_datalist) => ReactComponent { | attrs }
-- datalist = datalistImpl

-- ddImpl :: forall a. ReactComponent {|a}
-- ddImpl = unsafePerformEffect $ mkMotionComponentImpl "dd"

-- dd ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dd) => ReactComponent { | attrs }
-- dd = ddImpl

-- delImpl :: forall a. ReactComponent {|a}
-- delImpl = unsafePerformEffect $ mkMotionComponentImpl "del"

-- del ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_del) => ReactComponent { | attrs }
-- del = delImpl

-- detailsImpl :: forall a. ReactComponent {|a}
-- detailsImpl = unsafePerformEffect $ mkMotionComponentImpl "details"

-- details ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_details) => ReactComponent { | attrs }
-- details = detailsImpl

-- dfnImpl :: forall a. ReactComponent {|a}
-- dfnImpl = unsafePerformEffect $ mkMotionComponentImpl "dfn"

-- dfn ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dfn) => ReactComponent { | attrs }
-- dfn = dfnImpl

-- dialogImpl :: forall a. ReactComponent {|a}
-- dialogImpl = unsafePerformEffect $ mkMotionComponentImpl "dialog"

-- dialog ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dialog) => ReactComponent { | attrs }
-- dialog = dialogImpl

foreign import divImpl ∷ ∀ props. ReactComponent { | props }

div ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_div) => ReactComponent { | attrs }
div = divImpl

-- dlImpl :: forall a. ReactComponent {|a}
-- dlImpl = unsafePerformEffect $ mkMotionComponentImpl "dl"

-- dl ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dl) => ReactComponent { | attrs }
-- dl = dlImpl

-- dtImpl :: forall a. ReactComponent {|a}
-- dtImpl = unsafePerformEffect $ mkMotionComponentImpl "dt"

-- dt ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_dt) => ReactComponent { | attrs }
-- dt = dtImpl

-- emImpl :: forall a. ReactComponent {|a}
-- emImpl = unsafePerformEffect $ mkMotionComponentImpl "em"

-- em ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_em) => ReactComponent { | attrs }
-- em = emImpl

-- embedImpl :: forall a. ReactComponent {|a}
-- embedImpl = unsafePerformEffect $ mkMotionComponentImpl "embed"

-- embed ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_embed) => ReactComponent { | attrs }
-- embed = embedImpl

-- fieldsetImpl :: forall a. ReactComponent {|a}
-- fieldsetImpl = unsafePerformEffect $ mkMotionComponentImpl "fieldset"

-- fieldset ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_fieldset) => ReactComponent { | attrs }
-- fieldset = fieldsetImpl

-- figcaptionImpl :: forall a. ReactComponent {|a}
-- figcaptionImpl = unsafePerformEffect $ mkMotionComponentImpl "figcaption"

-- figcaption ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_figcaption) => ReactComponent { | attrs }
-- figcaption = figcaptionImpl

-- figureImpl :: forall a. ReactComponent {|a}
-- figureImpl = unsafePerformEffect $ mkMotionComponentImpl "figure"

-- figure ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_figure) => ReactComponent { | attrs }
-- figure = figureImpl

-- footerImpl :: forall a. ReactComponent {|a}
-- footerImpl = unsafePerformEffect $ mkMotionComponentImpl "footer"

-- footer ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_footer) => ReactComponent { | attrs }
-- footer = footerImpl

-- formImpl :: forall a. ReactComponent {|a}
-- formImpl = unsafePerformEffect $ mkMotionComponentImpl "form"

-- form ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_form) => ReactComponent { | attrs }
-- form = formImpl

-- h1Impl :: forall a. ReactComponent {|a}
-- h1Impl = unsafePerformEffect $ mkMotionComponentImpl "h1"

-- h1 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h1) => ReactComponent { | attrs }
-- h1 = h1Impl

-- h2Impl :: forall a. ReactComponent {|a}
-- h2Impl = unsafePerformEffect $ mkMotionComponentImpl "h2"

-- h2 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h2) => ReactComponent { | attrs }
-- h2 = h2Impl

-- h3Impl :: forall a. ReactComponent {|a}
-- h3Impl = unsafePerformEffect $ mkMotionComponentImpl "h3"

-- h3 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h3) => ReactComponent { | attrs }
-- h3 = h3Impl

-- h4Impl :: forall a. ReactComponent {|a}
-- h4Impl = unsafePerformEffect $ mkMotionComponentImpl "h4"

-- h4 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h4) => ReactComponent { | attrs }
-- h4 = h4Impl

-- h5Impl :: forall a. ReactComponent {|a}
-- h5Impl = unsafePerformEffect $ mkMotionComponentImpl "h5"

-- h5 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h5) => ReactComponent { | attrs }
-- h5 = h5Impl

-- h6Impl :: forall a. ReactComponent {|a}
-- h6Impl = unsafePerformEffect $ mkMotionComponentImpl "h6"

-- h6 ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_h6) => ReactComponent { | attrs }
-- h6 = h6Impl

-- headImpl :: forall a. ReactComponent {|a}
-- headImpl = unsafePerformEffect $ mkMotionComponentImpl "head"

-- head ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_head) => ReactComponent { | attrs }
-- head = headImpl

-- headerImpl :: forall a. ReactComponent {|a}
-- headerImpl = unsafePerformEffect $ mkMotionComponentImpl "header"

-- header ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_header) => ReactComponent { | attrs }
-- header = headerImpl

-- hgroupImpl :: forall a. ReactComponent {|a}
-- hgroupImpl = unsafePerformEffect $ mkMotionComponentImpl "hgroup"

-- hgroup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_hgroup) => ReactComponent { | attrs }
-- hgroup = hgroupImpl

-- hrImpl :: forall a. ReactComponent {|a}
-- hrImpl = unsafePerformEffect $ mkMotionComponentImpl "hr"

-- hr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_hr) => ReactComponent { | attrs }
-- hr = hrImpl

-- foreign import htmlImpl :: forall a. ReactComponent {|a}

-- html ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_html) => ReactComponent { | attrs }
-- html = htmlImpl

-- iImpl :: forall a. ReactComponent {|a}
-- iImpl = unsafePerformEffect $ mkMotionComponentImpl "i"

-- i ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_i) => ReactComponent { | attrs }
-- i = iImpl

-- iframeImpl :: forall a. ReactComponent {|a}
-- iframeImpl = unsafePerformEffect $ mkMotionComponentImpl "iframe"

-- iframe ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_iframe) => ReactComponent { | attrs }
-- iframe = iframeImpl

-- imgImpl :: forall a. ReactComponent {|a}
-- imgImpl = unsafePerformEffect $ mkMotionComponentImpl "img"

-- img ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_img) => ReactComponent { | attrs }
-- img = imgImpl

foreign import inputImpl :: forall a. ReactComponent {|a}

input ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_input) => ReactComponent { | attrs }
input = inputImpl

-- insImpl :: forall a. ReactComponent {|a}
-- insImpl = unsafePerformEffect $ mkMotionComponentImpl "ins"

-- ins ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ins) => ReactComponent { | attrs }
-- ins = insImpl

-- kbdImpl :: forall a. ReactComponent {|a}
-- kbdImpl = unsafePerformEffect $ mkMotionComponentImpl "kbd"

-- kbd ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_kbd) => ReactComponent { | attrs }
-- kbd = kbdImpl

-- keygenImpl :: forall a. ReactComponent {|a}
-- keygenImpl = unsafePerformEffect $ mkMotionComponentImpl "keygen"

-- keygen ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_keygen) => ReactComponent { | attrs }
-- keygen = keygenImpl

-- labelImpl :: forall a. ReactComponent {|a}
-- labelImpl = unsafePerformEffect $ mkMotionComponentImpl "label"

-- label ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_label) => ReactComponent { | attrs }
-- label = labelImpl

-- legendImpl :: forall a. ReactComponent {|a}
-- legendImpl = unsafePerformEffect $ mkMotionComponentImpl "legend"

-- legend ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_legend) => ReactComponent { | attrs }
-- legend = legendImpl

foreign import liImpl :: forall a. ReactComponent {|a}

li ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_li) => ReactComponent { | attrs }
li = liImpl

-- linkImpl :: forall a. ReactComponent {|a}
-- linkImpl = unsafePerformEffect $ mkMotionComponentImpl "link"

-- link ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_link) => ReactComponent { | attrs }
-- link = linkImpl

-- mainImpl :: forall a. ReactComponent {|a}
-- mainImpl = unsafePerformEffect $ mkMotionComponentImpl "main"

-- main ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_main) => ReactComponent { | attrs }
-- main = mainImpl

-- mapImpl :: forall a. ReactComponent {|a}
-- mapImpl = unsafePerformEffect $ mkMotionComponentImpl "map"

-- map ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_map) => ReactComponent { | attrs }
-- map = mapImpl

-- markImpl :: forall a. ReactComponent {|a}
-- markImpl = unsafePerformEffect $ mkMotionComponentImpl "mark"

-- mark ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_mark) => ReactComponent { | attrs }
-- mark = markImpl

-- menuImpl :: forall a. ReactComponent {|a}
-- menuImpl = unsafePerformEffect $ mkMotionComponentImpl "menu"

-- menu ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_menu) => ReactComponent { | attrs }
-- menu = menuImpl

-- menuitemImpl :: forall a. ReactComponent {|a}
-- menuitemImpl = unsafePerformEffect $ mkMotionComponentImpl "menuitem"

-- menuitem ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_menuitem) => ReactComponent { | attrs }
-- menuitem = menuitemImpl

-- metaImpl :: forall a. ReactComponent {|a}
-- metaImpl = unsafePerformEffect $ mkMotionComponentImpl "meta"

-- meta ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_meta) => ReactComponent { | attrs }
-- meta = metaImpl

-- meterImpl :: forall a. ReactComponent {|a}
-- meterImpl = unsafePerformEffect $ mkMotionComponentImpl "meter"

-- meter ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_meter) => ReactComponent { | attrs }
-- meter = meterImpl

-- navImpl :: forall a. ReactComponent {|a}
-- navImpl = unsafePerformEffect $ mkMotionComponentImpl "nav"

-- nav ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_nav) => ReactComponent { | attrs }
-- nav = navImpl

-- noscriptImpl :: forall a. ReactComponent {|a}
-- noscriptImpl = unsafePerformEffect $ mkMotionComponentImpl "noscript"

-- noscript ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_noscript) => ReactComponent { | attrs }
-- noscript = noscriptImpl

-- objectImpl :: forall a. ReactComponent {|a}
-- objectImpl = unsafePerformEffect $ mkMotionComponentImpl "object"

-- object ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_object) => ReactComponent { | attrs }
-- object = objectImpl

-- olImpl :: forall a. ReactComponent {|a}
-- olImpl = unsafePerformEffect $ mkMotionComponentImpl "ol"

-- ol ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ol) => ReactComponent { | attrs }
-- ol = olImpl

-- optgroupImpl :: forall a. ReactComponent {|a}
-- optgroupImpl = unsafePerformEffect $ mkMotionComponentImpl "optgroup"

-- optgroup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_optgroup) => ReactComponent { | attrs }
-- optgroup = optgroupImpl

-- optionImpl :: forall a. ReactComponent {|a}
-- optionImpl = unsafePerformEffect $ mkMotionComponentImpl "option"

-- option ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_option) => ReactComponent { | attrs }
-- option = optionImpl

-- outputImpl :: forall a. ReactComponent {|a}
-- outputImpl = unsafePerformEffect $ mkMotionComponentImpl "output"

-- output ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_output) => ReactComponent { | attrs }
-- output = outputImpl

-- pImpl :: forall a. ReactComponent {|a}
-- pImpl = unsafePerformEffect $ mkMotionComponentImpl "p"

-- p ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_p) => ReactComponent { | attrs }
-- p = pImpl

-- paramImpl :: forall a. ReactComponent {|a}
-- paramImpl = unsafePerformEffect $ mkMotionComponentImpl "param"

-- param ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_param) => ReactComponent { | attrs }
-- param = paramImpl

-- pictureImpl :: forall a. ReactComponent {|a}
-- pictureImpl = unsafePerformEffect $ mkMotionComponentImpl "picture"

-- picture ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_picture) => ReactComponent { | attrs }
-- picture = pictureImpl

-- preImpl :: forall a. ReactComponent {|a}
-- preImpl = unsafePerformEffect $ mkMotionComponentImpl "pre"

-- pre ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_pre) => ReactComponent { | attrs }
-- pre = preImpl

-- progressImpl :: forall a. ReactComponent {|a}
-- progressImpl = unsafePerformEffect $ mkMotionComponentImpl "progress"

-- progress ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_progress) => ReactComponent { | attrs }
-- progress = progressImpl

-- qImpl :: forall a. ReactComponent {|a}
-- qImpl = unsafePerformEffect $ mkMotionComponentImpl "q"

-- q ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_q) => ReactComponent { | attrs }
-- q = qImpl

-- rpImpl :: forall a. ReactComponent {|a}
-- rpImpl = unsafePerformEffect $ mkMotionComponentImpl "rp"

-- rp ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_rp) => ReactComponent { | attrs }
-- rp = rpImpl

-- rtImpl :: forall a. ReactComponent {|a}
-- rtImpl = unsafePerformEffect $ mkMotionComponentImpl "rt"

-- rt ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_rt) => ReactComponent { | attrs }
-- rt = rtImpl

-- rubyImpl :: forall a. ReactComponent {|a}
-- rubyImpl = unsafePerformEffect $ mkMotionComponentImpl "ruby"

-- ruby ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ruby) => ReactComponent { | attrs }
-- ruby = rubyImpl

-- sImpl :: forall a. ReactComponent {|a}
-- sImpl = unsafePerformEffect $ mkMotionComponentImpl "s"

-- s ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_s) => ReactComponent { | attrs }
-- s = sImpl

-- sampImpl :: forall a. ReactComponent {|a}
-- sampImpl = unsafePerformEffect $ mkMotionComponentImpl "samp"

-- samp ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_samp) => ReactComponent { | attrs }
-- samp = sampImpl

-- scriptImpl :: forall a. ReactComponent {|a}
-- scriptImpl = unsafePerformEffect $ mkMotionComponentImpl "script"

-- script ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_script) => ReactComponent { | attrs }
-- script = scriptImpl

-- sectionImpl :: forall a. ReactComponent {|a}
-- sectionImpl = unsafePerformEffect $ mkMotionComponentImpl "section"

-- section ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_section) => ReactComponent { | attrs }
-- section = sectionImpl

-- selectImpl :: forall a. ReactComponent {|a}
-- selectImpl = unsafePerformEffect $ mkMotionComponentImpl "select"

-- select ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_select) => ReactComponent { | attrs }
-- select = selectImpl

-- smallImpl :: forall a. ReactComponent {|a}
-- smallImpl = unsafePerformEffect $ mkMotionComponentImpl "small"

-- small ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_small) => ReactComponent { | attrs }
-- small = smallImpl

-- sourceImpl :: forall a. ReactComponent {|a}
-- sourceImpl = unsafePerformEffect $ mkMotionComponentImpl "source"

-- source ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_source) => ReactComponent { | attrs }
-- source = sourceImpl

foreign import spanImpl :: forall a. ReactComponent {|a}

span ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_span) => ReactComponent { | attrs }
span = spanImpl

-- strongImpl :: forall a. ReactComponent {|a}
-- strongImpl = unsafePerformEffect $ mkMotionComponentImpl "strong"

-- strong ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_strong) => ReactComponent { | attrs }
-- strong = strongImpl

-- styleImpl :: forall a. ReactComponent {|a}
-- styleImpl = unsafePerformEffect $ mkMotionComponentImpl "style"

-- style ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_style) => ReactComponent { | attrs }
-- style = styleImpl

-- subImpl :: forall a. ReactComponent {|a}
-- subImpl = unsafePerformEffect $ mkMotionComponentImpl "sub"

-- sub ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_sub) => ReactComponent { | attrs }
-- sub = subImpl

-- summaryImpl :: forall a. ReactComponent {|a}
-- summaryImpl = unsafePerformEffect $ mkMotionComponentImpl "summary"

-- summary ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_summary) => ReactComponent { | attrs }
-- summary = summaryImpl

-- supImpl :: forall a. ReactComponent {|a}
-- supImpl = unsafePerformEffect $ mkMotionComponentImpl "sup"

-- sup ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_sup) => ReactComponent { | attrs }
-- sup = supImpl

-- tableImpl :: forall a. ReactComponent {|a}
-- tableImpl = unsafePerformEffect $ mkMotionComponentImpl "table"

-- table ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_table) => ReactComponent { | attrs }
-- table = tableImpl

-- tbodyImpl :: forall a. ReactComponent {|a}
-- tbodyImpl = unsafePerformEffect $ mkMotionComponentImpl "tbody"

-- tbody ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_tbody) => ReactComponent { | attrs }
-- tbody = tbodyImpl

-- tdImpl :: forall a. ReactComponent {|a}
-- tdImpl = unsafePerformEffect $ mkMotionComponentImpl "td"

-- td ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_td) => ReactComponent { | attrs }
-- td = tdImpl

-- textareaImpl :: forall a. ReactComponent {|a}
-- textareaImpl = unsafePerformEffect $ mkMotionComponentImpl "textarea"

-- textarea ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_textarea) => ReactComponent { | attrs }
-- textarea = textareaImpl

-- tfootImpl :: forall a. ReactComponent {|a}
-- tfootImpl = unsafePerformEffect $ mkMotionComponentImpl "tfoot"

-- tfoot ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_tfoot) => ReactComponent { | attrs }
-- tfoot = tfootImpl

-- thImpl :: forall a. ReactComponent {|a}
-- thImpl = unsafePerformEffect $ mkMotionComponentImpl "th"

-- th ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_th) => ReactComponent { | attrs }
-- th = thImpl

-- theadImpl :: forall a. ReactComponent {|a}
-- theadImpl = unsafePerformEffect $ mkMotionComponentImpl "thead"

-- thead ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_thead) => ReactComponent { | attrs }
-- thead = theadImpl

-- timeImpl :: forall a. ReactComponent {|a}
-- timeImpl = unsafePerformEffect $ mkMotionComponentImpl "time"

-- time ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_time) => ReactComponent { | attrs }
-- time = timeImpl

-- titleImpl :: forall a. ReactComponent {|a}
-- titleImpl = unsafePerformEffect $ mkMotionComponentImpl "title"

-- title ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_title) => ReactComponent { | attrs }
-- title = titleImpl

foreign import trImpl :: forall a. ReactComponent {|a}

tr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_tr) => ReactComponent { | attrs }
tr = trImpl

-- tr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_tr) => ReactComponent { | attrs }
-- tr = trImpl

-- trackImpl :: forall a. ReactComponent {|a}
-- trackImpl = unsafePerformEffect $ mkMotionComponentImpl "track"

-- track ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_track) => ReactComponent { | attrs }
-- track = trackImpl

-- uImpl :: forall a. ReactComponent {|a}
-- uImpl = unsafePerformEffect $ mkMotionComponentImpl "u"

-- u ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_u) => ReactComponent { | attrs }
-- u = uImpl

-- ulImpl :: forall a. ReactComponent {|a}
-- ulImpl = unsafePerformEffect $ mkMotionComponentImpl "ul"

-- ul ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_ul) => ReactComponent { | attrs }
-- ul = ulImpl

-- varImpl :: forall a. ReactComponent {|a}
-- varImpl = unsafePerformEffect $ mkMotionComponentImpl "var"

-- var ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_var) => ReactComponent { | attrs }
-- var = varImpl

-- videoImpl :: forall a. ReactComponent {|a}
-- videoImpl = unsafePerformEffect $ mkMotionComponentImpl "video"

-- video ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_video) => ReactComponent { | attrs }
-- video = videoImpl

-- wbrImpl :: forall a. ReactComponent {|a}
-- wbrImpl = unsafePerformEffect $ mkMotionComponentImpl "wbr"

-- wbr ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_wbr) => ReactComponent { | attrs }
-- wbr = wbrImpl

-- -- No support in React.Basic.Hooks
-- -- webview :: forall attrs attrs_. Union attrs attrs_ (MotionProps + DOM.Props_webview) => ReactComponent { | attrs }
-- -- webview = unsafePerformEffect $ mkMotionComponentImpl "webview"

-- svgAnimateImpl :: forall a. ReactComponent {|a}
-- svgAnimateImpl = unsafePerformEffect $ mkMotionComponentImpl "animate"

-- svgAnimate ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_animate) => ReactComponent { | attrs }
-- svgAnimate = svgAnimateImpl

-- circleImpl :: forall a. ReactComponent {|a}
-- circleImpl = unsafePerformEffect $ mkMotionComponentImpl "circle"

-- circle ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_circle) => ReactComponent { | attrs }
-- circle = circleImpl

-- clipPathImpl :: forall a. ReactComponent {|a}
-- clipPathImpl = unsafePerformEffect $ mkMotionComponentImpl "clipPath"

-- clipPath ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_clipPath) => ReactComponent { | attrs }
-- clipPath = clipPathImpl

-- defsImpl :: forall a. ReactComponent {|a}
-- defsImpl = unsafePerformEffect $ mkMotionComponentImpl "defs"

-- defs ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_defs) => ReactComponent { | attrs }
-- defs = defsImpl

-- descImpl :: forall a. ReactComponent {|a}
-- descImpl = unsafePerformEffect $ mkMotionComponentImpl "desc"

-- desc ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_desc) => ReactComponent { | attrs }
-- desc = descImpl

-- ellipseImpl :: forall a. ReactComponent {|a}
-- ellipseImpl = unsafePerformEffect $ mkMotionComponentImpl "ellipse"

-- ellipse ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_ellipse) => ReactComponent { | attrs }
-- ellipse = ellipseImpl

-- feBlendImpl :: forall a. ReactComponent {|a}
-- feBlendImpl = unsafePerformEffect $ mkMotionComponentImpl "feBlend"

-- feBlend ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feBlend) => ReactComponent { | attrs }
-- feBlend = feBlendImpl

-- feColorMatrixImpl :: forall a. ReactComponent {|a}
-- feColorMatrixImpl = unsafePerformEffect $ mkMotionComponentImpl "feColorMatrix"

-- feColorMatrix ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feColorMatrix) => ReactComponent { | attrs }
-- feColorMatrix = feColorMatrixImpl

-- feComponentTransferImpl :: forall a. ReactComponent {|a}
-- feComponentTransferImpl = unsafePerformEffect $ mkMotionComponentImpl "feComponentTransfer"

-- feComponentTransfer ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feComponentTransfer) => ReactComponent { | attrs }
-- feComponentTransfer = feComponentTransferImpl

-- feCompositeImpl :: forall a. ReactComponent {|a}
-- feCompositeImpl = unsafePerformEffect $ mkMotionComponentImpl "feComposite"

-- feComposite ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feComposite) => ReactComponent { | attrs }
-- feComposite = feCompositeImpl

-- feConvolveMatrixImpl :: forall a. ReactComponent {|a}
-- feConvolveMatrixImpl = unsafePerformEffect $ mkMotionComponentImpl "feConvolveMatrix"

-- feConvolveMatrix ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feConvolveMatrix) => ReactComponent { | attrs }
-- feConvolveMatrix = feConvolveMatrixImpl

-- feDiffuseLightingImpl :: forall a. ReactComponent {|a}
-- feDiffuseLightingImpl = unsafePerformEffect $ mkMotionComponentImpl "feDiffuseLighting"

-- feDiffuseLighting ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDiffuseLighting) => ReactComponent { | attrs }
-- feDiffuseLighting = feDiffuseLightingImpl

-- feDisplacementMapImpl :: forall a. ReactComponent {|a}
-- feDisplacementMapImpl = unsafePerformEffect $ mkMotionComponentImpl "feDisplacementMap"

-- feDisplacementMap ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDisplacementMap) => ReactComponent { | attrs }
-- feDisplacementMap = feDisplacementMapImpl

-- feDistantLightImpl :: forall a. ReactComponent {|a}
-- feDistantLightImpl = unsafePerformEffect $ mkMotionComponentImpl "feDistantLight"

-- feDistantLight ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDistantLight) => ReactComponent { | attrs }
-- feDistantLight = feDistantLightImpl

-- feDropShadowImpl :: forall a. ReactComponent {|a}
-- feDropShadowImpl = unsafePerformEffect $ mkMotionComponentImpl "feDropShadow"

-- feDropShadow ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feDropShadow) => ReactComponent { | attrs }
-- feDropShadow = feDropShadowImpl

-- feFloodImpl :: forall a. ReactComponent {|a}
-- feFloodImpl = unsafePerformEffect $ mkMotionComponentImpl "feFlood"

-- feFlood ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFlood) => ReactComponent { | attrs }
-- feFlood = feFloodImpl

-- feFuncAImpl :: forall a. ReactComponent {|a}
-- feFuncAImpl = unsafePerformEffect $ mkMotionComponentImpl "feFuncA"

-- feFuncA ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncA) => ReactComponent { | attrs }
-- feFuncA = feFuncAImpl

-- feFuncBImpl :: forall a. ReactComponent {|a}
-- feFuncBImpl = unsafePerformEffect $ mkMotionComponentImpl "feFuncB"

-- feFuncB ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncB) => ReactComponent { | attrs }
-- feFuncB = feFuncBImpl

-- feFuncGImpl :: forall a. ReactComponent {|a}
-- feFuncGImpl = unsafePerformEffect $ mkMotionComponentImpl "feFuncG"

-- feFuncG ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncG) => ReactComponent { | attrs }
-- feFuncG = feFuncGImpl

-- feFuncRImpl :: forall a. ReactComponent {|a}
-- feFuncRImpl = unsafePerformEffect $ mkMotionComponentImpl "feFuncR"

-- feFuncR ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feFuncR) => ReactComponent { | attrs }
-- feFuncR = feFuncRImpl

-- feGaussianBlurImpl :: forall a. ReactComponent {|a}
-- feGaussianBlurImpl = unsafePerformEffect $ mkMotionComponentImpl "feGaussianBlur"

-- feGaussianBlur ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feGaussianBlur) => ReactComponent { | attrs }
-- feGaussianBlur = feGaussianBlurImpl

-- feImageImpl :: forall a. ReactComponent {|a}
-- feImageImpl = unsafePerformEffect $ mkMotionComponentImpl "feImage"

-- feImage ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feImage) => ReactComponent { | attrs }
-- feImage = feImageImpl

-- feMergeImpl :: forall a. ReactComponent {|a}
-- feMergeImpl = unsafePerformEffect $ mkMotionComponentImpl "feMerge"

-- feMerge ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feMerge) => ReactComponent { | attrs }
-- feMerge = feMergeImpl

-- feMergeNodeImpl :: forall a. ReactComponent {|a}
-- feMergeNodeImpl = unsafePerformEffect $ mkMotionComponentImpl "feMergeNode"

-- feMergeNode ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feMergeNode) => ReactComponent { | attrs }
-- feMergeNode = feMergeNodeImpl

-- feMorphologyImpl :: forall a. ReactComponent {|a}
-- feMorphologyImpl = unsafePerformEffect $ mkMotionComponentImpl "feMorphology"

-- feMorphology ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feMorphology) => ReactComponent { | attrs }
-- feMorphology = feMorphologyImpl

-- feOffsetImpl :: forall a. ReactComponent {|a}
-- feOffsetImpl = unsafePerformEffect $ mkMotionComponentImpl "feOffset"

-- feOffset ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feOffset) => ReactComponent { | attrs }
-- feOffset = feOffsetImpl

-- fePointLightImpl :: forall a. ReactComponent {|a}
-- fePointLightImpl = unsafePerformEffect $ mkMotionComponentImpl "fePointLight"

-- fePointLight ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_fePointLight) => ReactComponent { | attrs }
-- fePointLight = fePointLightImpl

-- feSpecularLightingImpl :: forall a. ReactComponent {|a}
-- feSpecularLightingImpl = unsafePerformEffect $ mkMotionComponentImpl "feSpecularLighting"

-- feSpecularLighting ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feSpecularLighting) => ReactComponent { | attrs }
-- feSpecularLighting = feSpecularLightingImpl

-- feSpotLightImpl :: forall a. ReactComponent {|a}
-- feSpotLightImpl = unsafePerformEffect $ mkMotionComponentImpl "feSpotLight"

-- feSpotLight ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feSpotLight) => ReactComponent { | attrs }
-- feSpotLight = feSpotLightImpl

-- feTileImpl :: forall a. ReactComponent {|a}
-- feTileImpl = unsafePerformEffect $ mkMotionComponentImpl "feTile"

-- feTile ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feTile) => ReactComponent { | attrs }
-- feTile = feTileImpl

-- feTurbulenceImpl :: forall a. ReactComponent {|a}
-- feTurbulenceImpl = unsafePerformEffect $ mkMotionComponentImpl "feTurbulence"

-- feTurbulence ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_feTurbulence) => ReactComponent { | attrs }
-- feTurbulence = feTurbulenceImpl

-- filterImpl :: forall a. ReactComponent {|a}
-- filterImpl = unsafePerformEffect $ mkMotionComponentImpl "filter"

-- filter ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_filter) => ReactComponent { | attrs }
-- filter = filterImpl

-- foreignObjectImpl :: forall a. ReactComponent {|a}
-- foreignObjectImpl = unsafePerformEffect $ mkMotionComponentImpl "foreignObject"

-- foreignObject ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_foreignObject) => ReactComponent { | attrs }
-- foreignObject = foreignObjectImpl

-- gImpl :: forall a. ReactComponent {|a}
-- gImpl = unsafePerformEffect $ mkMotionComponentImpl "g"

-- g ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_g) => ReactComponent { | attrs }
-- g = gImpl

-- imageImpl :: forall a. ReactComponent {|a}
-- imageImpl = unsafePerformEffect $ mkMotionComponentImpl "image"

-- image ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_image) => ReactComponent { | attrs }
-- image = imageImpl

-- lineImpl :: forall a. ReactComponent {|a}
-- lineImpl = unsafePerformEffect $ mkMotionComponentImpl "line"

-- line ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_line) => ReactComponent { | attrs }
-- line = lineImpl

-- linearGradientImpl :: forall a. ReactComponent {|a}
-- linearGradientImpl = unsafePerformEffect $ mkMotionComponentImpl "linearGradient"

-- linearGradient ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_linearGradient) => ReactComponent { | attrs }
-- linearGradient = linearGradientImpl

-- markerImpl :: forall a. ReactComponent {|a}
-- markerImpl = unsafePerformEffect $ mkMotionComponentImpl "marker"

-- marker ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_marker) => ReactComponent { | attrs }
-- marker = markerImpl

-- maskImpl :: forall a. ReactComponent {|a}
-- maskImpl = unsafePerformEffect $ mkMotionComponentImpl "mask"

-- mask ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_mask) => ReactComponent { | attrs }
-- mask = maskImpl

-- metadataImpl :: forall a. ReactComponent {|a}
-- metadataImpl = unsafePerformEffect $ mkMotionComponentImpl "metadata"

-- metadata ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_metadata) => ReactComponent { | attrs }
-- metadata = metadataImpl

foreign import pathImpl :: forall a. ReactComponent {|a}

path ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SharedSVGProps SVG.Props_path) => ReactComponent { | attrs }
path = pathImpl

-- patternImpl :: forall a. ReactComponent {|a}
-- patternImpl = unsafePerformEffect $ mkMotionComponentImpl "pattern"

-- pattern ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_pattern) => ReactComponent { | attrs }
-- pattern = patternImpl

-- polygonImpl :: forall a. ReactComponent {|a}
-- polygonImpl = unsafePerformEffect $ mkMotionComponentImpl "polygon"

-- polygon ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_polygon) => ReactComponent { | attrs }
-- polygon = polygonImpl

-- polylineImpl :: forall a. ReactComponent {|a}
-- polylineImpl = unsafePerformEffect $ mkMotionComponentImpl "polyline"

-- polyline ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_polyline) => ReactComponent { | attrs }
-- polyline = polylineImpl

-- radialGradientImpl :: forall a. ReactComponent {|a}
-- radialGradientImpl = unsafePerformEffect $ mkMotionComponentImpl "radialGradient"

-- radialGradient ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_radialGradient) => ReactComponent { | attrs }
-- radialGradient = radialGradientImpl

-- rectImpl :: forall a. ReactComponent {|a}
-- rectImpl = unsafePerformEffect $ mkMotionComponentImpl "rect"

-- rect ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_rect) => ReactComponent { | attrs }
-- rect = rectImpl

-- stopImpl :: forall a. ReactComponent {|a}
-- stopImpl = unsafePerformEffect $ mkMotionComponentImpl "stop"

-- stop ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_stop) => ReactComponent { | attrs }
-- stop = stopImpl

foreign import svgImpl :: forall a. ReactComponent {|a}

svg ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SharedSVGProps SVG.Props_svg) => ReactComponent { | attrs }
svg = svgImpl

-- svgSwitchImpl :: forall a. ReactComponent {|a}
-- svgSwitchImpl = unsafePerformEffect $ mkMotionComponentImpl "switch"

-- svgSwitch ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_switch) => ReactComponent { | attrs }
-- svgSwitch = svgSwitchImpl

-- symbolImpl :: forall a. ReactComponent {|a}
-- symbolImpl = unsafePerformEffect $ mkMotionComponentImpl "symbol"

-- symbol ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_symbol) => ReactComponent { | attrs }
-- symbol = symbolImpl

-- textImpl :: forall a. ReactComponent {|a}
-- textImpl = unsafePerformEffect $ mkMotionComponentImpl "text"

-- text ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_text) => ReactComponent { | attrs }
-- text = textImpl

-- textPathImpl :: forall a. ReactComponent {|a}
-- textPathImpl = unsafePerformEffect $ mkMotionComponentImpl "textPath"

-- textPath ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_textPath) => ReactComponent { | attrs }
-- textPath = textPathImpl

-- tspanImpl :: forall a. ReactComponent {|a}
-- tspanImpl = unsafePerformEffect $ mkMotionComponentImpl "tspan"

-- tspan ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_tspan) => ReactComponent { | attrs }
-- tspan = tspanImpl

-- useImpl :: forall a. ReactComponent {|a}
-- useImpl = unsafePerformEffect $ mkMotionComponentImpl "use"

-- use ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_use) => ReactComponent { | attrs }
-- use = useImpl

-- viewImpl :: forall a. ReactComponent {|a}
-- viewImpl = unsafePerformEffect $ mkMotionComponentImpl "view"

-- view ∷ ∀ attrs attrs_. Union attrs attrs_ (MotionProps + SVG.Props_view) => ReactComponent { | attrs }
-- view = viewImpl

