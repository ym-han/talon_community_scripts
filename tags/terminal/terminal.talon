tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

cancel: key(ctrl-c)

# TEMP


broot: "br"
broot details: "br -sdp\n"
# FZF

f z f: "fzf"
pipe fuzzy: " | fzf\n"
term hist: key(ctrl-r)

then fuzz:
    insert("**")
    key(tab)

p s fuzzy:
    insert("ps aux | fzf")
    key(enter)


vim fuzzy:
    insert("vim **")
    key(tab)
sublime fuzzy:
    insert("subl **")
    key(tab)


# ==============================
# --- Navigation ---------------
# ==============================

# navigation
l s: "ls\n"
lisa hidden: "ls -lah\n"
lisa: user.terminal_list_directories()
lisa all: user.terminal_list_all_directories()
katie [dir] [<user.text>]: user.terminal_change_directory(text or "")
katie root: user.terminal_change_directory_root()
katie (up | back): user.terminal_change_directory("..")

cd [dir] [<user.text>]: user.terminal_change_directory(text or "")
cd root: user.terminal_change_directory_root()
cd up:
  insert("cd ..")
  key(enter)
cd back:
  insert("cd -")
  key(enter)
go <user.system_path>: insert('cd "{system_path}"\n')
path <user.system_path>: insert('"{system_path}"')
clear screen: user.terminal_clear_screen()
#kill all: user.terminal_kill_all()


# ==============================
# --- File management ----------
# ==============================

find file: "fd -HI "

move file: "mv "
copy file: "cp "

we get: "wget "

make dear: "mkdir "


find large files:
    insert("sudo find / -size +120M -type f -exec du -h {} \\; | sort -n | tail -n 50")


change all accessed:
    insert("cd scratch\n")
    insert("find ./ -type f -exec touch -a {} +")

gzip file: "gzip -d "
gunzip recursive: "gunzip -r "

zee shirk: ".zshrc"

# find . -iname '*.zip' -exec sh -c 'unzip -o -d "${0%.*}" "$0"' '{}' ';'
# https://stackoverflow.com/questions/107995/how-do-you-recursively-unzip-archives-in-a-directory-and-its-subdirectories-from

# find . -type f -iname "*.tar" -print0 -execdir tar xf {} \; -delete
# https://unix.stackexchange.com/questions/145342/how-do-i-use-gunzip-and-tar-to-extract-my-tar-gz-file-to-the-specific-directory

# https://stackoverflow.com/questions/25042643/untar-all-gz-in-directories-and-subdirectories
# for file in `find *`; do tar -xvf "${file}" ; done

git name: "ym-han\n"

git log one line:
  insert("git log --oneline")
  key(enter)

git force push:
  insert("git push --force-with-lease")
  key(enter)

talon user update:
    "find {path.talon_user()} -type d -name .git -print -execdir git pull --ff-only \\;\n"

get where git config: "git config --global --list --show-origin"

pull main:
  insert("git switch main; git pull")
  key(enter)

find non kebab case: 'fd --no-ignore "[^a-z0-9-]|^-|-$|--"'

# ==========================
# ----- Grepping  ----------
# ==========================

(grep | r g): "rg "
grep python <user.text>: "rg {text} --type py"
grep haskell <user.text>: "rg {text} --type hs"
grep typescript <user.text>: "rg {text} --type ts"
grep in python:
    insert("rg ? --type py")
    key(left:10)
grep ignore case: "rg -i "

grep hist: "history|rg "

sublime: "subl "

pseudo a p t update: "sudo apt-get update"
pseduo a p t install: "sudo apt install "

# ============================
# ----- git ------------------
# ============================

git diff clip ks:
  insert("git difftool -y -t Kaleidoscope HEAD")
  key(right:10)
  insert(clip.text())

# ============================
# ----- LLM ------------------
# ============================

#aider gemini: "aider --model openrouter/google/gemini-flash-1.5 "
#aider claude: "aider --model openrouter/anthropic/claude-3.5-sonnet"

start claude:
  insert("claude")
  key(enter)

