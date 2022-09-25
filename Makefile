all: hvcc

PLUGINS = chip

hvcc:
	$(foreach var, $(PLUGINS), hvcc js_$(var).pd -n $(var) -o $(var) -g js -p examples examples/heavylib)
