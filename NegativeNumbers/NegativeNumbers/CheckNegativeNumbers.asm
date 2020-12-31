.386
.model flat, c
.code

Check_Negative_Numbers	proc

						push ebp
						mov ebp, esp
						push esi

						mov esi, [ebp+8]
						mov ecx, [ebp+12]

						L1:
						mov edx , [esi]
						cmp edx , 0
						jl found
						add esi, 4
						loop L1
						mov eax, 0
						jmp quit

						found:
						mov eax, 1

						quit:
						pop esi
						pop ebp
						ret
Check_Negative_Numbers endp
end