.PHONY: init-all init-pre-commit init-commitizen

init-all: init-pre-commit init-commitizen

init-pre-commit:
	@which pre-commit && pre-commit install || echo "ERROR! pre-commit is required for commitizen install, exiting"

init-commitizen:
	@$(install-commitizen)

# This is a MACRO but it's called like a VARIABLE
define install-commitizen
	echo Installing commitizen
	which yarn && yarn install || echo "ERROR! yarn is required for commitizen install, exiting"
endef
