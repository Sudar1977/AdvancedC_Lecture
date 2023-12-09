
main.o:     file format pe-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	e8 00 00 00 00       	call   d <main+0xd>
   d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 14 <main+0x14>
  14:	48 89 c1             	mov    %rax,%rcx
  17:	e8 00 00 00 00       	call   1c <main+0x1c>
  1c:	b8 00 00 00 00       	mov    $0x0,%eax
  21:	48 83 c4 20          	add    $0x20,%rsp
  25:	5d                   	pop    %rbp
  26:	c3                   	ret
  27:	90                   	nop
  28:	90                   	nop
  29:	90                   	nop
  2a:	90                   	nop
  2b:	90                   	nop
  2c:	90                   	nop
  2d:	90                   	nop
  2e:	90                   	nop
  2f:	90                   	nop

Disassembly of section .rdata:

0000000000000000 <.rdata>:
   0:	48                   	rex.W
   1:	65 6c                	gs insb (%dx),%es:(%rdi)
   3:	6c                   	insb   (%dx),%es:(%rdi)
   4:	6f                   	outsl  %ds:(%rsi),(%dx)
   5:	20 77 6f             	and    %dh,0x6f(%rdi)
   8:	72 6c                	jb     76 <.rdata+0x76>
   a:	64 00 00             	add    %al,%fs:(%rax)
   d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .xdata:

0000000000000000 <.xdata>:
   0:	01 08                	add    %ecx,(%rax)
   2:	03 05 08 32 04 03    	add    0x3043208(%rip),%eax        # 3043210 <.xdata+0x3043210>
   8:	01 50 00             	add    %edx,0x0(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <.pdata>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	27                   	(bad)
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rdata$zzz:

0000000000000000 <.rdata$zzz>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 52 65             	sub    %dl,0x65(%rdx)
   8:	76 32                	jbe    3c <.rdata$zzz+0x3c>
   a:	2c 20                	sub    $0x20,%al
   c:	42 75 69             	rex.X jne 78 <.rdata$zzz+0x78>
   f:	6c                   	insb   (%dx),%es:(%rdi)
  10:	74 20                	je     32 <.rdata$zzz+0x32>
  12:	62                   	(bad)
  13:	79 20                	jns    35 <.rdata$zzz+0x35>
  15:	4d 53                	rex.WRB push %r11
  17:	59                   	pop    %rcx
  18:	53                   	push   %rbx
  19:	32 20                	xor    (%rax),%ah
  1b:	70 72                	jo     8f <.rdata$zzz+0x8f>
  1d:	6f                   	outsl  %ds:(%rsi),(%dx)
  1e:	6a 65                	push   $0x65
  20:	63 74 29 20          	movsxd 0x20(%rcx,%rbp,1),%esi
  24:	31 33                	xor    %esi,(%rbx)
  26:	2e 32 2e             	cs xor (%rsi),%ch
  29:	30 00                	xor    %al,(%rax)
  2b:	00 00                	add    %al,(%rax)
  2d:	00 00                	add    %al,(%rax)
	...
