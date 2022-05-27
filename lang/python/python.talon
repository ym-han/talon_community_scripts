mode: command
and mode: user.python
mode: command
and mode: user.auto_lang
and code.language: python
-
tag(): user.code_imperative
tag(): user.code_object_oriented
    
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
    user. = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"


# Python-specific grammars
eye python: "ipython3"

dunder in it: "__init__"
state (def | deaf | deft): "def "
state try: "try:\n"
state except: "except "
state raise: "raise "
self taught: "self."
pie test: "pytest"
state past: "pass"
state enumerate: "enumerate"


state description: "descrip"

for index <user.letter> enumerate: insert("for idx, {letter} in enumerate(")
for index <user.text> enumerate: insert("for idx, {text} in enumerate(")


^new func <user.text>$: user.code_default_function(text)

raise {user.python_exception}: user.insert_cursor("raise {python_exception}([|])")
except {user.python_exception}: "except {python_exception}:"


dot items: ".items("

dock string:
    user.code_comment_documentation()
dock {user.python_docstring_fields}:
    insert("{python_docstring_fields}")
    edit.left()
dock type {user.code_type}:
    user.insert_cursor(":type [|]: {code_type}")
dock returns type {user.code_type}:
    user.insert_cursor(":rtype [|]: {code_type}")


toggle imports: user.code_toggle_libraries()
import <user.code_libraries>:
    user.code_insert_library(code_libraries, "")
    key(end enter)

from import:
    insert('from import ')
    key('left')
    edit.word_left()
    key('space')
    edit.left()


super init: "super().__init__()"

p print: "pp.pprint("

if name main: """if __name__ == "__main__": main()"""


new dataclass: 
    insert("@dataclass\nclass :")
    key(left)
new frozen dataclass: 
    insert("@dataclass(frozen=True)\nclass :")
    key(left)


# PANDAS
axis equal <number>$: "axis={number}"
in place equal true: "inplace=True"
in place equal false: "inplace=False"

d f: "df"
p d max rows: "pd.set_option('display.max_rows', 500)"
p d max columns: "pd.set_option('display.max_columns', 25)"
read c s v: "pd.read_csv("
read t s v: 
    insert('pd.read_csv( , sep="\\t")')
    key(left:12)
 
save t s v: "to_csv(, sep='\\t', index=False)"

d f people: "df_ppl"

p d categorical: "pd.Categorical("
dot assign: ".assign("

dot columns: ".columns"
dot head: ".head()"
dot head <number>$: ".head({number})"
dot tail: ".tail("
dot tail <number>$: ".tail({number})"
dot describe: ".describe()"
dot info: ".info()"

dot group by: ".groupby("

dot iter tuples: ".itertuples()"

dot to csv: ".to_csv("

equal gap: " = "

dot drop duplicates: ".drop_duplicates"

dot drop column in place: ".drop(columns='TO ADD', inplace=True)"
rename column: "df.rename({"colnm": "newcolnm"}, axis=1, inplace=True)
dot rename: ".rename("

dot i lock: ".iloc["
dot lock: ".loc["

dot as type float: ".astype(float)"
dot as type int: ".astype(int)"


dot string split: ".str.split("

import data stuff: 
    insert("import numpy as np\n")
    insert("import pandas as pd\n")
    insert("import pickle\n")
    insert("from pathlib import Path\n")
    #insert("from fastcore.all import *\n")

import torch stuff:
    """import torch
    import torch.nn as nn
    import torch.nn.functional as F
    import torch.utils.data as data
    import torch.optim as optim"""

import mat plot lib:
    """import matplotlib.pyplot as plt
    plt.set_cmap('cividis')
    %matplotlib inline 
    from IPython.display import set_matplotlib_formats
    set_matplotlib_formats('svg', 'pdf') # For export
    from matplotlib.colors import to_rgb
    import matplotlib
    matplotlib.rcParams['lines.linewidth'] = 2.0"""

import sea born:
    """import seaborn as sns
    sns.reset_orig()"""


dot value counts: ".value_counts()"
dot value counts show missing: ".value_counts(dropna=False)"



# SYNTAX COMMON TO NP and TORCH
dee type: "dtype"
dot zeros_like: ".zeros_like"
dot zeros: ".zeros"

dot n dim: ".ndim"
dot shape: ".shape"
dot reshape: ".reshape("
dot full: ".full(shape=, fill_value=)"
dot full like: ".full_like("
dot eye: ".eye"

dot rand n like: ".randn_like("
dot a range: ".arange("

dot split: ".split("
dot stack: ".stack("
dot max: ".max("
dot min: ".min("

dot squeeze: ".squeeze("
dot unsqueeze: ".unsqueeze("

dot numel: ".numel()"

# NUMPY
n p dot: "np."

np array: "np.array(["
np zeros: "np.zeros("

np a range: "np.arange("

np concat: 
    insert("np.concatenate(, axis=)")
    key(left:10)


np nan: "np.nan"

# TORCH


## change display precision (does not actuallly change values)
torch display precision: "torch.set_printoptions(precision=1)"

word pytorch: "pytorch"

state torch: "torch"

torch tensor: "torch.tensor"    
state tensor: "tensor"

torch from num pie: "torch.from_numpy("

dot dee type: ".dtype"

dot c p u: ".cpu()"

dot c p u num pie: ".cpu().numpy()"

dot clone: ".detach().clone()"

dot device: ".device"

dot num pie: ".numpy()"

dot float: ".float()"
dot long: ".long()"

dot view: ".view("
dot trans: ".t()"

dot sum: ".sum"

dot diag: ".diag()"

dot mull: ".mul("
dot mat mull: ".matmul("

dot grad: ".grad"
dot requires grad: ".requires_grad_()"
requires grad: "requires_grad"
requires grad true: "requires_grad=True"
torch no grad: "with torch.no_grad():"


dot backward: ".backward()"

torch reshape: "torch.reshape("
torch a range: "torch.arange("
torch zeros: "torch.zeros("
torch stack: "torch.stack("
torch cat: 
    insert("torch.cat(, dim=)")
    key(left:7)
torch chunk: "torch.chunk("
torch long: "torch.long"
torch bool: "torch.bool"
torch float: "torch.float"

torch manual seed: "torch.manual_seed(7)"

torch rand: "torch.rand("
torch rand like: "torch.rand_like("

torch rand n: "torch.randn("
torch rand n like: "torch.randn_like("
torch normal: "torch.normal("
torch lin space: "torch.linspace(start, end, steps)"

torch L2 norm: "torch.linalg.norm("

sea born lineplot: "sns.lineplot(x= , y= , label='$$')"

# Initializing things

## Make operations deterministic
torch set deterministic:
    """torch.backends.cudnn.determinstic = True
    torch.backends.cudnn.benchmark = False"""

device cuda if available: """device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")"""

torch cuda is available: "torch.cuda.is_available()"

usual learning rate: "learning_rate = 1e-4"
usual L two: "λ_l2 = 1e-5"

init optimizer: "optimizer = torch.optim.Adam(model.parameters(), lr=learning_rate, weight_decay=lambda_l2) # built-in L2"
  
n n sequential: "nn.Sequential"
n n linear: "nn.Linear"
model equal sequential: "model = nn.Sequential("
model to device: "model.to(device) #Convert to CUDA"

torch cross entropy: "torch.nn.CrossEntropyLoss()"

init params: "init_params("

zero grad: "optimizer.zero_grad()"

optimizer step: "optimizer.step()"


