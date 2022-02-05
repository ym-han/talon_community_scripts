app: lyx 
app: org.lyx.lyx 
-

# NOTE: some of the keybindings here might rely on my own lyx keybindings; haven't had time to check this yet


settings():
    key_wait = 1.4
    insert_wait = 10   

sym {user.tex_symbols}:
    key(\)
    insert(tex_symbols)
    key(space)
greek {user.tex_greek_letters}:
    key(\)
    insert(tex_greek_letters)
    key(space)

<number> {user.math_fractions}:
        key(alt-m f)
        insert(number)
        key(down)
    insert(math_fractions)
    key(right)

# Non- math things

render italics: key(cmd-e) 
render bold: key(cmd-b)
view file: key(cmd-r)
save as: key(ctrl-shift-s)

# Math things
accent tilde: key(alt-m &)
accent dot: key(alt-m .)
accent double dot : key("alt-m \")
accent bar: key(alt-m -)
accent vector: key(alt-m v)


secant line: "secant line"

tangent line: "tangent line"


math: key(cmd-m)


bold face: insert("\mathbf ")
bold sym: insert('\\boldsymbol ')


vectors (<user.letter>) (<user.letter>)$:
    v = letter_2
    end_idx = letter_1
    insert("\mathbf {v}_1  ,\mathbf {v}_2 ,\dots,\mathbf {v}_{end_idx}  ")
    edit.right()

randoms (<user.letter>) (<user.letter>)$:
    X = user.formatted_text(letter_2, "ALL_CAPS")
    end_idx = letter_1
    insert("{X}_1, {X}_2 ,\dots,{X}_{end_idx}")
    edit.right()

near lambdas: insert('\lambda_1, \lambda_2, ...,\lambda_n ')
    
vector <user.letter>: 
    insert('\mathbf {letter}')
    edit.right()

bf ship <user.letters> [(lowercase | sunk)]: 
    insert('\mathbf ')
    user.insert_formatted(letters, "ALL_CAPS")
    edit.right()

bf <user.letters>: 
    insert('\mathbf {letters}')
    edit.right()

transpose it:
    key(^)
    insert("T")
    key(right)
    
member of: '\in '

ip (<user.letter>) (<user.letter>)$:
    insert("<{letter_1},{letter_2}>")

ip bf (<user.letter>) (<user.letter>)$:
    insert("<\mathbf {letter_1} ,\mathbf {letter_2}> ")

text exponent: insert("\\exp ")

sym middle: insert('\mid ')

square root: insert('\sqrt ')

# Linear models

gram matrix <user.letter>:
    L = user.formatted_text(letter, "ALL_CAPS")
    insert("{L}^T {L}")

begin abs: "\lvert "
end abs: '\\rvert '

text cove: 
    insert('\\text cov')
    key(right)
text var: 
    insert('\\text Var') 
    key(right)
    insert('(')

op variance: insert("\\mathbb V ")
op expect: 
    insert("\\mathbb E ")
    insert("()")
    key('left')
    
op prob: insert("\\mathbb P ")

board <user.letter>:
    insert("\\mathbb ")
    sleep(10ms)
    user.insert_formatted(letter, "ALL_CAPS")
    edit.right()


text argument max: 
    insert('\\text argmax')
    key('right')
text max: "\\max "
text min: "\\min "

min over {user.tex_hattable}: 
    insert("\\min_{tex_hattable} ")
    edit.right()
max over {user.tex_hattable}: 
    insert("\\max_{tex_hattable} ")
    edit.right()
    

    #TO DO: use modes for these sym things
middle dot: '\cdot '
sym dots: '\dots '
sym vertical dots: '\vdots '
sym times: '\\times'
approximate: '\\approx '

partial: '\partial '
 




left arrow: '\leftarrow '
right arrow: '\\rightarrow '
sym maps to: '\\mapsto '

union: '\cup '
intersect: '\cap '
    
subset: '\subseteq '
proper subset: '\subset '



function (<user.letter>): insert("f({letter})")

argument (<user.letter>): '({letter})'

function inverse: 'f^-1 '

function prime (<user.letter>): insert("f'({letter})")
function dub prime (<user.letter>): insert("f''({letter})")

goes to infinity: '\\rightarrow \infty '
goes to (minus | negative) infinity: '\\rightarrow -\infty '

(<user.letter>) goes to (<user.letter>): '{letter_1}\\rightarrow {letter_2}'



#'function [goes to | approaches] infinity: 'f(x)\\rightarrow \infty ' # may be helpful to have additional verbosity as option, since it can help with internalizing the math
#'function [goes to | approaches] (minus | negative) infinity: 'f(x)\\rightarrow -\infty '

sym limit: '\\lim '
limit air: '\\lim_x\\rightarrow a ' 
#can't have more than 1 space at the end if want to remain in math mode
limit (<user.letter>) infinity: '\\lim_{letter}\\rightarrow \infty  '
limit near infinity: '\\lim_n\\rightarrow \infty  '
limit (<user.letter>) (minus | negative) infinity: '\\lim_{letter} \\rightarrow -\infty  '

#differentiate: '\\dfrac d'
integrate: '\\int '

frac: '\\frac '
deefrac: '\\dfrac ' #display fraction, which is larger than frac

nice frac: '\\nicefrac ',

plus minus: '\pm '


begin norm: '\lVert '
end norm: '\\rVert '

square matrix: '\\bmatrix '
text debt: '\det '

begin ceiling: '\lceil '
end ceiling: '\\rceil '

matrix <number> by <number>:
    key("alt-m [")
    insert("\\array ")
    key("alt-m w i")
    repeat(number_1-2)
    key("alt-m c i")
     repeat(number_2-2)




# Logical and function notation

wedge: '\\wedge '
for all: '\\forall '
math implies: '\\implies '

if only if: '\iff '

compose: '\circ '
    
# Trig

trig sine: '\sin '
trig coz: '\cos '
trig tan: '\tan '
trig seq: '\sec '

# Greek letters



group mean: 
  insert("\\bar y _")
  key("cmd-b") 
  insert("\cdot")
  key(space)
  key("cmd-b")
  insert("j")
  key(right)

kai square: insert('\chi ^2 ') 
# TO DO: Allow for more complicated logic here, 
# e.g. a function that handles expressions of form n - 1 as well as concrete nums

theta: insert('\\theta ')
sigma square: insert('\sigma ^2 ')
sigma jury: insert('\sigma_j ')
sig ma square (<user.letter>): insert('\sigma^2 _{letter} ')
sig ma square (<user.letter>) hat: insert('\\widehat \sigma^2 _{letter} ')

tau square (<user.letter>) hat: 
    insert('\\widehat \\tau^2 _{letter} ')
    edit.right()

{user.stats_most_common_with_sub} (<user.letter>): 
    insert("\\{stats_most_common_with_sub}_{letter} ")
    edit.right()

{user.stats_most_common_with_sub} (<user.letter>) hat: 
    insert("\\widehat {stats_most_common_with_sub}_{letter} ")
    edit.right()

{user.tex_hattable} narrow hat: 
    insert("\\hat {tex_hattable}")
    edit.right()

{user.tex_hattable} hat: 
    insert("\\widehat {tex_hattable}")
    edit.right()

ship {user.letter} hat: 
    sym = user.formatted_text(letter, "ALL_CAPS")
    insert("\\widehat {sym}")
    edit.right()

ship {user.letter} narrow hat: 
    insert("\\hat {letter}")
    edit.right()

{user.tex_hattable} bar: 
    insert("\\bar {tex_hattable}")
    edit.right()

ship {user.letter} bar$: 
    sym = user.formatted_text(letter, "ALL_CAPS")
    insert("\\widebar{")
    insert("{sym}")
    edit.right()


wide hat: '\widehat '
    

log no base: insert('\\log ')
log base 2: insert('\\log_2 ')


real numbers:
    insert("\\mathbb R")
    key(right)
complex numbers:
    insert("\\mathbb C")
    key(right)
integer numbers:
    insert("\\mathbb Z")
    key(right)
rational numbers:
    insert("\\mathbb Q")
    key(right)
natural numbers:
    insert("\\mathbb N")
    key(right)
    

# Information theory stuff

#code length whip: "\lVert C(w)\\rVert "
#two to the minus code length: '2^-\lVert C(w)\\rVert '
relative entropy formula: 'D(p\\parallel q)'
entropy formula: 'H(p)'
#word craft mac million: 'Kraft-McMillan'




# Environment shortcuts

bullet: key(ctrl-p i)
number list: key(ctrl-p n)
begin quote: key(ctrl-p q)
# for quote environment

begin standard: key(ctrl-p s)

subsubsection star: key(ctrl-p shift-8 4)
    

begin description: key(ctrl-p d)
#number list: key(ctrl-p e)
viro menu: key('ctrl-p space')
begin part: key('ctrl-p 0')
begin section: key('ctrl-p 2')
begin subsection: key('ctrl-p 3')
begin subsubsection: key('ctrl-p 4')
begin paragraph: key('ctrl-p 5')
begin subparagraph: key('ctrl-p 6')
begin part star: key('ctrl-p shift-8 0')
begin section star: key('ctrl-p shift-8 2')
begin subsection star: key('ctrl-p shift-8 3')
begin subsubsection star: key('ctrl-p shift-8 4')
begin paragraph star: key('ctrl-p shift-8 5')
begin subparagraph star: key('ctrl-p shift-8 6')
begin title: key('ctrl-p t')
begin author: key('ctrl-p shift-a')
begin date: key('ctrl-p shift-d')
begin abstract: key('ctrl-p a')
    #alignment
align formula: key('ctrl-m t a')
number formula: key('ctrl-m n')

    #modes
insert tex code: key('cmd-l')
insert table: key(ctrl-alt-t) 
#p system preferences
unfold in-line math: key('shift-cmd-*')

insert text: '\\text '
    

    #big operators
blank sum: key('ctrl-m u')

# would be nice to use 'sum' but that's a bit too close to 'sun'
summing near:
    insert("\\stackrelthree ")
    key(n down)
    insert("\\sum ")
    key(down)

summing crunch near: 
	key(ctrl-m u)
	insert("_k=1 ")
	insert("^n ")

summing sit near: 
	key(ctrl-m u) 
	insert("_i=1 ")
	insert("^n ")

blank product: "\\prod "

product near:
	insert("\\stackrelthree ")
    key(n down)
    insert("\\prod ")
    key(down)

product sit near:
    insert("\\stackrelthree ")
    key(n down)
    insert("\\prod ")
    key(down)
    insert("_i=1 ")
    key(right)

sym indicator: "\mathbbm{1 "

#commands for quick sub/superscripts

sub ({user.tex_and_norm_letters} | <number>):
    key(_)
    number = number or 0
    value = tex_and_norm_letters or number
    insert("{value}")
    key(right)

super (<number>):
    key(^)
    insert(number)
    edit.right()

super (<user.letter>):
    key(^)
    insert(letter)
    edit.right()