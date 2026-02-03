# --- Dependency Management ---

.PHONY: lock
lock: ## Lock dependencies to poetry.lock from pyproject.toml
	poetry lock
	@echo "✅ Dependencies locked to poetry.lock"

.PHONY: install
install: ## Install new dependencies (e.g., poetry add x) and update the txt
	@read -p "Name of the library to install: " lib; \
	poetry add $$lib; \
	make lock
