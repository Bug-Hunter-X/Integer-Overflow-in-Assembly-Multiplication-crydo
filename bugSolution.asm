mov eax, [ebp+8]
add eax, 10
mov [ebp-4], eax
mov eax, [ebp+12]
sub eax, 5
mov [ebp-8], eax
;Check for overflow before multiplication
cmp [ebp-4], 0x7FFFFFFF
jg overflow_error
cmp [ebp-8], 0x7FFFFFFF
jg overflow_error
cmp [ebp-4], 0x80000000
jl overflow_error
cmp [ebp-8], 0x80000000
jl overflow_error
imul ecx, [ebp-4], [ebp-8]
jo overflow_error
mov [ebp-12], ecx
mov eax, [ebp-12]
jmp end
overflow_error:
mov eax, -1 ;Error code
end:
ret