# versions.json

Build and deploy Julia's [versions.json](https://julialang-s3.julialang.org/bin/versions.json) file.

More info & discussion: https://github.com/JuliaLang/julia/issues/33817

[`build_json_map.jl`](build_json_map.jl) was written by [@staticfloat](https://github.com/staticfloat).

## JSON Schema

[`schema.json`](schema.json) contains a [JSON Schema](https://json-schema.org/) for the `versions.json` file.

It can be used to validate the versions file or to [generate code](https://json-schema.org/implementations.html) from the schema.

## Third Party Notice

The [schema](schema.json) was generated with [quicktype.io](https://app.quicktype.io/#l=schema).
