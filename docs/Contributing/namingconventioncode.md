# Naming Convention (Code, C++)

All classes, structs, enums and functions can have swear words in their names. They may not contain slurs. 

## Classes, Structs, Enums and Functions

For the aforementioned, when naming you must use `PascalCase`.

### Enums

For enums `PascalCase` must be used for enum values.

### Prefix

#### Classes and Structs

If the class/struct is a resource in a shader (e.g. UBO/SBO) then:

- It must have the `U` prefix.

If the class/struct is based from an `SObject` then:

- It must have the `S` prefix.

If the class/struct is a internal registration (for the reflection system) class then:

- It must have the `R` prefix.

#### Enums

Enums do not have any prefixes.

#### Functions

Functions do not have any prefixes.

## Variables

### Local variable

For local variables that are defined in a function they must use `camelCase`.

### Prefix
 
A variable's prefix changes depending on the data type.

The prefix applies to **all** variable types.

If it's a pointer (second class):

- Must use `p` prefix with `PascalCase` e.g. `pPtr`

If it's a pointer to a pointer (second class):

- Must use `pp` prefix with `PascalCase` e.g. `ppPtrToPtr`

If it's a reference (second class):

- Must use `r` prefix with `PascalCase` e.g. `rRef`

If it's a reference to a reference (second class):

- Must use `rr` prefix with `PascalCase` e.g. `rrRef`

If it's a constant value known at compile time and is local to a translation unit or a function:

- Must use `k` prefix with `PascalCase` e.g. `kNumberOfTimesToDoX`

If it's a weak pointer value (second class):

- Must use `w` prefix with `PascalCase` e.g. `wEntity`

If it's a shader uniform variable (second class):

- Must use `u_` prefix with `PascalCase` e.g. `u_CameraData` (if a UBO is a member variable drop this prefix)

If it's a member variable (first class):

- Must use `m_` prefix (followed by second class prefixes) with `PascalCase` e.g. `m_MyInt` or with second class prefix `m_pMyIntPtr`

If it's a static variable (first class):

- Must use `s_` prefix (followed by second class prefixes) with `PascalCase` e.g. `s_Int` or with second class prefix `s_pIntPtr`

If it's a global variable (first class):

- Must use `g_` prefix (followed by second class prefixes) with `PascalCase` e.g. `g_Int` or with second class prefix `g_pIntPtr`

If it's a macro that is now a constant variable (first class):

- Must use `SAT_` prefix with `SCREAMING_CASE` e.g. `SAT_PI`

If a variables prefix would have multiple first class prefixes then take the first first class prefix. 

For example:

`static constexpr uint32_t MyVariable = 32u` would become `s_MyVariable` instead of `kMyVariable` because `static` is more important to know than the `constexpr` specifier.

## Typedef/Using

`typdef` and `using` follow the same naming conventions as the classes.

However, the following rules only apply for typedef/using:

If the underlying type can change depending on the build config:

- Must use `F` prefix and have `Dependent` in it's name e.g. `FDependentIStream`.

## Templates

Generally `typename` specifiers should be called `Ty`, avoid using `T`.

If a more suitable name exists than `Ty` use that suitable name with the `T` prefix e.g. `TRefType` instead of just `Ty`.

## Macro

A macro should always be in `SCREAMING_CASE` with the `SAT_` prefix.