claude proxy:
  insert("cd /Users/ymh/_git/cs_stuff/llm-study/ai-tool-helpers/claude-code-proxy")
  key(enter)
  insert("export ANTHROPIC_BASE_URL=http://localhost:3001")
  key(enter)
  insert("make dev")
  key(enter)

claude yolo:
  insert("claude --dangerously-skip-permissions")
  key(enter)

claude add playwright:
  insert("claude mcp add playwright npx '@playwright/mcp@latest'")
  key(enter)

# ==========================
# ----- VSCode, Cursor  ----
# ==========================

coder folder: "code -n ."
cursor folder: "cursor -n ."

code open: "code "
code clipped:
    insert("code ")
    insert(clip.text())

code fuzzy:
    insert("code **")
    key(tab)

# ==========================
# ----- Zed  ----------
# ==========================

zed folder: "zed -n ."

zed open: "zed "
zed clipped:
    insert("zed ")
    insert(clip.text())

zed fuzzy:
    insert("zed **")
    key(tab)



# =============================
# --------- Talon -----------
# =============================

zed talon:
    insert("kjt; zed -n .")
    key(enter)

go talon user: "cd ~/.talon/user"
go rango talon: "cd ~/.talon/rango"

go community talon: "cd ~/.talon/knausj_talon"

# =============================
# ------ Note taking ----------
# =============================

go obsidian: 'cd ~/"Obsidian Archive"'
zed obsidian: 'zed -n ~/"Obsidian Archive"'

# =============================
# ------ Mirdin dev -----------
# =============================

install harness:
  insert("cd /Users/ymh/_git/mirdin_work/twllm/testing-with-llms")
  key(enter)
  insert("cabal install harness llm-utils --overwrite-policy=always -fast")
  key(enter)

harness help:
  insert("harness --help")
  key(enter)
harness install user:
  insert("harness install-user")
  key(enter)
harness clean user:
  insert("harness clean-user")
  key(enter)

go benchmark set:
  insert("cd /Users/ymh/_git/mirdin_work/code-quality-benchmark-public")
  key(enter)

# ==============================
# --- CCLAW DSL dev related ----
# ==============================

go use cases:
    insert("cd /Users/ymh/Documents/Git_repos/smucclaw/usecases")
    key(enter)

#start web sessions server:
#  insert("jl4-websessions 5008 session.db")
#  key(enter)

go monaco:
  insert("cd ~/_git/smucclaw/mattwaddington/ts-apps/jl4-web/")
  key(enter)

monaco lsp:
  insert("cabal run exe:jl4-lsp -- ws --host localhost --port 5007")
  key(enter)

monaco dev:
  insert("cd ~/_git/smucclaw/mattwaddington/ts-apps/jl4-web/")
  key(enter)
  insert("corepack npm run dev")
  key(enter)

go matt wadd: "cd ~/_git/smucclaw/mattwaddington"

# go test cases:
#     insert("cdl4")
#     key(enter)
#     insert("cd test/Testcases")
#     key(enter)

go sim ma la:
    insert("cd ~/Documents/Git_repos/smucclaw/simala")
    key(enter)
    insert("code -n .")
    key(enter)

go lam four backend:
    insert("cd /Users/ymh/Documents/Git_repos/smucclaw/lam4/lam4-backend")
    key(enter)
    insert("code -n .")
    key(enter)

go lam four frontend:
    insert("cd /Users/ymh/Documents/Git_repos/smucclaw/lam4/lam4-frontend")
    key(enter)
    insert("code -n .")
    key(enter)

rebuild extension:
    insert("cd /Users/ymh/Documents/Git_repos/smucclaw/lam4/lam4-frontend")
    key(enter)
    insert("./rebuild-vscode-ext.sh")
    key(enter)
    insert("cd -")
    key(enter)


make lam four extension:
    insert("npm run langium:generate;  npm run build; vsce package --allow-missing-repository")
    key(enter)

#docker logical english:
#    insert("docker run -it -p 3050:3050  -e LOAD_KB=true -e SWISH_DAEMON_USER=root  --memory="300m" cclawdev/logicalenglish:main")


