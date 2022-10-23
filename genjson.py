import os
import json

dirs = []
for dir in os.listdir("./problems"):
    dirs.append(f"./problems/{dir}")

import meo
meo.to_file("./config.js", "const problem_list=%s" % json.dumps(dirs, ensure_ascii=False))