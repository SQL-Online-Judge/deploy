REPO_ACCOUNT ?= git@github.com:SQL-Online-Judge
REPOS = backend frontend

OUT_DIR = SQL-Online-Judge

all: clean mkdir $(addprefix $(OUT_DIR)/, $(REPOS))

mkdir:
	mkdir -p $(OUT_DIR)

$(OUT_DIR)/%:
	git clone $(REPO_ACCOUNT)/$* $@

clean:
	rm -rf $(OUT_DIR)

.PHONY: all mkdir clean
