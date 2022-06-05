mode: command 
and mode: user.julia
mode: command
and mode: user.auto_lang
and code.language: julia
-
tag(): user.code_imperative

tag(): user.code_comment_line
tag(): user.code_comment_documentation
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_functions_gui
tag(): user.code_libraries
tag(): user.code_libraries_gui
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_math


settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"


#julia-specific grammars


#^new func <user.text>$: user.code_default_function(text)

new func: 
  insert("function ()")
  key(enter:2)
  insert("end")
  key(up:2)
  key(right:6)
  


slice reverse: insert("[end : -1 : 1]")

v cat: 
  insert("vcat()")
  key(left)

h cat:
  insert("hcat()")
  key(left)

push in place: 
  insert("push!()")
  key(left)

type of: 
  insert("typeof()")
  key(left)

state end: "end"
state begin: "begin"

begin j block: "```julia"
end block: "```"

group by: "groupby("
group by sort true: 
  insert("groupby( , sort=true)")
  key(left:13)

by row: "ByRow"
subset: "subset("

subset rows: "@rsubset "


df sort reverse: "sort!(df, :col, rev=true)"
reverse equal true: "rev=true"



combine count rows: "combine(nrow => :count)"
combine: "combine("


vega plot: 
  insert("@vlplot()")
  key(left)  

find length:
  insert("length()")
  key(left)

alpha:
  clip.set_text('α')
  edit.paste()


beta:
  clip.set_text('β')
  edit.paste()

beta hat:
  clip.set_text('β̂')
  edit.paste()

  
member of:
  clip.set_text('∈')
  edit.paste()

not member of:
  clip.set_text('∉')
  edit.paste()

^for all$:
  clip.set_text('∀')
  edit.paste()

^exists$:
  clip.set_text('∃')
  edit.paste()

^if only if$:
  clip.set_text('⟺')
  edit.paste()

state for: 
  insert("for \n\n")
  insert("end")
  key(up:2)
  

sym fake divide:
  clip.set_text('𝘭')
  edit.paste()


state filter: insert("filter(")
state view: "view("

at chain df: 
  insert("@chain df begin\n\nend")
  key(left:4)

reduce: "reduce("

join path: "joinpath("

# TO DO: Add dir walking functions too

# Data related

import data packages: "using CSV, DataFrames, Chain, StatsBase\nusing TerminalPager, PrettyTables\nusing FloatingTableView\nusing Underscores"
import plots jl: "using Plots, StatsPlots"
using Algebra Of Graphics: "using AlgebraOfGraphics"
using linear algebra: "using LinearAlgebra"
using py call: "using PyCall"
using r call: "using RCall"
r lib: "@rlibrary"  
r lib g g plot: "@rlibrary ggplot2"  
r lib g g repel: "@rlibrary ggrepel"  


state var: 
      insert('var""')
      key(left)

macro r: 
      insert('R""')
      key(left)

state data frame: "DataFrame"
new DataFrame: "DataFrame("
using data frames: "using DataFrames"

show df: "show(df, allcols=true)"
show df all rows: "show(df, allrows=true, allcols=true)"

check type of columns: "eltype.(eachcol(df))"
describe types and missing: "describe(df, :eltype, :nmissing)"
simple df checks: 
  insert("eltype.(eachcol(df))\n")
  insert("describe(df, :eltype, :nmissing)")

skip missing: "skipmissing=true"
drop missing: "dropmissing!(df, :col_to_focus_on, disallowmissing=true)"

rename cols false: "renamecols=false"

select: "select("
select bang: "select!("
transform: "transform("
transform bang: "transform!("

read csv: 'df = CSV.read(fnm, DataFrame)' 
# to do: make it use selected txt instead of `fnm`
save tsv: 'df |> CSV.write("df.tsv", delim = "\\t")'

inner join: "innerjoin(x, y, on=:ID=>:id"
inner join with missing: """innerjoin(x, y, on=:ID=>:id, matchmissing=:equal)"""



add package preserving: 
  insert("Pkg.add(, preserve=PRESERVE_DIRECT)")
  key(left:27)

state dickt: "dict"

collect on: "collect("

make vector: "vec("
  
then pipe: " |> "
  
at under: "@_ "
at test: "@test"

state enumerate: "enumerate("

state occurs in: "occursin("
state freq table: "freqtable("

assert: "@assert "

big arrow: " => "


state fold: "fold"

# ggplot
q plot: "qplot("
g g save: "ggsave("
grid arrange: "grid.arrange("
color equals: "color = "
color equals red: 'color = "red"'

size equals: "size="
shape equals: "shape="

coord cartesian: "coor_cartesian"
element text: "element_text"
element blank: "element_blank"
facet grid: "facet_grid"
facet wrap: "facet_wrap"
geom A B line: "geom_abline"
geom area: "geom_area"
geom bar: "geom_bar"
geom boxplot: "geom_boxplot"
goem d l: "goem_dl"
goem d l smart grid: 'goem_dl(aes(  , method="smart.grid"'
goem dot plot: "goem_dotplot("
geom hist: "geom_histogram"
geom h line: "geom_hline"
geom line: "geom_line"
geom point: "geom_point"
geom point range: "geom_pointrange"
geom polygon: "geom_polygon"
geom ribbon: "geom_ribbon"
geom segment: "geom_segment"

geom smooth: "geom_smooth"
geom smooth gam: "geom_smooth(method="gam", formula = y ~ ) 
geom smooth lm: "geom_smooth(method="lm", formula = y ~ ) 
geom smooth s e false: "geom_smooth(se=false)"
s e equals false: "se=false"
theme no legend: 'theme(legend.position = "none"'
theme minimal: 'theme_minimal()'
geom v line: "geom_vline"
geom violin: "geom_violin"

geom text: "geom_text"
geom text font face: "geom_text( fontface =  )"
state v just inward: """vjust = "inward" """
state h just: """ hjust="inward" """
state labs: "labs"
state x lab: "xlab("
state y lab: "ylab("
label equals: "label = "
scale colour manual: "scale_colour_manual"
scale fill manual: "scale_fill_manual"
scale fill viridis: "scale_fill_viridis_c"
scale colour viridis: "scale_colour_viridis_c"
scale x continuous: "scale_x_continuous("
state theme set: "theme_set"
stat summary: "stat_summary("
stat summary mean point: 'stat_summary(stat = "summary", fun.y = "mean", size=2)'
stat summary median point: 'stat_summary(stat = "summary", fun.y = "median", size=2)'
ggplot blank: "ggplot(df, aes(x= , y="
ggplot scatter facet: 
   """ggplot(df,   aes(x= , y=)) + 
          geom_point() +
          facet_wrap(~)"""


facet wrap: "facet_wrap(~"
space plus: " + "

