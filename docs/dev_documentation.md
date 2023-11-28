# GISAlgorithms: Development Documentation
Basic development details and how to use Julia in this project.

The project was created in the Julia command line by starting `julia` and running
```julia
]
pkg GISAlgorithms
```

## 1. Environment Setup
The project was created in the Julia command line by starting `julia` and running
```julia
]
pkg> generate GISAlgorithms
```

The environment of this project can be activated by navigating to the root folder, starting `julia` and running the following commands.
```
]
pkg> activate .
```

Packages can be set up using `add <packagename>` in the `pkg` command line.

## 2. Testing
Unittests can be run using
```
]
pkg> test GISAlgorithms
```