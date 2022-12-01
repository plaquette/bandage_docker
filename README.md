to run without custom colors:

```bash
docker run --rm -it --volume="$(pwd):/workdir" --workdir=/workdir bandage:dev bash -c "./../bin/Bandage_Ubuntu-x86-64_v0.9.0/usr/bin/bandage image sample_LastGraph test1.png"
```


to run with custom colors:

```bash
docker run --rm -it --volume="$(pwd):/workdir" --workdir=/workdir bandage:dev bash -c "./../bin/Bandage_Ubuntu-x86-64_v0.9.0/usr/bin/bandage image sample_graph.coloured test.png --height 2000 --width 2500 --colour custom"
```

take care, the following arguments are not supported (yet)

```bash

--depth --lengths --names --fontsize 20 --nodewidth 6

```