# == CCLAW remote
log into claw:
    insert("ssh -Y ymhan@cclaw")
    key(enter)
claw g sheet: "cd /home/ymhan/repos/gsheet\n"
claw view: "cd /home/ymhan/repos/vue-pure-pdpa\n"

poetry g server:
    insert("cd /home/ymhan/repos/gsheet/natural4-server/natural4_server/; poetry shell")
    key(enter)

run unicorn:
    insert("cd /home/ymhan/repos/gsheet/natural4-server/natural4_server/; gunicorn wsgi:app -c  gunicorn.ym.py")
    key(enter)

# cd /home/ymhan/repos/gsheet/natural4-server/natural4_server/
# poetry run gunicorn wsgi:app -c  gunicorn.ym.py
# ============================
# -------- CCLAW AWS ---------
# ============================

#aws login: insert("aws sso login --profile cclaw-power-user")
#state claw power user: "cclaw-power-user"
#profile claw power user: "--profile cclaw-power-user"

# --------------

l four run:
    insert("cdl4")
    key(enter)
    insert("stack run -- --workdir=workdir ")

l four motor insurance:
    insert("cdl4")
    key(enter)
    insert("stack run -- --workdir=workdir /Users/ymh/Documents/Git_repos/smucclaw/dsl/lib/haskell/natural4/test/Testcases/LogicProgram/motor-insurance-1/motor-insurance-1.csv")

# -------------------------

# ==== CS300 related
#go to three hundred projects: "cd *projects*\n"

#three hundred container: "'/Users/ymh/Documents/Git_repos/cs_stuff/cs300_env/cs300-run-docker'"

#remove p b c c: "rm *.pb.cc"
# necessary if get fatal error: shardkv.pb.h: No such file or directory

#make shardmaster: "make clean; make; make shardmaster_complex_moves\n"

#three hundred project:
#    insert("cd '/Users/ymh/Documents/Git_repos/cs_stuff/cs300_env/'\n")
#    insert("./cs300-run-docker\n")
#    insert("cd *pro*\n")
#    insert("cd distr*\n")

#make tee san: "make TSAN=1"

#run tests with tee san: "./run_tests -s -z server_part1"

#run queue tests with tee san: "./run_tests -s -z queue"

#gdb tests/server_part1/test3_process_requests

make run: "make run\n"

clean and run: "make clean; make run\n"

make clean all: "make clean all\n"
make clean: "make clean\n"
make check: "make check"


#clear screen: "clear\n"

g d b follow fork: "set follow-fork-mode child"


# ============================
# ----- Haskell related ------
# ============================

# === Cabal
cabal update: "cabal update"
cabal install: "cabal install --overwrite-policy=always"
cabal install all: "cabal install all --overwrite-policy=always"
cabal install lib: "cabal install --lib "

cabal init: "cabal init"
cabal help init: "cabal help init"
cabal init interactive: "cabal init --interactive"

cabal build:
    insert("cabal build all -fast")
    key(enter)
cabal build lib: "cabal build lib:"
cabal build exe: "cabal build exe:"

cabal repl: "cabal repl "
cabal exec: "cabal exec "
cabal run: "cabal run "
cabal help: "cabal help "

edit cabal: "code *.cabal"
edit cabal in zed: "zed *.cabal"

# === Stack
stack build install: "sbf; stack install"
stack build:
    insert("sbf")
    key(enter)

stack test:
    insert("stf")
    key(enter)

stack haddock:
    insert("stack haddock")
    key(enter)
stack hoogle gen:
    insert("stack hoogle -- generate --local")
    key(enter)
stack hoogle serve:
    insert("stack hoogle -- server --local --port=8080")
    key(enter)
stack hoogle gen serve:
    insert("stack hoogle -- generate --local")
    key(enter)
    insert("stack hoogle -- server --local --port=8080")
    key(enter)

stack targets: insert("stack ide targets")

stack repl:
    insert("stack repl")
    key(enter)

stack repl test:
    insert("stack ghci --test")
    key(enter)
# natural4:test:natural4-test


