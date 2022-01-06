#!/usr/bin/python3
import difflib
import json
import sys

import jinja2

with open("config.toml.tpl") as f:
    config_template = f.read()
jinja_template = jinja2.Template(config_template, keep_trailing_newline=True)

with open("test/data.json") as f:
    data = json.load(f)

actual = jinja_template.render(data)

with open("test/config.toml") as f:
    expected = f.read()

if actual != expected:
    print(f"jinja test FAILED, diff:")
    diff = difflib.unified_diff(expected.splitlines(keepends=True), actual.splitlines(keepends=True),
                                fromfile="expected", tofile="actual")
    sys.stdout.writelines(diff)
    sys.exit(1)
