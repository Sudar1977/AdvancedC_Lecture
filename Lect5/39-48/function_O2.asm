
function.o:     file format pe-x86-64


Disassembly of section .text:

0000000000000000 <fact>:
   0:	b8 01 00 00 00       	mov    $0x1,%eax
   5:	85 c9                	test   %ecx,%ecx
   7:	74 0f                	je     18 <fact+0x18>
   9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  10:	0f af c1             	imul   %ecx,%eax
  13:	83 e9 01             	sub    $0x1,%ecx
  16:	75 f8                	jne    10 <fact+0x10>
  18:	c3                   	ret
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop
  1c:	90                   	nop
  1d:	90                   	nop
  1e:	90                   	nop
  1f:	90                   	nop

Disassembly of section .xdata:

0000000000000000 <.xdata>:
   0:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .pdata:

0000000000000000 <.pdata>:
   0:	00 00                	add    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	19 00                	sbb    %eax,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
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
