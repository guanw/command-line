Making python script into bash command:

`$chmod +x {file-name}`

1.we can get rid of .py if we specify the interpreter at beginning with `#!/usr/bin/env`.
shebang has to be on first line and use absolute path

To call it:
`$./echo xxx xxx`


2.this can be improved by introducing `$PATH=$PATH:$CMD` so now `$echo xxx xxx` can be directly fired.

