
function.o:     file format pe-x86-64


Disassembly of section .text:

0000000000000000 <fact>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	89 4d 10             	mov    %ecx,0x10(%rbp)
   b:	83 7d 10 00          	cmpl   $0x0,0x10(%rbp)
   f:	75 07                	jne    18 <fact+0x18>
  11:	b8 01 00 00 00       	mov    $0x1,%eax
  16:	eb 11                	jmp    29 <fact+0x29>
  18:	8b 45 10             	mov    0x10(%rbp),%eax
  1b:	83 e8 01             	sub    $0x1,%eax
  1e:	89 c1                	mov    %eax,%ecx
  20:	e8 db ff ff ff       	call   0 <fact>
  25:	0f af 45 10          	imul   0x10(%rbp),%eax
  29:	48 83 c4 20          	add    $0x20,%rsp
  2d:	5d                   	pop    %rbp
  2e:	c3                   	ret
  2f:	90                   	nop

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
   4:	2f                   	(bad)
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
