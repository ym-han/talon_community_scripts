tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file


lisa: 
        user.terminal_list_directories()
lisa all: 
        user.terminal_list_all_directories()

cd [<user.text>]: user.terminal_change_directory(text or "")
cd root: user.terminal_change_directory_root()

cd previous: 
    insert("cd -")
    key(enter)

cd up: "cd ../\n"


# file management
move file: "mv "
copy file: "cp "

we get: "wget "

make dear: "mkdir "


clear screen: user.terminal_clear_screen()
#kill all: user.terminal_kill_all()

change all accessed: 
    insert("cd scratch\n")
    insert("find ./ -type f -exec touch -a {} +")

gzip file: "gzip -d "
gunzip recursive: "gunzip -r "

# find . -iname '*.zip' -exec sh -c 'unzip -o -d "${0%.*}" "$0"' '{}' ';'
# https://stackoverflow.com/questions/107995/how-do-you-recursively-unzip-archives-in-a-directory-and-its-subdirectories-from

# find . -type f -iname "*.tar" -print0 -execdir tar xf {} \; -delete
# https://unix.stackexchange.com/questions/145342/how-do-i-use-gunzip-and-tar-to-extract-my-tar-gz-file-to-the-specific-directory

# https://stackoverflow.com/questions/25042643/untar-all-gz-in-directories-and-subdirectories
# for file in `find *`; do tar -xvf "${file}" ; done

git name: "ym-han\n"

r grep: "rg "
grep in python file: "rg tofind --type py"
grep ignore case: "rg -i "

sublime: "subl "

pseudo a p t update: "sudo apt-get update"

pseduo a p t install: "sudo apt install "


go to three hundred projects: "cd *projects*\n"

# ==== CS300 related
three hundred container: "'/Users/ymh/Documents/Git_repos/cs_stuff/cs300_env/cs300-run-docker'"

remove p b c c: "rm *.pb.cc"
# necessary if get fatal error: shardkv.pb.h: No such file or directory

make shardmaster: "make clean; make; make shardmaster_complex_moves\n"

three hundred project: 
    insert("cd '/Users/ymh/Documents/Git_repos/cs_stuff/cs300_env/'\n")
    insert("./cs300-run-docker\n")
    insert("cd *pro*\n")
    insert("cd distr*\n")

start go weensy: 
    insert("cd '/Users/ymh/Documents/Git_repos/cs_stuff/cs300_env/'\n")
    insert("./cs300-run-docker\n")
    insert("cd *pro*\n")
    insert("cd ween*\n")

make tee san: "make TSAN=1"

run tests with tee san: "./run_tests -s -z server_part1"

run queue tests with tee san: "./run_tests -s -z queue"

#gdb tests/server_part1/test3_process_requests

make run: "make run\n"

three hundred labs: 
    insert("cd '/Users/ymh/Documents/Git_repos/cs_stuff/cs300_env/'\n")
    insert("./cs300-run-docker\n")
    insert("cd *labs*\n")

clean and run: "make clean; make run\n"

make clean all: "make clean all\n"
make clean: "make clean\n"
make check: "make check"

log print: 
    insert("log_printf();")
    key(left:2)
kill emulator: insert("sudo killall qemu-system-x86_64\n")

#make test data: insert("dd if=/dev/urandom bs=63 count=1 >> tmp/63_rand.bytes")

make byte cat: 
    insert("make clean\n")
    insert("make -B IMPL=student byte_cat\n")
run byte cat: 
    insert("rm tmp/out.txt\n")
    insert("touch tmp/out.txt\n")
    insert("./byte_cat r\n")
    insert("less tmp/out.txt\n")

make run byte cat:
    insert("make clean\n")
    insert("make -B IMPL=student byte_cat\n")
    insert("rm tmp/out.txt\n")
    insert("touch tmp/out.txt\n")
    insert("./byte_cat test_files/tiny.txt tmp/out.txt\n")
    insert("less tmp/out.txt\n")


