#ifndef _memory_h_
#define _memory_h_

#include <dolphin/types.h>

void HSD_Free(void* ptr);
void* HSD_MemAlloc(u32 size);

#endif
