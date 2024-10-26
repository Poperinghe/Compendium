Date: 23/10/2024
#### Memory
MMIO: Memory Map Input / Output
DMA: Direct Memory Access (peripheral manipulating the memory without passing through the CPU)

Fragmentation: a process creates holes in a contiguous memory zone with a series of allocations and frees. These holes can not be used anymore by another process.

Paging: Divide the needed memory space for a process into "pages" of virtual memory. These pages can then be mapped to same-size pages in physical memory.
Your process is then given access to its virtual memory space (never the physical memory).

MMU: the Memory Management Unit takes care of this mapping and making conversions from virtual memory to physical memory whenever a process needs to access its memory.

Logical Address: Address pointing to a place in virtual memory
Physical Address: Address pointing to a place in physical memory

> [!warning] The table that maps virtual memory could map more memory than there is actual physical memory

TLB: Translation Look-aside Buffer / Cache of the MMU (it is the solution to the fact that in 64 bit architectures, 1 single memory lookup turns into 5 separate operations with all the layers of translation from virtual memory to physical memory).

Page table is stored in the kernel memory.