byte cat some bytes:
    insert("make clean\n")
    insert("make -B IMPL=student byte_cat\n")
    insert("rm tmp/my_bc_out.bytes\n")
    insert("rm tmp/my_bc_out.hex\n")
    insert("touch tmp/my_bc_out.bytes\n")
    insert("./byte_cat test_files/some.bytes tmp/my_bc_out.bytes\n")
    insert("xxd tmp/my_bc_out.bytes > tmp/my_bc_out.hex\n")
    insert("xxd test_files/some.bytes > tmp/some_bytes.hex\n")
    insert("diff tmp/some_bytes.hex tmp/my_bc_out.hex\n")

standard byte cat some bytes:
    insert("make clean\n")
    insert("make -B IMPL=stdio byte_cat\n")
    insert("rm tmp/stdio_bc_some.bytes\n")
    insert("touch tmp/stdio_bc_some.bytes\n")
    insert("./byte_cat test_files/some.bytes tmp/stdio_bc_some.bytes\n")
    insert("diff test_files/some.bytes tmp/stdio_bc_some.bytes\n")



make run reverse byte cat:
    insert("make clean\n")
    insert("make -B IMPL=student reverse_byte_cat\n")
    insert("rm tmp/out.txt\n")
    insert("touch tmp/out.txt\n")
    insert("./reverse_byte_cat test_files/tiny.txt tmp/out.txt\n")
    insert("diff tmp/rbc_stdio_out.txt tmp/out.txt\n")

#insert("less tmp/out.txt\n")

make run standard i o reverse byte cat:
    insert("make clean\n")
    insert("make -B IMPL=stdio reverse_byte_cat\n")
    insert("rm tmp/rbc_stdio_out.txt\n")
    insert("touch tmp/rbc_stdio_out.txt\n")
    insert("./reverse_byte_cat test_files/tiny.txt tmp/rbc_stdio_out.txt\n")
    insert("diff tmp/rbc_stdio_out.txt tmp/out.txt\n")

make standard block cat: 
    insert("make clean\n")
    insert("rm tmp/out_std_blkc\n")
    insert("touch tmp/out_std_blkc.bytes\n")
    insert("make -B IMPL=stdio block_cat\n")
    insert("./block_cat 4 tmp/63_rand.bytes tmp/out_std_blkc.bytes\n")
    insert("xxd tmp/out_std_blkc.bytes > tmp/out_std_blkc.hex\n")

make my block cat:
    insert("make clean\n")
    insert("rm tmp/out_my_blkcat_dursley.txt\n")
    insert("touch tmp/out_my_blkcat_dursley.txt\n")
    insert("make -B IMPL=student block_cat_for_debug\n")
    insert("./block_cat_for_debug 3 test_files/dursley_small.txt tmp/out_my_blkcat_dursley.txt > my_blkcat.log\n") 
    insert("diff test_files/dursley_small.txt tmp/out_my_blkcat_dursley.txt\n")

run block cat in g d b: "r 3 test_files/dursley_small.txt tmp/out_my_blkcat_dursley.txt"

make six three block cat:
    insert("make clean\n")
    insert("rm tmp/out_my_blkcat_dursley.txt\n")
    insert("touch tmp/out_my_blkcat_dursley.txt\n")
    insert("make -B IMPL=student block_cat_for_debug\n")
    insert("./block_cat_for_debug 7 tmp/63_rand.bytes tmp/out_63_blkc.bytes > my_blkcat.log\n") 
    insert("xxd tmp/out_63_blkc.bytes > tmp/out_63_blkc.hex\n")
    insert("xxd tmp/63_rand.bytes > tmp/63_rand.hex\n")
    insert("diff tmp/63_rand.hex tmp/out_63_blkc.hex\n")




