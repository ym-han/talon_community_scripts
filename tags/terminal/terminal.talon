tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

cancel it: key(ctrl-c)

# TEMP

docker images: "docker images"


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
code fuzzy:
    insert("code **")
    key(tab)



# navigation
l s: "ls"
lisa hidden: "ls -lah\n"
lisa: user.terminal_list_directories()
lisa all: user.terminal_list_all_directories()

cd [dir] [<user.text>]: user.terminal_change_directory(text or "")
cd root: user.terminal_change_directory_root()
cd up: "cd..\n"
#user.terminal_change_directory("..")

go <user.system_path>: insert('cd "{system_path}"\n')
path <user.system_path>: insert('"{system_path}"')
clear screen: user.terminal_clear_screen()
#kill all: user.terminal_kill_all()



# file management
find file: "fd -HI "

move file: "mv "
copy file: "cp "

we get: "wget "

make dear: "mkdir "


find large files: "sudo find / -size +120M -type f -exec du -h {} \; | sort -n | tail -n 50"




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

ripgrep: "rg "
grep in python file: "rg tofind --type py"
grep ignore case: "rg -i "

grep hist: "history|rg "

sublime: "subl "

pseudo a p t update: "sudo apt-get update"

pseduo a p t install: "sudo apt install "



# ==== CS300 related
go to three hundred projects: "cd *projects*\n"

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

# === Haskell related
cabal update: "cabal update"
cabal install: "cabal install"
cabal install lib: "cabal install --lib "
cabal init: "cabal init"
cabal help init: "cabal help init"
cabal init interactive: "cabal init --interactive"
cabal build: "cabal build " 
cabal build lib: "cabal build lib:" 
cabal build exe: "cabal build exe:" 
cabal repl: "cabal repl "
cabal exec: "cabal exec "
cabal run: "cabal run "
cabal help: "cabal help "

edit cabal: "code *.cabal"
edit cabal in sublime: "subl *.cabal"

# === JAVASCRIPT related

run e s lint: "npx eslint "


# === ENVIRONMENTS
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


present dir: "pwd\n"


# == CCLAW
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





# === OSCAR
log into oscar: "ssh -Y yh31@ssh.ccv.brown.edu\n"

oscar vpn: "ssh yh31@sshvpn.ccv.brown.edu\n"

log into oscar <number>: 
    insert("ssh -Y yh31@ssh.ccv.brown.edu\n")
    sleep(1000ms)
    insert("interact -t 0{number}:00:00 -m 10g -n 1\n")



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

lipreading workspace:
    insert("module load python/3.7.4\n")
    insert("module load libjpeg-turbo/2.0.2\n")
    insert("cd /users/yh31/scratch/projects/lip/\n")  

python workspace: 
    insert("module load python/3.7.4\n")
    insert("source ~/environments/rel/bin/activate\n")
    insert("cd /users/yh31/scratch/projects/sr-nlp/data_gathering/source/making_data/prepping-raw-data\n")



go to cleaned files: "cd /users/yh31/scratch/datasets/entity_linking/cleaned\n"
go to slurm scripts: "cd /users/yh31/scratch/projects/embed_exp/slurm_scripts\n"
#go to oscar config: "cd cd_lstm_joulin_SAT_night_lower_wt_decay_and_dropout.xml\n"

go to embedding scripts: "cd /users/yh31/scratch/projects/embed_exp\n"
go to sense ref scripts: "cd /users/yh31/scratch/projects/sr_neural/scripts/etl/nyt\n"
go to text gen: "cd /users/yh31/scratch/projects/sr_neural/scripts/\n"
go to lip data: "cd /users/yh31/scratch/projects/lip/data\n"

# === CONDA

conda list environments: "conda env list"



# === JULIA / PYTHON SPECIFIC

start julia: insert("julia\n")
start julia project: insert("julia --project=@. --threads=auto")

exit julia: "exit()\n"

oscar julia: "module load julia/1.7.2\n"
oscar python: "module load python/3.7.4\n"

pip install user: "pip install --user"
pip install: "pip install "
pip install requirements: "pip install -r requirements.txt"

activate 1460 local: "source /Users/ymh/Documents/Git_repos/NLP/cs1460/environments/1460_env/bin/activate"

# === SQL specific

sequel mode header: ".mode column \n.header on\n"

# === POSTGRES
kill all postgres: "pkill postgres"
# https://askubuntu.com/questions/547434/how-to-nicely-stop-all-postgres-processes

# === Google cloud

log into test tpu: "gcloud alpha compute tpus tpu-vm ssh v2inf"

bucket list: "gsutil ls -r gs://coref_gpt/**"

download from bucket: "gsutil cp gs://coref_gpt/OBJECT_NAME SAVE_TO_LOCATION"

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


snip line:
    key(esc)
    insert("dd")

vim nope that: 
    key(esc)
    insert("u")
    key(enter)

vim quit no save:
    key(esc)
    insert(":q!")

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
#rerun [<user.text>]: user.terminal_rerun_search(text or "")
rerun search: user.terminal_rerun_search("")
#kill all: user.terminal_kill_all()