enable quasi quotes:
  insert(":set -XQuasiQuotes")
  key(enter)
  insert(":set -XTemplateHaskell")
  key(enter)

# ===============================
# ----- Javascript related ------
# ===============================

run e s lint: "npx eslint "

# ----- npm  ----------

state corepack: "corepack"

npm install:
  insert("npm install")
  key(enter)
npm test:
  insert("npm run test")
  key(enter)

npm check:
  insert("npm run check")
  key(enter)

npm dev:
  insert("npm run dev")
  key(enter)

npm preview:
  insert("npm run preview")
  key(enter)

npm lint:
  insert("npm run lint")
  key(enter)

npm check all:
  insert("npm run check:all")
  key(enter)
npm fix all:
  insert("npm run fix:all")
  key(enter)

npm ci build:
  insert("npm ci; npm run build")
  key(enter)

npm clean install:
  insert("npm ci")
  key(enter)

npm build:
  insert("npm run build")
  key(enter)

npm format:
  insert("npm run format")
  key(enter)

# ----- pnpm ----------

pee build:
  insert("pnpm run build")
  key(enter)
pee run:
  insert("pnpm run dev -- --open")
  key(enter)

pee check:
    insert("pnpm run check")
    key(enter)

pee prepare:
    insert("pnpm prepare")
    key(enter)

pee test:
    insert("pnpm test")
    key(enter)

pee format:
    insert("pnpm format")
    key(enter)

# ============================
# ----- Nix related     ------
# ============================

nix shell: "nix-shell "
exit nix shell: key(ctrl-D)

# ============================
# ----- Environments ------
# ============================

(shay cd | go dotfiles):
  insert("chezmoi cd")
  key(enter)
shay apply:
  insert("chezmoi apply -v")
  key(enter)
shay diff:
  insert("chezmoi diff")
  key(enter)

make virtual environment: "virtualenv"
#environment reel: "source ~/environments/rel/bin/activate\n"
#environment text gen: "source ~/environments/textgen/bin/activate\n"
#environment termolator: "source ~/environments/termo/bin/activate\n"
#environment lip reading: "source /users/yh31/scratch/projects/lip/lip_env/bin/activate\n"

deactivate environment: "deactivate"

# === SCREEN
# https://linuxize.com/post/how-to-use-linux-screen/

start screen: "screen"
new screen window:
    key(ctrl-a)
    key(c)
# https://www.davandshy.com/creating-reattachable-ssh-sessions-with-mosh-screen/

screen help:
    key(ctrl-a)
    key(?)

screen lisa: "screen -ls\n"

screen reattach: "screen -r "


print dir: "pwd\n"

copy current dir:
  insert("pwd | pbcopy")
  key(enter)

# === OSCAR
request <number> interactive: "interact -t 0{number}:00:00 -m 10g -n 1"
request <number> g p u interactive: "interact -q gpu -t 0{number}:00:00 -m 100g -n 1"
#interact -q gpu -t 6:00:00 -g 1 -m 60g

request quick g p u: "interact -q gpu -t 01:00:00 -m 100g -n 1"


my job info: "myjobinfo\n"

oscar workspace:
    insert("module load python/3.7.4\n")
    insert("module load julia/1.7.2\n")
    insert("cd /users/yh31/scratch/\n")

oscar gpt workspace:
    insert("module load zstd\n")
    insert("module load python/3.7.4\n")
    insert("source /users/yh31/scratch/envs/gptexps/bin/activate\n")
    insert("module load julia/1.7.2\n")
    insert("cd /users/yh31/scratch/projects/gpt_exps\n")


eye python: "ipython3"
eye python three: "ipython3"

#lipreading workspace:
#    insert("module load python/3.7.4\n")
#    insert("module load libjpeg-turbo/2.0.2\n")
#    insert("cd /users/yh31/scratch/projects/lip/\n")

python workspace:
    insert("module load python/3.7.4\n")
    insert("source ~/environments/rel/bin/activate\n")
    insert("cd /users/yh31/scratch/projects/sr-nlp/data_gathering/source/making_data/prepping-raw-data\n")



