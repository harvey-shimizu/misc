


n  ,hp          @<Plug>(GitGutterPreviewHunk)
n  ,hu          @<Plug>(GitGutterUndoHunk)
n  ,hs          @<Plug>(GitGutterStageHunk)
x  ,hs          @<Plug>(GitGutterStageHunk)
n  [c           @<Plug>(GitGutterPrevHunk)
n  ]c           @<Plug>(GitGutterNextHunk)
x  ac           @<Plug>(GitGutterTextObjectOuterVisual)
o  ac           @<Plug>(GitGutterTextObjectOuterPending)
x  ic           @<Plug>(GitGutterTextObjectInnerVisual)
o  ic           @<Plug>(GitGutterTextObjectInnerPending)
   <M-n>       *@:call AutoPairsJump()<CR>
   <M-p>       *@:call AutoPairsToggle()<CR>
x  <Tab>         <Plug>snipMateVisual
s  <Tab>         <Plug>snipMateNextOrTrigger
   <Space>       /
v  #           * :<C-U>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
v  $e          * <Esc>`>a`<Esc>`<i`<Esc>
v  $q          * <Esc>`>a'<Esc>`<i'<Esc>
v  $$          * <Esc>`>a"<Esc>`<i"<Esc>
v  $3          * <Esc>`>a}<Esc>`<i{<Esc>
v  $2          * <Esc>`>a]<Esc>`<i[<Esc>
v  $1          * <Esc>`>a)<Esc>`<i(<Esc>
v  *           * :<C-U>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
v  +             <Plug>(expand_region_expand)
n  +             <Plug>(expand_region_expand)
n  ,bv         & :BufExplorerVerticalSplit<CR>
n  ,bs         & :BufExplorerHorizontalSplit<CR>
n  ,bt         & :ToggleBufExplorer<CR>
n  ,b9         * :b 9<CR>
n  ,b8         * :b 8<CR>
n  ,b7         * :b 7<CR>
n  ,b6         * :b 6<CR>
n  ,b5         * :b 5<CR>
n  ,b4         * :b 4<CR>
n  ,b3         * :b 3<CR>
n  ,b2         * :b 2<CR>
n  ,b1         * :b 1<CR>
n  ,ls         * :ls<CR>
n  ,db         * :bd<CR>
n  ,hc         * :helpc<CR>
n  ,r            :!python3 %<CR>
n  ,aa           :qa!<CR>
   ,p            :cp<CR>
   ,n            :cn<CR>
   ,co           ggVGy:tabnew<CR>:set syntax=qf<CR>pgg
   ,cc           :botright cope<CR>
v  ,r          * :call VisualSelection('replace', '')<CR>
   ,e4           :e! ~/.vim_runtime/vimrcs/plugins_config.vim<CR>
   ,e3           :e! ~/.vim_runtime/vimrcs/filetypes.vim<CR>
   ,e2           :e! ~/.vim_runtime/vimrcs/extended.vim<CR>
   ,e1           :e! ~/.vim_runtime/vimrcs/basic.vim<CR>
   ,ee           :e! ~/.vim_runtime/my_configs.vim<CR>
n  ,ev         * :vsplit $MYVIMRC<CR>
n  ,e0         * :e! ~/.vimrc<CR>
   ,g            :Ack<Space>
n  ,d          * :GitGutterToggle<CR>
n  ,a            :q<CR>
n  ,z          * :Goyo<CR>
   ,nf           :NERDTreeFind<CR>
   ,nb           :NERDTreeFromBookmark<Space>
   ,nn           :NERDTreeToggle<CR>
   ,b            :CtrlPBuffer<CR>
   ,f            :CtrlPMRU<CR>
   ,o            :BufExplorer<CR>
   ,pp           :setlocal paste!<CR>
   ,x            :e ~/buffer.md<CR>
   ,q            :e ~/buffer<CR>
   ,m          * mmHmt:%s/<C-V><CR>//ge<CR>'tzt'm
   ,s?           z=
   ,sa           zg
   ,sp           [s
   ,sn           ]s
   ,ss           :setlocal spell!<CR>
   ,cd           :cd %:p:h<CR>:pwd<CR>
   ,te           :tabedit <C-R>=expand("%:p:h")<CR>/
n  ,tl           :exe "tabn ".g:lasttab<CR>
   ,t,           :tabnext<Space>
   ,tm           :tabmove<Space>
   ,tc           :tabclose<CR>
   ,to           :tabonly<CR>
   ,tn           :tabnew<CR>
   ,h            :bprevious<CR>
   ,l            :bnext<CR>
   ,ba           :bufdo bd<CR>
   ,bd           :Bclose<CR>:tabclose<CR>gT
   ,<CR>         :noh<CR>
n  ,w            :w!<CR>
s  0             <SNR>117_yank_with_key("0")
nox0             ^
s  1             <SNR>117_yank_with_key("1")
s  2             <SNR>117_yank_with_key("2")
s  3             <SNR>117_yank_with_key("3")
s  4             <SNR>117_yank_with_key("4")
s  5             <SNR>117_yank_with_key("5")
s  6             <SNR>117_yank_with_key("6")
s  7             <SNR>117_yank_with_key("7")
s  8             <SNR>117_yank_with_key("8")
s  9             <SNR>117_yank_with_key("9")
x  P           * :<C-U>call <SNR>117_paste_with_key("P", "v", v:register, v:count1)<CR>
n  P           * :<C-U>call <SNR>117_paste_with_key("P", "n", v:register, v:count1)<CR>
x  S             <Plug>VSurround
v  Si            S(i_<Esc>f)
n  \h          * :terminal<CR>
n  \v          * :vertical terminal<CR>
n  \t          * :vertical terminal<CR>
n  \a            :q<CR>
s  _             <SNR>117_yank_with_key("_")
n  _             <Plug>(expand_region_shrink)
x  _             <Plug>(expand_region_shrink)
s  a             <SNR>117_yank_with_key("a")
v  aI          * :<C-U>cal <SNR>109_HandleTextObjectMapping(0, 1, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv
o  aI          * :<C-U>cal <SNR>109_HandleTextObjectMapping(0, 1, 0, [line("."), line("."), col("."), col(".")])<CR>
v  ai          * :<C-U>cal <SNR>109_HandleTextObjectMapping(0, 0, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv
o  ai          * :<C-U>cal <SNR>109_HandleTextObjectMapping(0, 0, 0, [line("."), line("."), col("."), col(".")])<CR>
s  b             <SNR>117_yank_with_key("b")
s  c             <SNR>117_yank_with_key("c")
n  cr            <Plug>(abolish-coerce-word)
n  cS            <Plug>CSurround
n  cs            <Plug>Csurround
n  crb           <Plug>RadicalCoerceToBinary
n  cro           <Plug>RadicalCoerceToOctal
n  crx           <Plug>RadicalCoerceToHex
n  crd           <Plug>RadicalCoerceToDecimal
s  d             <SNR>117_yank_with_key("d")
x  d           * <SNR>117_yank_with_key("d")
n  d           * <SNR>117_yank_with_key("d")
n  ds            <Plug>Dsurround
s  e             <SNR>117_yank_with_key("e")
s  f             <SNR>117_yank_with_key("f")
v  gx            <Plug>NetrwBrowseXVis
n  gx            <Plug>NetrwBrowseX
s  g             <SNR>117_yank_with_key("g")
x  gP          * :<C-U>call <SNR>117_paste_with_key("gP", "v", v:register, v:count1)<CR>
n  gP          * :<C-U>call <SNR>117_paste_with_key("gP", "n", v:register, v:count1)<CR>
x  gp          * :<C-U>call <SNR>117_paste_with_key("gp", "v", v:register, v:count1)<CR>
n  gp          * :<C-U>call <SNR>117_paste_with_key("gp", "n", v:register, v:count1)<CR>
x  g<M-s>      * :<C-U>call multiple_cursors#select_all("v", 0)<CR>
n  g<M-s>      * :call multiple_cursors#select_all("n", 0)<CR>
x  g<C-S>      * :<C-U>call multiple_cursors#new("v", 0)<CR>
n  g<C-S>      * :call multiple_cursors#new("n", 0)<CR>
n  gf          * :call GotoFile("")<CR>
x  gA            <Plug>RadicalView
n  gA            <Plug>RadicalView
n  gcu           <Plug>Commentary<Plug>Commentary
n  gcc           <Plug>CommentaryLine
o  gc            <Plug>Commentary
n  gc            <Plug>Commentary
x  gc            <Plug>Commentary
n  gZzZz       * gs
x  gS            <Plug>VgSurround
x  gs            <Plug>(scratch-selection-reuse)
n  gS            <Plug>(scratch-insert-clear)
n  gs            <Plug>(scratch-insert-reuse)
v  gv          * :call VisualSelection('gv', '')<CR>
s  h             <SNR>117_yank_with_key("h")
s  i             <SNR>117_yank_with_key("i")
v  iI          * :<C-U>cal <SNR>109_HandleTextObjectMapping(1, 1, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv
o  iI          * :<C-U>cal <SNR>109_HandleTextObjectMapping(1, 1, 0, [line("."), line("."), col("."), col(".")])<CR>
v  ii          * :<C-U>cal <SNR>109_HandleTextObjectMapping(1, 0, 1, [line("'<"), line("'>"), col("'<"), col("'>")])<CR><Esc>gv
o  ii          * :<C-U>cal <SNR>109_HandleTextObjectMapping(1, 0, 0, [line("."), line("."), col("."), col(".")])<CR>
s  j             <SNR>117_yank_with_key("j")
s  k             <SNR>117_yank_with_key("k")
s  l             <SNR>117_yank_with_key("l")
s  m             <SNR>117_yank_with_key("m")
s  n             <SNR>117_yank_with_key("n")
s  o             <SNR>117_yank_with_key("o")
s  p             <SNR>117_yank_with_key("p")
x  p           * :<C-U>call <SNR>117_paste_with_key("p", "v", v:register, v:count1)<CR>
n  p           * :<C-U>call <SNR>117_paste_with_key("p", "n", v:register, v:count1)<CR>
s  q             <SNR>117_yank_with_key("q")
s  r             <SNR>117_yank_with_key("r")
s  s             <SNR>117_yank_with_key("s")
n  s             <Plug>(easymotion-overwin-2f)
s  t             <SNR>117_yank_with_key("t")
s  u             <SNR>117_yank_with_key("u")
s  v             <SNR>117_yank_with_key("v")
s  w             <SNR>117_yank_with_key("w")
s  x             <SNR>117_yank_with_key("x")
s  y             <SNR>117_yank_with_key("y")
x  y           * <SNR>117_yank_with_key("y")
n  y           * <SNR>117_yank_with_key("y")
n  y<C-G>      & :<C-U>call setreg(v:register, fugitive#Object(@%))<CR>
n  ySS           <Plug>YSsurround
n  ySs           <Plug>YSsurround
n  yss           <Plug>Yssurround
n  yS            <Plug>YSurround
n  ys            <Plug>Ysurround
s  z             <SNR>117_yank_with_key("z")
n  <SNR>144_:  * :<C-U><C-R>=v:count ? v:count : ''<CR>
s  <S-Tab>       <Plug>snipMateBack
v  <Plug>NetrwBrowseXVis * :<C-U>call netrw#BrowseXVis()<CR>
n  <Plug>NetrwBrowseX * :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR>
   <SNR>120_Launch * :call <SNR>120_LaunchPeepOpenViaVim()<CR>
   <Plug>PeepOpen & <SNR>120_Launch
x  <M-P>         <Plug>yankstack_substitute_newer_paste
n  <M-P>         <Plug>yankstack_substitute_newer_paste
x  <M-p>         <Plug>yankstack_substitute_older_paste
n  <M-p>         <Plug>yankstack_substitute_older_paste
x  <Plug>yankstack_after_paste * :<C-U>call <SNR>117_after_paste()<CR>
n  <Plug>yankstack_after_paste * :call <SNR>117_after_paste()<CR>
x  <Plug>yankstack_substitute_newer_paste * :<C-U>call <SNR>117_substitute_paste(-v:count1, 'v')<CR>
x  <Plug>yankstack_substitute_older_paste * :<C-U>call <SNR>117_substitute_paste(v:count1, 'v')<CR>
n  <Plug>yankstack_substitute_newer_paste * :<C-U>call <SNR>117_substitute_paste(-v:count1, 'n')<CR>
n  <Plug>yankstack_substitute_older_paste * :<C-U>call <SNR>117_substitute_paste(v:count1, 'n')<CR>
x  <Plug>snipMateVisual * :<C-U>call <SNR>112_grab_visual()<CR>gv"_c
s  <Plug>snipMateBack * <Esc>a<C-R>=snipMate#BackwardsSnippet()<CR>
s  <Plug>snipMateNextOrTrigger * <Esc>a<C-R>=snipMate#TriggerSnippet()<CR>
x  <M-s>       * :<C-U>call multiple_cursors#select_all("v", 0)<CR>
n  <M-s>       * :call multiple_cursors#select_all("n", 1)<CR>
x  <C-S>       * :<C-U>call multiple_cursors#new("v", 0)<CR>
n  <C-S>       * :call multiple_cursors#new("n", 1)<CR>
n  <Plug>GitGutterPreviewHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')<CR>
n  <Plug>(GitGutterPreviewHunk) * :GitGutterPreviewHunk<CR>
n  <Plug>GitGutterUndoHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')<CR>
n  <Plug>(GitGutterUndoHunk) * :GitGutterUndoHunk<CR>
n  <Plug>GitGutterStageHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')<CR>
n  <Plug>(GitGutterStageHunk) * :GitGutterStageHunk<CR>
x  <Plug>GitGutterStageHunk * :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')<CR>
x  <Plug>(GitGutterStageHunk) * :GitGutterStageHunk<CR>
n  <Plug>GitGutterPrevHunk * &diff ? '[c' : ":\<C-U>call gitgutter#utility#warn('please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\<CR>"
n  <Plug>(GitGutterPrevHunk) * &diff ? '[c' : ":\<C-U>execute v:count1 . 'GitGutterPrevHunk'\<CR>"
n  <Plug>GitGutterNextHunk * &diff ? ']c' : ":\<C-U>call gitgutter#utility#warn('please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\<CR>"
n  <Plug>(GitGutterNextHunk) * &diff ? ']c' : ":\<C-U>execute v:count1 . 'GitGutterNextHunk'\<CR>"
x  <Plug>(GitGutterTextObjectOuterVisual) * :<C-U>call gitgutter#hunk#text_object(0)<CR>
x  <Plug>(GitGutterTextObjectInnerVisual) * :<C-U>call gitgutter#hunk#text_object(1)<CR>
o  <Plug>(GitGutterTextObjectOuterPending) * :<C-U>call gitgutter#hunk#text_object(0)<CR>
o  <Plug>(GitGutterTextObjectInnerPending) * :<C-U>call gitgutter#hunk#text_object(1)<CR>
x  <Plug>(expand_region_shrink) * :<C-U>call expand_region#next('v', '-')<CR>
x  <Plug>(expand_region_expand) * :<C-U>call expand_region#next('v', '+')<CR>
n  <Plug>(expand_region_expand) * :<C-U>call expand_region#next('n', '+')<CR>
n  <Plug>(abolish-coerce-word) * <SNR>100_coerce(nr2char(getchar())).'iw'
v  <Plug>(abolish-coerce) * <SNR>100_coerce(nr2char(getchar()))
n  <Plug>(abolish-coerce) * <SNR>100_coerce(nr2char(getchar()))
n  <C-W><C-F>  * :call GotoFile("new")<CR>
n  <C-W>f      * :call GotoFile("new")<CR>
   <Plug>NERDTreeFocusToggle & :call <SNR>91_NERDTreeFocusToggle()
   <Plug>NERDTreeSteppedClose & :call <SNR>91_NERDTreeSteppedClose()
   <Plug>NERDTreeSteppedOpen & :call <SNR>91_NERDTreeSteppedOpen()
   <Plug>NERDTreeMirrorToggle & :call <SNR>91_NERDTreeMirrorToggle()
   <Plug>NERDTreeMirrorOpen & :call <SNR>91_NERDTreeMirrorOrCreate()
   <Plug>NERDTreeTabsFind & :call <SNR>91_NERDTreeFindFile()
   <Plug>NERDTreeTabsToggle & :call <SNR>91_NERDTreeToggleAllTabs()
   <Plug>NERDTreeTabsClose & :call <SNR>91_NERDTreeCloseAllTabs()
   <Plug>NERDTreeTabsOpen & :call <SNR>91_NERDTreeOpenAllTabs()
n  <Plug>(ctrlp) * :<C-U>CtrlP<CR>
v  <Plug>VgSurround * :<C-U>call <SNR>63_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR>
v  <Plug>VSurround * :<C-U>call <SNR>63_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR>
n  <Plug>YSurround * <SNR>63_opfunc2('setup')
n  <Plug>Ysurround * <SNR>63_opfunc('setup')
n  <Plug>YSsurround * <SNR>63_opfunc2('setup').'_'
n  <Plug>Yssurround * '^'.v:count1.<SNR>63_opfunc('setup').'g_'
n  <Plug>CSurround * :<C-U>call <SNR>63_changesurround(1)<CR>
n  <Plug>Csurround * :<C-U>call <SNR>63_changesurround()<CR>
n  <Plug>Dsurround * :<C-U>call <SNR>63_dosurround(<SNR>63_inputtarget())<CR>
n  <Plug>SurroundRepeat * .
n  <Plug>RadicalCoerceToBinary * :<C-U>call radical#CoerceToBase(2, v:count)<CR>
n  <Plug>RadicalCoerceToOctal * :<C-U>call radical#CoerceToBase(8, v:count)<CR>
n  <Plug>RadicalCoerceToHex * :<C-U>call radical#CoerceToBase(16, v:count)<CR>
n  <Plug>RadicalCoerceToDecimal * :<C-U>call radical#CoerceToBase(10, v:count)<CR>
x  <Plug>RadicalView * :<C-U>call radical#VisualView(v:count, visualmode())<CR>
n  <Plug>RadicalView * :<C-U>call radical#NormalView(v:count)<CR>
   <Plug>BufTabLine.Go(-1) * :<C-U>exe 'b'.get(buftabline#user_buffers(),-1,'')<CR>
   <Plug>BufTabLine.Go(10) * :<C-U>exe 'b'.get(buftabline#user_buffers(),9,'')<CR>
   <Plug>BufTabLine.Go(9) * :<C-U>exe 'b'.get(buftabline#user_buffers(),8,'')<CR>
   <Plug>BufTabLine.Go(8) * :<C-U>exe 'b'.get(buftabline#user_buffers(),7,'')<CR>
   <Plug>BufTabLine.Go(7) * :<C-U>exe 'b'.get(buftabline#user_buffers(),6,'')<CR>
   <Plug>BufTabLine.Go(6) * :<C-U>exe 'b'.get(buftabline#user_buffers(),5,'')<CR>
   <Plug>BufTabLine.Go(5) * :<C-U>exe 'b'.get(buftabline#user_buffers(),4,'')<CR>
   <Plug>BufTabLine.Go(4) * :<C-U>exe 'b'.get(buftabline#user_buffers(),3,'')<CR>
   <Plug>BufTabLine.Go(3) * :<C-U>exe 'b'.get(buftabline#user_buffers(),2,'')<CR>
   <Plug>BufTabLine.Go(2) * :<C-U>exe 'b'.get(buftabline#user_buffers(),1,'')<CR>
   <Plug>BufTabLine.Go(1) * :<C-U>exe 'b'.get(buftabline#user_buffers(),0,'')<CR>
n  <Plug>CommentaryUndo   :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"<CR>
n  <Plug>ChangeCommentary * c:<C-U>call <SNR>59_textobject(1)<CR>
o  <Plug>Commentary * :<C-U>call <SNR>59_textobject(get(v:, 'operator', '') ==# 'c')<CR>
n  <Plug>CommentaryLine * <SNR>59_go() . '_'
n  <Plug>Commentary * <SNR>59_go()
x  <Plug>Commentary * <SNR>59_go()
x  <Plug>(easymotion-activate) * :<C-U>call EasyMotion#activate(1)<CR>
nos<Plug>(easymotion-activate) * :<C-U>call EasyMotion#activate(0)<CR>
   <Plug>(easymotion-dotrepeat) * :<C-U>call EasyMotion#DotRepeat()<CR>
x  <Plug>(easymotion-repeat) * <Esc>:<C-U>call EasyMotion#Repeat(1)<CR>
nos<Plug>(easymotion-repeat) * :<C-U>call EasyMotion#Repeat(0)<CR>
x  <Plug>(easymotion-prev) * :<C-U>call EasyMotion#NextPrevious(1,1)<CR>
nos<Plug>(easymotion-prev) * :<C-U>call EasyMotion#NextPrevious(0,1)<CR>
x  <Plug>(easymotion-next) * :<C-U>call EasyMotion#NextPrevious(1,0)<CR>
nos<Plug>(easymotion-next) * :<C-U>call EasyMotion#NextPrevious(0,0)<CR>
x  <Plug>(easymotion-wl) * <Esc>:<C-U>call EasyMotion#WBL(1,0)<CR>
nos<Plug>(easymotion-wl) * :<C-U>call EasyMotion#WBL(0,0)<CR>
x  <Plug>(easymotion-lineforward) * <Esc>:<C-U>call EasyMotion#LineAnywhere(1,0)<CR>
nos<Plug>(easymotion-lineforward) * :<C-U>call EasyMotion#LineAnywhere(0,0)<CR>
x  <Plug>(easymotion-lineanywhere) * <Esc>:<C-U>call EasyMotion#LineAnywhere(1,2)<CR>
nos<Plug>(easymotion-lineanywhere) * :<C-U>call EasyMotion#LineAnywhere(0,2)<CR>
x  <Plug>(easymotion-bd-wl) * <Esc>:<C-U>call EasyMotion#WBL(1,2)<CR>
nos<Plug>(easymotion-bd-wl) * :<C-U>call EasyMotion#WBL(0,2)<CR>
x  <Plug>(easymotion-linebackward) * <Esc>:<C-U>call EasyMotion#LineAnywhere(1,1)<CR>
nos<Plug>(easymotion-linebackward) * :<C-U>call EasyMotion#LineAnywhere(0,1)<CR>
x  <Plug>(easymotion-bl) * <Esc>:<C-U>call EasyMotion#WBL(1,1)<CR>
nos<Plug>(easymotion-bl) * :<C-U>call EasyMotion#WBL(0,1)<CR>
x  <Plug>(easymotion-el) * <Esc>:<C-U>call EasyMotion#EL(1,0)<CR>
nos<Plug>(easymotion-el) * :<C-U>call EasyMotion#EL(0,0)<CR>
x  <Plug>(easymotion-gel) * <Esc>:<C-U>call EasyMotion#EL(1,1)<CR>
nos<Plug>(easymotion-gel) * :<C-U>call EasyMotion#EL(0,1)<CR>
x  <Plug>(easymotion-bd-el) * <Esc>:<C-U>call EasyMotion#EL(1,2)<CR>
nos<Plug>(easymotion-bd-el) * :<C-U>call EasyMotion#EL(0,2)<CR>
x  <Plug>(easymotion-jumptoanywhere) * <Esc>:<C-U>call EasyMotion#JumpToAnywhere(1,2)<CR>
nos<Plug>(easymotion-jumptoanywhere) * :<C-U>call EasyMotion#JumpToAnywhere(0,2)<CR>
x  <Plug>(easymotion-vim-n) * <Esc>:<C-U>call EasyMotion#Search(1,0,1)<CR>
nos<Plug>(easymotion-vim-n) * :<C-U>call EasyMotion#Search(0,0,1)<CR>
x  <Plug>(easymotion-n) * <Esc>:<C-U>call EasyMotion#Search(1,0,0)<CR>
nos<Plug>(easymotion-n) * :<C-U>call EasyMotion#Search(0,0,0)<CR>
x  <Plug>(easymotion-bd-n) * <Esc>:<C-U>call EasyMotion#Search(1,2,0)<CR>
nos<Plug>(easymotion-bd-n) * :<C-U>call EasyMotion#Search(0,2,0)<CR>
x  <Plug>(easymotion-vim-N) * <Esc>:<C-U>call EasyMotion#Search(1,1,1)<CR>
nos<Plug>(easymotion-vim-N) * :<C-U>call EasyMotion#Search(0,1,1)<CR>
x  <Plug>(easymotion-N) * <Esc>:<C-U>call EasyMotion#Search(1,1,0)<CR>
nos<Plug>(easymotion-N) * :<C-U>call EasyMotion#Search(0,1,0)<CR>
x  <Plug>(easymotion-eol-j) * <Esc>:<C-U>call EasyMotion#Eol(1,0)<CR>
nos<Plug>(easymotion-eol-j) * :<C-U>call EasyMotion#Eol(0,0)<CR>
x  <Plug>(easymotion-sol-k) * <Esc>:<C-U>call EasyMotion#Sol(1,1)<CR>
nos<Plug>(easymotion-sol-k) * :<C-U>call EasyMotion#Sol(0,1)<CR>
x  <Plug>(easymotion-sol-j) * <Esc>:<C-U>call EasyMotion#Sol(1,0)<CR>
nos<Plug>(easymotion-sol-j) * :<C-U>call EasyMotion#Sol(0,0)<CR>
x  <Plug>(easymotion-k) * <Esc>:<C-U>call EasyMotion#JK(1,1)<CR>
nos<Plug>(easymotion-k) * :<C-U>call EasyMotion#JK(0,1)<CR>
x  <Plug>(easymotion-j) * <Esc>:<C-U>call EasyMotion#JK(1,0)<CR>
nos<Plug>(easymotion-j) * :<C-U>call EasyMotion#JK(0,0)<CR>
x  <Plug>(easymotion-bd-jk) * <Esc>:<C-U>call EasyMotion#JK(1,2)<CR>
nos<Plug>(easymotion-bd-jk) * :<C-U>call EasyMotion#JK(0,2)<CR>
x  <Plug>(easymotion-eol-bd-jk) * <Esc>:<C-U>call EasyMotion#Eol(1,2)<CR>
nos<Plug>(easymotion-eol-bd-jk) * :<C-U>call EasyMotion#Eol(0,2)<CR>
x  <Plug>(easymotion-sol-bd-jk) * <Esc>:<C-U>call EasyMotion#Sol(1,2)<CR>
nos<Plug>(easymotion-sol-bd-jk) * :<C-U>call EasyMotion#Sol(0,2)<CR>
x  <Plug>(easymotion-eol-k) * <Esc>:<C-U>call EasyMotion#Eol(1,1)<CR>
nos<Plug>(easymotion-eol-k) * :<C-U>call EasyMotion#Eol(0,1)<CR>
x  <Plug>(easymotion-iskeyword-ge) * <Esc>:<C-U>call EasyMotion#EK(1,1)<CR>
nos<Plug>(easymotion-iskeyword-ge) * :<C-U>call EasyMotion#EK(0,1)<CR>
x  <Plug>(easymotion-w) * <Esc>:<C-U>call EasyMotion#WB(1,0)<CR>
nos<Plug>(easymotion-w) * :<C-U>call EasyMotion#WB(0,0)<CR>
x  <Plug>(easymotion-bd-W) * <Esc>:<C-U>call EasyMotion#WBW(1,2)<CR>
nos<Plug>(easymotion-bd-W) * :<C-U>call EasyMotion#WBW(0,2)<CR>
x  <Plug>(easymotion-iskeyword-w) * <Esc>:<C-U>call EasyMotion#WBK(1,0)<CR>
nos<Plug>(easymotion-iskeyword-w) * :<C-U>call EasyMotion#WBK(0,0)<CR>
x  <Plug>(easymotion-gE) * <Esc>:<C-U>call EasyMotion#EW(1,1)<CR>
nos<Plug>(easymotion-gE) * :<C-U>call EasyMotion#EW(0,1)<CR>
x  <Plug>(easymotion-e) * <Esc>:<C-U>call EasyMotion#E(1,0)<CR>
nos<Plug>(easymotion-e) * :<C-U>call EasyMotion#E(0,0)<CR>
x  <Plug>(easymotion-bd-E) * <Esc>:<C-U>call EasyMotion#EW(1,2)<CR>
nos<Plug>(easymotion-bd-E) * :<C-U>call EasyMotion#EW(0,2)<CR>
x  <Plug>(easymotion-iskeyword-e) * <Esc>:<C-U>call EasyMotion#EK(1,0)<CR>
nos<Plug>(easymotion-iskeyword-e) * :<C-U>call EasyMotion#EK(0,0)<CR>
x  <Plug>(easymotion-b) * <Esc>:<C-U>call EasyMotion#WB(1,1)<CR>
nos<Plug>(easymotion-b) * :<C-U>call EasyMotion#WB(0,1)<CR>
x  <Plug>(easymotion-iskeyword-b) * <Esc>:<C-U>call EasyMotion#WBK(1,1)<CR>
nos<Plug>(easymotion-iskeyword-b) * :<C-U>call EasyMotion#WBK(0,1)<CR>
x  <Plug>(easymotion-iskeyword-bd-w) * <Esc>:<C-U>call EasyMotion#WBK(1,2)<CR>
nos<Plug>(easymotion-iskeyword-bd-w) * :<C-U>call EasyMotion#WBK(0,2)<CR>
x  <Plug>(easymotion-W) * <Esc>:<C-U>call EasyMotion#WBW(1,0)<CR>
nos<Plug>(easymotion-W) * :<C-U>call EasyMotion#WBW(0,0)<CR>
x  <Plug>(easymotion-bd-w) * <Esc>:<C-U>call EasyMotion#WB(1,2)<CR>
nos<Plug>(easymotion-bd-w) * :<C-U>call EasyMotion#WB(0,2)<CR>
x  <Plug>(easymotion-iskeyword-bd-e) * <Esc>:<C-U>call EasyMotion#EK(1,2)<CR>
nos<Plug>(easymotion-iskeyword-bd-e) * :<C-U>call EasyMotion#EK(0,2)<CR>
x  <Plug>(easymotion-ge) * <Esc>:<C-U>call EasyMotion#E(1,1)<CR>
nos<Plug>(easymotion-ge) * :<C-U>call EasyMotion#E(0,1)<CR>
x  <Plug>(easymotion-E) * <Esc>:<C-U>call EasyMotion#EW(1,0)<CR>
nos<Plug>(easymotion-E) * :<C-U>call EasyMotion#EW(0,0)<CR>
x  <Plug>(easymotion-bd-e) * <Esc>:<C-U>call EasyMotion#E(1,2)<CR>
nos<Plug>(easymotion-bd-e) * :<C-U>call EasyMotion#E(0,2)<CR>
x  <Plug>(easymotion-B) * <Esc>:<C-U>call EasyMotion#WBW(1,1)<CR>
nos<Plug>(easymotion-B) * :<C-U>call EasyMotion#WBW(0,1)<CR>
n  <Plug>(easymotion-overwin-w) * :<C-U>call EasyMotion#overwin#w()<CR>
n  <Plug>(easymotion-overwin-line) * :<C-U>call EasyMotion#overwin#line()<CR>
n  <Plug>(easymotion-overwin-f2) * :<C-U>call EasyMotion#OverwinF(2)<CR>
n  <Plug>(easymotion-overwin-f) * :<C-U>call EasyMotion#OverwinF(1)<CR>
x  <Plug>(easymotion-Tln) * <Esc>:<C-U>call EasyMotion#TL(-1,1,1)<CR>
nos<Plug>(easymotion-Tln) * :<C-U>call EasyMotion#TL(-1,0,1)<CR>
x  <Plug>(easymotion-t2) * <Esc>:<C-U>call EasyMotion#T(2,1,0)<CR>
nos<Plug>(easymotion-t2) * :<C-U>call EasyMotion#T(2,0,0)<CR>
x  <Plug>(easymotion-t) * <Esc>:<C-U>call EasyMotion#T(1,1,0)<CR>
nos<Plug>(easymotion-t) * :<C-U>call EasyMotion#T(1,0,0)<CR>
x  <Plug>(easymotion-s) * <Esc>:<C-U>call EasyMotion#S(1,1,2)<CR>
nos<Plug>(easymotion-s) * :<C-U>call EasyMotion#S(1,0,2)<CR>
x  <Plug>(easymotion-tn) * <Esc>:<C-U>call EasyMotion#T(-1,1,0)<CR>
nos<Plug>(easymotion-tn) * :<C-U>call EasyMotion#T(-1,0,0)<CR>
x  <Plug>(easymotion-bd-t2) * <Esc>:<C-U>call EasyMotion#T(2,1,2)<CR>
nos<Plug>(easymotion-bd-t2) * :<C-U>call EasyMotion#T(2,0,2)<CR>
x  <Plug>(easymotion-tl) * <Esc>:<C-U>call EasyMotion#TL(1,1,0)<CR>
nos<Plug>(easymotion-tl) * :<C-U>call EasyMotion#TL(1,0,0)<CR>
x  <Plug>(easymotion-bd-tn) * <Esc>:<C-U>call EasyMotion#T(-1,1,2)<CR>
nos<Plug>(easymotion-bd-tn) * :<C-U>call EasyMotion#T(-1,0,2)<CR>
x  <Plug>(easymotion-fn) * <Esc>:<C-U>call EasyMotion#S(-1,1,0)<CR>
nos<Plug>(easymotion-fn) * :<C-U>call EasyMotion#S(-1,0,0)<CR>
x  <Plug>(easymotion-bd-tl) * <Esc>:<C-U>call EasyMotion#TL(1,1,2)<CR>
nos<Plug>(easymotion-bd-tl) * :<C-U>call EasyMotion#TL(1,0,2)<CR>
x  <Plug>(easymotion-fl) * <Esc>:<C-U>call EasyMotion#SL(1,1,0)<CR>
nos<Plug>(easymotion-fl) * :<C-U>call EasyMotion#SL(1,0,0)<CR>
x  <Plug>(easymotion-bd-tl2) * <Esc>:<C-U>call EasyMotion#TL(2,1,2)<CR>
nos<Plug>(easymotion-bd-tl2) * :<C-U>call EasyMotion#TL(2,0,2)<CR>
x  <Plug>(easymotion-bd-fn) * <Esc>:<C-U>call EasyMotion#S(-1,1,2)<CR>
nos<Plug>(easymotion-bd-fn) * :<C-U>call EasyMotion#S(-1,0,2)<CR>
x  <Plug>(easymotion-f) * <Esc>:<C-U>call EasyMotion#S(1,1,0)<CR>
nos<Plug>(easymotion-f) * :<C-U>call EasyMotion#S(1,0,0)<CR>
x  <Plug>(easymotion-bd-fl) * <Esc>:<C-U>call EasyMotion#SL(1,1,2)<CR>
nos<Plug>(easymotion-bd-fl) * :<C-U>call EasyMotion#SL(1,0,2)<CR>
x  <Plug>(easymotion-Fl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,1)<CR>
nos<Plug>(easymotion-Fl2) * :<C-U>call EasyMotion#SL(2,0,1)<CR>
x  <Plug>(easymotion-tl2) * <Esc>:<C-U>call EasyMotion#TL(2,1,0)<CR>
nos<Plug>(easymotion-tl2) * :<C-U>call EasyMotion#TL(2,0,0)<CR>
x  <Plug>(easymotion-f2) * <Esc>:<C-U>call EasyMotion#S(2,1,0)<CR>
nos<Plug>(easymotion-f2) * :<C-U>call EasyMotion#S(2,0,0)<CR>
x  <Plug>(easymotion-Fln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,1)<CR>
nos<Plug>(easymotion-Fln) * :<C-U>call EasyMotion#SL(-1,0,1)<CR>
x  <Plug>(easymotion-sln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,2)<CR>
nos<Plug>(easymotion-sln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR>
x  <Plug>(easymotion-tln) * <Esc>:<C-U>call EasyMotion#TL(-1,1,0)<CR>
nos<Plug>(easymotion-tln) * :<C-U>call EasyMotion#TL(-1,0,0)<CR>
x  <Plug>(easymotion-fl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,0)<CR>
nos<Plug>(easymotion-fl2) * :<C-U>call EasyMotion#SL(2,0,0)<CR>
x  <Plug>(easymotion-bd-fl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,2)<CR>
nos<Plug>(easymotion-bd-fl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR>
x  <Plug>(easymotion-T2) * <Esc>:<C-U>call EasyMotion#T(2,1,1)<CR>
nos<Plug>(easymotion-T2) * :<C-U>call EasyMotion#T(2,0,1)<CR>
x  <Plug>(easymotion-bd-tln) * <Esc>:<C-U>call EasyMotion#TL(-1,1,2)<CR>
nos<Plug>(easymotion-bd-tln) * :<C-U>call EasyMotion#TL(-1,0,2)<CR>
x  <Plug>(easymotion-T) * <Esc>:<C-U>call EasyMotion#T(1,1,1)<CR>
nos<Plug>(easymotion-T) * :<C-U>call EasyMotion#T(1,0,1)<CR>
x  <Plug>(easymotion-bd-t) * <Esc>:<C-U>call EasyMotion#T(1,1,2)<CR>
nos<Plug>(easymotion-bd-t) * :<C-U>call EasyMotion#T(1,0,2)<CR>
x  <Plug>(easymotion-Tn) * <Esc>:<C-U>call EasyMotion#T(-1,1,1)<CR>
nos<Plug>(easymotion-Tn) * :<C-U>call EasyMotion#T(-1,0,1)<CR>
x  <Plug>(easymotion-s2) * <Esc>:<C-U>call EasyMotion#S(2,1,2)<CR>
nos<Plug>(easymotion-s2) * :<C-U>call EasyMotion#S(2,0,2)<CR>
x  <Plug>(easymotion-Tl) * <Esc>:<C-U>call EasyMotion#TL(1,1,1)<CR>
nos<Plug>(easymotion-Tl) * :<C-U>call EasyMotion#TL(1,0,1)<CR>
x  <Plug>(easymotion-sn) * <Esc>:<C-U>call EasyMotion#S(-1,1,2)<CR>
nos<Plug>(easymotion-sn) * :<C-U>call EasyMotion#S(-1,0,2)<CR>
x  <Plug>(easymotion-Fn) * <Esc>:<C-U>call EasyMotion#S(-1,1,1)<CR>
nos<Plug>(easymotion-Fn) * :<C-U>call EasyMotion#S(-1,0,1)<CR>
x  <Plug>(easymotion-sl) * <Esc>:<C-U>call EasyMotion#SL(1,1,2)<CR>
nos<Plug>(easymotion-sl) * :<C-U>call EasyMotion#SL(1,0,2)<CR>
x  <Plug>(easymotion-Fl) * <Esc>:<C-U>call EasyMotion#SL(1,1,1)<CR>
nos<Plug>(easymotion-Fl) * :<C-U>call EasyMotion#SL(1,0,1)<CR>
x  <Plug>(easymotion-sl2) * <Esc>:<C-U>call EasyMotion#SL(2,1,2)<CR>
nos<Plug>(easymotion-sl2) * :<C-U>call EasyMotion#SL(2,0,2)<CR>
x  <Plug>(easymotion-bd-fln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,2)<CR>
nos<Plug>(easymotion-bd-fln) * :<C-U>call EasyMotion#SL(-1,0,2)<CR>
x  <Plug>(easymotion-F) * <Esc>:<C-U>call EasyMotion#S(1,1,1)<CR>
nos<Plug>(easymotion-F) * :<C-U>call EasyMotion#S(1,0,1)<CR>
x  <Plug>(easymotion-bd-f) * <Esc>:<C-U>call EasyMotion#S(1,1,2)<CR>
nos<Plug>(easymotion-bd-f) * :<C-U>call EasyMotion#S(1,0,2)<CR>
x  <Plug>(easymotion-F2) * <Esc>:<C-U>call EasyMotion#S(2,1,1)<CR>
nos<Plug>(easymotion-F2) * :<C-U>call EasyMotion#S(2,0,1)<CR>
x  <Plug>(easymotion-bd-f2) * <Esc>:<C-U>call EasyMotion#S(2,1,2)<CR>
nos<Plug>(easymotion-bd-f2) * :<C-U>call EasyMotion#S(2,0,2)<CR>
x  <Plug>(easymotion-Tl2) * <Esc>:<C-U>call EasyMotion#TL(2,1,1)<CR>
nos<Plug>(easymotion-Tl2) * :<C-U>call EasyMotion#TL(2,0,1)<CR>
x  <Plug>(easymotion-fln) * <Esc>:<C-U>call EasyMotion#SL(-1,1,0)<CR>
nos<Plug>(easymotion-fln) * :<C-U>call EasyMotion#SL(-1,0,0)<CR>
n  <Plug>(ale_repeat_selection) * :ALERepeatSelection<CR>
n  <Plug>(ale_code_action) * :ALECodeAction<CR>
n  <Plug>(ale_rename) * :ALERename<CR>
n  <Plug>(ale_import) * :ALEImport<CR>
n  <Plug>(ale_documentation) * :ALEDocumentation<CR>
n  <Plug>(ale_hover) * :ALEHover<CR>
n  <Plug>(ale_find_references) * :ALEFindReferences<CR>
n  <Plug>(ale_go_to_type_definition_in_vsplit) * :ALEGoToTypeDefinitionIn -vsplit<CR>
n  <Plug>(ale_go_to_type_definition_in_split) * :ALEGoToTypeDefinition -split<CR>
n  <Plug>(ale_go_to_type_definition_in_tab) * :ALEGoToTypeDefinition -tab<CR>
n  <Plug>(ale_go_to_type_definition) * :ALEGoToTypeDefinition<CR>
n  <Plug>(ale_go_to_definition_in_vsplit) * :ALEGoToDefinition -vsplit<CR>
n  <Plug>(ale_go_to_definition_in_split) * :ALEGoToDefinition -split<CR>
n  <Plug>(ale_go_to_definition_in_tab) * :ALEGoToDefinition -tab<CR>
n  <Plug>(ale_go_to_definition) * :ALEGoToDefinition<CR>
n  <Plug>(ale_fix) * :ALEFix<CR>
n  <Plug>(ale_detail) * :ALEDetail<CR>
n  <Plug>(ale_lint) * :ALELint<CR>
n  <Plug>(ale_reset_buffer) * :ALEResetBuffer<CR>
n  <Plug>(ale_disable_buffer) * :ALEDisableBuffer<CR>
n  <Plug>(ale_enable_buffer) * :ALEEnableBuffer<CR>
n  <Plug>(ale_toggle_buffer) * :ALEToggleBuffer<CR>
n  <Plug>(ale_reset) * :ALEReset<CR>
n  <Plug>(ale_disable) * :ALEDisable<CR>
n  <Plug>(ale_enable) * :ALEEnable<CR>
n  <Plug>(ale_toggle) * :ALEToggle<CR>
n  <Plug>(ale_last) * :ALELast<CR>
n  <Plug>(ale_first) * :ALEFirst<CR>
n  <Plug>(ale_next_wrap_warning) * :ALENext -wrap -warning<CR>
n  <Plug>(ale_next_warning) * :ALENext -warning<CR>
n  <Plug>(ale_next_wrap_error) * :ALENext -wrap -error<CR>
n  <Plug>(ale_next_error) * :ALENext -error<CR>
n  <Plug>(ale_next_wrap) * :ALENextWrap<CR>
n  <Plug>(ale_next) * :ALENext<CR>
n  <Plug>(ale_previous_wrap_warning) * :ALEPrevious -wrap -warning<CR>
n  <Plug>(ale_previous_warning) * :ALEPrevious -warning<CR>
n  <Plug>(ale_previous_wrap_error) * :ALEPrevious -wrap -error<CR>
n  <Plug>(ale_previous_error) * :ALEPrevious -error<CR>
n  <Plug>(ale_previous_wrap) * :ALEPreviousWrap<CR>
n  <Plug>(ale_previous) * :ALEPrevious<CR>
x  <Plug>(scratch-selection-clear) * :<C-U>call scratch#selection(1)<CR>
x  <Plug>(scratch-selection-reuse) * :<C-U>call scratch#selection(0)<CR>
n  <Plug>(scratch-insert-clear) * :call scratch#insert(1)<CR>
n  <Plug>(scratch-insert-reuse) * :call scratch#insert(0)<CR>
n  <C-H>       * :bprev<CR>
n  <C-L>       * :bnext<CR>
s  <C-J>       * <Esc>i<Right><C-R>=snipMate#TriggerSnippet()<CR>
n  <C-N>         <Plug>yankstack_substitute_newer_paste
   <C-P>         <Plug>(ctrlp)
v  <D-k>         ë
v  <D-j>         ê
n  <D-k>         ë
n  <D-j>         ê
v  <M-k>         :m'<-2<CR>`>my`<mzgv`yo`z
v  <M-j>         :m'>+<CR>`<my`>mzgv`yo`z
n  <M-k>         mz:m-2<CR>`z
n  <M-j>         mz:m+<CR>`z
ov <C-L>         <C-W>l
ov <C-H>         <C-W>h
   <C-K>         <C-W>k
nox<C-J>         <C-W>j
   <C-Space>     ?
v  <BS>          "-d
v  <D-x>         "*d
v  <D-c>         "*y
v  <D-v>         "-d"*P
n  <D-v>         "*P
   ½             $
