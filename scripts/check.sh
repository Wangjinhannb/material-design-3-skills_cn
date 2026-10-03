#!/usr/bin/env sh
set -eu
python tools/token_generator/generate.py
python tools/component_generator/generate_component_docs.py
python tools/support_matrix/generate.py
python tools/validators/validate_repo.py
python tools/validators/validate_skill_evals.py
python tools/validators/check_generated_determinism.py
python -m unittest discover -s tests -p "test_*.py"
node --check examples/reference-app/web/app.js