make reverse block cat:
    insert("make clean\n")
    insert("rm tmp/out_my_rblc.txt\n")
    insert("touch tmp/out_my_rblc.txt\n")
    insert("make -B IMPL=student reverse_block_cat\n")
    insert("./reverse_block_cat 5 test_files/dursley_small.txt tmp/out_my_rblc.txt > my_revblc.log\n") 
    insert("diff tmp/out_stdio_reverse_blc.txt tmp/out_my_rblc.txt\n")

make standard reverse block cat:
    insert("make clean\n")
    insert("rm tmp/out_stdio_reverse_blc.txt\n")
    insert("touch tmp/out_stdio_reverse_blc.txt\n")
    insert("make -B IMPL=stdio reverse_block_cat\n")
    insert("./reverse_block_cat 5 test_files/dursley_small.txt tmp/out_stdio_reverse_blc.txt\n") 
    


#insert("./block_cat 4 tmp/63_rand.bytes tmp/out_my_blkc.bytes > my_blkcat.log\n")
#insert("xxd tmp/out_my_blkc.bytes > tmp/out_my_blkc.hex\n") 
#insert("diff tmp/out_std_blkc.hex tmp/out_my_blkc.hex\n")



# make my block cat: 
#    insert("make clean\n")
#    insert("make -B IMPL=student block_cat\n")


#make run block cat:
#    insert("make clean\n")
#    insert("make -B IMPL=student block_cat\n")
#    insert("rm tmp/out_my_blkc.bytes\n")
#    insert("touch tmp/out_my_blkc.bytes\n")
#    insert("./block_cat 32 test_files/some.bytes tmp/out_my_blkc.bytes\n")
#    insert("xxd tmp/out_my_blkc.bytes > tmp/out_my_blkc.hex\n")
#    insert("xxd test_files/some.bytes > test_files/some_bytes.hex\n")
#    insert("diff test_files/some_bytes.hex tmp/out_my_blkc.hex\n")


set usual break points:
    insert("b read_some_may_not_be_cached\n")
    insert("b io300_read\n")
    insert("b write_if_some_not_cached\n")
    insert("b write_starting_anew\n")
    insert("b io300_write\n")
    insert("b read_snci_region_not_start_in_cache\n")
    insert("b read_snc_inner\n")

#run block cat: "./block_cat 10 test_files/some.bytes tmp/out.bytes\n"
run small in g d b: "r 5 test_files/dursley_small.txt tmp/out_my_rblc.txt"

run with tiny: "r test_files/tiny.txt\n"
run with tiny and out: "r test_files/tiny.txt tmp/out.txt\n"

state reverse byte cat: "reverse_byte_cat"

g d b byte cat: "gdb -tui byte_cat\n"
g d b block cat: "gdb -tui block_cat_for_debug\n"
g d b reverse byte cat: "gdb -tui reverse_byte_cat\n"
g d b reverse block cat: "gdb -tui reverse_block_cat\n"

g d b follow fork: "set follow-fork-mode child"


show buff: "p buff\n"

show cache: "p f->cache\n"
show in cache: "p in->cache\n"
show out cache: "p out->cache\n"
d b g: 'p dbg(f, "")\n'

#g d b linked list: "gdb linked_list\n"

head list: "p *head_list\n"

clear screen: "clear\n"


# === ENVIRONMENTS
make virtual environment: "virtualenv"
#environment reel: "source ~/environments/rel/bin/activate\n"
environment text gen: "source ~/environments/textgen/bin/activate\n"
environment termolator: "source ~/environments/termo/bin/activate\n"
environment lip reading: "source /users/yh31/scratch/projects/lip/lip_env/bin/activate\n"

deactivate environment: "deactivate"


# === SPECIFIC PATHS

#personal termolator path: "/users/yh31/packages/The_Termolator/"
#set termo variable: 'export TERMOLATOR="/users/yh31/packages/The_Termolator"'

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

oscar lizards workspace:
    insert("module load python/3.7.4\n")
    insert("source /users/yh31/scratch/envs/lizard-env/bin/activate\n")
    insert("cd /users/yh31/scratch/projects/MultiAgent-PositronicLizards/lizards\n")



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

replace with copied: 
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


