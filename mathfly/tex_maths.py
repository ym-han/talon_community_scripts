from talon import Module, Context
from typing import List, Union

mod = Module()

mod.list("tex_greek_letters", desc="TeX greek letters")
mod.list("tex_and_norm_letters", desc="TeX greek letters and normal letters")
mod.list("tex_symbols", desc="TeX mathematical symbols")
mod.list("tex_hattable", 
    desc="TeX greek letters and normal letters that can be enclosed in hat")
mod.list("stats_most_common_with_sub", 
    desc="")


ctx = Context()

symbols = {
    # operators
    "frac": "frac",
    "summation": "sum",
    "product": "prod",
    "limit": "lim",
    "[square] root": "sqrt",
    "generic root": "root",
    "int": "int",
    "double int": "iint",
    "triple int": "iiint",
    #"times": "times",
    "divide": "div",
    "C dot": "cdot",
    "plus minus": "pm",
    "partial": "partial",
    "infinity": "infty",
    "nice frack": "nicefrac",
    "binomial": "binom",
    "nabla": "nabla",
    # accents
    "accent hat": "hat",
    "accent tilde": "tilde",
    "accent dot": "dot",
    "accent double dot": "ddot",
    "accent bar": "bar",
    "accent vector": "vec",
    # trig
    #"sine": "sin",
    "cosine": "cos",
    "tangent": "tan",
    "secant": "sec",
    "cosecant": "csc",
    "cotangent": "cot",
    "arc sine": "arcsin",
    "arc cosine": "arccos",
    "arc tan": "arctan",
    "hyperbolic sine": "sinh",
    "hyperbolic cosine": "cosh",
    "hyperbolic cotangent": "coth",
    "hyperbolic tangent": "tanh",
    # functions
    "argument": "arg",
    "degree": "deg",
    "determinant": "det",
    "dimension": "dim",
    "lawn": "ln",
    "log no base": "log",
    "log base 2": "\\log_2",
    "maximum": "max",
    "minimum": "min",
    "modulus": "bmod",
    "infimum": "inf",
    "supremum": "sup",
    # relations
    "there exists": "exists",
    "member of": "in",
    "for all": "forall",
    "not equal": "neq",
    "greater equal": "geq",
    "smaller equal": "leq",
    "approximately": "approx",
    "proportional [to]": "propto",
    "preference less [than]": "prec",
    "preference less equals": "preceq",
    "preference greater [than]": "succ",
    "preference greater equal": "succeq",
    # logic
    "log and": "land",
    "log or": "lor",
    "log not": "lnot",
    #
    "left arrow": "leftarrow",
    "right arrow": "rightarrow",
    "up arrow": "uparrow",
    "down arrow": "downarrow",
    "left right arrow": "leftrightarrow",
    "maps to": "mapsto",
    "oh plus": "oplus",
    "oh times": "otimes",
    "big oh plus": "bigoplus",
    "big oh times": "bigotimes",
    #
    "dots": "dots",
    "diagonal dots": "ddots",
    "horizontal dots": "cdots",
    "vertical dots": "vdots",
    # sets
    "empty set": "emptyset",
    "subset": "subset",
    "superset": "supset",
    "strict subset": "subsetneq",
    "strict superset": "supsetneq",
    "intersection": "cap",
    "union": "cup",
    "GCD": "gcd",
    "cat hom": "hom",
    "kernel": "ker",
    "unit": "unitone",
    "unit two": "unittwo",
    "unit fraction": "unitfrac",
    "text fraction": "tfrac",
    "display fraction": "dfrac",
    "continued fraction": "cfrac",
    "continued fraction (left)": "cfracleft",
    "continued fraction (right)": "cfracright",
    "text binomial": "tbinom",
    "display binomial": "dbinom",
}

stats_most_common_with_sub = {
        "alpha": "alpha",
        "beta": "beta",
        "gamma": "Gamma",
        "theta": "theta",
        "mew": "mu",
        "tau": "tau",
        "tau": "tau"
}

greek_letters = {
    "alpha": "alpha",
    "beta": "beta",
    "gamma": "Gamma",
    "small gamma": "gamma",
    "delta": "delta",
    "epsilon": "varepsilon",
    "zita": "zeta",
    "eater": "eta",
    "theta": "theta",
    "big theta": "Theta",
    "iota": "iota",
    "kappa": "kappa",
    "lambda": "lambda",
    "big lambda": "Lambda",
    "mew": "mu",
    "news": "nu",
    "zee": "xi",
    "pie": "pi",
    "row": "rho",
    "sig ma": "sigma",
    "tau": "tau",
    "upsilon": "upsilon",
    "phi": "phi",
    "chi": "chi",
    "sigh": "psi",
    "omega": "omega",
    "big omega": "Omega",
}


tex_and_norm_letters = {
                        **{k: "\\"+v for k,v in greek_letters.items()},   
                        "air": "a",
                        "bat": "b", 
                        "cap": "c", 
                        "drum": "d", 
                        "each": "e",
                        "fine": "f",
                        "gust": "g",
                        "harp": "h",
                        "sit": "i",
                        "jury": "j", 
                        "crunch": "k",
                        "look": "l",
                        "made": "m",
                        "near": "n",
                        "oil": "o", 
                        "pit": "p",
                        "quench": "q", 
                        "red": "r",
                        "sun": "s",
                        "trap": "t",
                        "urge": "u",
                        "vest": "v",
                        "whale": "w",
                        "plex": "x",
                        "yank": "y",
                        "zip": "z"}


def is_hattable(lttr):
    if lttr in ("big Theta", "omega", "big omega", "row"):
        return False
    else:
        return True


tex_hattable = {k: v for k,v in tex_and_norm_letters.items() if is_hattable(k)}

ctx.lists["user.tex_symbols"] = symbols
ctx.lists["user.stats_most_common_with_sub"] = stats_most_common_with_sub

ctx.lists["user.tex_greek_letters"] = {
    **greek_letters,
    **{f"big {k}": v.title() for k, v in greek_letters.items()},
}

ctx.lists["user.tex_and_norm_letters"] = tex_and_norm_letters
ctx.lists["user.tex_hattable"] = tex_hattable
