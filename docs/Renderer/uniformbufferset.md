# UniformBufferSet

`#include "Saturn/Vulkan/UniformBufferSet.h"`

Safe multiple frames-in-flight uniform buffer collection.

```cpp
class UniformBufferSet : public RefTarget
```

A Uniform Buffer Set stores creates N buffers per binding. Where N in the number of flights in frame. 

It allows for safe access of a uniform buffer as each buffer can only be access by the current frame and this is needed for a proper frames-in-flight renderer.

## Public members

```cpp
void CreateBuffer( size_t size, uint32_t binding );
Ref<UniformBuffer> Get( uint32_t set, uint32_t binding, uint32_t frame );
```
