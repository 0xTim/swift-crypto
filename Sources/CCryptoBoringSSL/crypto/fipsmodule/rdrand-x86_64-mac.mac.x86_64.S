#define BORINGSSL_PREFIX CCryptoBoringSSL
#if defined(__x86_64__) && defined(__APPLE__)
// This file is generated from a similarly-named Perl script in the BoringSSL
// source tree. Do not edit by hand.

#if defined(__has_feature)
#if __has_feature(memory_sanitizer) && !defined(OPENSSL_NO_ASM)
#define OPENSSL_NO_ASM
#endif
#endif

#if defined(__x86_64__) && !defined(OPENSSL_NO_ASM) && defined(__APPLE__)
#if defined(BORINGSSL_PREFIX)
#include <CCryptoBoringSSL_boringssl_prefix_symbols_asm.h>
#endif
.text	




.globl	_CRYPTO_rdrand
.private_extern _CRYPTO_rdrand

.p2align	4
_CRYPTO_rdrand:

	xorq	%rax,%rax
.byte	72,15,199,242

	adcq	%rax,%rax
	movq	%rdx,0(%rdi)
	.byte	0xf3,0xc3







.globl	_CRYPTO_rdrand_multiple8_buf
.private_extern _CRYPTO_rdrand_multiple8_buf

.p2align	4
_CRYPTO_rdrand_multiple8_buf:

	testq	%rsi,%rsi
	jz	L$out
	movq	$8,%rdx
L$loop:
.byte	72,15,199,241
	jnc	L$err
	movq	%rcx,0(%rdi)
	addq	%rdx,%rdi
	subq	%rdx,%rsi
	jnz	L$loop
L$out:
	movq	$1,%rax
	.byte	0xf3,0xc3
L$err:
	xorq	%rax,%rax
	.byte	0xf3,0xc3


#endif
#if defined(__ELF__)
// See https://www.airs.com/blog/archives/518.
.section .note.GNU-stack,"",%progbits
#endif
#endif  // defined(__x86_64__) && defined(__APPLE__)
#if defined(__linux__) && defined(__ELF__)
.section .note.GNU-stack,"",%progbits
#endif
