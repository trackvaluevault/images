# Makefile to automate git add, commit, and push

# Commit message
COMMIT_MSG = "update"

# Create the file, add it to git, commit with a message, and push to the current branch
push:
	@echo "Adding file to git..."
	@git add .
	@echo "Committing changes with message: $(COMMIT_MSG)..."
	@git commit -m "$(COMMIT_MSG)"
	@echo "Pushing changes to current branch..."
	@git push origin $(shell git rev-parse --abbrev-ref HEAD)
