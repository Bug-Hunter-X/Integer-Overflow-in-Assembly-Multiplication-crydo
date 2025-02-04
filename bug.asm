mov eax, [ebp+8]
add eax, 10
mov [ebp-4], eax
mov eax, [ebp+12]
sub eax, 5
mov [ebp-8], eax
mov ecx, [ebp-4]
mov edx, [ebp-8]
imul ecx, edx
mov [ebp-12], ecx
mov eax, [ebp-12]
ret