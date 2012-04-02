/*
 * Copyright (c) 1999-2007 Apple Inc.  All Rights Reserved.
 * 
 * @APPLE_LICENSE_HEADER_START@
 * 
 * This file contains Original Code and/or Modifications of Original Code
 * as defined in and that are subject to the Apple Public Source License
 * Version 2.0 (the 'License'). You may not use this file except in
 * compliance with the License. Please obtain a copy of the License at
 * http://www.opensource.apple.com/apsl/ and read it before using this
 * file.
 * 
 * The Original Code and all software distributed under the License are
 * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
 * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
 * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.
 * Please see the License for the specific language governing rights and
 * limitations under the License.
 * 
 * @APPLE_LICENSE_HEADER_END@
 */

#if defined(__i386__)

.text
    .private_extern __a1a2_tramphead_argonly
    .private_extern __a1a2_firsttramp_argonly
    .private_extern __a1a2_nexttramp_argonly
    .private_extern __a1a2_trampend_argonly

.align 12
__a1a2_tramphead_argonly:
	popl %eax
	andl $0xFFFFFFF8, %eax
	subl $0x1000, %eax
	movl 4(%esp), %ecx // self -> ecx, 1st to ext
	movl %ecx, 8(%esp) // ecx -> _cmd, ext to 2nd
	movl (%eax), %ecx // blockPtr -> ecx, block to ext
	movl %ecx, 4(%esp) // ecx -> self, block to 1st
	jmp  *12(%ecx) // tail to block->invoke, jump to ecx

.macro TrampolineEntry
    call __a1a2_tramphead_argonly
    nop
    nop
    nop
.endmacro

.align 5
__a1a2_firsttramp_argonly:
    TrampolineEntry
__a1a2_nexttramp_argonly: // used to calculate size of each trampoline
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry

__a1a2_trampend_argonly:

#elif defined(__x86_64__)

.text
.private_extern __a1a2_tramphead_argonly
.private_extern __a1a2_firsttramp_argonly
.private_extern __a1a2_nexttramp_argonly
.private_extern __a1a2_trampend_argonly

.align 12
__a1a2_tramphead_argonly:
popq %r10
andq $0xFFFFFFFFFFFFFFF8, %r10
subq $0x1000, %r10
movq %rdi, %rsi // arg1 -> arg2
movq (%r10), %rdi // block -> arg1
jmp  *16(%rdi)

.macro TrampolineEntry
callq __a1a2_tramphead_argonly
nop
nop
nop
.endmacro

.align 5
__a1a2_firsttramp_argonly:
TrampolineEntry
__a1a2_nexttramp_argonly:
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry

__a1a2_trampend_argonly:

#elif defined(__arm__)

#include <arm/arch.h>

.syntax unified

.text

.private_extern __a1a2_tramphead_argonly
.private_extern __a1a2_firsttramp_argonly
.private_extern __a1a2_nexttramp_argonly
.private_extern __a1a2_trampend_argonly

#ifdef _ARM_ARCH_7
.thumb
.thumb_func __a1a2_tramphead_argonly
.thumb_func __a1a2_firsttramp_argonly
.thumb_func __a1a2_nexttramp_argonly
.thumb_func __a1a2_trampend_argonly
#else
// don't use Thumb-1
.arm
#endif

.align 12
__a1a2_tramphead_argonly:
/*
 r0 == self
 r1 == pc of trampoline's first instruction + PC bias
 lr == original return address
 */

// calculate the trampoline's index (512 entries, 8 bytes each)
#ifdef _ARM_ARCH_7
// PC bias is only 4, no need to correct with 8-byte trampolines
ubfx r1, r1, #3, #9
#else
sub  r1, r1, #8               // correct PC bias
lsl  r1, r1, #20
lsr  r1, r1, #23
#endif

// load block pointer from trampoline's data
adr  r12, __a1a2_tramphead_argonly    // text page
sub  r12, r12, #4096          // data page precedes text page
ldr  r12, [r12, r1, LSL #3]   // load block pointer from data + index*8

// shuffle parameters
mov  r1, r0                   // _cmd = self
mov  r0, r12                  // self = block pointer

// tail call block->invoke
ldr  pc, [r12, #12]
// not reached

// Make v6 and v7 match so they have the same number of TrampolineEntry
// below. Debug asserts in objc-block-trampoline.m check this.
#ifdef _ARM_ARCH_7
.space 16
#endif

.macro TrampolineEntry
mov r1, pc
b __a1a2_tramphead_argonly
.align 3
.endmacro

.align 3
.private_extern __a1a2_firsttramp_argonly
__a1a2_firsttramp_argonly:
TrampolineEntry

.private_extern __a1a2_nexttramp_argonly
__a1a2_nexttramp_argonly:
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry
TrampolineEntry

.private_extern __a1a2_trampend_argonly
__a1a2_trampend_argonly:

#endif
