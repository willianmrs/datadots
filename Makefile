# Makefile for MkDocs project management

.PHONY: all serve build deploy clean help

# Default target executed when no arguments are given to make.
all: help

# Serve the site on a local server
serve:
	@echo "Starting local server for MkDocs..."
	@poetry run mkdocs serve

# Build the static site into the 'site' directory
build:
	@echo "Building static site..."
	@poetry run mkdocs build

# Clean up the built site
clean:
	@echo "Cleaning up site directory..."
	rm -rf site

# Display help for targets
help:
	@echo "Makefile commands:"
	@echo "  make serve  - Serve the site locally"
	@echo "  make build  - Build the static site"
	@echo "  make deploy - Deploy the site to GitHub Pages"
	@echo "  make clean  - Remove the site directory"
	@echo "  make help   - Display this help message"