#go to cleaned files: "cd /users/yh31/scratch/datasets/entity_linking/cleaned\n"
#go to slurm scripts: "cd /users/yh31/scratch/projects/embed_exp/slurm_scripts\n"
#go to oscar config: "cd cd_lstm_joulin_SAT_night_lower_wt_decay_and_dropout.xml\n"

#go to embedding scripts: "cd /users/yh31/scratch/projects/embed_exp\n"
#go to sense ref scripts: "cd /users/yh31/scratch/projects/sr_neural/scripts/etl/nyt\n"
#go to text gen: "cd /users/yh31/scratch/projects/sr_neural/scripts/\n"
#go to lip data: "cd /users/yh31/scratch/projects/lip/data\n"

# === CONDA

conda list environments: "conda env list"



# === JULIA / PYTHON SPECIFIC

start julia: insert("julia\n")
start julia project: insert("julia --project=@. --threads=auto")

exit julia: "exit()\n"

#oscar julia: "module load julia/1.7.2\n"
#oscar python: "module load python/3.7.4\n"

pip install user: "pip install --user"
pip install: "pip install "
pip install requirements: "pip install -r requirements.txt"

#activate 1460 local: "source /Users/ymh/Documents/Git_repos/NLP/cs1460/environments/1460_env/bin/activate"

# === SQL specific

sequel mode header: ".mode column \n.header on\n"

# === POSTGRES
kill all postgres: "pkill postgres"
# https://askubuntu.com/questions/547434/how-to-nicely-stop-all-postgres-processes

# === Google cloud

#log into test tpu: "gcloud alpha compute tpus tpu-vm ssh v2inf"

#bucket list: "gsutil ls -r gs://coref_gpt/**"

#download from bucket: "gsutil cp gs://coref_gpt/OBJECT_NAME SAVE_TO_LOCATION"

#get ip: "dig +short myip.opendns.com @resolver1.opendns.com"



# === VIM related

vim replace paste:
    insert("gg")
    sleep(1ms)
    insert("dG")
    sleep(2ms)
    key(esc)
    insert(":set paste")
    key(enter)
    key(esc)
    key(i)
    key(cmd-v)


vim save it:
    key(esc)
    sleep(1ms)
    insert(":x")

vim ex line:
    key(esc)
    insert("dd")

vim nope that:
    key(esc)
    insert("u")
    key(enter)

vim quit:
    key(esc)
    insert(":q!")
    key(enter)

vim go <number>:
  key(esc)
  insert("{number}")
  key(shift-g)


# === EMACS specific

go to emacs dir: "cd /Users/ymh/.emacs.d\n"
doom upgrade: "~/.emacs.d/bin/doom upgrade"
doom update: "~/.emacs.d/bin/doom sync -u"
doom sync: "~/.emacs.d/bin/doom sync\n"

doom doctor: "~/.emacs.d/bin/doom doctor"
run last: user.terminal_run_last()
rerun [<user.text>]: user.terminal_rerun_search(text or "")
rerun search: user.terminal_rerun_search("")
kill all: user.terminal_kill_all()

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()

go waddington:
    insert("cd ~/_git/smucclaw/mattwaddington")
    key(enter)

go viz:
    insert("cd ~/_git/smucclaw/mattwaddington/ts-apps/decision-logic-visualizer")
    key(enter)

#install lsp:
#    insert("cabal install exe:jl4-lsp --overwrite-policy=always -fast")
#    key(enter)

#extension:
#    insert("code --uninstall-extension smucclaw.jl4-lsp-client; rm *.vsix; npm run package")
#    key(enter)

install extension:
    insert("code --install-extension *.vsix")
    key(enter)

# ============================
# -------- Studying ----------
# ============================

go a d h: "cd ~/_git/haskell-related/haskell-exercises/algorithm-design-with-haskell"
go algos prac:
  insert("cd ~/_git/cs_stuff/algosprac")
  key(enter)
go haskell related:
  insert("cd ~/_git/haskell-related")
  key(enter)

go llm study:
  insert("cd /Users/ymh/_git/cs_stuff/llm-study")
  key(enter)
