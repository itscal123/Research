€Т5
Фд
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Њ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
Т
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Б
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718МТ2
В
xwuftghvfx/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namexwuftghvfx/kernel
{
%xwuftghvfx/kernel/Read/ReadVariableOpReadVariableOpxwuftghvfx/kernel*"
_output_shapes
:*
dtype0
v
xwuftghvfx/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namexwuftghvfx/bias
o
#xwuftghvfx/bias/Read/ReadVariableOpReadVariableOpxwuftghvfx/bias*
_output_shapes
:*
dtype0
В
gnnkxdqznz/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namegnnkxdqznz/kernel
{
%gnnkxdqznz/kernel/Read/ReadVariableOpReadVariableOpgnnkxdqznz/kernel*"
_output_shapes
:*
dtype0
v
gnnkxdqznz/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namegnnkxdqznz/bias
o
#gnnkxdqznz/bias/Read/ReadVariableOpReadVariableOpgnnkxdqznz/bias*
_output_shapes
:*
dtype0
~
tgvgnagwib/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_nametgvgnagwib/kernel
w
%tgvgnagwib/kernel/Read/ReadVariableOpReadVariableOptgvgnagwib/kernel*
_output_shapes

: *
dtype0
v
tgvgnagwib/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nametgvgnagwib/bias
o
#tgvgnagwib/bias/Read/ReadVariableOpReadVariableOptgvgnagwib/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
Х
kpulowglns/fddnbxfcbs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*-
shared_namekpulowglns/fddnbxfcbs/kernel
О
0kpulowglns/fddnbxfcbs/kernel/Read/ReadVariableOpReadVariableOpkpulowglns/fddnbxfcbs/kernel*
_output_shapes
:	А*
dtype0
©
&kpulowglns/fddnbxfcbs/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&kpulowglns/fddnbxfcbs/recurrent_kernel
Ґ
:kpulowglns/fddnbxfcbs/recurrent_kernel/Read/ReadVariableOpReadVariableOp&kpulowglns/fddnbxfcbs/recurrent_kernel*
_output_shapes
:	 А*
dtype0
Н
kpulowglns/fddnbxfcbs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namekpulowglns/fddnbxfcbs/bias
Ж
.kpulowglns/fddnbxfcbs/bias/Read/ReadVariableOpReadVariableOpkpulowglns/fddnbxfcbs/bias*
_output_shapes	
:А*
dtype0
Ї
1kpulowglns/fddnbxfcbs/input_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31kpulowglns/fddnbxfcbs/input_gate_peephole_weights
≥
Ekpulowglns/fddnbxfcbs/input_gate_peephole_weights/Read/ReadVariableOpReadVariableOp1kpulowglns/fddnbxfcbs/input_gate_peephole_weights*
_output_shapes
: *
dtype0
Љ
2kpulowglns/fddnbxfcbs/forget_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42kpulowglns/fddnbxfcbs/forget_gate_peephole_weights
µ
Fkpulowglns/fddnbxfcbs/forget_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2kpulowglns/fddnbxfcbs/forget_gate_peephole_weights*
_output_shapes
: *
dtype0
Љ
2kpulowglns/fddnbxfcbs/output_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42kpulowglns/fddnbxfcbs/output_gate_peephole_weights
µ
Fkpulowglns/fddnbxfcbs/output_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2kpulowglns/fddnbxfcbs/output_gate_peephole_weights*
_output_shapes
: *
dtype0
Х
htheqsxgix/tivuqvlrxj/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*-
shared_namehtheqsxgix/tivuqvlrxj/kernel
О
0htheqsxgix/tivuqvlrxj/kernel/Read/ReadVariableOpReadVariableOphtheqsxgix/tivuqvlrxj/kernel*
_output_shapes
:	 А*
dtype0
©
&htheqsxgix/tivuqvlrxj/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&htheqsxgix/tivuqvlrxj/recurrent_kernel
Ґ
:htheqsxgix/tivuqvlrxj/recurrent_kernel/Read/ReadVariableOpReadVariableOp&htheqsxgix/tivuqvlrxj/recurrent_kernel*
_output_shapes
:	 А*
dtype0
Н
htheqsxgix/tivuqvlrxj/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namehtheqsxgix/tivuqvlrxj/bias
Ж
.htheqsxgix/tivuqvlrxj/bias/Read/ReadVariableOpReadVariableOphtheqsxgix/tivuqvlrxj/bias*
_output_shapes	
:А*
dtype0
Ї
1htheqsxgix/tivuqvlrxj/input_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31htheqsxgix/tivuqvlrxj/input_gate_peephole_weights
≥
Ehtheqsxgix/tivuqvlrxj/input_gate_peephole_weights/Read/ReadVariableOpReadVariableOp1htheqsxgix/tivuqvlrxj/input_gate_peephole_weights*
_output_shapes
: *
dtype0
Љ
2htheqsxgix/tivuqvlrxj/forget_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights
µ
Fhtheqsxgix/tivuqvlrxj/forget_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights*
_output_shapes
: *
dtype0
Љ
2htheqsxgix/tivuqvlrxj/output_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42htheqsxgix/tivuqvlrxj/output_gate_peephole_weights
µ
Fhtheqsxgix/tivuqvlrxj/output_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2htheqsxgix/tivuqvlrxj/output_gate_peephole_weights*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
Ъ
RMSprop/xwuftghvfx/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/xwuftghvfx/kernel/rms
У
1RMSprop/xwuftghvfx/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/xwuftghvfx/kernel/rms*"
_output_shapes
:*
dtype0
О
RMSprop/xwuftghvfx/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/xwuftghvfx/bias/rms
З
/RMSprop/xwuftghvfx/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/xwuftghvfx/bias/rms*
_output_shapes
:*
dtype0
Ъ
RMSprop/gnnkxdqznz/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/gnnkxdqznz/kernel/rms
У
1RMSprop/gnnkxdqznz/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/gnnkxdqznz/kernel/rms*"
_output_shapes
:*
dtype0
О
RMSprop/gnnkxdqznz/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/gnnkxdqznz/bias/rms
З
/RMSprop/gnnkxdqznz/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/gnnkxdqznz/bias/rms*
_output_shapes
:*
dtype0
Ц
RMSprop/tgvgnagwib/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *.
shared_nameRMSprop/tgvgnagwib/kernel/rms
П
1RMSprop/tgvgnagwib/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/tgvgnagwib/kernel/rms*
_output_shapes

: *
dtype0
О
RMSprop/tgvgnagwib/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/tgvgnagwib/bias/rms
З
/RMSprop/tgvgnagwib/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/tgvgnagwib/bias/rms*
_output_shapes
:*
dtype0
≠
(RMSprop/kpulowglns/fddnbxfcbs/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*9
shared_name*(RMSprop/kpulowglns/fddnbxfcbs/kernel/rms
¶
<RMSprop/kpulowglns/fddnbxfcbs/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/kpulowglns/fddnbxfcbs/kernel/rms*
_output_shapes
:	А*
dtype0
Ѕ
2RMSprop/kpulowglns/fddnbxfcbs/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*C
shared_name42RMSprop/kpulowglns/fddnbxfcbs/recurrent_kernel/rms
Ї
FRMSprop/kpulowglns/fddnbxfcbs/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp2RMSprop/kpulowglns/fddnbxfcbs/recurrent_kernel/rms*
_output_shapes
:	 А*
dtype0
•
&RMSprop/kpulowglns/fddnbxfcbs/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&RMSprop/kpulowglns/fddnbxfcbs/bias/rms
Ю
:RMSprop/kpulowglns/fddnbxfcbs/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/kpulowglns/fddnbxfcbs/bias/rms*
_output_shapes	
:А*
dtype0
“
=RMSprop/kpulowglns/fddnbxfcbs/input_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=RMSprop/kpulowglns/fddnbxfcbs/input_gate_peephole_weights/rms
Ћ
QRMSprop/kpulowglns/fddnbxfcbs/input_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp=RMSprop/kpulowglns/fddnbxfcbs/input_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
‘
>RMSprop/kpulowglns/fddnbxfcbs/forget_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/kpulowglns/fddnbxfcbs/forget_gate_peephole_weights/rms
Ќ
RRMSprop/kpulowglns/fddnbxfcbs/forget_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/kpulowglns/fddnbxfcbs/forget_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
‘
>RMSprop/kpulowglns/fddnbxfcbs/output_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/kpulowglns/fddnbxfcbs/output_gate_peephole_weights/rms
Ќ
RRMSprop/kpulowglns/fddnbxfcbs/output_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/kpulowglns/fddnbxfcbs/output_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
≠
(RMSprop/htheqsxgix/tivuqvlrxj/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*9
shared_name*(RMSprop/htheqsxgix/tivuqvlrxj/kernel/rms
¶
<RMSprop/htheqsxgix/tivuqvlrxj/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/htheqsxgix/tivuqvlrxj/kernel/rms*
_output_shapes
:	 А*
dtype0
Ѕ
2RMSprop/htheqsxgix/tivuqvlrxj/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*C
shared_name42RMSprop/htheqsxgix/tivuqvlrxj/recurrent_kernel/rms
Ї
FRMSprop/htheqsxgix/tivuqvlrxj/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp2RMSprop/htheqsxgix/tivuqvlrxj/recurrent_kernel/rms*
_output_shapes
:	 А*
dtype0
•
&RMSprop/htheqsxgix/tivuqvlrxj/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&RMSprop/htheqsxgix/tivuqvlrxj/bias/rms
Ю
:RMSprop/htheqsxgix/tivuqvlrxj/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/htheqsxgix/tivuqvlrxj/bias/rms*
_output_shapes	
:А*
dtype0
“
=RMSprop/htheqsxgix/tivuqvlrxj/input_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=RMSprop/htheqsxgix/tivuqvlrxj/input_gate_peephole_weights/rms
Ћ
QRMSprop/htheqsxgix/tivuqvlrxj/input_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp=RMSprop/htheqsxgix/tivuqvlrxj/input_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
‘
>RMSprop/htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights/rms
Ќ
RRMSprop/htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
‘
>RMSprop/htheqsxgix/tivuqvlrxj/output_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/htheqsxgix/tivuqvlrxj/output_gate_peephole_weights/rms
Ќ
RRMSprop/htheqsxgix/tivuqvlrxj/output_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/htheqsxgix/tivuqvlrxj/output_gate_peephole_weights/rms*
_output_shapes
: *
dtype0

NoOpNoOp
МI
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*«H
valueљHBЇH B≥H
Ѕ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
	variables
 regularization_losses
!trainable_variables
"	keras_api
l
#cell
$
state_spec
%	variables
&regularization_losses
'trainable_variables
(	keras_api
h

)kernel
*bias
+	variables
,regularization_losses
-trainable_variables
.	keras_api
Х
/iter
	0decay
1learning_rate
2momentum
3rho	rms~	rms
rmsА
rmsБ
)rmsВ
*rmsГ
4rmsД
5rmsЕ
6rmsЖ
7rmsЗ
8rmsИ
9rmsЙ
:rmsК
;rmsЛ
<rmsМ
=rmsН
>rmsО
?rmsП
Ж
0
1
2
3
44
55
66
77
88
99
:10
;11
<12
=13
>14
?15
)16
*17
 
Ж
0
1
2
3
44
55
66
77
88
99
:10
;11
<12
=13
>14
?15
)16
*17
≠
@non_trainable_variables
	variables

Alayers
	regularization_losses
Blayer_metrics
Cmetrics
Dlayer_regularization_losses

trainable_variables
 
][
VARIABLE_VALUExwuftghvfx/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUExwuftghvfx/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≠
Enon_trainable_variables
Flayer_metrics

Glayers
	variables
regularization_losses
Hmetrics
Ilayer_regularization_losses
trainable_variables
][
VARIABLE_VALUEgnnkxdqznz/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEgnnkxdqznz/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≠
Jnon_trainable_variables
Klayer_metrics

Llayers
	variables
regularization_losses
Mmetrics
Nlayer_regularization_losses
trainable_variables
 
 
 
≠
Onon_trainable_variables
Player_metrics

Qlayers
	variables
regularization_losses
Rmetrics
Slayer_regularization_losses
trainable_variables
у
T
state_size

4kernel
5recurrent_kernel
6bias
7input_gate_peephole_weights
 8forget_gate_peephole_weights
 9output_gate_peephole_weights
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
 
*
40
51
62
73
84
95
 
*
40
51
62
73
84
95
є
Ynon_trainable_variables
	variables

Zlayers
[layer_metrics
 regularization_losses

\states
]metrics
^layer_regularization_losses
!trainable_variables
у
_
state_size

:kernel
;recurrent_kernel
<bias
=input_gate_peephole_weights
 >forget_gate_peephole_weights
 ?output_gate_peephole_weights
`	variables
aregularization_losses
btrainable_variables
c	keras_api
 
*
:0
;1
<2
=3
>4
?5
 
*
:0
;1
<2
=3
>4
?5
є
dnon_trainable_variables
%	variables

elayers
flayer_metrics
&regularization_losses

gstates
hmetrics
ilayer_regularization_losses
'trainable_variables
][
VARIABLE_VALUEtgvgnagwib/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEtgvgnagwib/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1
 

)0
*1
≠
jnon_trainable_variables
klayer_metrics

llayers
+	variables
,regularization_losses
mmetrics
nlayer_regularization_losses
-trainable_variables
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEkpulowglns/fddnbxfcbs/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE&kpulowglns/fddnbxfcbs/recurrent_kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEkpulowglns/fddnbxfcbs/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1kpulowglns/fddnbxfcbs/input_gate_peephole_weights&variables/7/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE2kpulowglns/fddnbxfcbs/forget_gate_peephole_weights&variables/8/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE2kpulowglns/fddnbxfcbs/output_gate_peephole_weights&variables/9/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEhtheqsxgix/tivuqvlrxj/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE&htheqsxgix/tivuqvlrxj/recurrent_kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEhtheqsxgix/tivuqvlrxj/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE1htheqsxgix/tivuqvlrxj/input_gate_peephole_weights'variables/13/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE2htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights'variables/14/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE2htheqsxgix/tivuqvlrxj/output_gate_peephole_weights'variables/15/.ATTRIBUTES/VARIABLE_VALUE
 
*
0
1
2
3
4
5
 

o0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
*
40
51
62
73
84
95
 
*
40
51
62
73
84
95
≠
pnon_trainable_variables
qlayer_metrics

rlayers
U	variables
Vregularization_losses
smetrics
tlayer_regularization_losses
Wtrainable_variables
 

0
 
 
 
 
 
*
:0
;1
<2
=3
>4
?5
 
*
:0
;1
<2
=3
>4
?5
≠
unon_trainable_variables
vlayer_metrics

wlayers
`	variables
aregularization_losses
xmetrics
ylayer_regularization_losses
btrainable_variables
 

#0
 
 
 
 
 
 
 
 
 
4
	ztotal
	{count
|	variables
}	keras_api
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

z0
{1

|	variables
ИЕ
VARIABLE_VALUERMSprop/xwuftghvfx/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/xwuftghvfx/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUERMSprop/gnnkxdqznz/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/gnnkxdqznz/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUERMSprop/tgvgnagwib/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/tgvgnagwib/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE(RMSprop/kpulowglns/fddnbxfcbs/kernel/rmsDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE2RMSprop/kpulowglns/fddnbxfcbs/recurrent_kernel/rmsDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUE&RMSprop/kpulowglns/fddnbxfcbs/bias/rmsDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE=RMSprop/kpulowglns/fddnbxfcbs/input_gate_peephole_weights/rmsDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE>RMSprop/kpulowglns/fddnbxfcbs/forget_gate_peephole_weights/rmsDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE>RMSprop/kpulowglns/fddnbxfcbs/output_gate_peephole_weights/rmsDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE(RMSprop/htheqsxgix/tivuqvlrxj/kernel/rmsEvariables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ОЛ
VARIABLE_VALUE2RMSprop/htheqsxgix/tivuqvlrxj/recurrent_kernel/rmsEvariables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE&RMSprop/htheqsxgix/tivuqvlrxj/bias/rmsEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE=RMSprop/htheqsxgix/tivuqvlrxj/input_gate_peephole_weights/rmsEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE>RMSprop/htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights/rmsEvariables/14/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE>RMSprop/htheqsxgix/tivuqvlrxj/output_gate_peephole_weights/rmsEvariables/15/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Н
serving_default_cvyyglfjwpPlaceholder*/
_output_shapes
:€€€€€€€€€*
dtype0*$
shape:€€€€€€€€€
√
StatefulPartitionedCallStatefulPartitionedCallserving_default_cvyyglfjwpxwuftghvfx/kernelxwuftghvfx/biasgnnkxdqznz/kernelgnnkxdqznz/biaskpulowglns/fddnbxfcbs/kernel&kpulowglns/fddnbxfcbs/recurrent_kernelkpulowglns/fddnbxfcbs/bias1kpulowglns/fddnbxfcbs/input_gate_peephole_weights2kpulowglns/fddnbxfcbs/forget_gate_peephole_weights2kpulowglns/fddnbxfcbs/output_gate_peephole_weightshtheqsxgix/tivuqvlrxj/kernel&htheqsxgix/tivuqvlrxj/recurrent_kernelhtheqsxgix/tivuqvlrxj/bias1htheqsxgix/tivuqvlrxj/input_gate_peephole_weights2htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights2htheqsxgix/tivuqvlrxj/output_gate_peephole_weightstgvgnagwib/kerneltgvgnagwib/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *.
f)R'
%__inference_signature_wrapper_1302417
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ђ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%xwuftghvfx/kernel/Read/ReadVariableOp#xwuftghvfx/bias/Read/ReadVariableOp%gnnkxdqznz/kernel/Read/ReadVariableOp#gnnkxdqznz/bias/Read/ReadVariableOp%tgvgnagwib/kernel/Read/ReadVariableOp#tgvgnagwib/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp0kpulowglns/fddnbxfcbs/kernel/Read/ReadVariableOp:kpulowglns/fddnbxfcbs/recurrent_kernel/Read/ReadVariableOp.kpulowglns/fddnbxfcbs/bias/Read/ReadVariableOpEkpulowglns/fddnbxfcbs/input_gate_peephole_weights/Read/ReadVariableOpFkpulowglns/fddnbxfcbs/forget_gate_peephole_weights/Read/ReadVariableOpFkpulowglns/fddnbxfcbs/output_gate_peephole_weights/Read/ReadVariableOp0htheqsxgix/tivuqvlrxj/kernel/Read/ReadVariableOp:htheqsxgix/tivuqvlrxj/recurrent_kernel/Read/ReadVariableOp.htheqsxgix/tivuqvlrxj/bias/Read/ReadVariableOpEhtheqsxgix/tivuqvlrxj/input_gate_peephole_weights/Read/ReadVariableOpFhtheqsxgix/tivuqvlrxj/forget_gate_peephole_weights/Read/ReadVariableOpFhtheqsxgix/tivuqvlrxj/output_gate_peephole_weights/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp1RMSprop/xwuftghvfx/kernel/rms/Read/ReadVariableOp/RMSprop/xwuftghvfx/bias/rms/Read/ReadVariableOp1RMSprop/gnnkxdqznz/kernel/rms/Read/ReadVariableOp/RMSprop/gnnkxdqznz/bias/rms/Read/ReadVariableOp1RMSprop/tgvgnagwib/kernel/rms/Read/ReadVariableOp/RMSprop/tgvgnagwib/bias/rms/Read/ReadVariableOp<RMSprop/kpulowglns/fddnbxfcbs/kernel/rms/Read/ReadVariableOpFRMSprop/kpulowglns/fddnbxfcbs/recurrent_kernel/rms/Read/ReadVariableOp:RMSprop/kpulowglns/fddnbxfcbs/bias/rms/Read/ReadVariableOpQRMSprop/kpulowglns/fddnbxfcbs/input_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/kpulowglns/fddnbxfcbs/forget_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/kpulowglns/fddnbxfcbs/output_gate_peephole_weights/rms/Read/ReadVariableOp<RMSprop/htheqsxgix/tivuqvlrxj/kernel/rms/Read/ReadVariableOpFRMSprop/htheqsxgix/tivuqvlrxj/recurrent_kernel/rms/Read/ReadVariableOp:RMSprop/htheqsxgix/tivuqvlrxj/bias/rms/Read/ReadVariableOpQRMSprop/htheqsxgix/tivuqvlrxj/input_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/htheqsxgix/tivuqvlrxj/output_gate_peephole_weights/rms/Read/ReadVariableOpConst*8
Tin1
/2-	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__traced_save_1305504
 
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamexwuftghvfx/kernelxwuftghvfx/biasgnnkxdqznz/kernelgnnkxdqznz/biastgvgnagwib/kerneltgvgnagwib/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhokpulowglns/fddnbxfcbs/kernel&kpulowglns/fddnbxfcbs/recurrent_kernelkpulowglns/fddnbxfcbs/bias1kpulowglns/fddnbxfcbs/input_gate_peephole_weights2kpulowglns/fddnbxfcbs/forget_gate_peephole_weights2kpulowglns/fddnbxfcbs/output_gate_peephole_weightshtheqsxgix/tivuqvlrxj/kernel&htheqsxgix/tivuqvlrxj/recurrent_kernelhtheqsxgix/tivuqvlrxj/bias1htheqsxgix/tivuqvlrxj/input_gate_peephole_weights2htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights2htheqsxgix/tivuqvlrxj/output_gate_peephole_weightstotalcountRMSprop/xwuftghvfx/kernel/rmsRMSprop/xwuftghvfx/bias/rmsRMSprop/gnnkxdqznz/kernel/rmsRMSprop/gnnkxdqznz/bias/rmsRMSprop/tgvgnagwib/kernel/rmsRMSprop/tgvgnagwib/bias/rms(RMSprop/kpulowglns/fddnbxfcbs/kernel/rms2RMSprop/kpulowglns/fddnbxfcbs/recurrent_kernel/rms&RMSprop/kpulowglns/fddnbxfcbs/bias/rms=RMSprop/kpulowglns/fddnbxfcbs/input_gate_peephole_weights/rms>RMSprop/kpulowglns/fddnbxfcbs/forget_gate_peephole_weights/rms>RMSprop/kpulowglns/fddnbxfcbs/output_gate_peephole_weights/rms(RMSprop/htheqsxgix/tivuqvlrxj/kernel/rms2RMSprop/htheqsxgix/tivuqvlrxj/recurrent_kernel/rms&RMSprop/htheqsxgix/tivuqvlrxj/bias/rms=RMSprop/htheqsxgix/tivuqvlrxj/input_gate_peephole_weights/rms>RMSprop/htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights/rms>RMSprop/htheqsxgix/tivuqvlrxj/output_gate_peephole_weights/rms*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference__traced_restore_1305643…≤0
ыћ
Е
"__inference__wrapped_model_1299575

cvyyglfjwpW
Asequential_xwuftghvfx_conv1d_expanddims_1_readvariableop_resource:V
Hsequential_xwuftghvfx_squeeze_batch_dims_biasadd_readvariableop_resource:W
Asequential_gnnkxdqznz_conv1d_expanddims_1_readvariableop_resource:V
Hsequential_gnnkxdqznz_squeeze_batch_dims_biasadd_readvariableop_resource:R
?sequential_kpulowglns_fddnbxfcbs_matmul_readvariableop_resource:	АT
Asequential_kpulowglns_fddnbxfcbs_matmul_1_readvariableop_resource:	 АO
@sequential_kpulowglns_fddnbxfcbs_biasadd_readvariableop_resource:	АF
8sequential_kpulowglns_fddnbxfcbs_readvariableop_resource: H
:sequential_kpulowglns_fddnbxfcbs_readvariableop_1_resource: H
:sequential_kpulowglns_fddnbxfcbs_readvariableop_2_resource: R
?sequential_htheqsxgix_tivuqvlrxj_matmul_readvariableop_resource:	 АT
Asequential_htheqsxgix_tivuqvlrxj_matmul_1_readvariableop_resource:	 АO
@sequential_htheqsxgix_tivuqvlrxj_biasadd_readvariableop_resource:	АF
8sequential_htheqsxgix_tivuqvlrxj_readvariableop_resource: H
:sequential_htheqsxgix_tivuqvlrxj_readvariableop_1_resource: H
:sequential_htheqsxgix_tivuqvlrxj_readvariableop_2_resource: F
4sequential_tgvgnagwib_matmul_readvariableop_resource: C
5sequential_tgvgnagwib_biasadd_readvariableop_resource:
identityИҐ8sequential/gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOpҐ?sequential/gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOpҐ7sequential/htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOpҐ6sequential/htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOpҐ8sequential/htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOpҐ/sequential/htheqsxgix/tivuqvlrxj/ReadVariableOpҐ1sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_1Ґ1sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_2Ґsequential/htheqsxgix/whileҐ7sequential/kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOpҐ6sequential/kpulowglns/fddnbxfcbs/MatMul/ReadVariableOpҐ8sequential/kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOpҐ/sequential/kpulowglns/fddnbxfcbs/ReadVariableOpҐ1sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_1Ґ1sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_2Ґsequential/kpulowglns/whileҐ,sequential/tgvgnagwib/BiasAdd/ReadVariableOpҐ+sequential/tgvgnagwib/MatMul/ReadVariableOpҐ8sequential/xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOpҐ?sequential/xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp•
+sequential/xwuftghvfx/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2-
+sequential/xwuftghvfx/conv1d/ExpandDims/dimа
'sequential/xwuftghvfx/conv1d/ExpandDims
ExpandDims
cvyyglfjwp4sequential/xwuftghvfx/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2)
'sequential/xwuftghvfx/conv1d/ExpandDimsъ
8sequential/xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_xwuftghvfx_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02:
8sequential/xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp†
-sequential/xwuftghvfx/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential/xwuftghvfx/conv1d/ExpandDims_1/dimП
)sequential/xwuftghvfx/conv1d/ExpandDims_1
ExpandDims@sequential/xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential/xwuftghvfx/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2+
)sequential/xwuftghvfx/conv1d/ExpandDims_1®
"sequential/xwuftghvfx/conv1d/ShapeShape0sequential/xwuftghvfx/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2$
"sequential/xwuftghvfx/conv1d/ShapeЃ
0sequential/xwuftghvfx/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential/xwuftghvfx/conv1d/strided_slice/stackї
2sequential/xwuftghvfx/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€24
2sequential/xwuftghvfx/conv1d/strided_slice/stack_1≤
2sequential/xwuftghvfx/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/xwuftghvfx/conv1d/strided_slice/stack_2О
*sequential/xwuftghvfx/conv1d/strided_sliceStridedSlice+sequential/xwuftghvfx/conv1d/Shape:output:09sequential/xwuftghvfx/conv1d/strided_slice/stack:output:0;sequential/xwuftghvfx/conv1d/strided_slice/stack_1:output:0;sequential/xwuftghvfx/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2,
*sequential/xwuftghvfx/conv1d/strided_slice±
*sequential/xwuftghvfx/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"€€€€         2,
*sequential/xwuftghvfx/conv1d/Reshape/shapeш
$sequential/xwuftghvfx/conv1d/ReshapeReshape0sequential/xwuftghvfx/conv1d/ExpandDims:output:03sequential/xwuftghvfx/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2&
$sequential/xwuftghvfx/conv1d/ReshapeЪ
#sequential/xwuftghvfx/conv1d/Conv2DConv2D-sequential/xwuftghvfx/conv1d/Reshape:output:02sequential/xwuftghvfx/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
2%
#sequential/xwuftghvfx/conv1d/Conv2D±
,sequential/xwuftghvfx/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2.
,sequential/xwuftghvfx/conv1d/concat/values_1Я
(sequential/xwuftghvfx/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(sequential/xwuftghvfx/conv1d/concat/axis£
#sequential/xwuftghvfx/conv1d/concatConcatV23sequential/xwuftghvfx/conv1d/strided_slice:output:05sequential/xwuftghvfx/conv1d/concat/values_1:output:01sequential/xwuftghvfx/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/xwuftghvfx/conv1d/concatх
&sequential/xwuftghvfx/conv1d/Reshape_1Reshape,sequential/xwuftghvfx/conv1d/Conv2D:output:0,sequential/xwuftghvfx/conv1d/concat:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2(
&sequential/xwuftghvfx/conv1d/Reshape_1в
$sequential/xwuftghvfx/conv1d/SqueezeSqueeze/sequential/xwuftghvfx/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€2&
$sequential/xwuftghvfx/conv1d/Squeezeљ
.sequential/xwuftghvfx/squeeze_batch_dims/ShapeShape-sequential/xwuftghvfx/conv1d/Squeeze:output:0*
T0*
_output_shapes
:20
.sequential/xwuftghvfx/squeeze_batch_dims/Shape∆
<sequential/xwuftghvfx/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential/xwuftghvfx/squeeze_batch_dims/strided_slice/stack”
>sequential/xwuftghvfx/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2@
>sequential/xwuftghvfx/squeeze_batch_dims/strided_slice/stack_1 
>sequential/xwuftghvfx/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential/xwuftghvfx/squeeze_batch_dims/strided_slice/stack_2÷
6sequential/xwuftghvfx/squeeze_batch_dims/strided_sliceStridedSlice7sequential/xwuftghvfx/squeeze_batch_dims/Shape:output:0Esequential/xwuftghvfx/squeeze_batch_dims/strided_slice/stack:output:0Gsequential/xwuftghvfx/squeeze_batch_dims/strided_slice/stack_1:output:0Gsequential/xwuftghvfx/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask28
6sequential/xwuftghvfx/squeeze_batch_dims/strided_slice≈
6sequential/xwuftghvfx/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      28
6sequential/xwuftghvfx/squeeze_batch_dims/Reshape/shapeХ
0sequential/xwuftghvfx/squeeze_batch_dims/ReshapeReshape-sequential/xwuftghvfx/conv1d/Squeeze:output:0?sequential/xwuftghvfx/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
0sequential/xwuftghvfx/squeeze_batch_dims/ReshapeЗ
?sequential/xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOpHsequential_xwuftghvfx_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02A
?sequential/xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp©
0sequential/xwuftghvfx/squeeze_batch_dims/BiasAddBiasAdd9sequential/xwuftghvfx/squeeze_batch_dims/Reshape:output:0Gsequential/xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€22
0sequential/xwuftghvfx/squeeze_batch_dims/BiasAdd≈
8sequential/xwuftghvfx/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential/xwuftghvfx/squeeze_batch_dims/concat/values_1Ј
4sequential/xwuftghvfx/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€26
4sequential/xwuftghvfx/squeeze_batch_dims/concat/axisя
/sequential/xwuftghvfx/squeeze_batch_dims/concatConcatV2?sequential/xwuftghvfx/squeeze_batch_dims/strided_slice:output:0Asequential/xwuftghvfx/squeeze_batch_dims/concat/values_1:output:0=sequential/xwuftghvfx/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:21
/sequential/xwuftghvfx/squeeze_batch_dims/concatҐ
2sequential/xwuftghvfx/squeeze_batch_dims/Reshape_1Reshape9sequential/xwuftghvfx/squeeze_batch_dims/BiasAdd:output:08sequential/xwuftghvfx/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€24
2sequential/xwuftghvfx/squeeze_batch_dims/Reshape_1є
"sequential/gnnkxdqznz/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                2$
"sequential/gnnkxdqznz/Pad/paddingsб
sequential/gnnkxdqznz/PadPad;sequential/xwuftghvfx/squeeze_batch_dims/Reshape_1:output:0+sequential/gnnkxdqznz/Pad/paddings:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
sequential/gnnkxdqznz/Pad•
+sequential/gnnkxdqznz/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2-
+sequential/gnnkxdqznz/conv1d/ExpandDims/dimш
'sequential/gnnkxdqznz/conv1d/ExpandDims
ExpandDims"sequential/gnnkxdqznz/Pad:output:04sequential/gnnkxdqznz/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2)
'sequential/gnnkxdqznz/conv1d/ExpandDimsъ
8sequential/gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_gnnkxdqznz_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02:
8sequential/gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp†
-sequential/gnnkxdqznz/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential/gnnkxdqznz/conv1d/ExpandDims_1/dimП
)sequential/gnnkxdqznz/conv1d/ExpandDims_1
ExpandDims@sequential/gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential/gnnkxdqznz/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2+
)sequential/gnnkxdqznz/conv1d/ExpandDims_1®
"sequential/gnnkxdqznz/conv1d/ShapeShape0sequential/gnnkxdqznz/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2$
"sequential/gnnkxdqznz/conv1d/ShapeЃ
0sequential/gnnkxdqznz/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential/gnnkxdqznz/conv1d/strided_slice/stackї
2sequential/gnnkxdqznz/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€24
2sequential/gnnkxdqznz/conv1d/strided_slice/stack_1≤
2sequential/gnnkxdqznz/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/gnnkxdqznz/conv1d/strided_slice/stack_2О
*sequential/gnnkxdqznz/conv1d/strided_sliceStridedSlice+sequential/gnnkxdqznz/conv1d/Shape:output:09sequential/gnnkxdqznz/conv1d/strided_slice/stack:output:0;sequential/gnnkxdqznz/conv1d/strided_slice/stack_1:output:0;sequential/gnnkxdqznz/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2,
*sequential/gnnkxdqznz/conv1d/strided_slice±
*sequential/gnnkxdqznz/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"€€€€         2,
*sequential/gnnkxdqznz/conv1d/Reshape/shapeш
$sequential/gnnkxdqznz/conv1d/ReshapeReshape0sequential/gnnkxdqznz/conv1d/ExpandDims:output:03sequential/gnnkxdqznz/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2&
$sequential/gnnkxdqznz/conv1d/ReshapeЪ
#sequential/gnnkxdqznz/conv1d/Conv2DConv2D-sequential/gnnkxdqznz/conv1d/Reshape:output:02sequential/gnnkxdqznz/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
2%
#sequential/gnnkxdqznz/conv1d/Conv2D±
,sequential/gnnkxdqznz/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2.
,sequential/gnnkxdqznz/conv1d/concat/values_1Я
(sequential/gnnkxdqznz/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2*
(sequential/gnnkxdqznz/conv1d/concat/axis£
#sequential/gnnkxdqznz/conv1d/concatConcatV23sequential/gnnkxdqznz/conv1d/strided_slice:output:05sequential/gnnkxdqznz/conv1d/concat/values_1:output:01sequential/gnnkxdqznz/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/gnnkxdqznz/conv1d/concatх
&sequential/gnnkxdqznz/conv1d/Reshape_1Reshape,sequential/gnnkxdqznz/conv1d/Conv2D:output:0,sequential/gnnkxdqznz/conv1d/concat:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2(
&sequential/gnnkxdqznz/conv1d/Reshape_1в
$sequential/gnnkxdqznz/conv1d/SqueezeSqueeze/sequential/gnnkxdqznz/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€2&
$sequential/gnnkxdqznz/conv1d/Squeezeљ
.sequential/gnnkxdqznz/squeeze_batch_dims/ShapeShape-sequential/gnnkxdqznz/conv1d/Squeeze:output:0*
T0*
_output_shapes
:20
.sequential/gnnkxdqznz/squeeze_batch_dims/Shape∆
<sequential/gnnkxdqznz/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential/gnnkxdqznz/squeeze_batch_dims/strided_slice/stack”
>sequential/gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2@
>sequential/gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_1 
>sequential/gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential/gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_2÷
6sequential/gnnkxdqznz/squeeze_batch_dims/strided_sliceStridedSlice7sequential/gnnkxdqznz/squeeze_batch_dims/Shape:output:0Esequential/gnnkxdqznz/squeeze_batch_dims/strided_slice/stack:output:0Gsequential/gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_1:output:0Gsequential/gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask28
6sequential/gnnkxdqznz/squeeze_batch_dims/strided_slice≈
6sequential/gnnkxdqznz/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      28
6sequential/gnnkxdqznz/squeeze_batch_dims/Reshape/shapeХ
0sequential/gnnkxdqznz/squeeze_batch_dims/ReshapeReshape-sequential/gnnkxdqznz/conv1d/Squeeze:output:0?sequential/gnnkxdqznz/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€22
0sequential/gnnkxdqznz/squeeze_batch_dims/ReshapeЗ
?sequential/gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOpHsequential_gnnkxdqznz_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02A
?sequential/gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp©
0sequential/gnnkxdqznz/squeeze_batch_dims/BiasAddBiasAdd9sequential/gnnkxdqznz/squeeze_batch_dims/Reshape:output:0Gsequential/gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€22
0sequential/gnnkxdqznz/squeeze_batch_dims/BiasAdd≈
8sequential/gnnkxdqznz/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential/gnnkxdqznz/squeeze_batch_dims/concat/values_1Ј
4sequential/gnnkxdqznz/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€26
4sequential/gnnkxdqznz/squeeze_batch_dims/concat/axisя
/sequential/gnnkxdqznz/squeeze_batch_dims/concatConcatV2?sequential/gnnkxdqznz/squeeze_batch_dims/strided_slice:output:0Asequential/gnnkxdqznz/squeeze_batch_dims/concat/values_1:output:0=sequential/gnnkxdqznz/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:21
/sequential/gnnkxdqznz/squeeze_batch_dims/concatҐ
2sequential/gnnkxdqznz/squeeze_batch_dims/Reshape_1Reshape9sequential/gnnkxdqznz/squeeze_batch_dims/BiasAdd:output:08sequential/gnnkxdqznz/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€24
2sequential/gnnkxdqznz/squeeze_batch_dims/Reshape_1•
sequential/xrqvvalojb/ShapeShape;sequential/gnnkxdqznz/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
sequential/xrqvvalojb/Shape†
)sequential/xrqvvalojb/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/xrqvvalojb/strided_slice/stack§
+sequential/xrqvvalojb/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/xrqvvalojb/strided_slice/stack_1§
+sequential/xrqvvalojb/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/xrqvvalojb/strided_slice/stack_2ж
#sequential/xrqvvalojb/strided_sliceStridedSlice$sequential/xrqvvalojb/Shape:output:02sequential/xrqvvalojb/strided_slice/stack:output:04sequential/xrqvvalojb/strided_slice/stack_1:output:04sequential/xrqvvalojb/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/xrqvvalojb/strided_sliceР
%sequential/xrqvvalojb/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/xrqvvalojb/Reshape/shape/1Р
%sequential/xrqvvalojb/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/xrqvvalojb/Reshape/shape/2О
#sequential/xrqvvalojb/Reshape/shapePack,sequential/xrqvvalojb/strided_slice:output:0.sequential/xrqvvalojb/Reshape/shape/1:output:0.sequential/xrqvvalojb/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2%
#sequential/xrqvvalojb/Reshape/shapeк
sequential/xrqvvalojb/ReshapeReshape;sequential/gnnkxdqznz/squeeze_batch_dims/Reshape_1:output:0,sequential/xrqvvalojb/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
sequential/xrqvvalojb/ReshapeР
sequential/kpulowglns/ShapeShape&sequential/xrqvvalojb/Reshape:output:0*
T0*
_output_shapes
:2
sequential/kpulowglns/Shape†
)sequential/kpulowglns/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/kpulowglns/strided_slice/stack§
+sequential/kpulowglns/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/kpulowglns/strided_slice/stack_1§
+sequential/kpulowglns/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/kpulowglns/strided_slice/stack_2ж
#sequential/kpulowglns/strided_sliceStridedSlice$sequential/kpulowglns/Shape:output:02sequential/kpulowglns/strided_slice/stack:output:04sequential/kpulowglns/strided_slice/stack_1:output:04sequential/kpulowglns/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/kpulowglns/strided_sliceИ
!sequential/kpulowglns/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential/kpulowglns/zeros/mul/yƒ
sequential/kpulowglns/zeros/mulMul,sequential/kpulowglns/strided_slice:output:0*sequential/kpulowglns/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/kpulowglns/zeros/mulЛ
"sequential/kpulowglns/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2$
"sequential/kpulowglns/zeros/Less/yњ
 sequential/kpulowglns/zeros/LessLess#sequential/kpulowglns/zeros/mul:z:0+sequential/kpulowglns/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/kpulowglns/zeros/LessО
$sequential/kpulowglns/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential/kpulowglns/zeros/packed/1џ
"sequential/kpulowglns/zeros/packedPack,sequential/kpulowglns/strided_slice:output:0-sequential/kpulowglns/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/kpulowglns/zeros/packedЛ
!sequential/kpulowglns/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/kpulowglns/zeros/ConstЌ
sequential/kpulowglns/zerosFill+sequential/kpulowglns/zeros/packed:output:0*sequential/kpulowglns/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/kpulowglns/zerosМ
#sequential/kpulowglns/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential/kpulowglns/zeros_1/mul/y 
!sequential/kpulowglns/zeros_1/mulMul,sequential/kpulowglns/strided_slice:output:0,sequential/kpulowglns/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/kpulowglns/zeros_1/mulП
$sequential/kpulowglns/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2&
$sequential/kpulowglns/zeros_1/Less/y«
"sequential/kpulowglns/zeros_1/LessLess%sequential/kpulowglns/zeros_1/mul:z:0-sequential/kpulowglns/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/kpulowglns/zeros_1/LessТ
&sequential/kpulowglns/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/kpulowglns/zeros_1/packed/1б
$sequential/kpulowglns/zeros_1/packedPack,sequential/kpulowglns/strided_slice:output:0/sequential/kpulowglns/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/kpulowglns/zeros_1/packedП
#sequential/kpulowglns/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/kpulowglns/zeros_1/Const’
sequential/kpulowglns/zeros_1Fill-sequential/kpulowglns/zeros_1/packed:output:0,sequential/kpulowglns/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/kpulowglns/zeros_1°
$sequential/kpulowglns/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/kpulowglns/transpose/perm№
sequential/kpulowglns/transpose	Transpose&sequential/xrqvvalojb/Reshape:output:0-sequential/kpulowglns/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2!
sequential/kpulowglns/transposeС
sequential/kpulowglns/Shape_1Shape#sequential/kpulowglns/transpose:y:0*
T0*
_output_shapes
:2
sequential/kpulowglns/Shape_1§
+sequential/kpulowglns/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/kpulowglns/strided_slice_1/stack®
-sequential/kpulowglns/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/kpulowglns/strided_slice_1/stack_1®
-sequential/kpulowglns/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/kpulowglns/strided_slice_1/stack_2т
%sequential/kpulowglns/strided_slice_1StridedSlice&sequential/kpulowglns/Shape_1:output:04sequential/kpulowglns/strided_slice_1/stack:output:06sequential/kpulowglns/strided_slice_1/stack_1:output:06sequential/kpulowglns/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/kpulowglns/strided_slice_1±
1sequential/kpulowglns/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€23
1sequential/kpulowglns/TensorArrayV2/element_shapeК
#sequential/kpulowglns/TensorArrayV2TensorListReserve:sequential/kpulowglns/TensorArrayV2/element_shape:output:0.sequential/kpulowglns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/kpulowglns/TensorArrayV2л
Ksequential/kpulowglns/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2M
Ksequential/kpulowglns/TensorArrayUnstack/TensorListFromTensor/element_shape–
=sequential/kpulowglns/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/kpulowglns/transpose:y:0Tsequential/kpulowglns/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/kpulowglns/TensorArrayUnstack/TensorListFromTensor§
+sequential/kpulowglns/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/kpulowglns/strided_slice_2/stack®
-sequential/kpulowglns/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/kpulowglns/strided_slice_2/stack_1®
-sequential/kpulowglns/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/kpulowglns/strided_slice_2/stack_2А
%sequential/kpulowglns/strided_slice_2StridedSlice#sequential/kpulowglns/transpose:y:04sequential/kpulowglns/strided_slice_2/stack:output:06sequential/kpulowglns/strided_slice_2/stack_1:output:06sequential/kpulowglns/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2'
%sequential/kpulowglns/strided_slice_2с
6sequential/kpulowglns/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp?sequential_kpulowglns_fddnbxfcbs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype028
6sequential/kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp€
'sequential/kpulowglns/fddnbxfcbs/MatMulMatMul.sequential/kpulowglns/strided_slice_2:output:0>sequential/kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'sequential/kpulowglns/fddnbxfcbs/MatMulч
8sequential/kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOpAsequential_kpulowglns_fddnbxfcbs_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02:
8sequential/kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOpы
)sequential/kpulowglns/fddnbxfcbs/MatMul_1MatMul$sequential/kpulowglns/zeros:output:0@sequential/kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2+
)sequential/kpulowglns/fddnbxfcbs/MatMul_1р
$sequential/kpulowglns/fddnbxfcbs/addAddV21sequential/kpulowglns/fddnbxfcbs/MatMul:product:03sequential/kpulowglns/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2&
$sequential/kpulowglns/fddnbxfcbs/addр
7sequential/kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp@sequential_kpulowglns_fddnbxfcbs_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential/kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOpэ
(sequential/kpulowglns/fddnbxfcbs/BiasAddBiasAdd(sequential/kpulowglns/fddnbxfcbs/add:z:0?sequential/kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(sequential/kpulowglns/fddnbxfcbs/BiasAdd¶
0sequential/kpulowglns/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential/kpulowglns/fddnbxfcbs/split/split_dim√
&sequential/kpulowglns/fddnbxfcbs/splitSplit9sequential/kpulowglns/fddnbxfcbs/split/split_dim:output:01sequential/kpulowglns/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2(
&sequential/kpulowglns/fddnbxfcbs/split„
/sequential/kpulowglns/fddnbxfcbs/ReadVariableOpReadVariableOp8sequential_kpulowglns_fddnbxfcbs_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential/kpulowglns/fddnbxfcbs/ReadVariableOpж
$sequential/kpulowglns/fddnbxfcbs/mulMul7sequential/kpulowglns/fddnbxfcbs/ReadVariableOp:value:0&sequential/kpulowglns/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2&
$sequential/kpulowglns/fddnbxfcbs/mulж
&sequential/kpulowglns/fddnbxfcbs/add_1AddV2/sequential/kpulowglns/fddnbxfcbs/split:output:0(sequential/kpulowglns/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/kpulowglns/fddnbxfcbs/add_1љ
(sequential/kpulowglns/fddnbxfcbs/SigmoidSigmoid*sequential/kpulowglns/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2*
(sequential/kpulowglns/fddnbxfcbs/SigmoidЁ
1sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_1ReadVariableOp:sequential_kpulowglns_fddnbxfcbs_readvariableop_1_resource*
_output_shapes
: *
dtype023
1sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_1м
&sequential/kpulowglns/fddnbxfcbs/mul_1Mul9sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_1:value:0&sequential/kpulowglns/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/kpulowglns/fddnbxfcbs/mul_1и
&sequential/kpulowglns/fddnbxfcbs/add_2AddV2/sequential/kpulowglns/fddnbxfcbs/split:output:1*sequential/kpulowglns/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/kpulowglns/fddnbxfcbs/add_2Ѕ
*sequential/kpulowglns/fddnbxfcbs/Sigmoid_1Sigmoid*sequential/kpulowglns/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential/kpulowglns/fddnbxfcbs/Sigmoid_1б
&sequential/kpulowglns/fddnbxfcbs/mul_2Mul.sequential/kpulowglns/fddnbxfcbs/Sigmoid_1:y:0&sequential/kpulowglns/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/kpulowglns/fddnbxfcbs/mul_2є
%sequential/kpulowglns/fddnbxfcbs/TanhTanh/sequential/kpulowglns/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential/kpulowglns/fddnbxfcbs/Tanhв
&sequential/kpulowglns/fddnbxfcbs/mul_3Mul,sequential/kpulowglns/fddnbxfcbs/Sigmoid:y:0)sequential/kpulowglns/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/kpulowglns/fddnbxfcbs/mul_3г
&sequential/kpulowglns/fddnbxfcbs/add_3AddV2*sequential/kpulowglns/fddnbxfcbs/mul_2:z:0*sequential/kpulowglns/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/kpulowglns/fddnbxfcbs/add_3Ё
1sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_2ReadVariableOp:sequential_kpulowglns_fddnbxfcbs_readvariableop_2_resource*
_output_shapes
: *
dtype023
1sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_2р
&sequential/kpulowglns/fddnbxfcbs/mul_4Mul9sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_2:value:0*sequential/kpulowglns/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/kpulowglns/fddnbxfcbs/mul_4и
&sequential/kpulowglns/fddnbxfcbs/add_4AddV2/sequential/kpulowglns/fddnbxfcbs/split:output:3*sequential/kpulowglns/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/kpulowglns/fddnbxfcbs/add_4Ѕ
*sequential/kpulowglns/fddnbxfcbs/Sigmoid_2Sigmoid*sequential/kpulowglns/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential/kpulowglns/fddnbxfcbs/Sigmoid_2Є
'sequential/kpulowglns/fddnbxfcbs/Tanh_1Tanh*sequential/kpulowglns/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'sequential/kpulowglns/fddnbxfcbs/Tanh_1ж
&sequential/kpulowglns/fddnbxfcbs/mul_5Mul.sequential/kpulowglns/fddnbxfcbs/Sigmoid_2:y:0+sequential/kpulowglns/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/kpulowglns/fddnbxfcbs/mul_5ї
3sequential/kpulowglns/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    25
3sequential/kpulowglns/TensorArrayV2_1/element_shapeР
%sequential/kpulowglns/TensorArrayV2_1TensorListReserve<sequential/kpulowglns/TensorArrayV2_1/element_shape:output:0.sequential/kpulowglns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/kpulowglns/TensorArrayV2_1z
sequential/kpulowglns/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/kpulowglns/timeЂ
.sequential/kpulowglns/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€20
.sequential/kpulowglns/while/maximum_iterationsЦ
(sequential/kpulowglns/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/kpulowglns/while/loop_counterш	
sequential/kpulowglns/whileWhile1sequential/kpulowglns/while/loop_counter:output:07sequential/kpulowglns/while/maximum_iterations:output:0#sequential/kpulowglns/time:output:0.sequential/kpulowglns/TensorArrayV2_1:handle:0$sequential/kpulowglns/zeros:output:0&sequential/kpulowglns/zeros_1:output:0.sequential/kpulowglns/strided_slice_1:output:0Msequential/kpulowglns/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_kpulowglns_fddnbxfcbs_matmul_readvariableop_resourceAsequential_kpulowglns_fddnbxfcbs_matmul_1_readvariableop_resource@sequential_kpulowglns_fddnbxfcbs_biasadd_readvariableop_resource8sequential_kpulowglns_fddnbxfcbs_readvariableop_resource:sequential_kpulowglns_fddnbxfcbs_readvariableop_1_resource:sequential_kpulowglns_fddnbxfcbs_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*4
body,R*
(sequential_kpulowglns_while_body_1299292*4
cond,R*
(sequential_kpulowglns_while_cond_1299291*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
sequential/kpulowglns/whileб
Fsequential/kpulowglns/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2H
Fsequential/kpulowglns/TensorArrayV2Stack/TensorListStack/element_shapeј
8sequential/kpulowglns/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/kpulowglns/while:output:3Osequential/kpulowglns/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02:
8sequential/kpulowglns/TensorArrayV2Stack/TensorListStack≠
+sequential/kpulowglns/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2-
+sequential/kpulowglns/strided_slice_3/stack®
-sequential/kpulowglns/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/kpulowglns/strided_slice_3/stack_1®
-sequential/kpulowglns/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/kpulowglns/strided_slice_3/stack_2Ю
%sequential/kpulowglns/strided_slice_3StridedSliceAsequential/kpulowglns/TensorArrayV2Stack/TensorListStack:tensor:04sequential/kpulowglns/strided_slice_3/stack:output:06sequential/kpulowglns/strided_slice_3/stack_1:output:06sequential/kpulowglns/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2'
%sequential/kpulowglns/strided_slice_3•
&sequential/kpulowglns/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/kpulowglns/transpose_1/permэ
!sequential/kpulowglns/transpose_1	TransposeAsequential/kpulowglns/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/kpulowglns/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2#
!sequential/kpulowglns/transpose_1П
sequential/htheqsxgix/ShapeShape%sequential/kpulowglns/transpose_1:y:0*
T0*
_output_shapes
:2
sequential/htheqsxgix/Shape†
)sequential/htheqsxgix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/htheqsxgix/strided_slice/stack§
+sequential/htheqsxgix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/htheqsxgix/strided_slice/stack_1§
+sequential/htheqsxgix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/htheqsxgix/strided_slice/stack_2ж
#sequential/htheqsxgix/strided_sliceStridedSlice$sequential/htheqsxgix/Shape:output:02sequential/htheqsxgix/strided_slice/stack:output:04sequential/htheqsxgix/strided_slice/stack_1:output:04sequential/htheqsxgix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/htheqsxgix/strided_sliceИ
!sequential/htheqsxgix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential/htheqsxgix/zeros/mul/yƒ
sequential/htheqsxgix/zeros/mulMul,sequential/htheqsxgix/strided_slice:output:0*sequential/htheqsxgix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/htheqsxgix/zeros/mulЛ
"sequential/htheqsxgix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2$
"sequential/htheqsxgix/zeros/Less/yњ
 sequential/htheqsxgix/zeros/LessLess#sequential/htheqsxgix/zeros/mul:z:0+sequential/htheqsxgix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/htheqsxgix/zeros/LessО
$sequential/htheqsxgix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential/htheqsxgix/zeros/packed/1џ
"sequential/htheqsxgix/zeros/packedPack,sequential/htheqsxgix/strided_slice:output:0-sequential/htheqsxgix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/htheqsxgix/zeros/packedЛ
!sequential/htheqsxgix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/htheqsxgix/zeros/ConstЌ
sequential/htheqsxgix/zerosFill+sequential/htheqsxgix/zeros/packed:output:0*sequential/htheqsxgix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/htheqsxgix/zerosМ
#sequential/htheqsxgix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential/htheqsxgix/zeros_1/mul/y 
!sequential/htheqsxgix/zeros_1/mulMul,sequential/htheqsxgix/strided_slice:output:0,sequential/htheqsxgix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/htheqsxgix/zeros_1/mulП
$sequential/htheqsxgix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2&
$sequential/htheqsxgix/zeros_1/Less/y«
"sequential/htheqsxgix/zeros_1/LessLess%sequential/htheqsxgix/zeros_1/mul:z:0-sequential/htheqsxgix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/htheqsxgix/zeros_1/LessТ
&sequential/htheqsxgix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/htheqsxgix/zeros_1/packed/1б
$sequential/htheqsxgix/zeros_1/packedPack,sequential/htheqsxgix/strided_slice:output:0/sequential/htheqsxgix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/htheqsxgix/zeros_1/packedП
#sequential/htheqsxgix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/htheqsxgix/zeros_1/Const’
sequential/htheqsxgix/zeros_1Fill-sequential/htheqsxgix/zeros_1/packed:output:0,sequential/htheqsxgix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/htheqsxgix/zeros_1°
$sequential/htheqsxgix/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/htheqsxgix/transpose/permџ
sequential/htheqsxgix/transpose	Transpose%sequential/kpulowglns/transpose_1:y:0-sequential/htheqsxgix/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2!
sequential/htheqsxgix/transposeС
sequential/htheqsxgix/Shape_1Shape#sequential/htheqsxgix/transpose:y:0*
T0*
_output_shapes
:2
sequential/htheqsxgix/Shape_1§
+sequential/htheqsxgix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/htheqsxgix/strided_slice_1/stack®
-sequential/htheqsxgix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/htheqsxgix/strided_slice_1/stack_1®
-sequential/htheqsxgix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/htheqsxgix/strided_slice_1/stack_2т
%sequential/htheqsxgix/strided_slice_1StridedSlice&sequential/htheqsxgix/Shape_1:output:04sequential/htheqsxgix/strided_slice_1/stack:output:06sequential/htheqsxgix/strided_slice_1/stack_1:output:06sequential/htheqsxgix/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/htheqsxgix/strided_slice_1±
1sequential/htheqsxgix/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€23
1sequential/htheqsxgix/TensorArrayV2/element_shapeК
#sequential/htheqsxgix/TensorArrayV2TensorListReserve:sequential/htheqsxgix/TensorArrayV2/element_shape:output:0.sequential/htheqsxgix/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/htheqsxgix/TensorArrayV2л
Ksequential/htheqsxgix/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2M
Ksequential/htheqsxgix/TensorArrayUnstack/TensorListFromTensor/element_shape–
=sequential/htheqsxgix/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/htheqsxgix/transpose:y:0Tsequential/htheqsxgix/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/htheqsxgix/TensorArrayUnstack/TensorListFromTensor§
+sequential/htheqsxgix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/htheqsxgix/strided_slice_2/stack®
-sequential/htheqsxgix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/htheqsxgix/strided_slice_2/stack_1®
-sequential/htheqsxgix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/htheqsxgix/strided_slice_2/stack_2А
%sequential/htheqsxgix/strided_slice_2StridedSlice#sequential/htheqsxgix/transpose:y:04sequential/htheqsxgix/strided_slice_2/stack:output:06sequential/htheqsxgix/strided_slice_2/stack_1:output:06sequential/htheqsxgix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2'
%sequential/htheqsxgix/strided_slice_2с
6sequential/htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp?sequential_htheqsxgix_tivuqvlrxj_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype028
6sequential/htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp€
'sequential/htheqsxgix/tivuqvlrxj/MatMulMatMul.sequential/htheqsxgix/strided_slice_2:output:0>sequential/htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'sequential/htheqsxgix/tivuqvlrxj/MatMulч
8sequential/htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOpAsequential_htheqsxgix_tivuqvlrxj_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02:
8sequential/htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOpы
)sequential/htheqsxgix/tivuqvlrxj/MatMul_1MatMul$sequential/htheqsxgix/zeros:output:0@sequential/htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2+
)sequential/htheqsxgix/tivuqvlrxj/MatMul_1р
$sequential/htheqsxgix/tivuqvlrxj/addAddV21sequential/htheqsxgix/tivuqvlrxj/MatMul:product:03sequential/htheqsxgix/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2&
$sequential/htheqsxgix/tivuqvlrxj/addр
7sequential/htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp@sequential_htheqsxgix_tivuqvlrxj_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential/htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOpэ
(sequential/htheqsxgix/tivuqvlrxj/BiasAddBiasAdd(sequential/htheqsxgix/tivuqvlrxj/add:z:0?sequential/htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2*
(sequential/htheqsxgix/tivuqvlrxj/BiasAdd¶
0sequential/htheqsxgix/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential/htheqsxgix/tivuqvlrxj/split/split_dim√
&sequential/htheqsxgix/tivuqvlrxj/splitSplit9sequential/htheqsxgix/tivuqvlrxj/split/split_dim:output:01sequential/htheqsxgix/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2(
&sequential/htheqsxgix/tivuqvlrxj/split„
/sequential/htheqsxgix/tivuqvlrxj/ReadVariableOpReadVariableOp8sequential_htheqsxgix_tivuqvlrxj_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential/htheqsxgix/tivuqvlrxj/ReadVariableOpж
$sequential/htheqsxgix/tivuqvlrxj/mulMul7sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp:value:0&sequential/htheqsxgix/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2&
$sequential/htheqsxgix/tivuqvlrxj/mulж
&sequential/htheqsxgix/tivuqvlrxj/add_1AddV2/sequential/htheqsxgix/tivuqvlrxj/split:output:0(sequential/htheqsxgix/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/htheqsxgix/tivuqvlrxj/add_1љ
(sequential/htheqsxgix/tivuqvlrxj/SigmoidSigmoid*sequential/htheqsxgix/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2*
(sequential/htheqsxgix/tivuqvlrxj/SigmoidЁ
1sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_1ReadVariableOp:sequential_htheqsxgix_tivuqvlrxj_readvariableop_1_resource*
_output_shapes
: *
dtype023
1sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_1м
&sequential/htheqsxgix/tivuqvlrxj/mul_1Mul9sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_1:value:0&sequential/htheqsxgix/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/htheqsxgix/tivuqvlrxj/mul_1и
&sequential/htheqsxgix/tivuqvlrxj/add_2AddV2/sequential/htheqsxgix/tivuqvlrxj/split:output:1*sequential/htheqsxgix/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/htheqsxgix/tivuqvlrxj/add_2Ѕ
*sequential/htheqsxgix/tivuqvlrxj/Sigmoid_1Sigmoid*sequential/htheqsxgix/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential/htheqsxgix/tivuqvlrxj/Sigmoid_1б
&sequential/htheqsxgix/tivuqvlrxj/mul_2Mul.sequential/htheqsxgix/tivuqvlrxj/Sigmoid_1:y:0&sequential/htheqsxgix/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/htheqsxgix/tivuqvlrxj/mul_2є
%sequential/htheqsxgix/tivuqvlrxj/TanhTanh/sequential/htheqsxgix/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential/htheqsxgix/tivuqvlrxj/Tanhв
&sequential/htheqsxgix/tivuqvlrxj/mul_3Mul,sequential/htheqsxgix/tivuqvlrxj/Sigmoid:y:0)sequential/htheqsxgix/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/htheqsxgix/tivuqvlrxj/mul_3г
&sequential/htheqsxgix/tivuqvlrxj/add_3AddV2*sequential/htheqsxgix/tivuqvlrxj/mul_2:z:0*sequential/htheqsxgix/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/htheqsxgix/tivuqvlrxj/add_3Ё
1sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_2ReadVariableOp:sequential_htheqsxgix_tivuqvlrxj_readvariableop_2_resource*
_output_shapes
: *
dtype023
1sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_2р
&sequential/htheqsxgix/tivuqvlrxj/mul_4Mul9sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_2:value:0*sequential/htheqsxgix/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/htheqsxgix/tivuqvlrxj/mul_4и
&sequential/htheqsxgix/tivuqvlrxj/add_4AddV2/sequential/htheqsxgix/tivuqvlrxj/split:output:3*sequential/htheqsxgix/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/htheqsxgix/tivuqvlrxj/add_4Ѕ
*sequential/htheqsxgix/tivuqvlrxj/Sigmoid_2Sigmoid*sequential/htheqsxgix/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential/htheqsxgix/tivuqvlrxj/Sigmoid_2Є
'sequential/htheqsxgix/tivuqvlrxj/Tanh_1Tanh*sequential/htheqsxgix/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'sequential/htheqsxgix/tivuqvlrxj/Tanh_1ж
&sequential/htheqsxgix/tivuqvlrxj/mul_5Mul.sequential/htheqsxgix/tivuqvlrxj/Sigmoid_2:y:0+sequential/htheqsxgix/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/htheqsxgix/tivuqvlrxj/mul_5ї
3sequential/htheqsxgix/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    25
3sequential/htheqsxgix/TensorArrayV2_1/element_shapeР
%sequential/htheqsxgix/TensorArrayV2_1TensorListReserve<sequential/htheqsxgix/TensorArrayV2_1/element_shape:output:0.sequential/htheqsxgix/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/htheqsxgix/TensorArrayV2_1z
sequential/htheqsxgix/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/htheqsxgix/timeЂ
.sequential/htheqsxgix/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€20
.sequential/htheqsxgix/while/maximum_iterationsЦ
(sequential/htheqsxgix/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/htheqsxgix/while/loop_counterш	
sequential/htheqsxgix/whileWhile1sequential/htheqsxgix/while/loop_counter:output:07sequential/htheqsxgix/while/maximum_iterations:output:0#sequential/htheqsxgix/time:output:0.sequential/htheqsxgix/TensorArrayV2_1:handle:0$sequential/htheqsxgix/zeros:output:0&sequential/htheqsxgix/zeros_1:output:0.sequential/htheqsxgix/strided_slice_1:output:0Msequential/htheqsxgix/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_htheqsxgix_tivuqvlrxj_matmul_readvariableop_resourceAsequential_htheqsxgix_tivuqvlrxj_matmul_1_readvariableop_resource@sequential_htheqsxgix_tivuqvlrxj_biasadd_readvariableop_resource8sequential_htheqsxgix_tivuqvlrxj_readvariableop_resource:sequential_htheqsxgix_tivuqvlrxj_readvariableop_1_resource:sequential_htheqsxgix_tivuqvlrxj_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*4
body,R*
(sequential_htheqsxgix_while_body_1299468*4
cond,R*
(sequential_htheqsxgix_while_cond_1299467*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
sequential/htheqsxgix/whileб
Fsequential/htheqsxgix/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2H
Fsequential/htheqsxgix/TensorArrayV2Stack/TensorListStack/element_shapeј
8sequential/htheqsxgix/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/htheqsxgix/while:output:3Osequential/htheqsxgix/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02:
8sequential/htheqsxgix/TensorArrayV2Stack/TensorListStack≠
+sequential/htheqsxgix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2-
+sequential/htheqsxgix/strided_slice_3/stack®
-sequential/htheqsxgix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/htheqsxgix/strided_slice_3/stack_1®
-sequential/htheqsxgix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/htheqsxgix/strided_slice_3/stack_2Ю
%sequential/htheqsxgix/strided_slice_3StridedSliceAsequential/htheqsxgix/TensorArrayV2Stack/TensorListStack:tensor:04sequential/htheqsxgix/strided_slice_3/stack:output:06sequential/htheqsxgix/strided_slice_3/stack_1:output:06sequential/htheqsxgix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2'
%sequential/htheqsxgix/strided_slice_3•
&sequential/htheqsxgix/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/htheqsxgix/transpose_1/permэ
!sequential/htheqsxgix/transpose_1	TransposeAsequential/htheqsxgix/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/htheqsxgix/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2#
!sequential/htheqsxgix/transpose_1ѕ
+sequential/tgvgnagwib/MatMul/ReadVariableOpReadVariableOp4sequential_tgvgnagwib_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential/tgvgnagwib/MatMul/ReadVariableOpЁ
sequential/tgvgnagwib/MatMulMatMul.sequential/htheqsxgix/strided_slice_3:output:03sequential/tgvgnagwib/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/tgvgnagwib/MatMulќ
,sequential/tgvgnagwib/BiasAdd/ReadVariableOpReadVariableOp5sequential_tgvgnagwib_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential/tgvgnagwib/BiasAdd/ReadVariableOpў
sequential/tgvgnagwib/BiasAddBiasAdd&sequential/tgvgnagwib/MatMul:product:04sequential/tgvgnagwib/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/tgvgnagwib/BiasAddЭ	
IdentityIdentity&sequential/tgvgnagwib/BiasAdd:output:09^sequential/gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp@^sequential/gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp8^sequential/htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp7^sequential/htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp9^sequential/htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp0^sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp2^sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_12^sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_2^sequential/htheqsxgix/while8^sequential/kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp7^sequential/kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp9^sequential/kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp0^sequential/kpulowglns/fddnbxfcbs/ReadVariableOp2^sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_12^sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_2^sequential/kpulowglns/while-^sequential/tgvgnagwib/BiasAdd/ReadVariableOp,^sequential/tgvgnagwib/MatMul/ReadVariableOp9^sequential/xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp@^sequential/xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 2t
8sequential/gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp8sequential/gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp2В
?sequential/gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp?sequential/gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp2r
7sequential/htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp7sequential/htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp2p
6sequential/htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp6sequential/htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp2t
8sequential/htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp8sequential/htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp2b
/sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp/sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp2f
1sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_11sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_12f
1sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_21sequential/htheqsxgix/tivuqvlrxj/ReadVariableOp_22:
sequential/htheqsxgix/whilesequential/htheqsxgix/while2r
7sequential/kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp7sequential/kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp2p
6sequential/kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp6sequential/kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp2t
8sequential/kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp8sequential/kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp2b
/sequential/kpulowglns/fddnbxfcbs/ReadVariableOp/sequential/kpulowglns/fddnbxfcbs/ReadVariableOp2f
1sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_11sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_12f
1sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_21sequential/kpulowglns/fddnbxfcbs/ReadVariableOp_22:
sequential/kpulowglns/whilesequential/kpulowglns/while2\
,sequential/tgvgnagwib/BiasAdd/ReadVariableOp,sequential/tgvgnagwib/BiasAdd/ReadVariableOp2Z
+sequential/tgvgnagwib/MatMul/ReadVariableOp+sequential/tgvgnagwib/MatMul/ReadVariableOp2t
8sequential/xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp8sequential/xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp2В
?sequential/xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp?sequential/xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp:[ W
/
_output_shapes
:€€€€€€€€€
$
_user_specified_name
cvyyglfjwp
Ђ2
Љ
G__inference_gnnkxdqznz_layer_call_and_return_conditional_losses_1301180

inputsA
+conv1d_expanddims_1_readvariableop_resource:@
2squeeze_batch_dims_biasadd_readvariableop_resource:
identityИҐ"conv1d/ExpandDims_1/ReadVariableOpҐ)squeeze_batch_dims/BiasAdd/ReadVariableOpН
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                2
Pad/paddingsj
PadPadinputsPad/paddings:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dim†
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv1d/ExpandDimsЄ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЈ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1f
conv1d/ShapeShapeconv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
conv1d/ShapeВ
conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv1d/strided_slice/stackП
conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2
conv1d/strided_slice/stack_1Ж
conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv1d/strided_slice/stack_2К
conv1d/strided_sliceStridedSliceconv1d/Shape:output:0#conv1d/strided_slice/stack:output:0%conv1d/strided_slice/stack_1:output:0%conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
conv1d/strided_sliceЕ
conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"€€€€         2
conv1d/Reshape/shape†
conv1d/ReshapeReshapeconv1d/ExpandDims:output:0conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv1d/Reshape¬
conv1d/Conv2DConv2Dconv1d/Reshape:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
2
conv1d/Conv2DЕ
conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2
conv1d/concat/values_1s
conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
conv1d/concat/axisµ
conv1d/concatConcatV2conv1d/strided_slice:output:0conv1d/concat/values_1:output:0conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv1d/concatЭ
conv1d/Reshape_1Reshapeconv1d/Conv2D:output:0conv1d/concat:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv1d/Reshape_1†
conv1d/SqueezeSqueezeconv1d/Reshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€2
conv1d/Squeeze{
squeeze_batch_dims/ShapeShapeconv1d/Squeeze:output:0*
T0*
_output_shapes
:2
squeeze_batch_dims/ShapeЪ
&squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&squeeze_batch_dims/strided_slice/stackІ
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2*
(squeeze_batch_dims/strided_slice/stack_1Ю
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2“
 squeeze_batch_dims/strided_sliceStridedSlice!squeeze_batch_dims/Shape:output:0/squeeze_batch_dims/strided_slice/stack:output:01squeeze_batch_dims/strided_slice/stack_1:output:01squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 squeeze_batch_dims/strided_sliceЩ
 squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2"
 squeeze_batch_dims/Reshape/shapeљ
squeeze_batch_dims/ReshapeReshapeconv1d/Squeeze:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/Reshape≈
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp2squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp—
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/BiasAddЩ
"squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"squeeze_batch_dims/concat/values_1Л
squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2 
squeeze_batch_dims/concat/axisс
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat 
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/Reshape_1“
IdentityIdentity%squeeze_batch_dims/Reshape_1:output:0#^conv1d/ExpandDims_1/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ш
Л
kpulowglns_while_cond_13025722
.kpulowglns_while_kpulowglns_while_loop_counter8
4kpulowglns_while_kpulowglns_while_maximum_iterations 
kpulowglns_while_placeholder"
kpulowglns_while_placeholder_1"
kpulowglns_while_placeholder_2"
kpulowglns_while_placeholder_34
0kpulowglns_while_less_kpulowglns_strided_slice_1K
Gkpulowglns_while_kpulowglns_while_cond_1302572___redundant_placeholder0K
Gkpulowglns_while_kpulowglns_while_cond_1302572___redundant_placeholder1K
Gkpulowglns_while_kpulowglns_while_cond_1302572___redundant_placeholder2K
Gkpulowglns_while_kpulowglns_while_cond_1302572___redundant_placeholder3K
Gkpulowglns_while_kpulowglns_while_cond_1302572___redundant_placeholder4K
Gkpulowglns_while_kpulowglns_while_cond_1302572___redundant_placeholder5K
Gkpulowglns_while_kpulowglns_while_cond_1302572___redundant_placeholder6
kpulowglns_while_identity
І
kpulowglns/while/LessLesskpulowglns_while_placeholder0kpulowglns_while_less_kpulowglns_strided_slice_1*
T0*
_output_shapes
: 2
kpulowglns/while/Less~
kpulowglns/while/IdentityIdentitykpulowglns/while/Less:z:0*
T0
*
_output_shapes
: 2
kpulowglns/while/Identity"?
kpulowglns_while_identity"kpulowglns/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ё
H
,__inference_xrqvvalojb_layer_call_fn_1303489

inputs
identityћ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_xrqvvalojb_layer_call_and_return_conditional_losses_13011992
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
р$
≠
G__inference_sequential_layer_call_and_return_conditional_losses_1301604

inputs(
xwuftghvfx_1301136: 
xwuftghvfx_1301138:(
gnnkxdqznz_1301181: 
gnnkxdqznz_1301183:%
kpulowglns_1301381:	А%
kpulowglns_1301383:	 А!
kpulowglns_1301385:	А 
kpulowglns_1301387:  
kpulowglns_1301389:  
kpulowglns_1301391: %
htheqsxgix_1301574:	 А%
htheqsxgix_1301576:	 А!
htheqsxgix_1301578:	А 
htheqsxgix_1301580:  
htheqsxgix_1301582:  
htheqsxgix_1301584: $
tgvgnagwib_1301598:  
tgvgnagwib_1301600:
identityИҐ"gnnkxdqznz/StatefulPartitionedCallҐ"htheqsxgix/StatefulPartitionedCallҐ"kpulowglns/StatefulPartitionedCallҐ"tgvgnagwib/StatefulPartitionedCallҐ"xwuftghvfx/StatefulPartitionedCallђ
"xwuftghvfx/StatefulPartitionedCallStatefulPartitionedCallinputsxwuftghvfx_1301136xwuftghvfx_1301138*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_xwuftghvfx_layer_call_and_return_conditional_losses_13011352$
"xwuftghvfx/StatefulPartitionedCall—
"gnnkxdqznz/StatefulPartitionedCallStatefulPartitionedCall+xwuftghvfx/StatefulPartitionedCall:output:0gnnkxdqznz_1301181gnnkxdqznz_1301183*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_gnnkxdqznz_layer_call_and_return_conditional_losses_13011802$
"gnnkxdqznz/StatefulPartitionedCallЗ
xrqvvalojb/PartitionedCallPartitionedCall+gnnkxdqznz/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_xrqvvalojb_layer_call_and_return_conditional_losses_13011992
xrqvvalojb/PartitionedCallЭ
"kpulowglns/StatefulPartitionedCallStatefulPartitionedCall#xrqvvalojb/PartitionedCall:output:0kpulowglns_1301381kpulowglns_1301383kpulowglns_1301385kpulowglns_1301387kpulowglns_1301389kpulowglns_1301391*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_kpulowglns_layer_call_and_return_conditional_losses_13013802$
"kpulowglns/StatefulPartitionedCall°
"htheqsxgix/StatefulPartitionedCallStatefulPartitionedCall+kpulowglns/StatefulPartitionedCall:output:0htheqsxgix_1301574htheqsxgix_1301576htheqsxgix_1301578htheqsxgix_1301580htheqsxgix_1301582htheqsxgix_1301584*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_13015732$
"htheqsxgix/StatefulPartitionedCall…
"tgvgnagwib/StatefulPartitionedCallStatefulPartitionedCall+htheqsxgix/StatefulPartitionedCall:output:0tgvgnagwib_1301598tgvgnagwib_1301600*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_tgvgnagwib_layer_call_and_return_conditional_losses_13015972$
"tgvgnagwib/StatefulPartitionedCallЄ
IdentityIdentity+tgvgnagwib/StatefulPartitionedCall:output:0#^gnnkxdqznz/StatefulPartitionedCall#^htheqsxgix/StatefulPartitionedCall#^kpulowglns/StatefulPartitionedCall#^tgvgnagwib/StatefulPartitionedCall#^xwuftghvfx/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 2H
"gnnkxdqznz/StatefulPartitionedCall"gnnkxdqznz/StatefulPartitionedCall2H
"htheqsxgix/StatefulPartitionedCall"htheqsxgix/StatefulPartitionedCall2H
"kpulowglns/StatefulPartitionedCall"kpulowglns/StatefulPartitionedCall2H
"tgvgnagwib/StatefulPartitionedCall"tgvgnagwib/StatefulPartitionedCall2H
"xwuftghvfx/StatefulPartitionedCall"xwuftghvfx/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Л

н
while_cond_1301750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1301750___redundant_placeholder05
1while_while_cond_1301750___redundant_placeholder15
1while_while_cond_1301750___redundant_placeholder25
1while_while_cond_1301750___redundant_placeholder35
1while_while_cond_1301750___redundant_placeholder45
1while_while_cond_1301750___redundant_placeholder55
1while_while_cond_1301750___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
з)
“
while_body_1300440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_tivuqvlrxj_1300464_0:	 А-
while_tivuqvlrxj_1300466_0:	 А)
while_tivuqvlrxj_1300468_0:	А(
while_tivuqvlrxj_1300470_0: (
while_tivuqvlrxj_1300472_0: (
while_tivuqvlrxj_1300474_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_tivuqvlrxj_1300464:	 А+
while_tivuqvlrxj_1300466:	 А'
while_tivuqvlrxj_1300468:	А&
while_tivuqvlrxj_1300470: &
while_tivuqvlrxj_1300472: &
while_tivuqvlrxj_1300474: ИҐ(while/tivuqvlrxj/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemґ
(while/tivuqvlrxj/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_tivuqvlrxj_1300464_0while_tivuqvlrxj_1300466_0while_tivuqvlrxj_1300468_0while_tivuqvlrxj_1300470_0while_tivuqvlrxj_1300472_0while_tivuqvlrxj_1300474_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_13004202*
(while/tivuqvlrxj/StatefulPartitionedCallх
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/tivuqvlrxj/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Й
while/IdentityIdentitywhile/add_1:z:0)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ј
while/Identity_4Identity1while/tivuqvlrxj/StatefulPartitionedCall:output:1)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ј
while/Identity_5Identity1while/tivuqvlrxj/StatefulPartitionedCall:output:2)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"6
while_tivuqvlrxj_1300464while_tivuqvlrxj_1300464_0"6
while_tivuqvlrxj_1300466while_tivuqvlrxj_1300466_0"6
while_tivuqvlrxj_1300468while_tivuqvlrxj_1300468_0"6
while_tivuqvlrxj_1300470while_tivuqvlrxj_1300470_0"6
while_tivuqvlrxj_1300472while_tivuqvlrxj_1300472_0"6
while_tivuqvlrxj_1300474while_tivuqvlrxj_1300474_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2T
(while/tivuqvlrxj/StatefulPartitionedCall(while/tivuqvlrxj/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
№h
З
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304637
inputs_0<
)tivuqvlrxj_matmul_readvariableop_resource:	 А>
+tivuqvlrxj_matmul_1_readvariableop_resource:	 А9
*tivuqvlrxj_biasadd_readvariableop_resource:	А0
"tivuqvlrxj_readvariableop_resource: 2
$tivuqvlrxj_readvariableop_1_resource: 2
$tivuqvlrxj_readvariableop_2_resource: 
identityИҐ!tivuqvlrxj/BiasAdd/ReadVariableOpҐ tivuqvlrxj/MatMul/ReadVariableOpҐ"tivuqvlrxj/MatMul_1/ReadVariableOpҐtivuqvlrxj/ReadVariableOpҐtivuqvlrxj/ReadVariableOp_1Ґtivuqvlrxj/ReadVariableOp_2ҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2ѓ
 tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp)tivuqvlrxj_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 tivuqvlrxj/MatMul/ReadVariableOpІ
tivuqvlrxj/MatMulMatMulstrided_slice_2:output:0(tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMulµ
"tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp+tivuqvlrxj_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"tivuqvlrxj/MatMul_1/ReadVariableOp£
tivuqvlrxj/MatMul_1MatMulzeros:output:0*tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMul_1Ш
tivuqvlrxj/addAddV2tivuqvlrxj/MatMul:product:0tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/addЃ
!tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp*tivuqvlrxj_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!tivuqvlrxj/BiasAdd/ReadVariableOp•
tivuqvlrxj/BiasAddBiasAddtivuqvlrxj/add:z:0)tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/BiasAddz
tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
tivuqvlrxj/split/split_dimл
tivuqvlrxj/splitSplit#tivuqvlrxj/split/split_dim:output:0tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
tivuqvlrxj/splitХ
tivuqvlrxj/ReadVariableOpReadVariableOp"tivuqvlrxj_readvariableop_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOpО
tivuqvlrxj/mulMul!tivuqvlrxj/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mulО
tivuqvlrxj/add_1AddV2tivuqvlrxj/split:output:0tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_1{
tivuqvlrxj/SigmoidSigmoidtivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/SigmoidЫ
tivuqvlrxj/ReadVariableOp_1ReadVariableOp$tivuqvlrxj_readvariableop_1_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_1Ф
tivuqvlrxj/mul_1Mul#tivuqvlrxj/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_1Р
tivuqvlrxj/add_2AddV2tivuqvlrxj/split:output:1tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_2
tivuqvlrxj/Sigmoid_1Sigmoidtivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_1Й
tivuqvlrxj/mul_2Multivuqvlrxj/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_2w
tivuqvlrxj/TanhTanhtivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/TanhК
tivuqvlrxj/mul_3Multivuqvlrxj/Sigmoid:y:0tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_3Л
tivuqvlrxj/add_3AddV2tivuqvlrxj/mul_2:z:0tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_3Ы
tivuqvlrxj/ReadVariableOp_2ReadVariableOp$tivuqvlrxj_readvariableop_2_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_2Ш
tivuqvlrxj/mul_4Mul#tivuqvlrxj/ReadVariableOp_2:value:0tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_4Р
tivuqvlrxj/add_4AddV2tivuqvlrxj/split:output:3tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_4
tivuqvlrxj/Sigmoid_2Sigmoidtivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_2v
tivuqvlrxj/Tanh_1Tanhtivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Tanh_1О
tivuqvlrxj/mul_5Multivuqvlrxj/Sigmoid_2:y:0tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)tivuqvlrxj_matmul_readvariableop_resource+tivuqvlrxj_matmul_1_readvariableop_resource*tivuqvlrxj_biasadd_readvariableop_resource"tivuqvlrxj_readvariableop_resource$tivuqvlrxj_readvariableop_1_resource$tivuqvlrxj_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1304536*
condR
while_cond_1304535*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1Є
IdentityIdentitystrided_slice_3:output:0"^tivuqvlrxj/BiasAdd/ReadVariableOp!^tivuqvlrxj/MatMul/ReadVariableOp#^tivuqvlrxj/MatMul_1/ReadVariableOp^tivuqvlrxj/ReadVariableOp^tivuqvlrxj/ReadVariableOp_1^tivuqvlrxj/ReadVariableOp_2^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ : : : : : : 2F
!tivuqvlrxj/BiasAdd/ReadVariableOp!tivuqvlrxj/BiasAdd/ReadVariableOp2D
 tivuqvlrxj/MatMul/ReadVariableOp tivuqvlrxj/MatMul/ReadVariableOp2H
"tivuqvlrxj/MatMul_1/ReadVariableOp"tivuqvlrxj/MatMul_1/ReadVariableOp26
tivuqvlrxj/ReadVariableOptivuqvlrxj/ReadVariableOp2:
tivuqvlrxj/ReadVariableOp_1tivuqvlrxj/ReadVariableOp_12:
tivuqvlrxj/ReadVariableOp_2tivuqvlrxj/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
є'
µ
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_1305172

inputs
states_0
states_11
matmul_readvariableop_resource:	А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
splitt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpe
mulMulReadVariableOp:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5я
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityг

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1г

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€:€€€€€€€€€ :€€€€€€€€€ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
©0
Љ
G__inference_xwuftghvfx_layer_call_and_return_conditional_losses_1301135

inputsA
+conv1d_expanddims_1_readvariableop_resource:@
2squeeze_batch_dims_biasadd_readvariableop_resource:
identityИҐ"conv1d/ExpandDims_1/ReadVariableOpҐ)squeeze_batch_dims/BiasAdd/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dimЪ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv1d/ExpandDimsЄ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЈ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1f
conv1d/ShapeShapeconv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
conv1d/ShapeВ
conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv1d/strided_slice/stackП
conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2
conv1d/strided_slice/stack_1Ж
conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv1d/strided_slice/stack_2К
conv1d/strided_sliceStridedSliceconv1d/Shape:output:0#conv1d/strided_slice/stack:output:0%conv1d/strided_slice/stack_1:output:0%conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
conv1d/strided_sliceЕ
conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"€€€€         2
conv1d/Reshape/shape†
conv1d/ReshapeReshapeconv1d/ExpandDims:output:0conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv1d/Reshape¬
conv1d/Conv2DConv2Dconv1d/Reshape:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
2
conv1d/Conv2DЕ
conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2
conv1d/concat/values_1s
conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
conv1d/concat/axisµ
conv1d/concatConcatV2conv1d/strided_slice:output:0conv1d/concat/values_1:output:0conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv1d/concatЭ
conv1d/Reshape_1Reshapeconv1d/Conv2D:output:0conv1d/concat:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv1d/Reshape_1†
conv1d/SqueezeSqueezeconv1d/Reshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€2
conv1d/Squeeze{
squeeze_batch_dims/ShapeShapeconv1d/Squeeze:output:0*
T0*
_output_shapes
:2
squeeze_batch_dims/ShapeЪ
&squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&squeeze_batch_dims/strided_slice/stackІ
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2*
(squeeze_batch_dims/strided_slice/stack_1Ю
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2“
 squeeze_batch_dims/strided_sliceStridedSlice!squeeze_batch_dims/Shape:output:0/squeeze_batch_dims/strided_slice/stack:output:01squeeze_batch_dims/strided_slice/stack_1:output:01squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 squeeze_batch_dims/strided_sliceЩ
 squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2"
 squeeze_batch_dims/Reshape/shapeљ
squeeze_batch_dims/ReshapeReshapeconv1d/Squeeze:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/Reshape≈
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp2squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp—
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/BiasAddЩ
"squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"squeeze_batch_dims/concat/values_1Л
squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2 
squeeze_batch_dims/concat/axisс
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat 
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/Reshape_1“
IdentityIdentity%squeeze_batch_dims/Reshape_1:output:0#^conv1d/ExpandDims_1/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ъ
c
G__inference_xrqvvalojb_layer_call_and_return_conditional_losses_1301199

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2†
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
є'
µ
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_1305262

inputs
states_0
states_11
matmul_readvariableop_resource:	 А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
splitt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpe
mulMulReadVariableOp:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5я
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityг

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1г

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
Ш
Л
htheqsxgix_while_cond_13027482
.htheqsxgix_while_htheqsxgix_while_loop_counter8
4htheqsxgix_while_htheqsxgix_while_maximum_iterations 
htheqsxgix_while_placeholder"
htheqsxgix_while_placeholder_1"
htheqsxgix_while_placeholder_2"
htheqsxgix_while_placeholder_34
0htheqsxgix_while_less_htheqsxgix_strided_slice_1K
Ghtheqsxgix_while_htheqsxgix_while_cond_1302748___redundant_placeholder0K
Ghtheqsxgix_while_htheqsxgix_while_cond_1302748___redundant_placeholder1K
Ghtheqsxgix_while_htheqsxgix_while_cond_1302748___redundant_placeholder2K
Ghtheqsxgix_while_htheqsxgix_while_cond_1302748___redundant_placeholder3K
Ghtheqsxgix_while_htheqsxgix_while_cond_1302748___redundant_placeholder4K
Ghtheqsxgix_while_htheqsxgix_while_cond_1302748___redundant_placeholder5K
Ghtheqsxgix_while_htheqsxgix_while_cond_1302748___redundant_placeholder6
htheqsxgix_while_identity
І
htheqsxgix/while/LessLesshtheqsxgix_while_placeholder0htheqsxgix_while_less_htheqsxgix_strided_slice_1*
T0*
_output_shapes
: 2
htheqsxgix/while/Less~
htheqsxgix/while/IdentityIdentityhtheqsxgix/while/Less:z:0*
T0
*
_output_shapes
: 2
htheqsxgix/while/Identity"?
htheqsxgix_while_identity"htheqsxgix/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Б
ј
,__inference_tivuqvlrxj_layer_call_fn_1305329

inputs
states_0
states_1
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity

identity_1

identity_2ИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_13004202
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
№Ж
П
(sequential_htheqsxgix_while_body_1299468H
Dsequential_htheqsxgix_while_sequential_htheqsxgix_while_loop_counterN
Jsequential_htheqsxgix_while_sequential_htheqsxgix_while_maximum_iterations+
'sequential_htheqsxgix_while_placeholder-
)sequential_htheqsxgix_while_placeholder_1-
)sequential_htheqsxgix_while_placeholder_2-
)sequential_htheqsxgix_while_placeholder_3G
Csequential_htheqsxgix_while_sequential_htheqsxgix_strided_slice_1_0Г
sequential_htheqsxgix_while_tensorarrayv2read_tensorlistgetitem_sequential_htheqsxgix_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource_0:	 А\
Isequential_htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource_0:	 АW
Hsequential_htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource_0:	АN
@sequential_htheqsxgix_while_tivuqvlrxj_readvariableop_resource_0: P
Bsequential_htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource_0: P
Bsequential_htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource_0: (
$sequential_htheqsxgix_while_identity*
&sequential_htheqsxgix_while_identity_1*
&sequential_htheqsxgix_while_identity_2*
&sequential_htheqsxgix_while_identity_3*
&sequential_htheqsxgix_while_identity_4*
&sequential_htheqsxgix_while_identity_5E
Asequential_htheqsxgix_while_sequential_htheqsxgix_strided_slice_1Б
}sequential_htheqsxgix_while_tensorarrayv2read_tensorlistgetitem_sequential_htheqsxgix_tensorarrayunstack_tensorlistfromtensorX
Esequential_htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource:	 АZ
Gsequential_htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource:	 АU
Fsequential_htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource:	АL
>sequential_htheqsxgix_while_tivuqvlrxj_readvariableop_resource: N
@sequential_htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource: N
@sequential_htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource: ИҐ=sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOpҐ<sequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOpҐ>sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOpҐ5sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOpҐ7sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1Ґ7sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2п
Msequential/htheqsxgix/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2O
Msequential/htheqsxgix/while/TensorArrayV2Read/TensorListGetItem/element_shape„
?sequential/htheqsxgix/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_htheqsxgix_while_tensorarrayv2read_tensorlistgetitem_sequential_htheqsxgix_tensorarrayunstack_tensorlistfromtensor_0'sequential_htheqsxgix_while_placeholderVsequential/htheqsxgix/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02A
?sequential/htheqsxgix/while/TensorArrayV2Read/TensorListGetItemЕ
<sequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOpGsequential_htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02>
<sequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp©
-sequential/htheqsxgix/while/tivuqvlrxj/MatMulMatMulFsequential/htheqsxgix/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2/
-sequential/htheqsxgix/while/tivuqvlrxj/MatMulЛ
>sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOpIsequential_htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02@
>sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOpТ
/sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1MatMul)sequential_htheqsxgix_while_placeholder_2Fsequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А21
/sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1И
*sequential/htheqsxgix/while/tivuqvlrxj/addAddV27sequential/htheqsxgix/while/tivuqvlrxj/MatMul:product:09sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential/htheqsxgix/while/tivuqvlrxj/addД
=sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOpHsequential_htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOpХ
.sequential/htheqsxgix/while/tivuqvlrxj/BiasAddBiasAdd.sequential/htheqsxgix/while/tivuqvlrxj/add:z:0Esequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А20
.sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd≤
6sequential/htheqsxgix/while/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/htheqsxgix/while/tivuqvlrxj/split/split_dimџ
,sequential/htheqsxgix/while/tivuqvlrxj/splitSplit?sequential/htheqsxgix/while/tivuqvlrxj/split/split_dim:output:07sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2.
,sequential/htheqsxgix/while/tivuqvlrxj/splitл
5sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOpReadVariableOp@sequential_htheqsxgix_while_tivuqvlrxj_readvariableop_resource_0*
_output_shapes
: *
dtype027
5sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOpы
*sequential/htheqsxgix/while/tivuqvlrxj/mulMul=sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp:value:0)sequential_htheqsxgix_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential/htheqsxgix/while/tivuqvlrxj/mulю
,sequential/htheqsxgix/while/tivuqvlrxj/add_1AddV25sequential/htheqsxgix/while/tivuqvlrxj/split:output:0.sequential/htheqsxgix/while/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/htheqsxgix/while/tivuqvlrxj/add_1ѕ
.sequential/htheqsxgix/while/tivuqvlrxj/SigmoidSigmoid0sequential/htheqsxgix/while/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 20
.sequential/htheqsxgix/while/tivuqvlrxj/Sigmoidс
7sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1ReadVariableOpBsequential_htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource_0*
_output_shapes
: *
dtype029
7sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1Б
,sequential/htheqsxgix/while/tivuqvlrxj/mul_1Mul?sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1:value:0)sequential_htheqsxgix_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/htheqsxgix/while/tivuqvlrxj/mul_1А
,sequential/htheqsxgix/while/tivuqvlrxj/add_2AddV25sequential/htheqsxgix/while/tivuqvlrxj/split:output:10sequential/htheqsxgix/while/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/htheqsxgix/while/tivuqvlrxj/add_2”
0sequential/htheqsxgix/while/tivuqvlrxj/Sigmoid_1Sigmoid0sequential/htheqsxgix/while/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0sequential/htheqsxgix/while/tivuqvlrxj/Sigmoid_1ц
,sequential/htheqsxgix/while/tivuqvlrxj/mul_2Mul4sequential/htheqsxgix/while/tivuqvlrxj/Sigmoid_1:y:0)sequential_htheqsxgix_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/htheqsxgix/while/tivuqvlrxj/mul_2Ћ
+sequential/htheqsxgix/while/tivuqvlrxj/TanhTanh5sequential/htheqsxgix/while/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2-
+sequential/htheqsxgix/while/tivuqvlrxj/Tanhъ
,sequential/htheqsxgix/while/tivuqvlrxj/mul_3Mul2sequential/htheqsxgix/while/tivuqvlrxj/Sigmoid:y:0/sequential/htheqsxgix/while/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/htheqsxgix/while/tivuqvlrxj/mul_3ы
,sequential/htheqsxgix/while/tivuqvlrxj/add_3AddV20sequential/htheqsxgix/while/tivuqvlrxj/mul_2:z:00sequential/htheqsxgix/while/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/htheqsxgix/while/tivuqvlrxj/add_3с
7sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2ReadVariableOpBsequential_htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource_0*
_output_shapes
: *
dtype029
7sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2И
,sequential/htheqsxgix/while/tivuqvlrxj/mul_4Mul?sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2:value:00sequential/htheqsxgix/while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/htheqsxgix/while/tivuqvlrxj/mul_4А
,sequential/htheqsxgix/while/tivuqvlrxj/add_4AddV25sequential/htheqsxgix/while/tivuqvlrxj/split:output:30sequential/htheqsxgix/while/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/htheqsxgix/while/tivuqvlrxj/add_4”
0sequential/htheqsxgix/while/tivuqvlrxj/Sigmoid_2Sigmoid0sequential/htheqsxgix/while/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0sequential/htheqsxgix/while/tivuqvlrxj/Sigmoid_2 
-sequential/htheqsxgix/while/tivuqvlrxj/Tanh_1Tanh0sequential/htheqsxgix/while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2/
-sequential/htheqsxgix/while/tivuqvlrxj/Tanh_1ю
,sequential/htheqsxgix/while/tivuqvlrxj/mul_5Mul4sequential/htheqsxgix/while/tivuqvlrxj/Sigmoid_2:y:01sequential/htheqsxgix/while/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/htheqsxgix/while/tivuqvlrxj/mul_5ћ
@sequential/htheqsxgix/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_htheqsxgix_while_placeholder_1'sequential_htheqsxgix_while_placeholder0sequential/htheqsxgix/while/tivuqvlrxj/mul_5:z:0*
_output_shapes
: *
element_dtype02B
@sequential/htheqsxgix/while/TensorArrayV2Write/TensorListSetItemИ
!sequential/htheqsxgix/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/htheqsxgix/while/add/yЅ
sequential/htheqsxgix/while/addAddV2'sequential_htheqsxgix_while_placeholder*sequential/htheqsxgix/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/htheqsxgix/while/addМ
#sequential/htheqsxgix/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/htheqsxgix/while/add_1/yд
!sequential/htheqsxgix/while/add_1AddV2Dsequential_htheqsxgix_while_sequential_htheqsxgix_while_loop_counter,sequential/htheqsxgix/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/htheqsxgix/while/add_1М
$sequential/htheqsxgix/while/IdentityIdentity%sequential/htheqsxgix/while/add_1:z:0>^sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp=^sequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp?^sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp6^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp8^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_18^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2&
$sequential/htheqsxgix/while/Identityµ
&sequential/htheqsxgix/while/Identity_1IdentityJsequential_htheqsxgix_while_sequential_htheqsxgix_while_maximum_iterations>^sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp=^sequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp?^sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp6^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp8^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_18^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/htheqsxgix/while/Identity_1О
&sequential/htheqsxgix/while/Identity_2Identity#sequential/htheqsxgix/while/add:z:0>^sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp=^sequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp?^sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp6^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp8^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_18^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/htheqsxgix/while/Identity_2ї
&sequential/htheqsxgix/while/Identity_3IdentityPsequential/htheqsxgix/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp=^sequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp?^sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp6^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp8^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_18^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/htheqsxgix/while/Identity_3ђ
&sequential/htheqsxgix/while/Identity_4Identity0sequential/htheqsxgix/while/tivuqvlrxj/mul_5:z:0>^sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp=^sequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp?^sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp6^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp8^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_18^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/htheqsxgix/while/Identity_4ђ
&sequential/htheqsxgix/while/Identity_5Identity0sequential/htheqsxgix/while/tivuqvlrxj/add_3:z:0>^sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp=^sequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp?^sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp6^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp8^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_18^sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/htheqsxgix/while/Identity_5"U
$sequential_htheqsxgix_while_identity-sequential/htheqsxgix/while/Identity:output:0"Y
&sequential_htheqsxgix_while_identity_1/sequential/htheqsxgix/while/Identity_1:output:0"Y
&sequential_htheqsxgix_while_identity_2/sequential/htheqsxgix/while/Identity_2:output:0"Y
&sequential_htheqsxgix_while_identity_3/sequential/htheqsxgix/while/Identity_3:output:0"Y
&sequential_htheqsxgix_while_identity_4/sequential/htheqsxgix/while/Identity_4:output:0"Y
&sequential_htheqsxgix_while_identity_5/sequential/htheqsxgix/while/Identity_5:output:0"И
Asequential_htheqsxgix_while_sequential_htheqsxgix_strided_slice_1Csequential_htheqsxgix_while_sequential_htheqsxgix_strided_slice_1_0"А
}sequential_htheqsxgix_while_tensorarrayv2read_tensorlistgetitem_sequential_htheqsxgix_tensorarrayunstack_tensorlistfromtensorsequential_htheqsxgix_while_tensorarrayv2read_tensorlistgetitem_sequential_htheqsxgix_tensorarrayunstack_tensorlistfromtensor_0"Т
Fsequential_htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resourceHsequential_htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource_0"Ф
Gsequential_htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resourceIsequential_htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource_0"Р
Esequential_htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resourceGsequential_htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource_0"Ж
@sequential_htheqsxgix_while_tivuqvlrxj_readvariableop_1_resourceBsequential_htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource_0"Ж
@sequential_htheqsxgix_while_tivuqvlrxj_readvariableop_2_resourceBsequential_htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource_0"В
>sequential_htheqsxgix_while_tivuqvlrxj_readvariableop_resource@sequential_htheqsxgix_while_tivuqvlrxj_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2~
=sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp=sequential/htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2|
<sequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp<sequential/htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp2А
>sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp>sequential/htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp2n
5sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp5sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp2r
7sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_17sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_12r
7sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_27sequential/htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
аY
З
while_body_1303748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_fddnbxfcbs_matmul_readvariableop_resource_0:	АF
3while_fddnbxfcbs_matmul_1_readvariableop_resource_0:	 АA
2while_fddnbxfcbs_biasadd_readvariableop_resource_0:	А8
*while_fddnbxfcbs_readvariableop_resource_0: :
,while_fddnbxfcbs_readvariableop_1_resource_0: :
,while_fddnbxfcbs_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_fddnbxfcbs_matmul_readvariableop_resource:	АD
1while_fddnbxfcbs_matmul_1_readvariableop_resource:	 А?
0while_fddnbxfcbs_biasadd_readvariableop_resource:	А6
(while_fddnbxfcbs_readvariableop_resource: 8
*while_fddnbxfcbs_readvariableop_1_resource: 8
*while_fddnbxfcbs_readvariableop_2_resource: ИҐ'while/fddnbxfcbs/BiasAdd/ReadVariableOpҐ&while/fddnbxfcbs/MatMul/ReadVariableOpҐ(while/fddnbxfcbs/MatMul_1/ReadVariableOpҐwhile/fddnbxfcbs/ReadVariableOpҐ!while/fddnbxfcbs/ReadVariableOp_1Ґ!while/fddnbxfcbs/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp1while_fddnbxfcbs_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/fddnbxfcbs/MatMul/ReadVariableOp—
while/fddnbxfcbs/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul…
(while/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp3while_fddnbxfcbs_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/fddnbxfcbs/MatMul_1/ReadVariableOpЇ
while/fddnbxfcbs/MatMul_1MatMulwhile_placeholder_20while/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul_1∞
while/fddnbxfcbs/addAddV2!while/fddnbxfcbs/MatMul:product:0#while/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/add¬
'while/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp2while_fddnbxfcbs_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/fddnbxfcbs/BiasAdd/ReadVariableOpљ
while/fddnbxfcbs/BiasAddBiasAddwhile/fddnbxfcbs/add:z:0/while/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/BiasAddЖ
 while/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/fddnbxfcbs/split/split_dimГ
while/fddnbxfcbs/splitSplit)while/fddnbxfcbs/split/split_dim:output:0!while/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/fddnbxfcbs/split©
while/fddnbxfcbs/ReadVariableOpReadVariableOp*while_fddnbxfcbs_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/fddnbxfcbs/ReadVariableOp£
while/fddnbxfcbs/mulMul'while/fddnbxfcbs/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul¶
while/fddnbxfcbs/add_1AddV2while/fddnbxfcbs/split:output:0while/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_1Н
while/fddnbxfcbs/SigmoidSigmoidwhile/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoidѓ
!while/fddnbxfcbs/ReadVariableOp_1ReadVariableOp,while_fddnbxfcbs_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_1©
while/fddnbxfcbs/mul_1Mul)while/fddnbxfcbs/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_1®
while/fddnbxfcbs/add_2AddV2while/fddnbxfcbs/split:output:1while/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_2С
while/fddnbxfcbs/Sigmoid_1Sigmoidwhile/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_1Ю
while/fddnbxfcbs/mul_2Mulwhile/fddnbxfcbs/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_2Й
while/fddnbxfcbs/TanhTanhwhile/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/TanhҐ
while/fddnbxfcbs/mul_3Mulwhile/fddnbxfcbs/Sigmoid:y:0while/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_3£
while/fddnbxfcbs/add_3AddV2while/fddnbxfcbs/mul_2:z:0while/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_3ѓ
!while/fddnbxfcbs/ReadVariableOp_2ReadVariableOp,while_fddnbxfcbs_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_2∞
while/fddnbxfcbs/mul_4Mul)while/fddnbxfcbs/ReadVariableOp_2:value:0while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_4®
while/fddnbxfcbs/add_4AddV2while/fddnbxfcbs/split:output:3while/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_4С
while/fddnbxfcbs/Sigmoid_2Sigmoidwhile/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_2И
while/fddnbxfcbs/Tanh_1Tanhwhile/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Tanh_1¶
while/fddnbxfcbs/mul_5Mulwhile/fddnbxfcbs/Sigmoid_2:y:0while/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/fddnbxfcbs/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/fddnbxfcbs/mul_5:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/fddnbxfcbs/add_3:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5"f
0while_fddnbxfcbs_biasadd_readvariableop_resource2while_fddnbxfcbs_biasadd_readvariableop_resource_0"h
1while_fddnbxfcbs_matmul_1_readvariableop_resource3while_fddnbxfcbs_matmul_1_readvariableop_resource_0"d
/while_fddnbxfcbs_matmul_readvariableop_resource1while_fddnbxfcbs_matmul_readvariableop_resource_0"Z
*while_fddnbxfcbs_readvariableop_1_resource,while_fddnbxfcbs_readvariableop_1_resource_0"Z
*while_fddnbxfcbs_readvariableop_2_resource,while_fddnbxfcbs_readvariableop_2_resource_0"V
(while_fddnbxfcbs_readvariableop_resource*while_fddnbxfcbs_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/fddnbxfcbs/BiasAdd/ReadVariableOp'while/fddnbxfcbs/BiasAdd/ReadVariableOp2P
&while/fddnbxfcbs/MatMul/ReadVariableOp&while/fddnbxfcbs/MatMul/ReadVariableOp2T
(while/fddnbxfcbs/MatMul_1/ReadVariableOp(while/fddnbxfcbs/MatMul_1/ReadVariableOp2B
while/fddnbxfcbs/ReadVariableOpwhile/fddnbxfcbs/ReadVariableOp2F
!while/fddnbxfcbs/ReadVariableOp_1!while/fddnbxfcbs/ReadVariableOp_12F
!while/fddnbxfcbs/ReadVariableOp_2!while/fddnbxfcbs/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
”	
ш
G__inference_tgvgnagwib_layer_call_and_return_conditional_losses_1305075

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
°h
Е
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1301380

inputs<
)fddnbxfcbs_matmul_readvariableop_resource:	А>
+fddnbxfcbs_matmul_1_readvariableop_resource:	 А9
*fddnbxfcbs_biasadd_readvariableop_resource:	А0
"fddnbxfcbs_readvariableop_resource: 2
$fddnbxfcbs_readvariableop_1_resource: 2
$fddnbxfcbs_readvariableop_2_resource: 
identityИҐ!fddnbxfcbs/BiasAdd/ReadVariableOpҐ fddnbxfcbs/MatMul/ReadVariableOpҐ"fddnbxfcbs/MatMul_1/ReadVariableOpҐfddnbxfcbs/ReadVariableOpҐfddnbxfcbs/ReadVariableOp_1Ґfddnbxfcbs/ReadVariableOp_2ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2ѓ
 fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp)fddnbxfcbs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 fddnbxfcbs/MatMul/ReadVariableOpІ
fddnbxfcbs/MatMulMatMulstrided_slice_2:output:0(fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMulµ
"fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp+fddnbxfcbs_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"fddnbxfcbs/MatMul_1/ReadVariableOp£
fddnbxfcbs/MatMul_1MatMulzeros:output:0*fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMul_1Ш
fddnbxfcbs/addAddV2fddnbxfcbs/MatMul:product:0fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/addЃ
!fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp*fddnbxfcbs_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!fddnbxfcbs/BiasAdd/ReadVariableOp•
fddnbxfcbs/BiasAddBiasAddfddnbxfcbs/add:z:0)fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/BiasAddz
fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
fddnbxfcbs/split/split_dimл
fddnbxfcbs/splitSplit#fddnbxfcbs/split/split_dim:output:0fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
fddnbxfcbs/splitХ
fddnbxfcbs/ReadVariableOpReadVariableOp"fddnbxfcbs_readvariableop_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOpО
fddnbxfcbs/mulMul!fddnbxfcbs/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mulО
fddnbxfcbs/add_1AddV2fddnbxfcbs/split:output:0fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_1{
fddnbxfcbs/SigmoidSigmoidfddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/SigmoidЫ
fddnbxfcbs/ReadVariableOp_1ReadVariableOp$fddnbxfcbs_readvariableop_1_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_1Ф
fddnbxfcbs/mul_1Mul#fddnbxfcbs/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_1Р
fddnbxfcbs/add_2AddV2fddnbxfcbs/split:output:1fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_2
fddnbxfcbs/Sigmoid_1Sigmoidfddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_1Й
fddnbxfcbs/mul_2Mulfddnbxfcbs/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_2w
fddnbxfcbs/TanhTanhfddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/TanhК
fddnbxfcbs/mul_3Mulfddnbxfcbs/Sigmoid:y:0fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_3Л
fddnbxfcbs/add_3AddV2fddnbxfcbs/mul_2:z:0fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_3Ы
fddnbxfcbs/ReadVariableOp_2ReadVariableOp$fddnbxfcbs_readvariableop_2_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_2Ш
fddnbxfcbs/mul_4Mul#fddnbxfcbs/ReadVariableOp_2:value:0fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_4Р
fddnbxfcbs/add_4AddV2fddnbxfcbs/split:output:3fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_4
fddnbxfcbs/Sigmoid_2Sigmoidfddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_2v
fddnbxfcbs/Tanh_1Tanhfddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Tanh_1О
fddnbxfcbs/mul_5Mulfddnbxfcbs/Sigmoid_2:y:0fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)fddnbxfcbs_matmul_readvariableop_resource+fddnbxfcbs_matmul_1_readvariableop_resource*fddnbxfcbs_biasadd_readvariableop_resource"fddnbxfcbs_readvariableop_resource$fddnbxfcbs_readvariableop_1_resource$fddnbxfcbs_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1301279*
condR
while_cond_1301278*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1≥
IdentityIdentitytranspose_1:y:0"^fddnbxfcbs/BiasAdd/ReadVariableOp!^fddnbxfcbs/MatMul/ReadVariableOp#^fddnbxfcbs/MatMul_1/ReadVariableOp^fddnbxfcbs/ReadVariableOp^fddnbxfcbs/ReadVariableOp_1^fddnbxfcbs/ReadVariableOp_2^while*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2F
!fddnbxfcbs/BiasAdd/ReadVariableOp!fddnbxfcbs/BiasAdd/ReadVariableOp2D
 fddnbxfcbs/MatMul/ReadVariableOp fddnbxfcbs/MatMul/ReadVariableOp2H
"fddnbxfcbs/MatMul_1/ReadVariableOp"fddnbxfcbs/MatMul_1/ReadVariableOp26
fddnbxfcbs/ReadVariableOpfddnbxfcbs/ReadVariableOp2:
fddnbxfcbs/ReadVariableOp_1fddnbxfcbs/ReadVariableOp_12:
fddnbxfcbs/ReadVariableOp_2fddnbxfcbs/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
±'
≥
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_1299849

inputs

states
states_11
matmul_readvariableop_resource:	А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
splitt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpe
mulMulReadVariableOp:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5я
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityг

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1г

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€:€€€€€€€€€ :€€€€€€€€€ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates
Яј
„
#__inference__traced_restore_1305643
file_prefix8
"assignvariableop_xwuftghvfx_kernel:0
"assignvariableop_1_xwuftghvfx_bias::
$assignvariableop_2_gnnkxdqznz_kernel:0
"assignvariableop_3_gnnkxdqznz_bias:6
$assignvariableop_4_tgvgnagwib_kernel: 0
"assignvariableop_5_tgvgnagwib_bias:)
assignvariableop_6_rmsprop_iter:	 *
 assignvariableop_7_rmsprop_decay: 2
(assignvariableop_8_rmsprop_learning_rate: -
#assignvariableop_9_rmsprop_momentum: )
assignvariableop_10_rmsprop_rho: C
0assignvariableop_11_kpulowglns_fddnbxfcbs_kernel:	АM
:assignvariableop_12_kpulowglns_fddnbxfcbs_recurrent_kernel:	 А=
.assignvariableop_13_kpulowglns_fddnbxfcbs_bias:	АS
Eassignvariableop_14_kpulowglns_fddnbxfcbs_input_gate_peephole_weights: T
Fassignvariableop_15_kpulowglns_fddnbxfcbs_forget_gate_peephole_weights: T
Fassignvariableop_16_kpulowglns_fddnbxfcbs_output_gate_peephole_weights: C
0assignvariableop_17_htheqsxgix_tivuqvlrxj_kernel:	 АM
:assignvariableop_18_htheqsxgix_tivuqvlrxj_recurrent_kernel:	 А=
.assignvariableop_19_htheqsxgix_tivuqvlrxj_bias:	АS
Eassignvariableop_20_htheqsxgix_tivuqvlrxj_input_gate_peephole_weights: T
Fassignvariableop_21_htheqsxgix_tivuqvlrxj_forget_gate_peephole_weights: T
Fassignvariableop_22_htheqsxgix_tivuqvlrxj_output_gate_peephole_weights: #
assignvariableop_23_total: #
assignvariableop_24_count: G
1assignvariableop_25_rmsprop_xwuftghvfx_kernel_rms:=
/assignvariableop_26_rmsprop_xwuftghvfx_bias_rms:G
1assignvariableop_27_rmsprop_gnnkxdqznz_kernel_rms:=
/assignvariableop_28_rmsprop_gnnkxdqznz_bias_rms:C
1assignvariableop_29_rmsprop_tgvgnagwib_kernel_rms: =
/assignvariableop_30_rmsprop_tgvgnagwib_bias_rms:O
<assignvariableop_31_rmsprop_kpulowglns_fddnbxfcbs_kernel_rms:	АY
Fassignvariableop_32_rmsprop_kpulowglns_fddnbxfcbs_recurrent_kernel_rms:	 АI
:assignvariableop_33_rmsprop_kpulowglns_fddnbxfcbs_bias_rms:	А_
Qassignvariableop_34_rmsprop_kpulowglns_fddnbxfcbs_input_gate_peephole_weights_rms: `
Rassignvariableop_35_rmsprop_kpulowglns_fddnbxfcbs_forget_gate_peephole_weights_rms: `
Rassignvariableop_36_rmsprop_kpulowglns_fddnbxfcbs_output_gate_peephole_weights_rms: O
<assignvariableop_37_rmsprop_htheqsxgix_tivuqvlrxj_kernel_rms:	 АY
Fassignvariableop_38_rmsprop_htheqsxgix_tivuqvlrxj_recurrent_kernel_rms:	 АI
:assignvariableop_39_rmsprop_htheqsxgix_tivuqvlrxj_bias_rms:	А_
Qassignvariableop_40_rmsprop_htheqsxgix_tivuqvlrxj_input_gate_peephole_weights_rms: `
Rassignvariableop_41_rmsprop_htheqsxgix_tivuqvlrxj_forget_gate_peephole_weights_rms: `
Rassignvariableop_42_rmsprop_htheqsxgix_tivuqvlrxj_output_gate_peephole_weights_rms: 
identity_44ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9у
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*€
valueхBт,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/14/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/15/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesж
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesК
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*∆
_output_shapes≥
∞::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity°
AssignVariableOpAssignVariableOp"assignvariableop_xwuftghvfx_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1І
AssignVariableOp_1AssignVariableOp"assignvariableop_1_xwuftghvfx_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2©
AssignVariableOp_2AssignVariableOp$assignvariableop_2_gnnkxdqznz_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3І
AssignVariableOp_3AssignVariableOp"assignvariableop_3_gnnkxdqznz_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4©
AssignVariableOp_4AssignVariableOp$assignvariableop_4_tgvgnagwib_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5І
AssignVariableOp_5AssignVariableOp"assignvariableop_5_tgvgnagwib_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOpassignvariableop_6_rmsprop_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7•
AssignVariableOp_7AssignVariableOp assignvariableop_7_rmsprop_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8≠
AssignVariableOp_8AssignVariableOp(assignvariableop_8_rmsprop_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9®
AssignVariableOp_9AssignVariableOp#assignvariableop_9_rmsprop_momentumIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10І
AssignVariableOp_10AssignVariableOpassignvariableop_10_rmsprop_rhoIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Є
AssignVariableOp_11AssignVariableOp0assignvariableop_11_kpulowglns_fddnbxfcbs_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¬
AssignVariableOp_12AssignVariableOp:assignvariableop_12_kpulowglns_fddnbxfcbs_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13ґ
AssignVariableOp_13AssignVariableOp.assignvariableop_13_kpulowglns_fddnbxfcbs_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ќ
AssignVariableOp_14AssignVariableOpEassignvariableop_14_kpulowglns_fddnbxfcbs_input_gate_peephole_weightsIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15ќ
AssignVariableOp_15AssignVariableOpFassignvariableop_15_kpulowglns_fddnbxfcbs_forget_gate_peephole_weightsIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16ќ
AssignVariableOp_16AssignVariableOpFassignvariableop_16_kpulowglns_fddnbxfcbs_output_gate_peephole_weightsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Є
AssignVariableOp_17AssignVariableOp0assignvariableop_17_htheqsxgix_tivuqvlrxj_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¬
AssignVariableOp_18AssignVariableOp:assignvariableop_18_htheqsxgix_tivuqvlrxj_recurrent_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ґ
AssignVariableOp_19AssignVariableOp.assignvariableop_19_htheqsxgix_tivuqvlrxj_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ќ
AssignVariableOp_20AssignVariableOpEassignvariableop_20_htheqsxgix_tivuqvlrxj_input_gate_peephole_weightsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21ќ
AssignVariableOp_21AssignVariableOpFassignvariableop_21_htheqsxgix_tivuqvlrxj_forget_gate_peephole_weightsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22ќ
AssignVariableOp_22AssignVariableOpFassignvariableop_22_htheqsxgix_tivuqvlrxj_output_gate_peephole_weightsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23°
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25є
AssignVariableOp_25AssignVariableOp1assignvariableop_25_rmsprop_xwuftghvfx_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ј
AssignVariableOp_26AssignVariableOp/assignvariableop_26_rmsprop_xwuftghvfx_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27є
AssignVariableOp_27AssignVariableOp1assignvariableop_27_rmsprop_gnnkxdqznz_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ј
AssignVariableOp_28AssignVariableOp/assignvariableop_28_rmsprop_gnnkxdqznz_bias_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29є
AssignVariableOp_29AssignVariableOp1assignvariableop_29_rmsprop_tgvgnagwib_kernel_rmsIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ј
AssignVariableOp_30AssignVariableOp/assignvariableop_30_rmsprop_tgvgnagwib_bias_rmsIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31ƒ
AssignVariableOp_31AssignVariableOp<assignvariableop_31_rmsprop_kpulowglns_fddnbxfcbs_kernel_rmsIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32ќ
AssignVariableOp_32AssignVariableOpFassignvariableop_32_rmsprop_kpulowglns_fddnbxfcbs_recurrent_kernel_rmsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¬
AssignVariableOp_33AssignVariableOp:assignvariableop_33_rmsprop_kpulowglns_fddnbxfcbs_bias_rmsIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34ў
AssignVariableOp_34AssignVariableOpQassignvariableop_34_rmsprop_kpulowglns_fddnbxfcbs_input_gate_peephole_weights_rmsIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Џ
AssignVariableOp_35AssignVariableOpRassignvariableop_35_rmsprop_kpulowglns_fddnbxfcbs_forget_gate_peephole_weights_rmsIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Џ
AssignVariableOp_36AssignVariableOpRassignvariableop_36_rmsprop_kpulowglns_fddnbxfcbs_output_gate_peephole_weights_rmsIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37ƒ
AssignVariableOp_37AssignVariableOp<assignvariableop_37_rmsprop_htheqsxgix_tivuqvlrxj_kernel_rmsIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38ќ
AssignVariableOp_38AssignVariableOpFassignvariableop_38_rmsprop_htheqsxgix_tivuqvlrxj_recurrent_kernel_rmsIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39¬
AssignVariableOp_39AssignVariableOp:assignvariableop_39_rmsprop_htheqsxgix_tivuqvlrxj_bias_rmsIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40ў
AssignVariableOp_40AssignVariableOpQassignvariableop_40_rmsprop_htheqsxgix_tivuqvlrxj_input_gate_peephole_weights_rmsIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Џ
AssignVariableOp_41AssignVariableOpRassignvariableop_41_rmsprop_htheqsxgix_tivuqvlrxj_forget_gate_peephole_weights_rmsIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Џ
AssignVariableOp_42AssignVariableOpRassignvariableop_42_rmsprop_htheqsxgix_tivuqvlrxj_output_gate_peephole_weights_rmsIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_429
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpР
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_43Г
Identity_44IdentityIdentity_43:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_44"#
identity_44Identity_44:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
»
Э
,__inference_gnnkxdqznz_layer_call_fn_1303471

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_gnnkxdqznz_layer_call_and_return_conditional_losses_13011802
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
°h
Е
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1304029

inputs<
)fddnbxfcbs_matmul_readvariableop_resource:	А>
+fddnbxfcbs_matmul_1_readvariableop_resource:	 А9
*fddnbxfcbs_biasadd_readvariableop_resource:	А0
"fddnbxfcbs_readvariableop_resource: 2
$fddnbxfcbs_readvariableop_1_resource: 2
$fddnbxfcbs_readvariableop_2_resource: 
identityИҐ!fddnbxfcbs/BiasAdd/ReadVariableOpҐ fddnbxfcbs/MatMul/ReadVariableOpҐ"fddnbxfcbs/MatMul_1/ReadVariableOpҐfddnbxfcbs/ReadVariableOpҐfddnbxfcbs/ReadVariableOp_1Ґfddnbxfcbs/ReadVariableOp_2ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2ѓ
 fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp)fddnbxfcbs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 fddnbxfcbs/MatMul/ReadVariableOpІ
fddnbxfcbs/MatMulMatMulstrided_slice_2:output:0(fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMulµ
"fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp+fddnbxfcbs_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"fddnbxfcbs/MatMul_1/ReadVariableOp£
fddnbxfcbs/MatMul_1MatMulzeros:output:0*fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMul_1Ш
fddnbxfcbs/addAddV2fddnbxfcbs/MatMul:product:0fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/addЃ
!fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp*fddnbxfcbs_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!fddnbxfcbs/BiasAdd/ReadVariableOp•
fddnbxfcbs/BiasAddBiasAddfddnbxfcbs/add:z:0)fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/BiasAddz
fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
fddnbxfcbs/split/split_dimл
fddnbxfcbs/splitSplit#fddnbxfcbs/split/split_dim:output:0fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
fddnbxfcbs/splitХ
fddnbxfcbs/ReadVariableOpReadVariableOp"fddnbxfcbs_readvariableop_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOpО
fddnbxfcbs/mulMul!fddnbxfcbs/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mulО
fddnbxfcbs/add_1AddV2fddnbxfcbs/split:output:0fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_1{
fddnbxfcbs/SigmoidSigmoidfddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/SigmoidЫ
fddnbxfcbs/ReadVariableOp_1ReadVariableOp$fddnbxfcbs_readvariableop_1_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_1Ф
fddnbxfcbs/mul_1Mul#fddnbxfcbs/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_1Р
fddnbxfcbs/add_2AddV2fddnbxfcbs/split:output:1fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_2
fddnbxfcbs/Sigmoid_1Sigmoidfddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_1Й
fddnbxfcbs/mul_2Mulfddnbxfcbs/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_2w
fddnbxfcbs/TanhTanhfddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/TanhК
fddnbxfcbs/mul_3Mulfddnbxfcbs/Sigmoid:y:0fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_3Л
fddnbxfcbs/add_3AddV2fddnbxfcbs/mul_2:z:0fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_3Ы
fddnbxfcbs/ReadVariableOp_2ReadVariableOp$fddnbxfcbs_readvariableop_2_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_2Ш
fddnbxfcbs/mul_4Mul#fddnbxfcbs/ReadVariableOp_2:value:0fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_4Р
fddnbxfcbs/add_4AddV2fddnbxfcbs/split:output:3fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_4
fddnbxfcbs/Sigmoid_2Sigmoidfddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_2v
fddnbxfcbs/Tanh_1Tanhfddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Tanh_1О
fddnbxfcbs/mul_5Mulfddnbxfcbs/Sigmoid_2:y:0fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)fddnbxfcbs_matmul_readvariableop_resource+fddnbxfcbs_matmul_1_readvariableop_resource*fddnbxfcbs_biasadd_readvariableop_resource"fddnbxfcbs_readvariableop_resource$fddnbxfcbs_readvariableop_1_resource$fddnbxfcbs_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1303928*
condR
while_cond_1303927*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1≥
IdentityIdentitytranspose_1:y:0"^fddnbxfcbs/BiasAdd/ReadVariableOp!^fddnbxfcbs/MatMul/ReadVariableOp#^fddnbxfcbs/MatMul_1/ReadVariableOp^fddnbxfcbs/ReadVariableOp^fddnbxfcbs/ReadVariableOp_1^fddnbxfcbs/ReadVariableOp_2^while*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2F
!fddnbxfcbs/BiasAdd/ReadVariableOp!fddnbxfcbs/BiasAdd/ReadVariableOp2D
 fddnbxfcbs/MatMul/ReadVariableOp fddnbxfcbs/MatMul/ReadVariableOp2H
"fddnbxfcbs/MatMul_1/ReadVariableOp"fddnbxfcbs/MatMul_1/ReadVariableOp26
fddnbxfcbs/ReadVariableOpfddnbxfcbs/ReadVariableOp2:
fddnbxfcbs/ReadVariableOp_1fddnbxfcbs/ReadVariableOp_12:
fddnbxfcbs/ReadVariableOp_2fddnbxfcbs/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
°h
Е
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1302066

inputs<
)fddnbxfcbs_matmul_readvariableop_resource:	А>
+fddnbxfcbs_matmul_1_readvariableop_resource:	 А9
*fddnbxfcbs_biasadd_readvariableop_resource:	А0
"fddnbxfcbs_readvariableop_resource: 2
$fddnbxfcbs_readvariableop_1_resource: 2
$fddnbxfcbs_readvariableop_2_resource: 
identityИҐ!fddnbxfcbs/BiasAdd/ReadVariableOpҐ fddnbxfcbs/MatMul/ReadVariableOpҐ"fddnbxfcbs/MatMul_1/ReadVariableOpҐfddnbxfcbs/ReadVariableOpҐfddnbxfcbs/ReadVariableOp_1Ґfddnbxfcbs/ReadVariableOp_2ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2ѓ
 fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp)fddnbxfcbs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 fddnbxfcbs/MatMul/ReadVariableOpІ
fddnbxfcbs/MatMulMatMulstrided_slice_2:output:0(fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMulµ
"fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp+fddnbxfcbs_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"fddnbxfcbs/MatMul_1/ReadVariableOp£
fddnbxfcbs/MatMul_1MatMulzeros:output:0*fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMul_1Ш
fddnbxfcbs/addAddV2fddnbxfcbs/MatMul:product:0fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/addЃ
!fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp*fddnbxfcbs_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!fddnbxfcbs/BiasAdd/ReadVariableOp•
fddnbxfcbs/BiasAddBiasAddfddnbxfcbs/add:z:0)fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/BiasAddz
fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
fddnbxfcbs/split/split_dimл
fddnbxfcbs/splitSplit#fddnbxfcbs/split/split_dim:output:0fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
fddnbxfcbs/splitХ
fddnbxfcbs/ReadVariableOpReadVariableOp"fddnbxfcbs_readvariableop_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOpО
fddnbxfcbs/mulMul!fddnbxfcbs/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mulО
fddnbxfcbs/add_1AddV2fddnbxfcbs/split:output:0fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_1{
fddnbxfcbs/SigmoidSigmoidfddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/SigmoidЫ
fddnbxfcbs/ReadVariableOp_1ReadVariableOp$fddnbxfcbs_readvariableop_1_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_1Ф
fddnbxfcbs/mul_1Mul#fddnbxfcbs/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_1Р
fddnbxfcbs/add_2AddV2fddnbxfcbs/split:output:1fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_2
fddnbxfcbs/Sigmoid_1Sigmoidfddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_1Й
fddnbxfcbs/mul_2Mulfddnbxfcbs/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_2w
fddnbxfcbs/TanhTanhfddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/TanhК
fddnbxfcbs/mul_3Mulfddnbxfcbs/Sigmoid:y:0fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_3Л
fddnbxfcbs/add_3AddV2fddnbxfcbs/mul_2:z:0fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_3Ы
fddnbxfcbs/ReadVariableOp_2ReadVariableOp$fddnbxfcbs_readvariableop_2_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_2Ш
fddnbxfcbs/mul_4Mul#fddnbxfcbs/ReadVariableOp_2:value:0fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_4Р
fddnbxfcbs/add_4AddV2fddnbxfcbs/split:output:3fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_4
fddnbxfcbs/Sigmoid_2Sigmoidfddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_2v
fddnbxfcbs/Tanh_1Tanhfddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Tanh_1О
fddnbxfcbs/mul_5Mulfddnbxfcbs/Sigmoid_2:y:0fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)fddnbxfcbs_matmul_readvariableop_resource+fddnbxfcbs_matmul_1_readvariableop_resource*fddnbxfcbs_biasadd_readvariableop_resource"fddnbxfcbs_readvariableop_resource$fddnbxfcbs_readvariableop_1_resource$fddnbxfcbs_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1301965*
condR
while_cond_1301964*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1≥
IdentityIdentitytranspose_1:y:0"^fddnbxfcbs/BiasAdd/ReadVariableOp!^fddnbxfcbs/MatMul/ReadVariableOp#^fddnbxfcbs/MatMul_1/ReadVariableOp^fddnbxfcbs/ReadVariableOp^fddnbxfcbs/ReadVariableOp_1^fddnbxfcbs/ReadVariableOp_2^while*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2F
!fddnbxfcbs/BiasAdd/ReadVariableOp!fddnbxfcbs/BiasAdd/ReadVariableOp2D
 fddnbxfcbs/MatMul/ReadVariableOp fddnbxfcbs/MatMul/ReadVariableOp2H
"fddnbxfcbs/MatMul_1/ReadVariableOp"fddnbxfcbs/MatMul_1/ReadVariableOp26
fddnbxfcbs/ReadVariableOpfddnbxfcbs/ReadVariableOp2:
fddnbxfcbs/ReadVariableOp_1fddnbxfcbs/ReadVariableOp_12:
fddnbxfcbs/ReadVariableOp_2fddnbxfcbs/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Л

н
while_cond_1301964
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1301964___redundant_placeholder05
1while_while_cond_1301964___redundant_placeholder15
1while_while_cond_1301964___redundant_placeholder25
1while_while_cond_1301964___redundant_placeholder35
1while_while_cond_1301964___redundant_placeholder45
1while_while_cond_1301964___redundant_placeholder55
1while_while_cond_1301964___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Л

н
while_cond_1301278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1301278___redundant_placeholder05
1while_while_cond_1301278___redundant_placeholder15
1while_while_cond_1301278___redundant_placeholder25
1while_while_cond_1301278___redundant_placeholder35
1while_while_cond_1301278___redundant_placeholder45
1while_while_cond_1301278___redundant_placeholder55
1while_while_cond_1301278___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
џ
Д
,__inference_kpulowglns_layer_call_fn_1304277

inputs
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИҐStatefulPartitionedCall≤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_kpulowglns_layer_call_and_return_conditional_losses_13020662
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
џ
Д
,__inference_kpulowglns_layer_call_fn_1304260

inputs
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИҐStatefulPartitionedCall≤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_kpulowglns_layer_call_and_return_conditional_losses_13013802
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
аY
З
while_body_1304536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_tivuqvlrxj_matmul_readvariableop_resource_0:	 АF
3while_tivuqvlrxj_matmul_1_readvariableop_resource_0:	 АA
2while_tivuqvlrxj_biasadd_readvariableop_resource_0:	А8
*while_tivuqvlrxj_readvariableop_resource_0: :
,while_tivuqvlrxj_readvariableop_1_resource_0: :
,while_tivuqvlrxj_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_tivuqvlrxj_matmul_readvariableop_resource:	 АD
1while_tivuqvlrxj_matmul_1_readvariableop_resource:	 А?
0while_tivuqvlrxj_biasadd_readvariableop_resource:	А6
(while_tivuqvlrxj_readvariableop_resource: 8
*while_tivuqvlrxj_readvariableop_1_resource: 8
*while_tivuqvlrxj_readvariableop_2_resource: ИҐ'while/tivuqvlrxj/BiasAdd/ReadVariableOpҐ&while/tivuqvlrxj/MatMul/ReadVariableOpҐ(while/tivuqvlrxj/MatMul_1/ReadVariableOpҐwhile/tivuqvlrxj/ReadVariableOpҐ!while/tivuqvlrxj/ReadVariableOp_1Ґ!while/tivuqvlrxj/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp1while_tivuqvlrxj_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/tivuqvlrxj/MatMul/ReadVariableOp—
while/tivuqvlrxj/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul…
(while/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp3while_tivuqvlrxj_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/tivuqvlrxj/MatMul_1/ReadVariableOpЇ
while/tivuqvlrxj/MatMul_1MatMulwhile_placeholder_20while/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul_1∞
while/tivuqvlrxj/addAddV2!while/tivuqvlrxj/MatMul:product:0#while/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/add¬
'while/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp2while_tivuqvlrxj_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/tivuqvlrxj/BiasAdd/ReadVariableOpљ
while/tivuqvlrxj/BiasAddBiasAddwhile/tivuqvlrxj/add:z:0/while/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/BiasAddЖ
 while/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/tivuqvlrxj/split/split_dimГ
while/tivuqvlrxj/splitSplit)while/tivuqvlrxj/split/split_dim:output:0!while/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/tivuqvlrxj/split©
while/tivuqvlrxj/ReadVariableOpReadVariableOp*while_tivuqvlrxj_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/tivuqvlrxj/ReadVariableOp£
while/tivuqvlrxj/mulMul'while/tivuqvlrxj/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul¶
while/tivuqvlrxj/add_1AddV2while/tivuqvlrxj/split:output:0while/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_1Н
while/tivuqvlrxj/SigmoidSigmoidwhile/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoidѓ
!while/tivuqvlrxj/ReadVariableOp_1ReadVariableOp,while_tivuqvlrxj_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_1©
while/tivuqvlrxj/mul_1Mul)while/tivuqvlrxj/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_1®
while/tivuqvlrxj/add_2AddV2while/tivuqvlrxj/split:output:1while/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_2С
while/tivuqvlrxj/Sigmoid_1Sigmoidwhile/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_1Ю
while/tivuqvlrxj/mul_2Mulwhile/tivuqvlrxj/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_2Й
while/tivuqvlrxj/TanhTanhwhile/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/TanhҐ
while/tivuqvlrxj/mul_3Mulwhile/tivuqvlrxj/Sigmoid:y:0while/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_3£
while/tivuqvlrxj/add_3AddV2while/tivuqvlrxj/mul_2:z:0while/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_3ѓ
!while/tivuqvlrxj/ReadVariableOp_2ReadVariableOp,while_tivuqvlrxj_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_2∞
while/tivuqvlrxj/mul_4Mul)while/tivuqvlrxj/ReadVariableOp_2:value:0while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_4®
while/tivuqvlrxj/add_4AddV2while/tivuqvlrxj/split:output:3while/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_4С
while/tivuqvlrxj/Sigmoid_2Sigmoidwhile/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_2И
while/tivuqvlrxj/Tanh_1Tanhwhile/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Tanh_1¶
while/tivuqvlrxj/mul_5Mulwhile/tivuqvlrxj/Sigmoid_2:y:0while/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/tivuqvlrxj/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/tivuqvlrxj/mul_5:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/tivuqvlrxj/add_3:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_tivuqvlrxj_biasadd_readvariableop_resource2while_tivuqvlrxj_biasadd_readvariableop_resource_0"h
1while_tivuqvlrxj_matmul_1_readvariableop_resource3while_tivuqvlrxj_matmul_1_readvariableop_resource_0"d
/while_tivuqvlrxj_matmul_readvariableop_resource1while_tivuqvlrxj_matmul_readvariableop_resource_0"Z
*while_tivuqvlrxj_readvariableop_1_resource,while_tivuqvlrxj_readvariableop_1_resource_0"Z
*while_tivuqvlrxj_readvariableop_2_resource,while_tivuqvlrxj_readvariableop_2_resource_0"V
(while_tivuqvlrxj_readvariableop_resource*while_tivuqvlrxj_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/tivuqvlrxj/BiasAdd/ReadVariableOp'while/tivuqvlrxj/BiasAdd/ReadVariableOp2P
&while/tivuqvlrxj/MatMul/ReadVariableOp&while/tivuqvlrxj/MatMul/ReadVariableOp2T
(while/tivuqvlrxj/MatMul_1/ReadVariableOp(while/tivuqvlrxj/MatMul_1/ReadVariableOp2B
while/tivuqvlrxj/ReadVariableOpwhile/tivuqvlrxj/ReadVariableOp2F
!while/tivuqvlrxj/ReadVariableOp_1!while/tivuqvlrxj/ReadVariableOp_12F
!while/tivuqvlrxj/ReadVariableOp_2!while/tivuqvlrxj/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Е	
Ж
,__inference_kpulowglns_layer_call_fn_1304226
inputs_0
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИҐStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_kpulowglns_layer_call_and_return_conditional_losses_12997622
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
ѓF
к
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1300520

inputs%
tivuqvlrxj_1300421:	 А%
tivuqvlrxj_1300423:	 А!
tivuqvlrxj_1300425:	А 
tivuqvlrxj_1300427:  
tivuqvlrxj_1300429:  
tivuqvlrxj_1300431: 
identityИҐ"tivuqvlrxj/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2Џ
"tivuqvlrxj/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0tivuqvlrxj_1300421tivuqvlrxj_1300423tivuqvlrxj_1300425tivuqvlrxj_1300427tivuqvlrxj_1300429tivuqvlrxj_1300431*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_13004202$
"tivuqvlrxj/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterр
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0tivuqvlrxj_1300421tivuqvlrxj_1300423tivuqvlrxj_1300425tivuqvlrxj_1300427tivuqvlrxj_1300429tivuqvlrxj_1300431*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1300440*
condR
while_cond_1300439*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1Щ
IdentityIdentitystrided_slice_3:output:0#^tivuqvlrxj/StatefulPartitionedCall^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ : : : : : : 2H
"tivuqvlrxj/StatefulPartitionedCall"tivuqvlrxj/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Л

н
while_cond_1299681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1299681___redundant_placeholder05
1while_while_cond_1299681___redundant_placeholder15
1while_while_cond_1299681___redundant_placeholder25
1while_while_cond_1299681___redundant_placeholder35
1while_while_cond_1299681___redundant_placeholder45
1while_while_cond_1299681___redundant_placeholder55
1while_while_cond_1299681___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
аY
З
while_body_1304896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_tivuqvlrxj_matmul_readvariableop_resource_0:	 АF
3while_tivuqvlrxj_matmul_1_readvariableop_resource_0:	 АA
2while_tivuqvlrxj_biasadd_readvariableop_resource_0:	А8
*while_tivuqvlrxj_readvariableop_resource_0: :
,while_tivuqvlrxj_readvariableop_1_resource_0: :
,while_tivuqvlrxj_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_tivuqvlrxj_matmul_readvariableop_resource:	 АD
1while_tivuqvlrxj_matmul_1_readvariableop_resource:	 А?
0while_tivuqvlrxj_biasadd_readvariableop_resource:	А6
(while_tivuqvlrxj_readvariableop_resource: 8
*while_tivuqvlrxj_readvariableop_1_resource: 8
*while_tivuqvlrxj_readvariableop_2_resource: ИҐ'while/tivuqvlrxj/BiasAdd/ReadVariableOpҐ&while/tivuqvlrxj/MatMul/ReadVariableOpҐ(while/tivuqvlrxj/MatMul_1/ReadVariableOpҐwhile/tivuqvlrxj/ReadVariableOpҐ!while/tivuqvlrxj/ReadVariableOp_1Ґ!while/tivuqvlrxj/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp1while_tivuqvlrxj_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/tivuqvlrxj/MatMul/ReadVariableOp—
while/tivuqvlrxj/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul…
(while/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp3while_tivuqvlrxj_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/tivuqvlrxj/MatMul_1/ReadVariableOpЇ
while/tivuqvlrxj/MatMul_1MatMulwhile_placeholder_20while/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul_1∞
while/tivuqvlrxj/addAddV2!while/tivuqvlrxj/MatMul:product:0#while/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/add¬
'while/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp2while_tivuqvlrxj_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/tivuqvlrxj/BiasAdd/ReadVariableOpљ
while/tivuqvlrxj/BiasAddBiasAddwhile/tivuqvlrxj/add:z:0/while/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/BiasAddЖ
 while/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/tivuqvlrxj/split/split_dimГ
while/tivuqvlrxj/splitSplit)while/tivuqvlrxj/split/split_dim:output:0!while/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/tivuqvlrxj/split©
while/tivuqvlrxj/ReadVariableOpReadVariableOp*while_tivuqvlrxj_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/tivuqvlrxj/ReadVariableOp£
while/tivuqvlrxj/mulMul'while/tivuqvlrxj/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul¶
while/tivuqvlrxj/add_1AddV2while/tivuqvlrxj/split:output:0while/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_1Н
while/tivuqvlrxj/SigmoidSigmoidwhile/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoidѓ
!while/tivuqvlrxj/ReadVariableOp_1ReadVariableOp,while_tivuqvlrxj_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_1©
while/tivuqvlrxj/mul_1Mul)while/tivuqvlrxj/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_1®
while/tivuqvlrxj/add_2AddV2while/tivuqvlrxj/split:output:1while/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_2С
while/tivuqvlrxj/Sigmoid_1Sigmoidwhile/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_1Ю
while/tivuqvlrxj/mul_2Mulwhile/tivuqvlrxj/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_2Й
while/tivuqvlrxj/TanhTanhwhile/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/TanhҐ
while/tivuqvlrxj/mul_3Mulwhile/tivuqvlrxj/Sigmoid:y:0while/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_3£
while/tivuqvlrxj/add_3AddV2while/tivuqvlrxj/mul_2:z:0while/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_3ѓ
!while/tivuqvlrxj/ReadVariableOp_2ReadVariableOp,while_tivuqvlrxj_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_2∞
while/tivuqvlrxj/mul_4Mul)while/tivuqvlrxj/ReadVariableOp_2:value:0while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_4®
while/tivuqvlrxj/add_4AddV2while/tivuqvlrxj/split:output:3while/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_4С
while/tivuqvlrxj/Sigmoid_2Sigmoidwhile/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_2И
while/tivuqvlrxj/Tanh_1Tanhwhile/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Tanh_1¶
while/tivuqvlrxj/mul_5Mulwhile/tivuqvlrxj/Sigmoid_2:y:0while/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/tivuqvlrxj/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/tivuqvlrxj/mul_5:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/tivuqvlrxj/add_3:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_tivuqvlrxj_biasadd_readvariableop_resource2while_tivuqvlrxj_biasadd_readvariableop_resource_0"h
1while_tivuqvlrxj_matmul_1_readvariableop_resource3while_tivuqvlrxj_matmul_1_readvariableop_resource_0"d
/while_tivuqvlrxj_matmul_readvariableop_resource1while_tivuqvlrxj_matmul_readvariableop_resource_0"Z
*while_tivuqvlrxj_readvariableop_1_resource,while_tivuqvlrxj_readvariableop_1_resource_0"Z
*while_tivuqvlrxj_readvariableop_2_resource,while_tivuqvlrxj_readvariableop_2_resource_0"V
(while_tivuqvlrxj_readvariableop_resource*while_tivuqvlrxj_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/tivuqvlrxj/BiasAdd/ReadVariableOp'while/tivuqvlrxj/BiasAdd/ReadVariableOp2P
&while/tivuqvlrxj/MatMul/ReadVariableOp&while/tivuqvlrxj/MatMul/ReadVariableOp2T
(while/tivuqvlrxj/MatMul_1/ReadVariableOp(while/tivuqvlrxj/MatMul_1/ReadVariableOp2B
while/tivuqvlrxj/ReadVariableOpwhile/tivuqvlrxj/ReadVariableOp2F
!while/tivuqvlrxj/ReadVariableOp_1!while/tivuqvlrxj/ReadVariableOp_12F
!while/tivuqvlrxj/ReadVariableOp_2!while/tivuqvlrxj/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Щp
 
kpulowglns_while_body_13025732
.kpulowglns_while_kpulowglns_while_loop_counter8
4kpulowglns_while_kpulowglns_while_maximum_iterations 
kpulowglns_while_placeholder"
kpulowglns_while_placeholder_1"
kpulowglns_while_placeholder_2"
kpulowglns_while_placeholder_31
-kpulowglns_while_kpulowglns_strided_slice_1_0m
ikpulowglns_while_tensorarrayv2read_tensorlistgetitem_kpulowglns_tensorarrayunstack_tensorlistfromtensor_0O
<kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource_0:	АQ
>kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource_0:	 АL
=kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource_0:	АC
5kpulowglns_while_fddnbxfcbs_readvariableop_resource_0: E
7kpulowglns_while_fddnbxfcbs_readvariableop_1_resource_0: E
7kpulowglns_while_fddnbxfcbs_readvariableop_2_resource_0: 
kpulowglns_while_identity
kpulowglns_while_identity_1
kpulowglns_while_identity_2
kpulowglns_while_identity_3
kpulowglns_while_identity_4
kpulowglns_while_identity_5/
+kpulowglns_while_kpulowglns_strided_slice_1k
gkpulowglns_while_tensorarrayv2read_tensorlistgetitem_kpulowglns_tensorarrayunstack_tensorlistfromtensorM
:kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource:	АO
<kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource:	 АJ
;kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource:	АA
3kpulowglns_while_fddnbxfcbs_readvariableop_resource: C
5kpulowglns_while_fddnbxfcbs_readvariableop_1_resource: C
5kpulowglns_while_fddnbxfcbs_readvariableop_2_resource: ИҐ2kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOpҐ1kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOpҐ3kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOpҐ*kpulowglns/while/fddnbxfcbs/ReadVariableOpҐ,kpulowglns/while/fddnbxfcbs/ReadVariableOp_1Ґ,kpulowglns/while/fddnbxfcbs/ReadVariableOp_2ў
Bkpulowglns/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2D
Bkpulowglns/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4kpulowglns/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemikpulowglns_while_tensorarrayv2read_tensorlistgetitem_kpulowglns_tensorarrayunstack_tensorlistfromtensor_0kpulowglns_while_placeholderKkpulowglns/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype026
4kpulowglns/while/TensorArrayV2Read/TensorListGetItemд
1kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp<kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype023
1kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOpэ
"kpulowglns/while/fddnbxfcbs/MatMulMatMul;kpulowglns/while/TensorArrayV2Read/TensorListGetItem:item:09kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"kpulowglns/while/fddnbxfcbs/MatMulк
3kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp>kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOpж
$kpulowglns/while/fddnbxfcbs/MatMul_1MatMulkpulowglns_while_placeholder_2;kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2&
$kpulowglns/while/fddnbxfcbs/MatMul_1№
kpulowglns/while/fddnbxfcbs/addAddV2,kpulowglns/while/fddnbxfcbs/MatMul:product:0.kpulowglns/while/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
kpulowglns/while/fddnbxfcbs/addг
2kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp=kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOpй
#kpulowglns/while/fddnbxfcbs/BiasAddBiasAdd#kpulowglns/while/fddnbxfcbs/add:z:0:kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2%
#kpulowglns/while/fddnbxfcbs/BiasAddЬ
+kpulowglns/while/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+kpulowglns/while/fddnbxfcbs/split/split_dimѓ
!kpulowglns/while/fddnbxfcbs/splitSplit4kpulowglns/while/fddnbxfcbs/split/split_dim:output:0,kpulowglns/while/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2#
!kpulowglns/while/fddnbxfcbs/split 
*kpulowglns/while/fddnbxfcbs/ReadVariableOpReadVariableOp5kpulowglns_while_fddnbxfcbs_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*kpulowglns/while/fddnbxfcbs/ReadVariableOpѕ
kpulowglns/while/fddnbxfcbs/mulMul2kpulowglns/while/fddnbxfcbs/ReadVariableOp:value:0kpulowglns_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2!
kpulowglns/while/fddnbxfcbs/mul“
!kpulowglns/while/fddnbxfcbs/add_1AddV2*kpulowglns/while/fddnbxfcbs/split:output:0#kpulowglns/while/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/add_1Ѓ
#kpulowglns/while/fddnbxfcbs/SigmoidSigmoid%kpulowglns/while/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#kpulowglns/while/fddnbxfcbs/Sigmoid–
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_1ReadVariableOp7kpulowglns_while_fddnbxfcbs_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_1’
!kpulowglns/while/fddnbxfcbs/mul_1Mul4kpulowglns/while/fddnbxfcbs/ReadVariableOp_1:value:0kpulowglns_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/mul_1‘
!kpulowglns/while/fddnbxfcbs/add_2AddV2*kpulowglns/while/fddnbxfcbs/split:output:1%kpulowglns/while/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/add_2≤
%kpulowglns/while/fddnbxfcbs/Sigmoid_1Sigmoid%kpulowglns/while/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%kpulowglns/while/fddnbxfcbs/Sigmoid_1 
!kpulowglns/while/fddnbxfcbs/mul_2Mul)kpulowglns/while/fddnbxfcbs/Sigmoid_1:y:0kpulowglns_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/mul_2™
 kpulowglns/while/fddnbxfcbs/TanhTanh*kpulowglns/while/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 kpulowglns/while/fddnbxfcbs/Tanhќ
!kpulowglns/while/fddnbxfcbs/mul_3Mul'kpulowglns/while/fddnbxfcbs/Sigmoid:y:0$kpulowglns/while/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/mul_3ѕ
!kpulowglns/while/fddnbxfcbs/add_3AddV2%kpulowglns/while/fddnbxfcbs/mul_2:z:0%kpulowglns/while/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/add_3–
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_2ReadVariableOp7kpulowglns_while_fddnbxfcbs_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_2№
!kpulowglns/while/fddnbxfcbs/mul_4Mul4kpulowglns/while/fddnbxfcbs/ReadVariableOp_2:value:0%kpulowglns/while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/mul_4‘
!kpulowglns/while/fddnbxfcbs/add_4AddV2*kpulowglns/while/fddnbxfcbs/split:output:3%kpulowglns/while/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/add_4≤
%kpulowglns/while/fddnbxfcbs/Sigmoid_2Sigmoid%kpulowglns/while/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%kpulowglns/while/fddnbxfcbs/Sigmoid_2©
"kpulowglns/while/fddnbxfcbs/Tanh_1Tanh%kpulowglns/while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"kpulowglns/while/fddnbxfcbs/Tanh_1“
!kpulowglns/while/fddnbxfcbs/mul_5Mul)kpulowglns/while/fddnbxfcbs/Sigmoid_2:y:0&kpulowglns/while/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/mul_5Х
5kpulowglns/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemkpulowglns_while_placeholder_1kpulowglns_while_placeholder%kpulowglns/while/fddnbxfcbs/mul_5:z:0*
_output_shapes
: *
element_dtype027
5kpulowglns/while/TensorArrayV2Write/TensorListSetItemr
kpulowglns/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
kpulowglns/while/add/yХ
kpulowglns/while/addAddV2kpulowglns_while_placeholderkpulowglns/while/add/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/while/addv
kpulowglns/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
kpulowglns/while/add_1/y≠
kpulowglns/while/add_1AddV2.kpulowglns_while_kpulowglns_while_loop_counter!kpulowglns/while/add_1/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/while/add_1©
kpulowglns/while/IdentityIdentitykpulowglns/while/add_1:z:03^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
kpulowglns/while/Identity«
kpulowglns/while/Identity_1Identity4kpulowglns_while_kpulowglns_while_maximum_iterations3^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
kpulowglns/while/Identity_1Ђ
kpulowglns/while/Identity_2Identitykpulowglns/while/add:z:03^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
kpulowglns/while/Identity_2Ў
kpulowglns/while/Identity_3IdentityEkpulowglns/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
kpulowglns/while/Identity_3…
kpulowglns/while/Identity_4Identity%kpulowglns/while/fddnbxfcbs/mul_5:z:03^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/while/Identity_4…
kpulowglns/while/Identity_5Identity%kpulowglns/while/fddnbxfcbs/add_3:z:03^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/while/Identity_5"|
;kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource=kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource_0"~
<kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource>kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource_0"z
:kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource<kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource_0"p
5kpulowglns_while_fddnbxfcbs_readvariableop_1_resource7kpulowglns_while_fddnbxfcbs_readvariableop_1_resource_0"p
5kpulowglns_while_fddnbxfcbs_readvariableop_2_resource7kpulowglns_while_fddnbxfcbs_readvariableop_2_resource_0"l
3kpulowglns_while_fddnbxfcbs_readvariableop_resource5kpulowglns_while_fddnbxfcbs_readvariableop_resource_0"?
kpulowglns_while_identity"kpulowglns/while/Identity:output:0"C
kpulowglns_while_identity_1$kpulowglns/while/Identity_1:output:0"C
kpulowglns_while_identity_2$kpulowglns/while/Identity_2:output:0"C
kpulowglns_while_identity_3$kpulowglns/while/Identity_3:output:0"C
kpulowglns_while_identity_4$kpulowglns/while/Identity_4:output:0"C
kpulowglns_while_identity_5$kpulowglns/while/Identity_5:output:0"\
+kpulowglns_while_kpulowglns_strided_slice_1-kpulowglns_while_kpulowglns_strided_slice_1_0"‘
gkpulowglns_while_tensorarrayv2read_tensorlistgetitem_kpulowglns_tensorarrayunstack_tensorlistfromtensorikpulowglns_while_tensorarrayv2read_tensorlistgetitem_kpulowglns_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2h
2kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2f
1kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp1kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp2j
3kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp3kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp2X
*kpulowglns/while/fddnbxfcbs/ReadVariableOp*kpulowglns/while/fddnbxfcbs/ReadVariableOp2\
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_1,kpulowglns/while/fddnbxfcbs/ReadVariableOp_12\
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_2,kpulowglns/while/fddnbxfcbs/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Л

н
while_cond_1301471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1301471___redundant_placeholder05
1while_while_cond_1301471___redundant_placeholder15
1while_while_cond_1301471___redundant_placeholder25
1while_while_cond_1301471___redundant_placeholder35
1while_while_cond_1301471___redundant_placeholder45
1while_while_cond_1301471___redundant_placeholder55
1while_while_cond_1301471___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
§
Щ
,__inference_tgvgnagwib_layer_call_fn_1305084

inputs
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_tgvgnagwib_layer_call_and_return_conditional_losses_13015972
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
л
Ж
,__inference_htheqsxgix_layer_call_fn_1305014
inputs_0
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИҐStatefulPartitionedCall∞
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_13005202
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
р$
≠
G__inference_sequential_layer_call_and_return_conditional_losses_1302196

inputs(
xwuftghvfx_1302153: 
xwuftghvfx_1302155:(
gnnkxdqznz_1302158: 
gnnkxdqznz_1302160:%
kpulowglns_1302164:	А%
kpulowglns_1302166:	 А!
kpulowglns_1302168:	А 
kpulowglns_1302170:  
kpulowglns_1302172:  
kpulowglns_1302174: %
htheqsxgix_1302177:	 А%
htheqsxgix_1302179:	 А!
htheqsxgix_1302181:	А 
htheqsxgix_1302183:  
htheqsxgix_1302185:  
htheqsxgix_1302187: $
tgvgnagwib_1302190:  
tgvgnagwib_1302192:
identityИҐ"gnnkxdqznz/StatefulPartitionedCallҐ"htheqsxgix/StatefulPartitionedCallҐ"kpulowglns/StatefulPartitionedCallҐ"tgvgnagwib/StatefulPartitionedCallҐ"xwuftghvfx/StatefulPartitionedCallђ
"xwuftghvfx/StatefulPartitionedCallStatefulPartitionedCallinputsxwuftghvfx_1302153xwuftghvfx_1302155*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_xwuftghvfx_layer_call_and_return_conditional_losses_13011352$
"xwuftghvfx/StatefulPartitionedCall—
"gnnkxdqznz/StatefulPartitionedCallStatefulPartitionedCall+xwuftghvfx/StatefulPartitionedCall:output:0gnnkxdqznz_1302158gnnkxdqznz_1302160*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_gnnkxdqznz_layer_call_and_return_conditional_losses_13011802$
"gnnkxdqznz/StatefulPartitionedCallЗ
xrqvvalojb/PartitionedCallPartitionedCall+gnnkxdqznz/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_xrqvvalojb_layer_call_and_return_conditional_losses_13011992
xrqvvalojb/PartitionedCallЭ
"kpulowglns/StatefulPartitionedCallStatefulPartitionedCall#xrqvvalojb/PartitionedCall:output:0kpulowglns_1302164kpulowglns_1302166kpulowglns_1302168kpulowglns_1302170kpulowglns_1302172kpulowglns_1302174*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_kpulowglns_layer_call_and_return_conditional_losses_13020662$
"kpulowglns/StatefulPartitionedCall°
"htheqsxgix/StatefulPartitionedCallStatefulPartitionedCall+kpulowglns/StatefulPartitionedCall:output:0htheqsxgix_1302177htheqsxgix_1302179htheqsxgix_1302181htheqsxgix_1302183htheqsxgix_1302185htheqsxgix_1302187*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_13018522$
"htheqsxgix/StatefulPartitionedCall…
"tgvgnagwib/StatefulPartitionedCallStatefulPartitionedCall+htheqsxgix/StatefulPartitionedCall:output:0tgvgnagwib_1302190tgvgnagwib_1302192*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_tgvgnagwib_layer_call_and_return_conditional_losses_13015972$
"tgvgnagwib/StatefulPartitionedCallЄ
IdentityIdentity+tgvgnagwib/StatefulPartitionedCall:output:0#^gnnkxdqznz/StatefulPartitionedCall#^htheqsxgix/StatefulPartitionedCall#^kpulowglns/StatefulPartitionedCall#^tgvgnagwib/StatefulPartitionedCall#^xwuftghvfx/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 2H
"gnnkxdqznz/StatefulPartitionedCall"gnnkxdqznz/StatefulPartitionedCall2H
"htheqsxgix/StatefulPartitionedCall"htheqsxgix/StatefulPartitionedCall2H
"kpulowglns/StatefulPartitionedCall"kpulowglns/StatefulPartitionedCall2H
"tgvgnagwib/StatefulPartitionedCall"tgvgnagwib/StatefulPartitionedCall2H
"xwuftghvfx/StatefulPartitionedCall"xwuftghvfx/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
”	
ш
G__inference_tgvgnagwib_layer_call_and_return_conditional_losses_1301597

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
л
Ж
,__inference_htheqsxgix_layer_call_fn_1305031
inputs_0
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИҐStatefulPartitionedCall∞
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_13007832
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
Л

н
while_cond_1303747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1303747___redundant_placeholder05
1while_while_cond_1303747___redundant_placeholder15
1while_while_cond_1303747___redundant_placeholder25
1while_while_cond_1303747___redundant_placeholder35
1while_while_cond_1303747___redundant_placeholder45
1while_while_cond_1303747___redundant_placeholder55
1while_while_cond_1303747___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
з)
“
while_body_1299682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_fddnbxfcbs_1299706_0:	А-
while_fddnbxfcbs_1299708_0:	 А)
while_fddnbxfcbs_1299710_0:	А(
while_fddnbxfcbs_1299712_0: (
while_fddnbxfcbs_1299714_0: (
while_fddnbxfcbs_1299716_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_fddnbxfcbs_1299706:	А+
while_fddnbxfcbs_1299708:	 А'
while_fddnbxfcbs_1299710:	А&
while_fddnbxfcbs_1299712: &
while_fddnbxfcbs_1299714: &
while_fddnbxfcbs_1299716: ИҐ(while/fddnbxfcbs/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemґ
(while/fddnbxfcbs/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_fddnbxfcbs_1299706_0while_fddnbxfcbs_1299708_0while_fddnbxfcbs_1299710_0while_fddnbxfcbs_1299712_0while_fddnbxfcbs_1299714_0while_fddnbxfcbs_1299716_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_12996622*
(while/fddnbxfcbs/StatefulPartitionedCallх
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/fddnbxfcbs/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Й
while/IdentityIdentitywhile/add_1:z:0)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ј
while/Identity_4Identity1while/fddnbxfcbs/StatefulPartitionedCall:output:1)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ј
while/Identity_5Identity1while/fddnbxfcbs/StatefulPartitionedCall:output:2)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5"6
while_fddnbxfcbs_1299706while_fddnbxfcbs_1299706_0"6
while_fddnbxfcbs_1299708while_fddnbxfcbs_1299708_0"6
while_fddnbxfcbs_1299710while_fddnbxfcbs_1299710_0"6
while_fddnbxfcbs_1299712while_fddnbxfcbs_1299712_0"6
while_fddnbxfcbs_1299714while_fddnbxfcbs_1299714_0"6
while_fddnbxfcbs_1299716while_fddnbxfcbs_1299716_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2T
(while/fddnbxfcbs/StatefulPartitionedCall(while/fddnbxfcbs/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
№h
З
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304457
inputs_0<
)tivuqvlrxj_matmul_readvariableop_resource:	 А>
+tivuqvlrxj_matmul_1_readvariableop_resource:	 А9
*tivuqvlrxj_biasadd_readvariableop_resource:	А0
"tivuqvlrxj_readvariableop_resource: 2
$tivuqvlrxj_readvariableop_1_resource: 2
$tivuqvlrxj_readvariableop_2_resource: 
identityИҐ!tivuqvlrxj/BiasAdd/ReadVariableOpҐ tivuqvlrxj/MatMul/ReadVariableOpҐ"tivuqvlrxj/MatMul_1/ReadVariableOpҐtivuqvlrxj/ReadVariableOpҐtivuqvlrxj/ReadVariableOp_1Ґtivuqvlrxj/ReadVariableOp_2ҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2ѓ
 tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp)tivuqvlrxj_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 tivuqvlrxj/MatMul/ReadVariableOpІ
tivuqvlrxj/MatMulMatMulstrided_slice_2:output:0(tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMulµ
"tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp+tivuqvlrxj_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"tivuqvlrxj/MatMul_1/ReadVariableOp£
tivuqvlrxj/MatMul_1MatMulzeros:output:0*tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMul_1Ш
tivuqvlrxj/addAddV2tivuqvlrxj/MatMul:product:0tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/addЃ
!tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp*tivuqvlrxj_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!tivuqvlrxj/BiasAdd/ReadVariableOp•
tivuqvlrxj/BiasAddBiasAddtivuqvlrxj/add:z:0)tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/BiasAddz
tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
tivuqvlrxj/split/split_dimл
tivuqvlrxj/splitSplit#tivuqvlrxj/split/split_dim:output:0tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
tivuqvlrxj/splitХ
tivuqvlrxj/ReadVariableOpReadVariableOp"tivuqvlrxj_readvariableop_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOpО
tivuqvlrxj/mulMul!tivuqvlrxj/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mulО
tivuqvlrxj/add_1AddV2tivuqvlrxj/split:output:0tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_1{
tivuqvlrxj/SigmoidSigmoidtivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/SigmoidЫ
tivuqvlrxj/ReadVariableOp_1ReadVariableOp$tivuqvlrxj_readvariableop_1_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_1Ф
tivuqvlrxj/mul_1Mul#tivuqvlrxj/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_1Р
tivuqvlrxj/add_2AddV2tivuqvlrxj/split:output:1tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_2
tivuqvlrxj/Sigmoid_1Sigmoidtivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_1Й
tivuqvlrxj/mul_2Multivuqvlrxj/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_2w
tivuqvlrxj/TanhTanhtivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/TanhК
tivuqvlrxj/mul_3Multivuqvlrxj/Sigmoid:y:0tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_3Л
tivuqvlrxj/add_3AddV2tivuqvlrxj/mul_2:z:0tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_3Ы
tivuqvlrxj/ReadVariableOp_2ReadVariableOp$tivuqvlrxj_readvariableop_2_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_2Ш
tivuqvlrxj/mul_4Mul#tivuqvlrxj/ReadVariableOp_2:value:0tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_4Р
tivuqvlrxj/add_4AddV2tivuqvlrxj/split:output:3tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_4
tivuqvlrxj/Sigmoid_2Sigmoidtivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_2v
tivuqvlrxj/Tanh_1Tanhtivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Tanh_1О
tivuqvlrxj/mul_5Multivuqvlrxj/Sigmoid_2:y:0tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)tivuqvlrxj_matmul_readvariableop_resource+tivuqvlrxj_matmul_1_readvariableop_resource*tivuqvlrxj_biasadd_readvariableop_resource"tivuqvlrxj_readvariableop_resource$tivuqvlrxj_readvariableop_1_resource$tivuqvlrxj_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1304356*
condR
while_cond_1304355*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1Є
IdentityIdentitystrided_slice_3:output:0"^tivuqvlrxj/BiasAdd/ReadVariableOp!^tivuqvlrxj/MatMul/ReadVariableOp#^tivuqvlrxj/MatMul_1/ReadVariableOp^tivuqvlrxj/ReadVariableOp^tivuqvlrxj/ReadVariableOp_1^tivuqvlrxj/ReadVariableOp_2^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ : : : : : : 2F
!tivuqvlrxj/BiasAdd/ReadVariableOp!tivuqvlrxj/BiasAdd/ReadVariableOp2D
 tivuqvlrxj/MatMul/ReadVariableOp tivuqvlrxj/MatMul/ReadVariableOp2H
"tivuqvlrxj/MatMul_1/ReadVariableOp"tivuqvlrxj/MatMul_1/ReadVariableOp26
tivuqvlrxj/ReadVariableOptivuqvlrxj/ReadVariableOp2:
tivuqvlrxj/ReadVariableOp_1tivuqvlrxj/ReadVariableOp_12:
tivuqvlrxj/ReadVariableOp_2tivuqvlrxj/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
аh
З
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1303849
inputs_0<
)fddnbxfcbs_matmul_readvariableop_resource:	А>
+fddnbxfcbs_matmul_1_readvariableop_resource:	 А9
*fddnbxfcbs_biasadd_readvariableop_resource:	А0
"fddnbxfcbs_readvariableop_resource: 2
$fddnbxfcbs_readvariableop_1_resource: 2
$fddnbxfcbs_readvariableop_2_resource: 
identityИҐ!fddnbxfcbs/BiasAdd/ReadVariableOpҐ fddnbxfcbs/MatMul/ReadVariableOpҐ"fddnbxfcbs/MatMul_1/ReadVariableOpҐfddnbxfcbs/ReadVariableOpҐfddnbxfcbs/ReadVariableOp_1Ґfddnbxfcbs/ReadVariableOp_2ҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2ѓ
 fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp)fddnbxfcbs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 fddnbxfcbs/MatMul/ReadVariableOpІ
fddnbxfcbs/MatMulMatMulstrided_slice_2:output:0(fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMulµ
"fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp+fddnbxfcbs_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"fddnbxfcbs/MatMul_1/ReadVariableOp£
fddnbxfcbs/MatMul_1MatMulzeros:output:0*fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMul_1Ш
fddnbxfcbs/addAddV2fddnbxfcbs/MatMul:product:0fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/addЃ
!fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp*fddnbxfcbs_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!fddnbxfcbs/BiasAdd/ReadVariableOp•
fddnbxfcbs/BiasAddBiasAddfddnbxfcbs/add:z:0)fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/BiasAddz
fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
fddnbxfcbs/split/split_dimл
fddnbxfcbs/splitSplit#fddnbxfcbs/split/split_dim:output:0fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
fddnbxfcbs/splitХ
fddnbxfcbs/ReadVariableOpReadVariableOp"fddnbxfcbs_readvariableop_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOpО
fddnbxfcbs/mulMul!fddnbxfcbs/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mulО
fddnbxfcbs/add_1AddV2fddnbxfcbs/split:output:0fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_1{
fddnbxfcbs/SigmoidSigmoidfddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/SigmoidЫ
fddnbxfcbs/ReadVariableOp_1ReadVariableOp$fddnbxfcbs_readvariableop_1_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_1Ф
fddnbxfcbs/mul_1Mul#fddnbxfcbs/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_1Р
fddnbxfcbs/add_2AddV2fddnbxfcbs/split:output:1fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_2
fddnbxfcbs/Sigmoid_1Sigmoidfddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_1Й
fddnbxfcbs/mul_2Mulfddnbxfcbs/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_2w
fddnbxfcbs/TanhTanhfddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/TanhК
fddnbxfcbs/mul_3Mulfddnbxfcbs/Sigmoid:y:0fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_3Л
fddnbxfcbs/add_3AddV2fddnbxfcbs/mul_2:z:0fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_3Ы
fddnbxfcbs/ReadVariableOp_2ReadVariableOp$fddnbxfcbs_readvariableop_2_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_2Ш
fddnbxfcbs/mul_4Mul#fddnbxfcbs/ReadVariableOp_2:value:0fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_4Р
fddnbxfcbs/add_4AddV2fddnbxfcbs/split:output:3fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_4
fddnbxfcbs/Sigmoid_2Sigmoidfddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_2v
fddnbxfcbs/Tanh_1Tanhfddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Tanh_1О
fddnbxfcbs/mul_5Mulfddnbxfcbs/Sigmoid_2:y:0fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)fddnbxfcbs_matmul_readvariableop_resource+fddnbxfcbs_matmul_1_readvariableop_resource*fddnbxfcbs_biasadd_readvariableop_resource"fddnbxfcbs_readvariableop_resource$fddnbxfcbs_readvariableop_1_resource$fddnbxfcbs_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1303748*
condR
while_cond_1303747*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1Љ
IdentityIdentitytranspose_1:y:0"^fddnbxfcbs/BiasAdd/ReadVariableOp!^fddnbxfcbs/MatMul/ReadVariableOp#^fddnbxfcbs/MatMul_1/ReadVariableOp^fddnbxfcbs/ReadVariableOp^fddnbxfcbs/ReadVariableOp_1^fddnbxfcbs/ReadVariableOp_2^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€: : : : : : 2F
!fddnbxfcbs/BiasAdd/ReadVariableOp!fddnbxfcbs/BiasAdd/ReadVariableOp2D
 fddnbxfcbs/MatMul/ReadVariableOp fddnbxfcbs/MatMul/ReadVariableOp2H
"fddnbxfcbs/MatMul_1/ReadVariableOp"fddnbxfcbs/MatMul_1/ReadVariableOp26
fddnbxfcbs/ReadVariableOpfddnbxfcbs/ReadVariableOp2:
fddnbxfcbs/ReadVariableOp_1fddnbxfcbs/ReadVariableOp_12:
fddnbxfcbs/ReadVariableOp_2fddnbxfcbs/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
и
÷
,__inference_sequential_layer_call_fn_1303377

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	А
	unknown_4:	 А
	unknown_5:	А
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:	 А

unknown_10:	 А

unknown_11:	А

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:
identityИҐStatefulPartitionedCall—
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_13021962
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ф
Џ
,__inference_sequential_layer_call_fn_1302276

cvyyglfjwp
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	А
	unknown_4:	 А
	unknown_5:	А
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:	 А

unknown_10:	 А

unknown_11:	А

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:
identityИҐStatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCall
cvyyglfjwpunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_13021962
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:€€€€€€€€€
$
_user_specified_name
cvyyglfjwp
аY
З
while_body_1301472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_tivuqvlrxj_matmul_readvariableop_resource_0:	 АF
3while_tivuqvlrxj_matmul_1_readvariableop_resource_0:	 АA
2while_tivuqvlrxj_biasadd_readvariableop_resource_0:	А8
*while_tivuqvlrxj_readvariableop_resource_0: :
,while_tivuqvlrxj_readvariableop_1_resource_0: :
,while_tivuqvlrxj_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_tivuqvlrxj_matmul_readvariableop_resource:	 АD
1while_tivuqvlrxj_matmul_1_readvariableop_resource:	 А?
0while_tivuqvlrxj_biasadd_readvariableop_resource:	А6
(while_tivuqvlrxj_readvariableop_resource: 8
*while_tivuqvlrxj_readvariableop_1_resource: 8
*while_tivuqvlrxj_readvariableop_2_resource: ИҐ'while/tivuqvlrxj/BiasAdd/ReadVariableOpҐ&while/tivuqvlrxj/MatMul/ReadVariableOpҐ(while/tivuqvlrxj/MatMul_1/ReadVariableOpҐwhile/tivuqvlrxj/ReadVariableOpҐ!while/tivuqvlrxj/ReadVariableOp_1Ґ!while/tivuqvlrxj/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp1while_tivuqvlrxj_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/tivuqvlrxj/MatMul/ReadVariableOp—
while/tivuqvlrxj/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul…
(while/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp3while_tivuqvlrxj_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/tivuqvlrxj/MatMul_1/ReadVariableOpЇ
while/tivuqvlrxj/MatMul_1MatMulwhile_placeholder_20while/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul_1∞
while/tivuqvlrxj/addAddV2!while/tivuqvlrxj/MatMul:product:0#while/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/add¬
'while/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp2while_tivuqvlrxj_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/tivuqvlrxj/BiasAdd/ReadVariableOpљ
while/tivuqvlrxj/BiasAddBiasAddwhile/tivuqvlrxj/add:z:0/while/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/BiasAddЖ
 while/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/tivuqvlrxj/split/split_dimГ
while/tivuqvlrxj/splitSplit)while/tivuqvlrxj/split/split_dim:output:0!while/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/tivuqvlrxj/split©
while/tivuqvlrxj/ReadVariableOpReadVariableOp*while_tivuqvlrxj_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/tivuqvlrxj/ReadVariableOp£
while/tivuqvlrxj/mulMul'while/tivuqvlrxj/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul¶
while/tivuqvlrxj/add_1AddV2while/tivuqvlrxj/split:output:0while/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_1Н
while/tivuqvlrxj/SigmoidSigmoidwhile/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoidѓ
!while/tivuqvlrxj/ReadVariableOp_1ReadVariableOp,while_tivuqvlrxj_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_1©
while/tivuqvlrxj/mul_1Mul)while/tivuqvlrxj/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_1®
while/tivuqvlrxj/add_2AddV2while/tivuqvlrxj/split:output:1while/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_2С
while/tivuqvlrxj/Sigmoid_1Sigmoidwhile/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_1Ю
while/tivuqvlrxj/mul_2Mulwhile/tivuqvlrxj/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_2Й
while/tivuqvlrxj/TanhTanhwhile/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/TanhҐ
while/tivuqvlrxj/mul_3Mulwhile/tivuqvlrxj/Sigmoid:y:0while/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_3£
while/tivuqvlrxj/add_3AddV2while/tivuqvlrxj/mul_2:z:0while/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_3ѓ
!while/tivuqvlrxj/ReadVariableOp_2ReadVariableOp,while_tivuqvlrxj_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_2∞
while/tivuqvlrxj/mul_4Mul)while/tivuqvlrxj/ReadVariableOp_2:value:0while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_4®
while/tivuqvlrxj/add_4AddV2while/tivuqvlrxj/split:output:3while/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_4С
while/tivuqvlrxj/Sigmoid_2Sigmoidwhile/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_2И
while/tivuqvlrxj/Tanh_1Tanhwhile/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Tanh_1¶
while/tivuqvlrxj/mul_5Mulwhile/tivuqvlrxj/Sigmoid_2:y:0while/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/tivuqvlrxj/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/tivuqvlrxj/mul_5:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/tivuqvlrxj/add_3:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_tivuqvlrxj_biasadd_readvariableop_resource2while_tivuqvlrxj_biasadd_readvariableop_resource_0"h
1while_tivuqvlrxj_matmul_1_readvariableop_resource3while_tivuqvlrxj_matmul_1_readvariableop_resource_0"d
/while_tivuqvlrxj_matmul_readvariableop_resource1while_tivuqvlrxj_matmul_readvariableop_resource_0"Z
*while_tivuqvlrxj_readvariableop_1_resource,while_tivuqvlrxj_readvariableop_1_resource_0"Z
*while_tivuqvlrxj_readvariableop_2_resource,while_tivuqvlrxj_readvariableop_2_resource_0"V
(while_tivuqvlrxj_readvariableop_resource*while_tivuqvlrxj_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/tivuqvlrxj/BiasAdd/ReadVariableOp'while/tivuqvlrxj/BiasAdd/ReadVariableOp2P
&while/tivuqvlrxj/MatMul/ReadVariableOp&while/tivuqvlrxj/MatMul/ReadVariableOp2T
(while/tivuqvlrxj/MatMul_1/ReadVariableOp(while/tivuqvlrxj/MatMul_1/ReadVariableOp2B
while/tivuqvlrxj/ReadVariableOpwhile/tivuqvlrxj/ReadVariableOp2F
!while/tivuqvlrxj/ReadVariableOp_1!while/tivuqvlrxj/ReadVariableOp_12F
!while/tivuqvlrxj/ReadVariableOp_2!while/tivuqvlrxj/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
•
©	
(sequential_htheqsxgix_while_cond_1299467H
Dsequential_htheqsxgix_while_sequential_htheqsxgix_while_loop_counterN
Jsequential_htheqsxgix_while_sequential_htheqsxgix_while_maximum_iterations+
'sequential_htheqsxgix_while_placeholder-
)sequential_htheqsxgix_while_placeholder_1-
)sequential_htheqsxgix_while_placeholder_2-
)sequential_htheqsxgix_while_placeholder_3J
Fsequential_htheqsxgix_while_less_sequential_htheqsxgix_strided_slice_1a
]sequential_htheqsxgix_while_sequential_htheqsxgix_while_cond_1299467___redundant_placeholder0a
]sequential_htheqsxgix_while_sequential_htheqsxgix_while_cond_1299467___redundant_placeholder1a
]sequential_htheqsxgix_while_sequential_htheqsxgix_while_cond_1299467___redundant_placeholder2a
]sequential_htheqsxgix_while_sequential_htheqsxgix_while_cond_1299467___redundant_placeholder3a
]sequential_htheqsxgix_while_sequential_htheqsxgix_while_cond_1299467___redundant_placeholder4a
]sequential_htheqsxgix_while_sequential_htheqsxgix_while_cond_1299467___redundant_placeholder5a
]sequential_htheqsxgix_while_sequential_htheqsxgix_while_cond_1299467___redundant_placeholder6(
$sequential_htheqsxgix_while_identity
ё
 sequential/htheqsxgix/while/LessLess'sequential_htheqsxgix_while_placeholderFsequential_htheqsxgix_while_less_sequential_htheqsxgix_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/htheqsxgix/while/LessЯ
$sequential/htheqsxgix/while/IdentityIdentity$sequential/htheqsxgix/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/htheqsxgix/while/Identity"U
$sequential_htheqsxgix_while_identity-sequential/htheqsxgix/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
¶h
Е
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304997

inputs<
)tivuqvlrxj_matmul_readvariableop_resource:	 А>
+tivuqvlrxj_matmul_1_readvariableop_resource:	 А9
*tivuqvlrxj_biasadd_readvariableop_resource:	А0
"tivuqvlrxj_readvariableop_resource: 2
$tivuqvlrxj_readvariableop_1_resource: 2
$tivuqvlrxj_readvariableop_2_resource: 
identityИҐ!tivuqvlrxj/BiasAdd/ReadVariableOpҐ tivuqvlrxj/MatMul/ReadVariableOpҐ"tivuqvlrxj/MatMul_1/ReadVariableOpҐtivuqvlrxj/ReadVariableOpҐtivuqvlrxj/ReadVariableOp_1Ґtivuqvlrxj/ReadVariableOp_2ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2ѓ
 tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp)tivuqvlrxj_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 tivuqvlrxj/MatMul/ReadVariableOpІ
tivuqvlrxj/MatMulMatMulstrided_slice_2:output:0(tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMulµ
"tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp+tivuqvlrxj_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"tivuqvlrxj/MatMul_1/ReadVariableOp£
tivuqvlrxj/MatMul_1MatMulzeros:output:0*tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMul_1Ш
tivuqvlrxj/addAddV2tivuqvlrxj/MatMul:product:0tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/addЃ
!tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp*tivuqvlrxj_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!tivuqvlrxj/BiasAdd/ReadVariableOp•
tivuqvlrxj/BiasAddBiasAddtivuqvlrxj/add:z:0)tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/BiasAddz
tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
tivuqvlrxj/split/split_dimл
tivuqvlrxj/splitSplit#tivuqvlrxj/split/split_dim:output:0tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
tivuqvlrxj/splitХ
tivuqvlrxj/ReadVariableOpReadVariableOp"tivuqvlrxj_readvariableop_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOpО
tivuqvlrxj/mulMul!tivuqvlrxj/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mulО
tivuqvlrxj/add_1AddV2tivuqvlrxj/split:output:0tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_1{
tivuqvlrxj/SigmoidSigmoidtivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/SigmoidЫ
tivuqvlrxj/ReadVariableOp_1ReadVariableOp$tivuqvlrxj_readvariableop_1_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_1Ф
tivuqvlrxj/mul_1Mul#tivuqvlrxj/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_1Р
tivuqvlrxj/add_2AddV2tivuqvlrxj/split:output:1tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_2
tivuqvlrxj/Sigmoid_1Sigmoidtivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_1Й
tivuqvlrxj/mul_2Multivuqvlrxj/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_2w
tivuqvlrxj/TanhTanhtivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/TanhК
tivuqvlrxj/mul_3Multivuqvlrxj/Sigmoid:y:0tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_3Л
tivuqvlrxj/add_3AddV2tivuqvlrxj/mul_2:z:0tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_3Ы
tivuqvlrxj/ReadVariableOp_2ReadVariableOp$tivuqvlrxj_readvariableop_2_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_2Ш
tivuqvlrxj/mul_4Mul#tivuqvlrxj/ReadVariableOp_2:value:0tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_4Р
tivuqvlrxj/add_4AddV2tivuqvlrxj/split:output:3tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_4
tivuqvlrxj/Sigmoid_2Sigmoidtivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_2v
tivuqvlrxj/Tanh_1Tanhtivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Tanh_1О
tivuqvlrxj/mul_5Multivuqvlrxj/Sigmoid_2:y:0tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)tivuqvlrxj_matmul_readvariableop_resource+tivuqvlrxj_matmul_1_readvariableop_resource*tivuqvlrxj_biasadd_readvariableop_resource"tivuqvlrxj_readvariableop_resource$tivuqvlrxj_readvariableop_1_resource$tivuqvlrxj_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1304896*
condR
while_cond_1304895*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1Є
IdentityIdentitystrided_slice_3:output:0"^tivuqvlrxj/BiasAdd/ReadVariableOp!^tivuqvlrxj/MatMul/ReadVariableOp#^tivuqvlrxj/MatMul_1/ReadVariableOp^tivuqvlrxj/ReadVariableOp^tivuqvlrxj/ReadVariableOp_1^tivuqvlrxj/ReadVariableOp_2^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€ : : : : : : 2F
!tivuqvlrxj/BiasAdd/ReadVariableOp!tivuqvlrxj/BiasAdd/ReadVariableOp2D
 tivuqvlrxj/MatMul/ReadVariableOp tivuqvlrxj/MatMul/ReadVariableOp2H
"tivuqvlrxj/MatMul_1/ReadVariableOp"tivuqvlrxj/MatMul_1/ReadVariableOp26
tivuqvlrxj/ReadVariableOptivuqvlrxj/ReadVariableOp2:
tivuqvlrxj/ReadVariableOp_1tivuqvlrxj/ReadVariableOp_12:
tivuqvlrxj/ReadVariableOp_2tivuqvlrxj/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
аh
З
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1303669
inputs_0<
)fddnbxfcbs_matmul_readvariableop_resource:	А>
+fddnbxfcbs_matmul_1_readvariableop_resource:	 А9
*fddnbxfcbs_biasadd_readvariableop_resource:	А0
"fddnbxfcbs_readvariableop_resource: 2
$fddnbxfcbs_readvariableop_1_resource: 2
$fddnbxfcbs_readvariableop_2_resource: 
identityИҐ!fddnbxfcbs/BiasAdd/ReadVariableOpҐ fddnbxfcbs/MatMul/ReadVariableOpҐ"fddnbxfcbs/MatMul_1/ReadVariableOpҐfddnbxfcbs/ReadVariableOpҐfddnbxfcbs/ReadVariableOp_1Ґfddnbxfcbs/ReadVariableOp_2ҐwhileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2ѓ
 fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp)fddnbxfcbs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 fddnbxfcbs/MatMul/ReadVariableOpІ
fddnbxfcbs/MatMulMatMulstrided_slice_2:output:0(fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMulµ
"fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp+fddnbxfcbs_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"fddnbxfcbs/MatMul_1/ReadVariableOp£
fddnbxfcbs/MatMul_1MatMulzeros:output:0*fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMul_1Ш
fddnbxfcbs/addAddV2fddnbxfcbs/MatMul:product:0fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/addЃ
!fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp*fddnbxfcbs_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!fddnbxfcbs/BiasAdd/ReadVariableOp•
fddnbxfcbs/BiasAddBiasAddfddnbxfcbs/add:z:0)fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/BiasAddz
fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
fddnbxfcbs/split/split_dimл
fddnbxfcbs/splitSplit#fddnbxfcbs/split/split_dim:output:0fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
fddnbxfcbs/splitХ
fddnbxfcbs/ReadVariableOpReadVariableOp"fddnbxfcbs_readvariableop_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOpО
fddnbxfcbs/mulMul!fddnbxfcbs/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mulО
fddnbxfcbs/add_1AddV2fddnbxfcbs/split:output:0fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_1{
fddnbxfcbs/SigmoidSigmoidfddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/SigmoidЫ
fddnbxfcbs/ReadVariableOp_1ReadVariableOp$fddnbxfcbs_readvariableop_1_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_1Ф
fddnbxfcbs/mul_1Mul#fddnbxfcbs/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_1Р
fddnbxfcbs/add_2AddV2fddnbxfcbs/split:output:1fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_2
fddnbxfcbs/Sigmoid_1Sigmoidfddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_1Й
fddnbxfcbs/mul_2Mulfddnbxfcbs/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_2w
fddnbxfcbs/TanhTanhfddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/TanhК
fddnbxfcbs/mul_3Mulfddnbxfcbs/Sigmoid:y:0fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_3Л
fddnbxfcbs/add_3AddV2fddnbxfcbs/mul_2:z:0fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_3Ы
fddnbxfcbs/ReadVariableOp_2ReadVariableOp$fddnbxfcbs_readvariableop_2_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_2Ш
fddnbxfcbs/mul_4Mul#fddnbxfcbs/ReadVariableOp_2:value:0fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_4Р
fddnbxfcbs/add_4AddV2fddnbxfcbs/split:output:3fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_4
fddnbxfcbs/Sigmoid_2Sigmoidfddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_2v
fddnbxfcbs/Tanh_1Tanhfddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Tanh_1О
fddnbxfcbs/mul_5Mulfddnbxfcbs/Sigmoid_2:y:0fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)fddnbxfcbs_matmul_readvariableop_resource+fddnbxfcbs_matmul_1_readvariableop_resource*fddnbxfcbs_biasadd_readvariableop_resource"fddnbxfcbs_readvariableop_resource$fddnbxfcbs_readvariableop_1_resource$fddnbxfcbs_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1303568*
condR
while_cond_1303567*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1Љ
IdentityIdentitytranspose_1:y:0"^fddnbxfcbs/BiasAdd/ReadVariableOp!^fddnbxfcbs/MatMul/ReadVariableOp#^fddnbxfcbs/MatMul_1/ReadVariableOp^fddnbxfcbs/ReadVariableOp^fddnbxfcbs/ReadVariableOp_1^fddnbxfcbs/ReadVariableOp_2^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€: : : : : : 2F
!fddnbxfcbs/BiasAdd/ReadVariableOp!fddnbxfcbs/BiasAdd/ReadVariableOp2D
 fddnbxfcbs/MatMul/ReadVariableOp fddnbxfcbs/MatMul/ReadVariableOp2H
"fddnbxfcbs/MatMul_1/ReadVariableOp"fddnbxfcbs/MatMul_1/ReadVariableOp26
fddnbxfcbs/ReadVariableOpfddnbxfcbs/ReadVariableOp2:
fddnbxfcbs/ReadVariableOp_1fddnbxfcbs/ReadVariableOp_12:
fddnbxfcbs/ReadVariableOp_2fddnbxfcbs/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
з)
“
while_body_1300703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_tivuqvlrxj_1300727_0:	 А-
while_tivuqvlrxj_1300729_0:	 А)
while_tivuqvlrxj_1300731_0:	А(
while_tivuqvlrxj_1300733_0: (
while_tivuqvlrxj_1300735_0: (
while_tivuqvlrxj_1300737_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_tivuqvlrxj_1300727:	 А+
while_tivuqvlrxj_1300729:	 А'
while_tivuqvlrxj_1300731:	А&
while_tivuqvlrxj_1300733: &
while_tivuqvlrxj_1300735: &
while_tivuqvlrxj_1300737: ИҐ(while/tivuqvlrxj/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemґ
(while/tivuqvlrxj/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_tivuqvlrxj_1300727_0while_tivuqvlrxj_1300729_0while_tivuqvlrxj_1300731_0while_tivuqvlrxj_1300733_0while_tivuqvlrxj_1300735_0while_tivuqvlrxj_1300737_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_13006072*
(while/tivuqvlrxj/StatefulPartitionedCallх
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/tivuqvlrxj/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Й
while/IdentityIdentitywhile/add_1:z:0)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ј
while/Identity_4Identity1while/tivuqvlrxj/StatefulPartitionedCall:output:1)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ј
while/Identity_5Identity1while/tivuqvlrxj/StatefulPartitionedCall:output:2)^while/tivuqvlrxj/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"6
while_tivuqvlrxj_1300727while_tivuqvlrxj_1300727_0"6
while_tivuqvlrxj_1300729while_tivuqvlrxj_1300729_0"6
while_tivuqvlrxj_1300731while_tivuqvlrxj_1300731_0"6
while_tivuqvlrxj_1300733while_tivuqvlrxj_1300733_0"6
while_tivuqvlrxj_1300735while_tivuqvlrxj_1300735_0"6
while_tivuqvlrxj_1300737while_tivuqvlrxj_1300737_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2T
(while/tivuqvlrxj/StatefulPartitionedCall(while/tivuqvlrxj/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
»
”
%__inference_signature_wrapper_1302417

cvyyglfjwp
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	А
	unknown_4:	 А
	unknown_5:	А
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:	 А

unknown_10:	 А

unknown_11:	А

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:
identityИҐStatefulPartitionedCall∞
StatefulPartitionedCallStatefulPartitionedCall
cvyyglfjwpunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__wrapped_model_12995752
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:€€€€€€€€€
$
_user_specified_name
cvyyglfjwp
Л

н
while_cond_1299944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1299944___redundant_placeholder05
1while_while_cond_1299944___redundant_placeholder15
1while_while_cond_1299944___redundant_placeholder25
1while_while_cond_1299944___redundant_placeholder35
1while_while_cond_1299944___redundant_placeholder45
1while_while_cond_1299944___redundant_placeholder55
1while_while_cond_1299944___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ш
Л
kpulowglns_while_cond_13030112
.kpulowglns_while_kpulowglns_while_loop_counter8
4kpulowglns_while_kpulowglns_while_maximum_iterations 
kpulowglns_while_placeholder"
kpulowglns_while_placeholder_1"
kpulowglns_while_placeholder_2"
kpulowglns_while_placeholder_34
0kpulowglns_while_less_kpulowglns_strided_slice_1K
Gkpulowglns_while_kpulowglns_while_cond_1303011___redundant_placeholder0K
Gkpulowglns_while_kpulowglns_while_cond_1303011___redundant_placeholder1K
Gkpulowglns_while_kpulowglns_while_cond_1303011___redundant_placeholder2K
Gkpulowglns_while_kpulowglns_while_cond_1303011___redundant_placeholder3K
Gkpulowglns_while_kpulowglns_while_cond_1303011___redundant_placeholder4K
Gkpulowglns_while_kpulowglns_while_cond_1303011___redundant_placeholder5K
Gkpulowglns_while_kpulowglns_while_cond_1303011___redundant_placeholder6
kpulowglns_while_identity
І
kpulowglns/while/LessLesskpulowglns_while_placeholder0kpulowglns_while_less_kpulowglns_strided_slice_1*
T0*
_output_shapes
: 2
kpulowglns/while/Less~
kpulowglns/while/IdentityIdentitykpulowglns/while/Less:z:0*
T0
*
_output_shapes
: 2
kpulowglns/while/Identity"?
kpulowglns_while_identity"kpulowglns/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
¶h
Е
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304817

inputs<
)tivuqvlrxj_matmul_readvariableop_resource:	 А>
+tivuqvlrxj_matmul_1_readvariableop_resource:	 А9
*tivuqvlrxj_biasadd_readvariableop_resource:	А0
"tivuqvlrxj_readvariableop_resource: 2
$tivuqvlrxj_readvariableop_1_resource: 2
$tivuqvlrxj_readvariableop_2_resource: 
identityИҐ!tivuqvlrxj/BiasAdd/ReadVariableOpҐ tivuqvlrxj/MatMul/ReadVariableOpҐ"tivuqvlrxj/MatMul_1/ReadVariableOpҐtivuqvlrxj/ReadVariableOpҐtivuqvlrxj/ReadVariableOp_1Ґtivuqvlrxj/ReadVariableOp_2ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2ѓ
 tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp)tivuqvlrxj_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 tivuqvlrxj/MatMul/ReadVariableOpІ
tivuqvlrxj/MatMulMatMulstrided_slice_2:output:0(tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMulµ
"tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp+tivuqvlrxj_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"tivuqvlrxj/MatMul_1/ReadVariableOp£
tivuqvlrxj/MatMul_1MatMulzeros:output:0*tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMul_1Ш
tivuqvlrxj/addAddV2tivuqvlrxj/MatMul:product:0tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/addЃ
!tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp*tivuqvlrxj_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!tivuqvlrxj/BiasAdd/ReadVariableOp•
tivuqvlrxj/BiasAddBiasAddtivuqvlrxj/add:z:0)tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/BiasAddz
tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
tivuqvlrxj/split/split_dimл
tivuqvlrxj/splitSplit#tivuqvlrxj/split/split_dim:output:0tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
tivuqvlrxj/splitХ
tivuqvlrxj/ReadVariableOpReadVariableOp"tivuqvlrxj_readvariableop_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOpО
tivuqvlrxj/mulMul!tivuqvlrxj/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mulО
tivuqvlrxj/add_1AddV2tivuqvlrxj/split:output:0tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_1{
tivuqvlrxj/SigmoidSigmoidtivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/SigmoidЫ
tivuqvlrxj/ReadVariableOp_1ReadVariableOp$tivuqvlrxj_readvariableop_1_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_1Ф
tivuqvlrxj/mul_1Mul#tivuqvlrxj/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_1Р
tivuqvlrxj/add_2AddV2tivuqvlrxj/split:output:1tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_2
tivuqvlrxj/Sigmoid_1Sigmoidtivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_1Й
tivuqvlrxj/mul_2Multivuqvlrxj/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_2w
tivuqvlrxj/TanhTanhtivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/TanhК
tivuqvlrxj/mul_3Multivuqvlrxj/Sigmoid:y:0tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_3Л
tivuqvlrxj/add_3AddV2tivuqvlrxj/mul_2:z:0tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_3Ы
tivuqvlrxj/ReadVariableOp_2ReadVariableOp$tivuqvlrxj_readvariableop_2_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_2Ш
tivuqvlrxj/mul_4Mul#tivuqvlrxj/ReadVariableOp_2:value:0tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_4Р
tivuqvlrxj/add_4AddV2tivuqvlrxj/split:output:3tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_4
tivuqvlrxj/Sigmoid_2Sigmoidtivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_2v
tivuqvlrxj/Tanh_1Tanhtivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Tanh_1О
tivuqvlrxj/mul_5Multivuqvlrxj/Sigmoid_2:y:0tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)tivuqvlrxj_matmul_readvariableop_resource+tivuqvlrxj_matmul_1_readvariableop_resource*tivuqvlrxj_biasadd_readvariableop_resource"tivuqvlrxj_readvariableop_resource$tivuqvlrxj_readvariableop_1_resource$tivuqvlrxj_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1304716*
condR
while_cond_1304715*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1Є
IdentityIdentitystrided_slice_3:output:0"^tivuqvlrxj/BiasAdd/ReadVariableOp!^tivuqvlrxj/MatMul/ReadVariableOp#^tivuqvlrxj/MatMul_1/ReadVariableOp^tivuqvlrxj/ReadVariableOp^tivuqvlrxj/ReadVariableOp_1^tivuqvlrxj/ReadVariableOp_2^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€ : : : : : : 2F
!tivuqvlrxj/BiasAdd/ReadVariableOp!tivuqvlrxj/BiasAdd/ReadVariableOp2D
 tivuqvlrxj/MatMul/ReadVariableOp tivuqvlrxj/MatMul/ReadVariableOp2H
"tivuqvlrxj/MatMul_1/ReadVariableOp"tivuqvlrxj/MatMul_1/ReadVariableOp26
tivuqvlrxj/ReadVariableOptivuqvlrxj/ReadVariableOp2:
tivuqvlrxj/ReadVariableOp_1tivuqvlrxj/ReadVariableOp_12:
tivuqvlrxj/ReadVariableOp_2tivuqvlrxj/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Л

н
while_cond_1304895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304895___redundant_placeholder05
1while_while_cond_1304895___redundant_placeholder15
1while_while_cond_1304895___redundant_placeholder25
1while_while_cond_1304895___redundant_placeholder35
1while_while_cond_1304895___redundant_placeholder45
1while_while_cond_1304895___redundant_placeholder55
1while_while_cond_1304895___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Б
ј
,__inference_fddnbxfcbs_layer_call_fn_1305195

inputs
states_0
states_1
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity

identity_1

identity_2ИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_12996622
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€:€€€€€€€€€ :€€€€€€€€€ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
аY
З
while_body_1301751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_tivuqvlrxj_matmul_readvariableop_resource_0:	 АF
3while_tivuqvlrxj_matmul_1_readvariableop_resource_0:	 АA
2while_tivuqvlrxj_biasadd_readvariableop_resource_0:	А8
*while_tivuqvlrxj_readvariableop_resource_0: :
,while_tivuqvlrxj_readvariableop_1_resource_0: :
,while_tivuqvlrxj_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_tivuqvlrxj_matmul_readvariableop_resource:	 АD
1while_tivuqvlrxj_matmul_1_readvariableop_resource:	 А?
0while_tivuqvlrxj_biasadd_readvariableop_resource:	А6
(while_tivuqvlrxj_readvariableop_resource: 8
*while_tivuqvlrxj_readvariableop_1_resource: 8
*while_tivuqvlrxj_readvariableop_2_resource: ИҐ'while/tivuqvlrxj/BiasAdd/ReadVariableOpҐ&while/tivuqvlrxj/MatMul/ReadVariableOpҐ(while/tivuqvlrxj/MatMul_1/ReadVariableOpҐwhile/tivuqvlrxj/ReadVariableOpҐ!while/tivuqvlrxj/ReadVariableOp_1Ґ!while/tivuqvlrxj/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp1while_tivuqvlrxj_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/tivuqvlrxj/MatMul/ReadVariableOp—
while/tivuqvlrxj/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul…
(while/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp3while_tivuqvlrxj_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/tivuqvlrxj/MatMul_1/ReadVariableOpЇ
while/tivuqvlrxj/MatMul_1MatMulwhile_placeholder_20while/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul_1∞
while/tivuqvlrxj/addAddV2!while/tivuqvlrxj/MatMul:product:0#while/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/add¬
'while/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp2while_tivuqvlrxj_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/tivuqvlrxj/BiasAdd/ReadVariableOpљ
while/tivuqvlrxj/BiasAddBiasAddwhile/tivuqvlrxj/add:z:0/while/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/BiasAddЖ
 while/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/tivuqvlrxj/split/split_dimГ
while/tivuqvlrxj/splitSplit)while/tivuqvlrxj/split/split_dim:output:0!while/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/tivuqvlrxj/split©
while/tivuqvlrxj/ReadVariableOpReadVariableOp*while_tivuqvlrxj_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/tivuqvlrxj/ReadVariableOp£
while/tivuqvlrxj/mulMul'while/tivuqvlrxj/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul¶
while/tivuqvlrxj/add_1AddV2while/tivuqvlrxj/split:output:0while/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_1Н
while/tivuqvlrxj/SigmoidSigmoidwhile/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoidѓ
!while/tivuqvlrxj/ReadVariableOp_1ReadVariableOp,while_tivuqvlrxj_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_1©
while/tivuqvlrxj/mul_1Mul)while/tivuqvlrxj/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_1®
while/tivuqvlrxj/add_2AddV2while/tivuqvlrxj/split:output:1while/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_2С
while/tivuqvlrxj/Sigmoid_1Sigmoidwhile/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_1Ю
while/tivuqvlrxj/mul_2Mulwhile/tivuqvlrxj/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_2Й
while/tivuqvlrxj/TanhTanhwhile/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/TanhҐ
while/tivuqvlrxj/mul_3Mulwhile/tivuqvlrxj/Sigmoid:y:0while/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_3£
while/tivuqvlrxj/add_3AddV2while/tivuqvlrxj/mul_2:z:0while/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_3ѓ
!while/tivuqvlrxj/ReadVariableOp_2ReadVariableOp,while_tivuqvlrxj_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_2∞
while/tivuqvlrxj/mul_4Mul)while/tivuqvlrxj/ReadVariableOp_2:value:0while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_4®
while/tivuqvlrxj/add_4AddV2while/tivuqvlrxj/split:output:3while/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_4С
while/tivuqvlrxj/Sigmoid_2Sigmoidwhile/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_2И
while/tivuqvlrxj/Tanh_1Tanhwhile/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Tanh_1¶
while/tivuqvlrxj/mul_5Mulwhile/tivuqvlrxj/Sigmoid_2:y:0while/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/tivuqvlrxj/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/tivuqvlrxj/mul_5:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/tivuqvlrxj/add_3:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_tivuqvlrxj_biasadd_readvariableop_resource2while_tivuqvlrxj_biasadd_readvariableop_resource_0"h
1while_tivuqvlrxj_matmul_1_readvariableop_resource3while_tivuqvlrxj_matmul_1_readvariableop_resource_0"d
/while_tivuqvlrxj_matmul_readvariableop_resource1while_tivuqvlrxj_matmul_readvariableop_resource_0"Z
*while_tivuqvlrxj_readvariableop_1_resource,while_tivuqvlrxj_readvariableop_1_resource_0"Z
*while_tivuqvlrxj_readvariableop_2_resource,while_tivuqvlrxj_readvariableop_2_resource_0"V
(while_tivuqvlrxj_readvariableop_resource*while_tivuqvlrxj_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/tivuqvlrxj/BiasAdd/ReadVariableOp'while/tivuqvlrxj/BiasAdd/ReadVariableOp2P
&while/tivuqvlrxj/MatMul/ReadVariableOp&while/tivuqvlrxj/MatMul/ReadVariableOp2T
(while/tivuqvlrxj/MatMul_1/ReadVariableOp(while/tivuqvlrxj/MatMul_1/ReadVariableOp2B
while/tivuqvlrxj/ReadVariableOpwhile/tivuqvlrxj/ReadVariableOp2F
!while/tivuqvlrxj/ReadVariableOp_1!while/tivuqvlrxj/ReadVariableOp_12F
!while/tivuqvlrxj/ReadVariableOp_2!while/tivuqvlrxj/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
±'
≥
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_1299662

inputs

states
states_11
matmul_readvariableop_resource:	А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
splitt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpe
mulMulReadVariableOp:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5я
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityг

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1г

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€:€€€€€€€€€ :€€€€€€€€€ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates
Щp
 
htheqsxgix_while_body_13031882
.htheqsxgix_while_htheqsxgix_while_loop_counter8
4htheqsxgix_while_htheqsxgix_while_maximum_iterations 
htheqsxgix_while_placeholder"
htheqsxgix_while_placeholder_1"
htheqsxgix_while_placeholder_2"
htheqsxgix_while_placeholder_31
-htheqsxgix_while_htheqsxgix_strided_slice_1_0m
ihtheqsxgix_while_tensorarrayv2read_tensorlistgetitem_htheqsxgix_tensorarrayunstack_tensorlistfromtensor_0O
<htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource_0:	 АQ
>htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource_0:	 АL
=htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource_0:	АC
5htheqsxgix_while_tivuqvlrxj_readvariableop_resource_0: E
7htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource_0: E
7htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource_0: 
htheqsxgix_while_identity
htheqsxgix_while_identity_1
htheqsxgix_while_identity_2
htheqsxgix_while_identity_3
htheqsxgix_while_identity_4
htheqsxgix_while_identity_5/
+htheqsxgix_while_htheqsxgix_strided_slice_1k
ghtheqsxgix_while_tensorarrayv2read_tensorlistgetitem_htheqsxgix_tensorarrayunstack_tensorlistfromtensorM
:htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource:	 АO
<htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource:	 АJ
;htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource:	АA
3htheqsxgix_while_tivuqvlrxj_readvariableop_resource: C
5htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource: C
5htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource: ИҐ2htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOpҐ1htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOpҐ3htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOpҐ*htheqsxgix/while/tivuqvlrxj/ReadVariableOpҐ,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1Ґ,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2ў
Bhtheqsxgix/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2D
Bhtheqsxgix/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4htheqsxgix/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemihtheqsxgix_while_tensorarrayv2read_tensorlistgetitem_htheqsxgix_tensorarrayunstack_tensorlistfromtensor_0htheqsxgix_while_placeholderKhtheqsxgix/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype026
4htheqsxgix/while/TensorArrayV2Read/TensorListGetItemд
1htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp<htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype023
1htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOpэ
"htheqsxgix/while/tivuqvlrxj/MatMulMatMul;htheqsxgix/while/TensorArrayV2Read/TensorListGetItem:item:09htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"htheqsxgix/while/tivuqvlrxj/MatMulк
3htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp>htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOpж
$htheqsxgix/while/tivuqvlrxj/MatMul_1MatMulhtheqsxgix_while_placeholder_2;htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2&
$htheqsxgix/while/tivuqvlrxj/MatMul_1№
htheqsxgix/while/tivuqvlrxj/addAddV2,htheqsxgix/while/tivuqvlrxj/MatMul:product:0.htheqsxgix/while/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
htheqsxgix/while/tivuqvlrxj/addг
2htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp=htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOpй
#htheqsxgix/while/tivuqvlrxj/BiasAddBiasAdd#htheqsxgix/while/tivuqvlrxj/add:z:0:htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2%
#htheqsxgix/while/tivuqvlrxj/BiasAddЬ
+htheqsxgix/while/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+htheqsxgix/while/tivuqvlrxj/split/split_dimѓ
!htheqsxgix/while/tivuqvlrxj/splitSplit4htheqsxgix/while/tivuqvlrxj/split/split_dim:output:0,htheqsxgix/while/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2#
!htheqsxgix/while/tivuqvlrxj/split 
*htheqsxgix/while/tivuqvlrxj/ReadVariableOpReadVariableOp5htheqsxgix_while_tivuqvlrxj_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*htheqsxgix/while/tivuqvlrxj/ReadVariableOpѕ
htheqsxgix/while/tivuqvlrxj/mulMul2htheqsxgix/while/tivuqvlrxj/ReadVariableOp:value:0htheqsxgix_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2!
htheqsxgix/while/tivuqvlrxj/mul“
!htheqsxgix/while/tivuqvlrxj/add_1AddV2*htheqsxgix/while/tivuqvlrxj/split:output:0#htheqsxgix/while/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/add_1Ѓ
#htheqsxgix/while/tivuqvlrxj/SigmoidSigmoid%htheqsxgix/while/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#htheqsxgix/while/tivuqvlrxj/Sigmoid–
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1ReadVariableOp7htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1’
!htheqsxgix/while/tivuqvlrxj/mul_1Mul4htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1:value:0htheqsxgix_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/mul_1‘
!htheqsxgix/while/tivuqvlrxj/add_2AddV2*htheqsxgix/while/tivuqvlrxj/split:output:1%htheqsxgix/while/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/add_2≤
%htheqsxgix/while/tivuqvlrxj/Sigmoid_1Sigmoid%htheqsxgix/while/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%htheqsxgix/while/tivuqvlrxj/Sigmoid_1 
!htheqsxgix/while/tivuqvlrxj/mul_2Mul)htheqsxgix/while/tivuqvlrxj/Sigmoid_1:y:0htheqsxgix_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/mul_2™
 htheqsxgix/while/tivuqvlrxj/TanhTanh*htheqsxgix/while/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 htheqsxgix/while/tivuqvlrxj/Tanhќ
!htheqsxgix/while/tivuqvlrxj/mul_3Mul'htheqsxgix/while/tivuqvlrxj/Sigmoid:y:0$htheqsxgix/while/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/mul_3ѕ
!htheqsxgix/while/tivuqvlrxj/add_3AddV2%htheqsxgix/while/tivuqvlrxj/mul_2:z:0%htheqsxgix/while/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/add_3–
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2ReadVariableOp7htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2№
!htheqsxgix/while/tivuqvlrxj/mul_4Mul4htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2:value:0%htheqsxgix/while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/mul_4‘
!htheqsxgix/while/tivuqvlrxj/add_4AddV2*htheqsxgix/while/tivuqvlrxj/split:output:3%htheqsxgix/while/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/add_4≤
%htheqsxgix/while/tivuqvlrxj/Sigmoid_2Sigmoid%htheqsxgix/while/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%htheqsxgix/while/tivuqvlrxj/Sigmoid_2©
"htheqsxgix/while/tivuqvlrxj/Tanh_1Tanh%htheqsxgix/while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"htheqsxgix/while/tivuqvlrxj/Tanh_1“
!htheqsxgix/while/tivuqvlrxj/mul_5Mul)htheqsxgix/while/tivuqvlrxj/Sigmoid_2:y:0&htheqsxgix/while/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/mul_5Х
5htheqsxgix/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemhtheqsxgix_while_placeholder_1htheqsxgix_while_placeholder%htheqsxgix/while/tivuqvlrxj/mul_5:z:0*
_output_shapes
: *
element_dtype027
5htheqsxgix/while/TensorArrayV2Write/TensorListSetItemr
htheqsxgix/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
htheqsxgix/while/add/yХ
htheqsxgix/while/addAddV2htheqsxgix_while_placeholderhtheqsxgix/while/add/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/while/addv
htheqsxgix/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
htheqsxgix/while/add_1/y≠
htheqsxgix/while/add_1AddV2.htheqsxgix_while_htheqsxgix_while_loop_counter!htheqsxgix/while/add_1/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/while/add_1©
htheqsxgix/while/IdentityIdentityhtheqsxgix/while/add_1:z:03^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
htheqsxgix/while/Identity«
htheqsxgix/while/Identity_1Identity4htheqsxgix_while_htheqsxgix_while_maximum_iterations3^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
htheqsxgix/while/Identity_1Ђ
htheqsxgix/while/Identity_2Identityhtheqsxgix/while/add:z:03^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
htheqsxgix/while/Identity_2Ў
htheqsxgix/while/Identity_3IdentityEhtheqsxgix/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
htheqsxgix/while/Identity_3…
htheqsxgix/while/Identity_4Identity%htheqsxgix/while/tivuqvlrxj/mul_5:z:03^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/while/Identity_4…
htheqsxgix/while/Identity_5Identity%htheqsxgix/while/tivuqvlrxj/add_3:z:03^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/while/Identity_5"\
+htheqsxgix_while_htheqsxgix_strided_slice_1-htheqsxgix_while_htheqsxgix_strided_slice_1_0"?
htheqsxgix_while_identity"htheqsxgix/while/Identity:output:0"C
htheqsxgix_while_identity_1$htheqsxgix/while/Identity_1:output:0"C
htheqsxgix_while_identity_2$htheqsxgix/while/Identity_2:output:0"C
htheqsxgix_while_identity_3$htheqsxgix/while/Identity_3:output:0"C
htheqsxgix_while_identity_4$htheqsxgix/while/Identity_4:output:0"C
htheqsxgix_while_identity_5$htheqsxgix/while/Identity_5:output:0"‘
ghtheqsxgix_while_tensorarrayv2read_tensorlistgetitem_htheqsxgix_tensorarrayunstack_tensorlistfromtensorihtheqsxgix_while_tensorarrayv2read_tensorlistgetitem_htheqsxgix_tensorarrayunstack_tensorlistfromtensor_0"|
;htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource=htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource_0"~
<htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource>htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource_0"z
:htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource<htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource_0"p
5htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource7htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource_0"p
5htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource7htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource_0"l
3htheqsxgix_while_tivuqvlrxj_readvariableop_resource5htheqsxgix_while_tivuqvlrxj_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2h
2htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2f
1htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp1htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp2j
3htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp3htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp2X
*htheqsxgix/while/tivuqvlrxj/ReadVariableOp*htheqsxgix/while/tivuqvlrxj/ReadVariableOp2\
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_12\
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Л

н
while_cond_1300702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1300702___redundant_placeholder05
1while_while_cond_1300702___redundant_placeholder15
1while_while_cond_1300702___redundant_placeholder25
1while_while_cond_1300702___redundant_placeholder35
1while_while_cond_1300702___redundant_placeholder45
1while_while_cond_1300702___redundant_placeholder55
1while_while_cond_1300702___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Л

н
while_cond_1304355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304355___redundant_placeholder05
1while_while_cond_1304355___redundant_placeholder15
1while_while_cond_1304355___redundant_placeholder25
1while_while_cond_1304355___redundant_placeholder35
1while_while_cond_1304355___redundant_placeholder45
1while_while_cond_1304355___redundant_placeholder55
1while_while_cond_1304355___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Л

н
while_cond_1304715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304715___redundant_placeholder05
1while_while_cond_1304715___redundant_placeholder15
1while_while_cond_1304715___redundant_placeholder25
1while_while_cond_1304715___redundant_placeholder35
1while_while_cond_1304715___redundant_placeholder45
1while_while_cond_1304715___redundant_placeholder55
1while_while_cond_1304715___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Е	
Ж
,__inference_kpulowglns_layer_call_fn_1304243
inputs_0
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИҐStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_kpulowglns_layer_call_and_return_conditional_losses_13000252
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
±'
≥
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_1300607

inputs

states
states_11
matmul_readvariableop_resource:	 А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
splitt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpe
mulMulReadVariableOp:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5я
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityг

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1г

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates
≥F
к
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1300025

inputs%
fddnbxfcbs_1299926:	А%
fddnbxfcbs_1299928:	 А!
fddnbxfcbs_1299930:	А 
fddnbxfcbs_1299932:  
fddnbxfcbs_1299934:  
fddnbxfcbs_1299936: 
identityИҐ"fddnbxfcbs/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Џ
"fddnbxfcbs/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0fddnbxfcbs_1299926fddnbxfcbs_1299928fddnbxfcbs_1299930fddnbxfcbs_1299932fddnbxfcbs_1299934fddnbxfcbs_1299936*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_12998492$
"fddnbxfcbs/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterр
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0fddnbxfcbs_1299926fddnbxfcbs_1299928fddnbxfcbs_1299930fddnbxfcbs_1299932fddnbxfcbs_1299934fddnbxfcbs_1299936*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1299945*
condR
while_cond_1299944*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1Э
IdentityIdentitytranspose_1:y:0#^fddnbxfcbs/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€: : : : : : 2H
"fddnbxfcbs/StatefulPartitionedCall"fddnbxfcbs/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Л

н
while_cond_1303567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1303567___redundant_placeholder05
1while_while_cond_1303567___redundant_placeholder15
1while_while_cond_1303567___redundant_placeholder25
1while_while_cond_1303567___redundant_placeholder35
1while_while_cond_1303567___redundant_placeholder45
1while_while_cond_1303567___redundant_placeholder55
1while_while_cond_1303567___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Ъ
c
G__inference_xrqvvalojb_layer_call_and_return_conditional_losses_1303484

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2†
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
”
Д
,__inference_htheqsxgix_layer_call_fn_1305048

inputs
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИҐStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_13015732
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
№Ж
П
(sequential_kpulowglns_while_body_1299292H
Dsequential_kpulowglns_while_sequential_kpulowglns_while_loop_counterN
Jsequential_kpulowglns_while_sequential_kpulowglns_while_maximum_iterations+
'sequential_kpulowglns_while_placeholder-
)sequential_kpulowglns_while_placeholder_1-
)sequential_kpulowglns_while_placeholder_2-
)sequential_kpulowglns_while_placeholder_3G
Csequential_kpulowglns_while_sequential_kpulowglns_strided_slice_1_0Г
sequential_kpulowglns_while_tensorarrayv2read_tensorlistgetitem_sequential_kpulowglns_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource_0:	А\
Isequential_kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource_0:	 АW
Hsequential_kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource_0:	АN
@sequential_kpulowglns_while_fddnbxfcbs_readvariableop_resource_0: P
Bsequential_kpulowglns_while_fddnbxfcbs_readvariableop_1_resource_0: P
Bsequential_kpulowglns_while_fddnbxfcbs_readvariableop_2_resource_0: (
$sequential_kpulowglns_while_identity*
&sequential_kpulowglns_while_identity_1*
&sequential_kpulowglns_while_identity_2*
&sequential_kpulowglns_while_identity_3*
&sequential_kpulowglns_while_identity_4*
&sequential_kpulowglns_while_identity_5E
Asequential_kpulowglns_while_sequential_kpulowglns_strided_slice_1Б
}sequential_kpulowglns_while_tensorarrayv2read_tensorlistgetitem_sequential_kpulowglns_tensorarrayunstack_tensorlistfromtensorX
Esequential_kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource:	АZ
Gsequential_kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource:	 АU
Fsequential_kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource:	АL
>sequential_kpulowglns_while_fddnbxfcbs_readvariableop_resource: N
@sequential_kpulowglns_while_fddnbxfcbs_readvariableop_1_resource: N
@sequential_kpulowglns_while_fddnbxfcbs_readvariableop_2_resource: ИҐ=sequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOpҐ<sequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOpҐ>sequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOpҐ5sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOpҐ7sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_1Ґ7sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_2п
Msequential/kpulowglns/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2O
Msequential/kpulowglns/while/TensorArrayV2Read/TensorListGetItem/element_shape„
?sequential/kpulowglns/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_kpulowglns_while_tensorarrayv2read_tensorlistgetitem_sequential_kpulowglns_tensorarrayunstack_tensorlistfromtensor_0'sequential_kpulowglns_while_placeholderVsequential/kpulowglns/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02A
?sequential/kpulowglns/while/TensorArrayV2Read/TensorListGetItemЕ
<sequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOpGsequential_kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02>
<sequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp©
-sequential/kpulowglns/while/fddnbxfcbs/MatMulMatMulFsequential/kpulowglns/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2/
-sequential/kpulowglns/while/fddnbxfcbs/MatMulЛ
>sequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOpIsequential_kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02@
>sequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOpТ
/sequential/kpulowglns/while/fddnbxfcbs/MatMul_1MatMul)sequential_kpulowglns_while_placeholder_2Fsequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А21
/sequential/kpulowglns/while/fddnbxfcbs/MatMul_1И
*sequential/kpulowglns/while/fddnbxfcbs/addAddV27sequential/kpulowglns/while/fddnbxfcbs/MatMul:product:09sequential/kpulowglns/while/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2,
*sequential/kpulowglns/while/fddnbxfcbs/addД
=sequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOpHsequential_kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOpХ
.sequential/kpulowglns/while/fddnbxfcbs/BiasAddBiasAdd.sequential/kpulowglns/while/fddnbxfcbs/add:z:0Esequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А20
.sequential/kpulowglns/while/fddnbxfcbs/BiasAdd≤
6sequential/kpulowglns/while/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/kpulowglns/while/fddnbxfcbs/split/split_dimџ
,sequential/kpulowglns/while/fddnbxfcbs/splitSplit?sequential/kpulowglns/while/fddnbxfcbs/split/split_dim:output:07sequential/kpulowglns/while/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2.
,sequential/kpulowglns/while/fddnbxfcbs/splitл
5sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOpReadVariableOp@sequential_kpulowglns_while_fddnbxfcbs_readvariableop_resource_0*
_output_shapes
: *
dtype027
5sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOpы
*sequential/kpulowglns/while/fddnbxfcbs/mulMul=sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp:value:0)sequential_kpulowglns_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2,
*sequential/kpulowglns/while/fddnbxfcbs/mulю
,sequential/kpulowglns/while/fddnbxfcbs/add_1AddV25sequential/kpulowglns/while/fddnbxfcbs/split:output:0.sequential/kpulowglns/while/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/kpulowglns/while/fddnbxfcbs/add_1ѕ
.sequential/kpulowglns/while/fddnbxfcbs/SigmoidSigmoid0sequential/kpulowglns/while/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 20
.sequential/kpulowglns/while/fddnbxfcbs/Sigmoidс
7sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_1ReadVariableOpBsequential_kpulowglns_while_fddnbxfcbs_readvariableop_1_resource_0*
_output_shapes
: *
dtype029
7sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_1Б
,sequential/kpulowglns/while/fddnbxfcbs/mul_1Mul?sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_1:value:0)sequential_kpulowglns_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/kpulowglns/while/fddnbxfcbs/mul_1А
,sequential/kpulowglns/while/fddnbxfcbs/add_2AddV25sequential/kpulowglns/while/fddnbxfcbs/split:output:10sequential/kpulowglns/while/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/kpulowglns/while/fddnbxfcbs/add_2”
0sequential/kpulowglns/while/fddnbxfcbs/Sigmoid_1Sigmoid0sequential/kpulowglns/while/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0sequential/kpulowglns/while/fddnbxfcbs/Sigmoid_1ц
,sequential/kpulowglns/while/fddnbxfcbs/mul_2Mul4sequential/kpulowglns/while/fddnbxfcbs/Sigmoid_1:y:0)sequential_kpulowglns_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/kpulowglns/while/fddnbxfcbs/mul_2Ћ
+sequential/kpulowglns/while/fddnbxfcbs/TanhTanh5sequential/kpulowglns/while/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2-
+sequential/kpulowglns/while/fddnbxfcbs/Tanhъ
,sequential/kpulowglns/while/fddnbxfcbs/mul_3Mul2sequential/kpulowglns/while/fddnbxfcbs/Sigmoid:y:0/sequential/kpulowglns/while/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/kpulowglns/while/fddnbxfcbs/mul_3ы
,sequential/kpulowglns/while/fddnbxfcbs/add_3AddV20sequential/kpulowglns/while/fddnbxfcbs/mul_2:z:00sequential/kpulowglns/while/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/kpulowglns/while/fddnbxfcbs/add_3с
7sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_2ReadVariableOpBsequential_kpulowglns_while_fddnbxfcbs_readvariableop_2_resource_0*
_output_shapes
: *
dtype029
7sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_2И
,sequential/kpulowglns/while/fddnbxfcbs/mul_4Mul?sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_2:value:00sequential/kpulowglns/while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/kpulowglns/while/fddnbxfcbs/mul_4А
,sequential/kpulowglns/while/fddnbxfcbs/add_4AddV25sequential/kpulowglns/while/fddnbxfcbs/split:output:30sequential/kpulowglns/while/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/kpulowglns/while/fddnbxfcbs/add_4”
0sequential/kpulowglns/while/fddnbxfcbs/Sigmoid_2Sigmoid0sequential/kpulowglns/while/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 22
0sequential/kpulowglns/while/fddnbxfcbs/Sigmoid_2 
-sequential/kpulowglns/while/fddnbxfcbs/Tanh_1Tanh0sequential/kpulowglns/while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2/
-sequential/kpulowglns/while/fddnbxfcbs/Tanh_1ю
,sequential/kpulowglns/while/fddnbxfcbs/mul_5Mul4sequential/kpulowglns/while/fddnbxfcbs/Sigmoid_2:y:01sequential/kpulowglns/while/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2.
,sequential/kpulowglns/while/fddnbxfcbs/mul_5ћ
@sequential/kpulowglns/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_kpulowglns_while_placeholder_1'sequential_kpulowglns_while_placeholder0sequential/kpulowglns/while/fddnbxfcbs/mul_5:z:0*
_output_shapes
: *
element_dtype02B
@sequential/kpulowglns/while/TensorArrayV2Write/TensorListSetItemИ
!sequential/kpulowglns/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/kpulowglns/while/add/yЅ
sequential/kpulowglns/while/addAddV2'sequential_kpulowglns_while_placeholder*sequential/kpulowglns/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/kpulowglns/while/addМ
#sequential/kpulowglns/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/kpulowglns/while/add_1/yд
!sequential/kpulowglns/while/add_1AddV2Dsequential_kpulowglns_while_sequential_kpulowglns_while_loop_counter,sequential/kpulowglns/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/kpulowglns/while/add_1М
$sequential/kpulowglns/while/IdentityIdentity%sequential/kpulowglns/while/add_1:z:0>^sequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp=^sequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp?^sequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp6^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp8^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_18^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2&
$sequential/kpulowglns/while/Identityµ
&sequential/kpulowglns/while/Identity_1IdentityJsequential_kpulowglns_while_sequential_kpulowglns_while_maximum_iterations>^sequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp=^sequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp?^sequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp6^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp8^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_18^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/kpulowglns/while/Identity_1О
&sequential/kpulowglns/while/Identity_2Identity#sequential/kpulowglns/while/add:z:0>^sequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp=^sequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp?^sequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp6^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp8^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_18^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/kpulowglns/while/Identity_2ї
&sequential/kpulowglns/while/Identity_3IdentityPsequential/kpulowglns/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp=^sequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp?^sequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp6^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp8^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_18^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/kpulowglns/while/Identity_3ђ
&sequential/kpulowglns/while/Identity_4Identity0sequential/kpulowglns/while/fddnbxfcbs/mul_5:z:0>^sequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp=^sequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp?^sequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp6^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp8^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_18^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/kpulowglns/while/Identity_4ђ
&sequential/kpulowglns/while/Identity_5Identity0sequential/kpulowglns/while/fddnbxfcbs/add_3:z:0>^sequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp=^sequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp?^sequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp6^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp8^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_18^sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2(
&sequential/kpulowglns/while/Identity_5"Т
Fsequential_kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resourceHsequential_kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource_0"Ф
Gsequential_kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resourceIsequential_kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource_0"Р
Esequential_kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resourceGsequential_kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource_0"Ж
@sequential_kpulowglns_while_fddnbxfcbs_readvariableop_1_resourceBsequential_kpulowglns_while_fddnbxfcbs_readvariableop_1_resource_0"Ж
@sequential_kpulowglns_while_fddnbxfcbs_readvariableop_2_resourceBsequential_kpulowglns_while_fddnbxfcbs_readvariableop_2_resource_0"В
>sequential_kpulowglns_while_fddnbxfcbs_readvariableop_resource@sequential_kpulowglns_while_fddnbxfcbs_readvariableop_resource_0"U
$sequential_kpulowglns_while_identity-sequential/kpulowglns/while/Identity:output:0"Y
&sequential_kpulowglns_while_identity_1/sequential/kpulowglns/while/Identity_1:output:0"Y
&sequential_kpulowglns_while_identity_2/sequential/kpulowglns/while/Identity_2:output:0"Y
&sequential_kpulowglns_while_identity_3/sequential/kpulowglns/while/Identity_3:output:0"Y
&sequential_kpulowglns_while_identity_4/sequential/kpulowglns/while/Identity_4:output:0"Y
&sequential_kpulowglns_while_identity_5/sequential/kpulowglns/while/Identity_5:output:0"И
Asequential_kpulowglns_while_sequential_kpulowglns_strided_slice_1Csequential_kpulowglns_while_sequential_kpulowglns_strided_slice_1_0"А
}sequential_kpulowglns_while_tensorarrayv2read_tensorlistgetitem_sequential_kpulowglns_tensorarrayunstack_tensorlistfromtensorsequential_kpulowglns_while_tensorarrayv2read_tensorlistgetitem_sequential_kpulowglns_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2~
=sequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp=sequential/kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2|
<sequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp<sequential/kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp2А
>sequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp>sequential/kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp2n
5sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp5sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp2r
7sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_17sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_12r
7sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_27sequential/kpulowglns/while/fddnbxfcbs/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
”
Д
,__inference_htheqsxgix_layer_call_fn_1305065

inputs
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИҐStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_13018522
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
з)
“
while_body_1299945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_fddnbxfcbs_1299969_0:	А-
while_fddnbxfcbs_1299971_0:	 А)
while_fddnbxfcbs_1299973_0:	А(
while_fddnbxfcbs_1299975_0: (
while_fddnbxfcbs_1299977_0: (
while_fddnbxfcbs_1299979_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_fddnbxfcbs_1299969:	А+
while_fddnbxfcbs_1299971:	 А'
while_fddnbxfcbs_1299973:	А&
while_fddnbxfcbs_1299975: &
while_fddnbxfcbs_1299977: &
while_fddnbxfcbs_1299979: ИҐ(while/fddnbxfcbs/StatefulPartitionedCall√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemґ
(while/fddnbxfcbs/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_fddnbxfcbs_1299969_0while_fddnbxfcbs_1299971_0while_fddnbxfcbs_1299973_0while_fddnbxfcbs_1299975_0while_fddnbxfcbs_1299977_0while_fddnbxfcbs_1299979_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_12998492*
(while/fddnbxfcbs/StatefulPartitionedCallх
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/fddnbxfcbs/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Й
while/IdentityIdentitywhile/add_1:z:0)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3ј
while/Identity_4Identity1while/fddnbxfcbs/StatefulPartitionedCall:output:1)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ј
while/Identity_5Identity1while/fddnbxfcbs/StatefulPartitionedCall:output:2)^while/fddnbxfcbs/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5"6
while_fddnbxfcbs_1299969while_fddnbxfcbs_1299969_0"6
while_fddnbxfcbs_1299971while_fddnbxfcbs_1299971_0"6
while_fddnbxfcbs_1299973while_fddnbxfcbs_1299973_0"6
while_fddnbxfcbs_1299975while_fddnbxfcbs_1299975_0"6
while_fddnbxfcbs_1299977while_fddnbxfcbs_1299977_0"6
while_fddnbxfcbs_1299979while_fddnbxfcbs_1299979_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2T
(while/fddnbxfcbs/StatefulPartitionedCall(while/fddnbxfcbs/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Б
ј
,__inference_tivuqvlrxj_layer_call_fn_1305352

inputs
states_0
states_1
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity

identity_1

identity_2ИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_13006072
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
аY
З
while_body_1303568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_fddnbxfcbs_matmul_readvariableop_resource_0:	АF
3while_fddnbxfcbs_matmul_1_readvariableop_resource_0:	 АA
2while_fddnbxfcbs_biasadd_readvariableop_resource_0:	А8
*while_fddnbxfcbs_readvariableop_resource_0: :
,while_fddnbxfcbs_readvariableop_1_resource_0: :
,while_fddnbxfcbs_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_fddnbxfcbs_matmul_readvariableop_resource:	АD
1while_fddnbxfcbs_matmul_1_readvariableop_resource:	 А?
0while_fddnbxfcbs_biasadd_readvariableop_resource:	А6
(while_fddnbxfcbs_readvariableop_resource: 8
*while_fddnbxfcbs_readvariableop_1_resource: 8
*while_fddnbxfcbs_readvariableop_2_resource: ИҐ'while/fddnbxfcbs/BiasAdd/ReadVariableOpҐ&while/fddnbxfcbs/MatMul/ReadVariableOpҐ(while/fddnbxfcbs/MatMul_1/ReadVariableOpҐwhile/fddnbxfcbs/ReadVariableOpҐ!while/fddnbxfcbs/ReadVariableOp_1Ґ!while/fddnbxfcbs/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp1while_fddnbxfcbs_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/fddnbxfcbs/MatMul/ReadVariableOp—
while/fddnbxfcbs/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul…
(while/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp3while_fddnbxfcbs_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/fddnbxfcbs/MatMul_1/ReadVariableOpЇ
while/fddnbxfcbs/MatMul_1MatMulwhile_placeholder_20while/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul_1∞
while/fddnbxfcbs/addAddV2!while/fddnbxfcbs/MatMul:product:0#while/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/add¬
'while/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp2while_fddnbxfcbs_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/fddnbxfcbs/BiasAdd/ReadVariableOpљ
while/fddnbxfcbs/BiasAddBiasAddwhile/fddnbxfcbs/add:z:0/while/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/BiasAddЖ
 while/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/fddnbxfcbs/split/split_dimГ
while/fddnbxfcbs/splitSplit)while/fddnbxfcbs/split/split_dim:output:0!while/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/fddnbxfcbs/split©
while/fddnbxfcbs/ReadVariableOpReadVariableOp*while_fddnbxfcbs_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/fddnbxfcbs/ReadVariableOp£
while/fddnbxfcbs/mulMul'while/fddnbxfcbs/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul¶
while/fddnbxfcbs/add_1AddV2while/fddnbxfcbs/split:output:0while/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_1Н
while/fddnbxfcbs/SigmoidSigmoidwhile/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoidѓ
!while/fddnbxfcbs/ReadVariableOp_1ReadVariableOp,while_fddnbxfcbs_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_1©
while/fddnbxfcbs/mul_1Mul)while/fddnbxfcbs/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_1®
while/fddnbxfcbs/add_2AddV2while/fddnbxfcbs/split:output:1while/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_2С
while/fddnbxfcbs/Sigmoid_1Sigmoidwhile/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_1Ю
while/fddnbxfcbs/mul_2Mulwhile/fddnbxfcbs/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_2Й
while/fddnbxfcbs/TanhTanhwhile/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/TanhҐ
while/fddnbxfcbs/mul_3Mulwhile/fddnbxfcbs/Sigmoid:y:0while/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_3£
while/fddnbxfcbs/add_3AddV2while/fddnbxfcbs/mul_2:z:0while/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_3ѓ
!while/fddnbxfcbs/ReadVariableOp_2ReadVariableOp,while_fddnbxfcbs_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_2∞
while/fddnbxfcbs/mul_4Mul)while/fddnbxfcbs/ReadVariableOp_2:value:0while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_4®
while/fddnbxfcbs/add_4AddV2while/fddnbxfcbs/split:output:3while/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_4С
while/fddnbxfcbs/Sigmoid_2Sigmoidwhile/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_2И
while/fddnbxfcbs/Tanh_1Tanhwhile/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Tanh_1¶
while/fddnbxfcbs/mul_5Mulwhile/fddnbxfcbs/Sigmoid_2:y:0while/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/fddnbxfcbs/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/fddnbxfcbs/mul_5:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/fddnbxfcbs/add_3:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5"f
0while_fddnbxfcbs_biasadd_readvariableop_resource2while_fddnbxfcbs_biasadd_readvariableop_resource_0"h
1while_fddnbxfcbs_matmul_1_readvariableop_resource3while_fddnbxfcbs_matmul_1_readvariableop_resource_0"d
/while_fddnbxfcbs_matmul_readvariableop_resource1while_fddnbxfcbs_matmul_readvariableop_resource_0"Z
*while_fddnbxfcbs_readvariableop_1_resource,while_fddnbxfcbs_readvariableop_1_resource_0"Z
*while_fddnbxfcbs_readvariableop_2_resource,while_fddnbxfcbs_readvariableop_2_resource_0"V
(while_fddnbxfcbs_readvariableop_resource*while_fddnbxfcbs_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/fddnbxfcbs/BiasAdd/ReadVariableOp'while/fddnbxfcbs/BiasAdd/ReadVariableOp2P
&while/fddnbxfcbs/MatMul/ReadVariableOp&while/fddnbxfcbs/MatMul/ReadVariableOp2T
(while/fddnbxfcbs/MatMul_1/ReadVariableOp(while/fddnbxfcbs/MatMul_1/ReadVariableOp2B
while/fddnbxfcbs/ReadVariableOpwhile/fddnbxfcbs/ReadVariableOp2F
!while/fddnbxfcbs/ReadVariableOp_1!while/fddnbxfcbs/ReadVariableOp_12F
!while/fddnbxfcbs/ReadVariableOp_2!while/fddnbxfcbs/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
ф
Џ
,__inference_sequential_layer_call_fn_1301643

cvyyglfjwp
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	А
	unknown_4:	 А
	unknown_5:	А
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:	 А

unknown_10:	 А

unknown_11:	А

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:
identityИҐStatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCall
cvyyglfjwpunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_13016042
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:€€€€€€€€€
$
_user_specified_name
cvyyglfjwp
и
÷
,__inference_sequential_layer_call_fn_1303336

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	А
	unknown_4:	 А
	unknown_5:	А
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:	 А

unknown_10:	 А

unknown_11:	А

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:
identityИҐStatefulPartitionedCall—
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_13016042
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
аY
З
while_body_1304108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_fddnbxfcbs_matmul_readvariableop_resource_0:	АF
3while_fddnbxfcbs_matmul_1_readvariableop_resource_0:	 АA
2while_fddnbxfcbs_biasadd_readvariableop_resource_0:	А8
*while_fddnbxfcbs_readvariableop_resource_0: :
,while_fddnbxfcbs_readvariableop_1_resource_0: :
,while_fddnbxfcbs_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_fddnbxfcbs_matmul_readvariableop_resource:	АD
1while_fddnbxfcbs_matmul_1_readvariableop_resource:	 А?
0while_fddnbxfcbs_biasadd_readvariableop_resource:	А6
(while_fddnbxfcbs_readvariableop_resource: 8
*while_fddnbxfcbs_readvariableop_1_resource: 8
*while_fddnbxfcbs_readvariableop_2_resource: ИҐ'while/fddnbxfcbs/BiasAdd/ReadVariableOpҐ&while/fddnbxfcbs/MatMul/ReadVariableOpҐ(while/fddnbxfcbs/MatMul_1/ReadVariableOpҐwhile/fddnbxfcbs/ReadVariableOpҐ!while/fddnbxfcbs/ReadVariableOp_1Ґ!while/fddnbxfcbs/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp1while_fddnbxfcbs_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/fddnbxfcbs/MatMul/ReadVariableOp—
while/fddnbxfcbs/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul…
(while/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp3while_fddnbxfcbs_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/fddnbxfcbs/MatMul_1/ReadVariableOpЇ
while/fddnbxfcbs/MatMul_1MatMulwhile_placeholder_20while/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul_1∞
while/fddnbxfcbs/addAddV2!while/fddnbxfcbs/MatMul:product:0#while/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/add¬
'while/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp2while_fddnbxfcbs_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/fddnbxfcbs/BiasAdd/ReadVariableOpљ
while/fddnbxfcbs/BiasAddBiasAddwhile/fddnbxfcbs/add:z:0/while/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/BiasAddЖ
 while/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/fddnbxfcbs/split/split_dimГ
while/fddnbxfcbs/splitSplit)while/fddnbxfcbs/split/split_dim:output:0!while/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/fddnbxfcbs/split©
while/fddnbxfcbs/ReadVariableOpReadVariableOp*while_fddnbxfcbs_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/fddnbxfcbs/ReadVariableOp£
while/fddnbxfcbs/mulMul'while/fddnbxfcbs/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul¶
while/fddnbxfcbs/add_1AddV2while/fddnbxfcbs/split:output:0while/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_1Н
while/fddnbxfcbs/SigmoidSigmoidwhile/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoidѓ
!while/fddnbxfcbs/ReadVariableOp_1ReadVariableOp,while_fddnbxfcbs_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_1©
while/fddnbxfcbs/mul_1Mul)while/fddnbxfcbs/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_1®
while/fddnbxfcbs/add_2AddV2while/fddnbxfcbs/split:output:1while/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_2С
while/fddnbxfcbs/Sigmoid_1Sigmoidwhile/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_1Ю
while/fddnbxfcbs/mul_2Mulwhile/fddnbxfcbs/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_2Й
while/fddnbxfcbs/TanhTanhwhile/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/TanhҐ
while/fddnbxfcbs/mul_3Mulwhile/fddnbxfcbs/Sigmoid:y:0while/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_3£
while/fddnbxfcbs/add_3AddV2while/fddnbxfcbs/mul_2:z:0while/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_3ѓ
!while/fddnbxfcbs/ReadVariableOp_2ReadVariableOp,while_fddnbxfcbs_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_2∞
while/fddnbxfcbs/mul_4Mul)while/fddnbxfcbs/ReadVariableOp_2:value:0while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_4®
while/fddnbxfcbs/add_4AddV2while/fddnbxfcbs/split:output:3while/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_4С
while/fddnbxfcbs/Sigmoid_2Sigmoidwhile/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_2И
while/fddnbxfcbs/Tanh_1Tanhwhile/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Tanh_1¶
while/fddnbxfcbs/mul_5Mulwhile/fddnbxfcbs/Sigmoid_2:y:0while/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/fddnbxfcbs/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/fddnbxfcbs/mul_5:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/fddnbxfcbs/add_3:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5"f
0while_fddnbxfcbs_biasadd_readvariableop_resource2while_fddnbxfcbs_biasadd_readvariableop_resource_0"h
1while_fddnbxfcbs_matmul_1_readvariableop_resource3while_fddnbxfcbs_matmul_1_readvariableop_resource_0"d
/while_fddnbxfcbs_matmul_readvariableop_resource1while_fddnbxfcbs_matmul_readvariableop_resource_0"Z
*while_fddnbxfcbs_readvariableop_1_resource,while_fddnbxfcbs_readvariableop_1_resource_0"Z
*while_fddnbxfcbs_readvariableop_2_resource,while_fddnbxfcbs_readvariableop_2_resource_0"V
(while_fddnbxfcbs_readvariableop_resource*while_fddnbxfcbs_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/fddnbxfcbs/BiasAdd/ReadVariableOp'while/fddnbxfcbs/BiasAdd/ReadVariableOp2P
&while/fddnbxfcbs/MatMul/ReadVariableOp&while/fddnbxfcbs/MatMul/ReadVariableOp2T
(while/fddnbxfcbs/MatMul_1/ReadVariableOp(while/fddnbxfcbs/MatMul_1/ReadVariableOp2B
while/fddnbxfcbs/ReadVariableOpwhile/fddnbxfcbs/ReadVariableOp2F
!while/fddnbxfcbs/ReadVariableOp_1!while/fddnbxfcbs/ReadVariableOp_12F
!while/fddnbxfcbs/ReadVariableOp_2!while/fddnbxfcbs/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Ъa
І
 __inference__traced_save_1305504
file_prefix0
,savev2_xwuftghvfx_kernel_read_readvariableop.
*savev2_xwuftghvfx_bias_read_readvariableop0
,savev2_gnnkxdqznz_kernel_read_readvariableop.
*savev2_gnnkxdqznz_bias_read_readvariableop0
,savev2_tgvgnagwib_kernel_read_readvariableop.
*savev2_tgvgnagwib_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop;
7savev2_kpulowglns_fddnbxfcbs_kernel_read_readvariableopE
Asavev2_kpulowglns_fddnbxfcbs_recurrent_kernel_read_readvariableop9
5savev2_kpulowglns_fddnbxfcbs_bias_read_readvariableopP
Lsavev2_kpulowglns_fddnbxfcbs_input_gate_peephole_weights_read_readvariableopQ
Msavev2_kpulowglns_fddnbxfcbs_forget_gate_peephole_weights_read_readvariableopQ
Msavev2_kpulowglns_fddnbxfcbs_output_gate_peephole_weights_read_readvariableop;
7savev2_htheqsxgix_tivuqvlrxj_kernel_read_readvariableopE
Asavev2_htheqsxgix_tivuqvlrxj_recurrent_kernel_read_readvariableop9
5savev2_htheqsxgix_tivuqvlrxj_bias_read_readvariableopP
Lsavev2_htheqsxgix_tivuqvlrxj_input_gate_peephole_weights_read_readvariableopQ
Msavev2_htheqsxgix_tivuqvlrxj_forget_gate_peephole_weights_read_readvariableopQ
Msavev2_htheqsxgix_tivuqvlrxj_output_gate_peephole_weights_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop<
8savev2_rmsprop_xwuftghvfx_kernel_rms_read_readvariableop:
6savev2_rmsprop_xwuftghvfx_bias_rms_read_readvariableop<
8savev2_rmsprop_gnnkxdqznz_kernel_rms_read_readvariableop:
6savev2_rmsprop_gnnkxdqznz_bias_rms_read_readvariableop<
8savev2_rmsprop_tgvgnagwib_kernel_rms_read_readvariableop:
6savev2_rmsprop_tgvgnagwib_bias_rms_read_readvariableopG
Csavev2_rmsprop_kpulowglns_fddnbxfcbs_kernel_rms_read_readvariableopQ
Msavev2_rmsprop_kpulowglns_fddnbxfcbs_recurrent_kernel_rms_read_readvariableopE
Asavev2_rmsprop_kpulowglns_fddnbxfcbs_bias_rms_read_readvariableop\
Xsavev2_rmsprop_kpulowglns_fddnbxfcbs_input_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_kpulowglns_fddnbxfcbs_forget_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_kpulowglns_fddnbxfcbs_output_gate_peephole_weights_rms_read_readvariableopG
Csavev2_rmsprop_htheqsxgix_tivuqvlrxj_kernel_rms_read_readvariableopQ
Msavev2_rmsprop_htheqsxgix_tivuqvlrxj_recurrent_kernel_rms_read_readvariableopE
Asavev2_rmsprop_htheqsxgix_tivuqvlrxj_bias_rms_read_readvariableop\
Xsavev2_rmsprop_htheqsxgix_tivuqvlrxj_input_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_htheqsxgix_tivuqvlrxj_forget_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_htheqsxgix_tivuqvlrxj_output_gate_peephole_weights_rms_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameн
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*€
valueхBт,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/14/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/15/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesа
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesу
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_xwuftghvfx_kernel_read_readvariableop*savev2_xwuftghvfx_bias_read_readvariableop,savev2_gnnkxdqznz_kernel_read_readvariableop*savev2_gnnkxdqznz_bias_read_readvariableop,savev2_tgvgnagwib_kernel_read_readvariableop*savev2_tgvgnagwib_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop7savev2_kpulowglns_fddnbxfcbs_kernel_read_readvariableopAsavev2_kpulowglns_fddnbxfcbs_recurrent_kernel_read_readvariableop5savev2_kpulowglns_fddnbxfcbs_bias_read_readvariableopLsavev2_kpulowglns_fddnbxfcbs_input_gate_peephole_weights_read_readvariableopMsavev2_kpulowglns_fddnbxfcbs_forget_gate_peephole_weights_read_readvariableopMsavev2_kpulowglns_fddnbxfcbs_output_gate_peephole_weights_read_readvariableop7savev2_htheqsxgix_tivuqvlrxj_kernel_read_readvariableopAsavev2_htheqsxgix_tivuqvlrxj_recurrent_kernel_read_readvariableop5savev2_htheqsxgix_tivuqvlrxj_bias_read_readvariableopLsavev2_htheqsxgix_tivuqvlrxj_input_gate_peephole_weights_read_readvariableopMsavev2_htheqsxgix_tivuqvlrxj_forget_gate_peephole_weights_read_readvariableopMsavev2_htheqsxgix_tivuqvlrxj_output_gate_peephole_weights_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop8savev2_rmsprop_xwuftghvfx_kernel_rms_read_readvariableop6savev2_rmsprop_xwuftghvfx_bias_rms_read_readvariableop8savev2_rmsprop_gnnkxdqznz_kernel_rms_read_readvariableop6savev2_rmsprop_gnnkxdqznz_bias_rms_read_readvariableop8savev2_rmsprop_tgvgnagwib_kernel_rms_read_readvariableop6savev2_rmsprop_tgvgnagwib_bias_rms_read_readvariableopCsavev2_rmsprop_kpulowglns_fddnbxfcbs_kernel_rms_read_readvariableopMsavev2_rmsprop_kpulowglns_fddnbxfcbs_recurrent_kernel_rms_read_readvariableopAsavev2_rmsprop_kpulowglns_fddnbxfcbs_bias_rms_read_readvariableopXsavev2_rmsprop_kpulowglns_fddnbxfcbs_input_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_kpulowglns_fddnbxfcbs_forget_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_kpulowglns_fddnbxfcbs_output_gate_peephole_weights_rms_read_readvariableopCsavev2_rmsprop_htheqsxgix_tivuqvlrxj_kernel_rms_read_readvariableopMsavev2_rmsprop_htheqsxgix_tivuqvlrxj_recurrent_kernel_rms_read_readvariableopAsavev2_rmsprop_htheqsxgix_tivuqvlrxj_bias_rms_read_readvariableopXsavev2_rmsprop_htheqsxgix_tivuqvlrxj_input_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_htheqsxgix_tivuqvlrxj_forget_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_htheqsxgix_tivuqvlrxj_output_gate_peephole_weights_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*”
_input_shapesЅ
Њ: ::::: :: : : : : :	А:	 А:А: : : :	 А:	 А:А: : : : : ::::: ::	А:	 А:А: : : :	 А:	 А:А: : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	А:%!

_output_shapes
:	 А:!

_output_shapes	
:А: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	 А:%!

_output_shapes
:	 А:!

_output_shapes	
:А: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::% !

_output_shapes
:	А:%!!

_output_shapes
:	 А:!"

_output_shapes	
:А: #

_output_shapes
: : $

_output_shapes
: : %

_output_shapes
: :%&!

_output_shapes
:	 А:%'!

_output_shapes
:	 А:!(

_output_shapes	
:А: )

_output_shapes
: : *

_output_shapes
: : +

_output_shapes
: :,

_output_shapes
: 
»
Э
,__inference_xwuftghvfx_layer_call_fn_1303423

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_xwuftghvfx_layer_call_and_return_conditional_losses_13011352
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
аY
З
while_body_1301965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_fddnbxfcbs_matmul_readvariableop_resource_0:	АF
3while_fddnbxfcbs_matmul_1_readvariableop_resource_0:	 АA
2while_fddnbxfcbs_biasadd_readvariableop_resource_0:	А8
*while_fddnbxfcbs_readvariableop_resource_0: :
,while_fddnbxfcbs_readvariableop_1_resource_0: :
,while_fddnbxfcbs_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_fddnbxfcbs_matmul_readvariableop_resource:	АD
1while_fddnbxfcbs_matmul_1_readvariableop_resource:	 А?
0while_fddnbxfcbs_biasadd_readvariableop_resource:	А6
(while_fddnbxfcbs_readvariableop_resource: 8
*while_fddnbxfcbs_readvariableop_1_resource: 8
*while_fddnbxfcbs_readvariableop_2_resource: ИҐ'while/fddnbxfcbs/BiasAdd/ReadVariableOpҐ&while/fddnbxfcbs/MatMul/ReadVariableOpҐ(while/fddnbxfcbs/MatMul_1/ReadVariableOpҐwhile/fddnbxfcbs/ReadVariableOpҐ!while/fddnbxfcbs/ReadVariableOp_1Ґ!while/fddnbxfcbs/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp1while_fddnbxfcbs_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/fddnbxfcbs/MatMul/ReadVariableOp—
while/fddnbxfcbs/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul…
(while/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp3while_fddnbxfcbs_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/fddnbxfcbs/MatMul_1/ReadVariableOpЇ
while/fddnbxfcbs/MatMul_1MatMulwhile_placeholder_20while/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul_1∞
while/fddnbxfcbs/addAddV2!while/fddnbxfcbs/MatMul:product:0#while/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/add¬
'while/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp2while_fddnbxfcbs_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/fddnbxfcbs/BiasAdd/ReadVariableOpљ
while/fddnbxfcbs/BiasAddBiasAddwhile/fddnbxfcbs/add:z:0/while/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/BiasAddЖ
 while/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/fddnbxfcbs/split/split_dimГ
while/fddnbxfcbs/splitSplit)while/fddnbxfcbs/split/split_dim:output:0!while/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/fddnbxfcbs/split©
while/fddnbxfcbs/ReadVariableOpReadVariableOp*while_fddnbxfcbs_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/fddnbxfcbs/ReadVariableOp£
while/fddnbxfcbs/mulMul'while/fddnbxfcbs/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul¶
while/fddnbxfcbs/add_1AddV2while/fddnbxfcbs/split:output:0while/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_1Н
while/fddnbxfcbs/SigmoidSigmoidwhile/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoidѓ
!while/fddnbxfcbs/ReadVariableOp_1ReadVariableOp,while_fddnbxfcbs_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_1©
while/fddnbxfcbs/mul_1Mul)while/fddnbxfcbs/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_1®
while/fddnbxfcbs/add_2AddV2while/fddnbxfcbs/split:output:1while/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_2С
while/fddnbxfcbs/Sigmoid_1Sigmoidwhile/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_1Ю
while/fddnbxfcbs/mul_2Mulwhile/fddnbxfcbs/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_2Й
while/fddnbxfcbs/TanhTanhwhile/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/TanhҐ
while/fddnbxfcbs/mul_3Mulwhile/fddnbxfcbs/Sigmoid:y:0while/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_3£
while/fddnbxfcbs/add_3AddV2while/fddnbxfcbs/mul_2:z:0while/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_3ѓ
!while/fddnbxfcbs/ReadVariableOp_2ReadVariableOp,while_fddnbxfcbs_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_2∞
while/fddnbxfcbs/mul_4Mul)while/fddnbxfcbs/ReadVariableOp_2:value:0while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_4®
while/fddnbxfcbs/add_4AddV2while/fddnbxfcbs/split:output:3while/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_4С
while/fddnbxfcbs/Sigmoid_2Sigmoidwhile/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_2И
while/fddnbxfcbs/Tanh_1Tanhwhile/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Tanh_1¶
while/fddnbxfcbs/mul_5Mulwhile/fddnbxfcbs/Sigmoid_2:y:0while/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/fddnbxfcbs/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/fddnbxfcbs/mul_5:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/fddnbxfcbs/add_3:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5"f
0while_fddnbxfcbs_biasadd_readvariableop_resource2while_fddnbxfcbs_biasadd_readvariableop_resource_0"h
1while_fddnbxfcbs_matmul_1_readvariableop_resource3while_fddnbxfcbs_matmul_1_readvariableop_resource_0"d
/while_fddnbxfcbs_matmul_readvariableop_resource1while_fddnbxfcbs_matmul_readvariableop_resource_0"Z
*while_fddnbxfcbs_readvariableop_1_resource,while_fddnbxfcbs_readvariableop_1_resource_0"Z
*while_fddnbxfcbs_readvariableop_2_resource,while_fddnbxfcbs_readvariableop_2_resource_0"V
(while_fddnbxfcbs_readvariableop_resource*while_fddnbxfcbs_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/fddnbxfcbs/BiasAdd/ReadVariableOp'while/fddnbxfcbs/BiasAdd/ReadVariableOp2P
&while/fddnbxfcbs/MatMul/ReadVariableOp&while/fddnbxfcbs/MatMul/ReadVariableOp2T
(while/fddnbxfcbs/MatMul_1/ReadVariableOp(while/fddnbxfcbs/MatMul_1/ReadVariableOp2B
while/fddnbxfcbs/ReadVariableOpwhile/fddnbxfcbs/ReadVariableOp2F
!while/fddnbxfcbs/ReadVariableOp_1!while/fddnbxfcbs/ReadVariableOp_12F
!while/fddnbxfcbs/ReadVariableOp_2!while/fddnbxfcbs/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
©0
Љ
G__inference_xwuftghvfx_layer_call_and_return_conditional_losses_1303414

inputsA
+conv1d_expanddims_1_readvariableop_resource:@
2squeeze_batch_dims_biasadd_readvariableop_resource:
identityИҐ"conv1d/ExpandDims_1/ReadVariableOpҐ)squeeze_batch_dims/BiasAdd/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dimЪ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv1d/ExpandDimsЄ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЈ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1f
conv1d/ShapeShapeconv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
conv1d/ShapeВ
conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv1d/strided_slice/stackП
conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2
conv1d/strided_slice/stack_1Ж
conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv1d/strided_slice/stack_2К
conv1d/strided_sliceStridedSliceconv1d/Shape:output:0#conv1d/strided_slice/stack:output:0%conv1d/strided_slice/stack_1:output:0%conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
conv1d/strided_sliceЕ
conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"€€€€         2
conv1d/Reshape/shape†
conv1d/ReshapeReshapeconv1d/ExpandDims:output:0conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv1d/Reshape¬
conv1d/Conv2DConv2Dconv1d/Reshape:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
2
conv1d/Conv2DЕ
conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2
conv1d/concat/values_1s
conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
conv1d/concat/axisµ
conv1d/concatConcatV2conv1d/strided_slice:output:0conv1d/concat/values_1:output:0conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv1d/concatЭ
conv1d/Reshape_1Reshapeconv1d/Conv2D:output:0conv1d/concat:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv1d/Reshape_1†
conv1d/SqueezeSqueezeconv1d/Reshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€2
conv1d/Squeeze{
squeeze_batch_dims/ShapeShapeconv1d/Squeeze:output:0*
T0*
_output_shapes
:2
squeeze_batch_dims/ShapeЪ
&squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&squeeze_batch_dims/strided_slice/stackІ
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2*
(squeeze_batch_dims/strided_slice/stack_1Ю
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2“
 squeeze_batch_dims/strided_sliceStridedSlice!squeeze_batch_dims/Shape:output:0/squeeze_batch_dims/strided_slice/stack:output:01squeeze_batch_dims/strided_slice/stack_1:output:01squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 squeeze_batch_dims/strided_sliceЩ
 squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2"
 squeeze_batch_dims/Reshape/shapeљ
squeeze_batch_dims/ReshapeReshapeconv1d/Squeeze:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/Reshape≈
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp2squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp—
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/BiasAddЩ
"squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"squeeze_batch_dims/concat/values_1Л
squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2 
squeeze_batch_dims/concat/axisс
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat 
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/Reshape_1“
IdentityIdentity%squeeze_batch_dims/Reshape_1:output:0#^conv1d/ExpandDims_1/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ђ2
Љ
G__inference_gnnkxdqznz_layer_call_and_return_conditional_losses_1303462

inputsA
+conv1d_expanddims_1_readvariableop_resource:@
2squeeze_batch_dims_biasadd_readvariableop_resource:
identityИҐ"conv1d/ExpandDims_1/ReadVariableOpҐ)squeeze_batch_dims/BiasAdd/ReadVariableOpН
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                2
Pad/paddingsj
PadPadinputsPad/paddings:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dim†
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv1d/ExpandDimsЄ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЈ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1f
conv1d/ShapeShapeconv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
conv1d/ShapeВ
conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv1d/strided_slice/stackП
conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2
conv1d/strided_slice/stack_1Ж
conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv1d/strided_slice/stack_2К
conv1d/strided_sliceStridedSliceconv1d/Shape:output:0#conv1d/strided_slice/stack:output:0%conv1d/strided_slice/stack_1:output:0%conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
conv1d/strided_sliceЕ
conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"€€€€         2
conv1d/Reshape/shape†
conv1d/ReshapeReshapeconv1d/ExpandDims:output:0conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
conv1d/Reshape¬
conv1d/Conv2DConv2Dconv1d/Reshape:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
2
conv1d/Conv2DЕ
conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2
conv1d/concat/values_1s
conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
conv1d/concat/axisµ
conv1d/concatConcatV2conv1d/strided_slice:output:0conv1d/concat/values_1:output:0conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv1d/concatЭ
conv1d/Reshape_1Reshapeconv1d/Conv2D:output:0conv1d/concat:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
conv1d/Reshape_1†
conv1d/SqueezeSqueezeconv1d/Reshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€2
conv1d/Squeeze{
squeeze_batch_dims/ShapeShapeconv1d/Squeeze:output:0*
T0*
_output_shapes
:2
squeeze_batch_dims/ShapeЪ
&squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&squeeze_batch_dims/strided_slice/stackІ
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€2*
(squeeze_batch_dims/strided_slice/stack_1Ю
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2“
 squeeze_batch_dims/strided_sliceStridedSlice!squeeze_batch_dims/Shape:output:0/squeeze_batch_dims/strided_slice/stack:output:01squeeze_batch_dims/strided_slice/stack_1:output:01squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 squeeze_batch_dims/strided_sliceЩ
 squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2"
 squeeze_batch_dims/Reshape/shapeљ
squeeze_batch_dims/ReshapeReshapeconv1d/Squeeze:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/Reshape≈
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp2squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp—
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/BiasAddЩ
"squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"squeeze_batch_dims/concat/values_1Л
squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2 
squeeze_batch_dims/concat/axisс
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat 
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
squeeze_batch_dims/Reshape_1“
IdentityIdentity%squeeze_batch_dims/Reshape_1:output:0#^conv1d/ExpandDims_1/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѓF
к
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1300783

inputs%
tivuqvlrxj_1300684:	 А%
tivuqvlrxj_1300686:	 А!
tivuqvlrxj_1300688:	А 
tivuqvlrxj_1300690:  
tivuqvlrxj_1300692:  
tivuqvlrxj_1300694: 
identityИҐ"tivuqvlrxj/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2Џ
"tivuqvlrxj/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0tivuqvlrxj_1300684tivuqvlrxj_1300686tivuqvlrxj_1300688tivuqvlrxj_1300690tivuqvlrxj_1300692tivuqvlrxj_1300694*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_13006072$
"tivuqvlrxj/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterр
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0tivuqvlrxj_1300684tivuqvlrxj_1300686tivuqvlrxj_1300688tivuqvlrxj_1300690tivuqvlrxj_1300692tivuqvlrxj_1300694*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1300703*
condR
while_cond_1300702*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1Щ
IdentityIdentitystrided_slice_3:output:0#^tivuqvlrxj/StatefulPartitionedCall^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€ : : : : : : 2H
"tivuqvlrxj/StatefulPartitionedCall"tivuqvlrxj/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Л

н
while_cond_1300439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1300439___redundant_placeholder05
1while_while_cond_1300439___redundant_placeholder15
1while_while_cond_1300439___redundant_placeholder25
1while_while_cond_1300439___redundant_placeholder35
1while_while_cond_1300439___redundant_placeholder45
1while_while_cond_1300439___redundant_placeholder55
1while_while_cond_1300439___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
•
©	
(sequential_kpulowglns_while_cond_1299291H
Dsequential_kpulowglns_while_sequential_kpulowglns_while_loop_counterN
Jsequential_kpulowglns_while_sequential_kpulowglns_while_maximum_iterations+
'sequential_kpulowglns_while_placeholder-
)sequential_kpulowglns_while_placeholder_1-
)sequential_kpulowglns_while_placeholder_2-
)sequential_kpulowglns_while_placeholder_3J
Fsequential_kpulowglns_while_less_sequential_kpulowglns_strided_slice_1a
]sequential_kpulowglns_while_sequential_kpulowglns_while_cond_1299291___redundant_placeholder0a
]sequential_kpulowglns_while_sequential_kpulowglns_while_cond_1299291___redundant_placeholder1a
]sequential_kpulowglns_while_sequential_kpulowglns_while_cond_1299291___redundant_placeholder2a
]sequential_kpulowglns_while_sequential_kpulowglns_while_cond_1299291___redundant_placeholder3a
]sequential_kpulowglns_while_sequential_kpulowglns_while_cond_1299291___redundant_placeholder4a
]sequential_kpulowglns_while_sequential_kpulowglns_while_cond_1299291___redundant_placeholder5a
]sequential_kpulowglns_while_sequential_kpulowglns_while_cond_1299291___redundant_placeholder6(
$sequential_kpulowglns_while_identity
ё
 sequential/kpulowglns/while/LessLess'sequential_kpulowglns_while_placeholderFsequential_kpulowglns_while_less_sequential_kpulowglns_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/kpulowglns/while/LessЯ
$sequential/kpulowglns/while/IdentityIdentity$sequential/kpulowglns/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/kpulowglns/while/Identity"U
$sequential_kpulowglns_while_identity-sequential/kpulowglns/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
≥F
к
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1299762

inputs%
fddnbxfcbs_1299663:	А%
fddnbxfcbs_1299665:	 А!
fddnbxfcbs_1299667:	А 
fddnbxfcbs_1299669:  
fddnbxfcbs_1299671:  
fddnbxfcbs_1299673: 
identityИҐ"fddnbxfcbs/StatefulPartitionedCallҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2Џ
"fddnbxfcbs/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0fddnbxfcbs_1299663fddnbxfcbs_1299665fddnbxfcbs_1299667fddnbxfcbs_1299669fddnbxfcbs_1299671fddnbxfcbs_1299673*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_12996622$
"fddnbxfcbs/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterр
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0fddnbxfcbs_1299663fddnbxfcbs_1299665fddnbxfcbs_1299667fddnbxfcbs_1299669fddnbxfcbs_1299671fddnbxfcbs_1299673*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1299682*
condR
while_cond_1299681*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1Э
IdentityIdentitytranspose_1:y:0#^fddnbxfcbs/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€€€€€€€€€€: : : : : : 2H
"fddnbxfcbs/StatefulPartitionedCall"fddnbxfcbs/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є'
µ
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_1305306

inputs
states_0
states_11
matmul_readvariableop_resource:	 А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
splitt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpe
mulMulReadVariableOp:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5я
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityг

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1г

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
Л

н
while_cond_1303927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1303927___redundant_placeholder05
1while_while_cond_1303927___redundant_placeholder15
1while_while_cond_1303927___redundant_placeholder25
1while_while_cond_1303927___redundant_placeholder35
1while_while_cond_1303927___redundant_placeholder45
1while_while_cond_1303927___redundant_placeholder55
1while_while_cond_1303927___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
±'
≥
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_1300420

inputs

states
states_11
matmul_readvariableop_resource:	 А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
splitt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpe
mulMulReadVariableOp:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5я
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityг

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1г

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates
є'
µ
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_1305128

inputs
states_0
states_11
matmul_readvariableop_resource:	А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
splitt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpe
mulMulReadVariableOp:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_5я
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityг

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1г

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€:€€€€€€€€€ :€€€€€€€€€ : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
Б
ј
,__inference_fddnbxfcbs_layer_call_fn_1305218

inputs
states_0
states_1
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity

identity_1

identity_2ИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_12998492
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€:€€€€€€€€€ :€€€€€€€€€ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states/1
¶h
Е
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1301852

inputs<
)tivuqvlrxj_matmul_readvariableop_resource:	 А>
+tivuqvlrxj_matmul_1_readvariableop_resource:	 А9
*tivuqvlrxj_biasadd_readvariableop_resource:	А0
"tivuqvlrxj_readvariableop_resource: 2
$tivuqvlrxj_readvariableop_1_resource: 2
$tivuqvlrxj_readvariableop_2_resource: 
identityИҐ!tivuqvlrxj/BiasAdd/ReadVariableOpҐ tivuqvlrxj/MatMul/ReadVariableOpҐ"tivuqvlrxj/MatMul_1/ReadVariableOpҐtivuqvlrxj/ReadVariableOpҐtivuqvlrxj/ReadVariableOp_1Ґtivuqvlrxj/ReadVariableOp_2ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2ѓ
 tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp)tivuqvlrxj_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 tivuqvlrxj/MatMul/ReadVariableOpІ
tivuqvlrxj/MatMulMatMulstrided_slice_2:output:0(tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMulµ
"tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp+tivuqvlrxj_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"tivuqvlrxj/MatMul_1/ReadVariableOp£
tivuqvlrxj/MatMul_1MatMulzeros:output:0*tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMul_1Ш
tivuqvlrxj/addAddV2tivuqvlrxj/MatMul:product:0tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/addЃ
!tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp*tivuqvlrxj_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!tivuqvlrxj/BiasAdd/ReadVariableOp•
tivuqvlrxj/BiasAddBiasAddtivuqvlrxj/add:z:0)tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/BiasAddz
tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
tivuqvlrxj/split/split_dimл
tivuqvlrxj/splitSplit#tivuqvlrxj/split/split_dim:output:0tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
tivuqvlrxj/splitХ
tivuqvlrxj/ReadVariableOpReadVariableOp"tivuqvlrxj_readvariableop_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOpО
tivuqvlrxj/mulMul!tivuqvlrxj/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mulО
tivuqvlrxj/add_1AddV2tivuqvlrxj/split:output:0tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_1{
tivuqvlrxj/SigmoidSigmoidtivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/SigmoidЫ
tivuqvlrxj/ReadVariableOp_1ReadVariableOp$tivuqvlrxj_readvariableop_1_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_1Ф
tivuqvlrxj/mul_1Mul#tivuqvlrxj/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_1Р
tivuqvlrxj/add_2AddV2tivuqvlrxj/split:output:1tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_2
tivuqvlrxj/Sigmoid_1Sigmoidtivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_1Й
tivuqvlrxj/mul_2Multivuqvlrxj/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_2w
tivuqvlrxj/TanhTanhtivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/TanhК
tivuqvlrxj/mul_3Multivuqvlrxj/Sigmoid:y:0tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_3Л
tivuqvlrxj/add_3AddV2tivuqvlrxj/mul_2:z:0tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_3Ы
tivuqvlrxj/ReadVariableOp_2ReadVariableOp$tivuqvlrxj_readvariableop_2_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_2Ш
tivuqvlrxj/mul_4Mul#tivuqvlrxj/ReadVariableOp_2:value:0tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_4Р
tivuqvlrxj/add_4AddV2tivuqvlrxj/split:output:3tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_4
tivuqvlrxj/Sigmoid_2Sigmoidtivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_2v
tivuqvlrxj/Tanh_1Tanhtivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Tanh_1О
tivuqvlrxj/mul_5Multivuqvlrxj/Sigmoid_2:y:0tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)tivuqvlrxj_matmul_readvariableop_resource+tivuqvlrxj_matmul_1_readvariableop_resource*tivuqvlrxj_biasadd_readvariableop_resource"tivuqvlrxj_readvariableop_resource$tivuqvlrxj_readvariableop_1_resource$tivuqvlrxj_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1301751*
condR
while_cond_1301750*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1Є
IdentityIdentitystrided_slice_3:output:0"^tivuqvlrxj/BiasAdd/ReadVariableOp!^tivuqvlrxj/MatMul/ReadVariableOp#^tivuqvlrxj/MatMul_1/ReadVariableOp^tivuqvlrxj/ReadVariableOp^tivuqvlrxj/ReadVariableOp_1^tivuqvlrxj/ReadVariableOp_2^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€ : : : : : : 2F
!tivuqvlrxj/BiasAdd/ReadVariableOp!tivuqvlrxj/BiasAdd/ReadVariableOp2D
 tivuqvlrxj/MatMul/ReadVariableOp tivuqvlrxj/MatMul/ReadVariableOp2H
"tivuqvlrxj/MatMul_1/ReadVariableOp"tivuqvlrxj/MatMul_1/ReadVariableOp26
tivuqvlrxj/ReadVariableOptivuqvlrxj/ReadVariableOp2:
tivuqvlrxj/ReadVariableOp_1tivuqvlrxj/ReadVariableOp_12:
tivuqvlrxj/ReadVariableOp_2tivuqvlrxj/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
 Г
Д
G__inference_sequential_layer_call_and_return_conditional_losses_1303295

inputsL
6xwuftghvfx_conv1d_expanddims_1_readvariableop_resource:K
=xwuftghvfx_squeeze_batch_dims_biasadd_readvariableop_resource:L
6gnnkxdqznz_conv1d_expanddims_1_readvariableop_resource:K
=gnnkxdqznz_squeeze_batch_dims_biasadd_readvariableop_resource:G
4kpulowglns_fddnbxfcbs_matmul_readvariableop_resource:	АI
6kpulowglns_fddnbxfcbs_matmul_1_readvariableop_resource:	 АD
5kpulowglns_fddnbxfcbs_biasadd_readvariableop_resource:	А;
-kpulowglns_fddnbxfcbs_readvariableop_resource: =
/kpulowglns_fddnbxfcbs_readvariableop_1_resource: =
/kpulowglns_fddnbxfcbs_readvariableop_2_resource: G
4htheqsxgix_tivuqvlrxj_matmul_readvariableop_resource:	 АI
6htheqsxgix_tivuqvlrxj_matmul_1_readvariableop_resource:	 АD
5htheqsxgix_tivuqvlrxj_biasadd_readvariableop_resource:	А;
-htheqsxgix_tivuqvlrxj_readvariableop_resource: =
/htheqsxgix_tivuqvlrxj_readvariableop_1_resource: =
/htheqsxgix_tivuqvlrxj_readvariableop_2_resource: ;
)tgvgnagwib_matmul_readvariableop_resource: 8
*tgvgnagwib_biasadd_readvariableop_resource:
identityИҐ-gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOpҐ4gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOpҐ,htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOpҐ+htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOpҐ-htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOpҐ$htheqsxgix/tivuqvlrxj/ReadVariableOpҐ&htheqsxgix/tivuqvlrxj/ReadVariableOp_1Ґ&htheqsxgix/tivuqvlrxj/ReadVariableOp_2Ґhtheqsxgix/whileҐ,kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOpҐ+kpulowglns/fddnbxfcbs/MatMul/ReadVariableOpҐ-kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOpҐ$kpulowglns/fddnbxfcbs/ReadVariableOpҐ&kpulowglns/fddnbxfcbs/ReadVariableOp_1Ґ&kpulowglns/fddnbxfcbs/ReadVariableOp_2Ґkpulowglns/whileҐ!tgvgnagwib/BiasAdd/ReadVariableOpҐ tgvgnagwib/MatMul/ReadVariableOpҐ-xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOpҐ4xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOpП
 xwuftghvfx/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2"
 xwuftghvfx/conv1d/ExpandDims/dimї
xwuftghvfx/conv1d/ExpandDims
ExpandDimsinputs)xwuftghvfx/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
xwuftghvfx/conv1d/ExpandDimsў
-xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6xwuftghvfx_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOpК
"xwuftghvfx/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"xwuftghvfx/conv1d/ExpandDims_1/dimг
xwuftghvfx/conv1d/ExpandDims_1
ExpandDims5xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp:value:0+xwuftghvfx/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
xwuftghvfx/conv1d/ExpandDims_1З
xwuftghvfx/conv1d/ShapeShape%xwuftghvfx/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
xwuftghvfx/conv1d/ShapeШ
%xwuftghvfx/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%xwuftghvfx/conv1d/strided_slice/stack•
'xwuftghvfx/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2)
'xwuftghvfx/conv1d/strided_slice/stack_1Ь
'xwuftghvfx/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'xwuftghvfx/conv1d/strided_slice/stack_2ћ
xwuftghvfx/conv1d/strided_sliceStridedSlice xwuftghvfx/conv1d/Shape:output:0.xwuftghvfx/conv1d/strided_slice/stack:output:00xwuftghvfx/conv1d/strided_slice/stack_1:output:00xwuftghvfx/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
xwuftghvfx/conv1d/strided_sliceЫ
xwuftghvfx/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"€€€€         2!
xwuftghvfx/conv1d/Reshape/shapeћ
xwuftghvfx/conv1d/ReshapeReshape%xwuftghvfx/conv1d/ExpandDims:output:0(xwuftghvfx/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
xwuftghvfx/conv1d/Reshapeо
xwuftghvfx/conv1d/Conv2DConv2D"xwuftghvfx/conv1d/Reshape:output:0'xwuftghvfx/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
2
xwuftghvfx/conv1d/Conv2DЫ
!xwuftghvfx/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!xwuftghvfx/conv1d/concat/values_1Й
xwuftghvfx/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
xwuftghvfx/conv1d/concat/axisм
xwuftghvfx/conv1d/concatConcatV2(xwuftghvfx/conv1d/strided_slice:output:0*xwuftghvfx/conv1d/concat/values_1:output:0&xwuftghvfx/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
xwuftghvfx/conv1d/concat…
xwuftghvfx/conv1d/Reshape_1Reshape!xwuftghvfx/conv1d/Conv2D:output:0!xwuftghvfx/conv1d/concat:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
xwuftghvfx/conv1d/Reshape_1Ѕ
xwuftghvfx/conv1d/SqueezeSqueeze$xwuftghvfx/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€2
xwuftghvfx/conv1d/SqueezeЬ
#xwuftghvfx/squeeze_batch_dims/ShapeShape"xwuftghvfx/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#xwuftghvfx/squeeze_batch_dims/Shape∞
1xwuftghvfx/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1xwuftghvfx/squeeze_batch_dims/strided_slice/stackљ
3xwuftghvfx/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€25
3xwuftghvfx/squeeze_batch_dims/strided_slice/stack_1і
3xwuftghvfx/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3xwuftghvfx/squeeze_batch_dims/strided_slice/stack_2Ф
+xwuftghvfx/squeeze_batch_dims/strided_sliceStridedSlice,xwuftghvfx/squeeze_batch_dims/Shape:output:0:xwuftghvfx/squeeze_batch_dims/strided_slice/stack:output:0<xwuftghvfx/squeeze_batch_dims/strided_slice/stack_1:output:0<xwuftghvfx/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+xwuftghvfx/squeeze_batch_dims/strided_sliceѓ
+xwuftghvfx/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2-
+xwuftghvfx/squeeze_batch_dims/Reshape/shapeй
%xwuftghvfx/squeeze_batch_dims/ReshapeReshape"xwuftghvfx/conv1d/Squeeze:output:04xwuftghvfx/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%xwuftghvfx/squeeze_batch_dims/Reshapeж
4xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=xwuftghvfx_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOpэ
%xwuftghvfx/squeeze_batch_dims/BiasAddBiasAdd.xwuftghvfx/squeeze_batch_dims/Reshape:output:0<xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%xwuftghvfx/squeeze_batch_dims/BiasAddѓ
-xwuftghvfx/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-xwuftghvfx/squeeze_batch_dims/concat/values_1°
)xwuftghvfx/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2+
)xwuftghvfx/squeeze_batch_dims/concat/axis®
$xwuftghvfx/squeeze_batch_dims/concatConcatV24xwuftghvfx/squeeze_batch_dims/strided_slice:output:06xwuftghvfx/squeeze_batch_dims/concat/values_1:output:02xwuftghvfx/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$xwuftghvfx/squeeze_batch_dims/concatц
'xwuftghvfx/squeeze_batch_dims/Reshape_1Reshape.xwuftghvfx/squeeze_batch_dims/BiasAdd:output:0-xwuftghvfx/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€2)
'xwuftghvfx/squeeze_batch_dims/Reshape_1£
gnnkxdqznz/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                2
gnnkxdqznz/Pad/paddingsµ
gnnkxdqznz/PadPad0xwuftghvfx/squeeze_batch_dims/Reshape_1:output:0 gnnkxdqznz/Pad/paddings:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
gnnkxdqznz/PadП
 gnnkxdqznz/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2"
 gnnkxdqznz/conv1d/ExpandDims/dimћ
gnnkxdqznz/conv1d/ExpandDims
ExpandDimsgnnkxdqznz/Pad:output:0)gnnkxdqznz/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
gnnkxdqznz/conv1d/ExpandDimsў
-gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6gnnkxdqznz_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOpК
"gnnkxdqznz/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"gnnkxdqznz/conv1d/ExpandDims_1/dimг
gnnkxdqznz/conv1d/ExpandDims_1
ExpandDims5gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp:value:0+gnnkxdqznz/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
gnnkxdqznz/conv1d/ExpandDims_1З
gnnkxdqznz/conv1d/ShapeShape%gnnkxdqznz/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
gnnkxdqznz/conv1d/ShapeШ
%gnnkxdqznz/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%gnnkxdqznz/conv1d/strided_slice/stack•
'gnnkxdqznz/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2)
'gnnkxdqznz/conv1d/strided_slice/stack_1Ь
'gnnkxdqznz/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'gnnkxdqznz/conv1d/strided_slice/stack_2ћ
gnnkxdqznz/conv1d/strided_sliceStridedSlice gnnkxdqznz/conv1d/Shape:output:0.gnnkxdqznz/conv1d/strided_slice/stack:output:00gnnkxdqznz/conv1d/strided_slice/stack_1:output:00gnnkxdqznz/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
gnnkxdqznz/conv1d/strided_sliceЫ
gnnkxdqznz/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"€€€€         2!
gnnkxdqznz/conv1d/Reshape/shapeћ
gnnkxdqznz/conv1d/ReshapeReshape%gnnkxdqznz/conv1d/ExpandDims:output:0(gnnkxdqznz/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
gnnkxdqznz/conv1d/Reshapeо
gnnkxdqznz/conv1d/Conv2DConv2D"gnnkxdqznz/conv1d/Reshape:output:0'gnnkxdqznz/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
2
gnnkxdqznz/conv1d/Conv2DЫ
!gnnkxdqznz/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!gnnkxdqznz/conv1d/concat/values_1Й
gnnkxdqznz/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
gnnkxdqznz/conv1d/concat/axisм
gnnkxdqznz/conv1d/concatConcatV2(gnnkxdqznz/conv1d/strided_slice:output:0*gnnkxdqznz/conv1d/concat/values_1:output:0&gnnkxdqznz/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gnnkxdqznz/conv1d/concat…
gnnkxdqznz/conv1d/Reshape_1Reshape!gnnkxdqznz/conv1d/Conv2D:output:0!gnnkxdqznz/conv1d/concat:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
gnnkxdqznz/conv1d/Reshape_1Ѕ
gnnkxdqznz/conv1d/SqueezeSqueeze$gnnkxdqznz/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€2
gnnkxdqznz/conv1d/SqueezeЬ
#gnnkxdqznz/squeeze_batch_dims/ShapeShape"gnnkxdqznz/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#gnnkxdqznz/squeeze_batch_dims/Shape∞
1gnnkxdqznz/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1gnnkxdqznz/squeeze_batch_dims/strided_slice/stackљ
3gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€25
3gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_1і
3gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_2Ф
+gnnkxdqznz/squeeze_batch_dims/strided_sliceStridedSlice,gnnkxdqznz/squeeze_batch_dims/Shape:output:0:gnnkxdqznz/squeeze_batch_dims/strided_slice/stack:output:0<gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_1:output:0<gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+gnnkxdqznz/squeeze_batch_dims/strided_sliceѓ
+gnnkxdqznz/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2-
+gnnkxdqznz/squeeze_batch_dims/Reshape/shapeй
%gnnkxdqznz/squeeze_batch_dims/ReshapeReshape"gnnkxdqznz/conv1d/Squeeze:output:04gnnkxdqznz/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%gnnkxdqznz/squeeze_batch_dims/Reshapeж
4gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=gnnkxdqznz_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOpэ
%gnnkxdqznz/squeeze_batch_dims/BiasAddBiasAdd.gnnkxdqznz/squeeze_batch_dims/Reshape:output:0<gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%gnnkxdqznz/squeeze_batch_dims/BiasAddѓ
-gnnkxdqznz/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-gnnkxdqznz/squeeze_batch_dims/concat/values_1°
)gnnkxdqznz/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2+
)gnnkxdqznz/squeeze_batch_dims/concat/axis®
$gnnkxdqznz/squeeze_batch_dims/concatConcatV24gnnkxdqznz/squeeze_batch_dims/strided_slice:output:06gnnkxdqznz/squeeze_batch_dims/concat/values_1:output:02gnnkxdqznz/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$gnnkxdqznz/squeeze_batch_dims/concatц
'gnnkxdqznz/squeeze_batch_dims/Reshape_1Reshape.gnnkxdqznz/squeeze_batch_dims/BiasAdd:output:0-gnnkxdqznz/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€2)
'gnnkxdqznz/squeeze_batch_dims/Reshape_1Д
xrqvvalojb/ShapeShape0gnnkxdqznz/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
xrqvvalojb/ShapeК
xrqvvalojb/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
xrqvvalojb/strided_slice/stackО
 xrqvvalojb/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 xrqvvalojb/strided_slice/stack_1О
 xrqvvalojb/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 xrqvvalojb/strided_slice/stack_2§
xrqvvalojb/strided_sliceStridedSlicexrqvvalojb/Shape:output:0'xrqvvalojb/strided_slice/stack:output:0)xrqvvalojb/strided_slice/stack_1:output:0)xrqvvalojb/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
xrqvvalojb/strided_slicez
xrqvvalojb/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
xrqvvalojb/Reshape/shape/1z
xrqvvalojb/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
xrqvvalojb/Reshape/shape/2„
xrqvvalojb/Reshape/shapePack!xrqvvalojb/strided_slice:output:0#xrqvvalojb/Reshape/shape/1:output:0#xrqvvalojb/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
xrqvvalojb/Reshape/shapeЊ
xrqvvalojb/ReshapeReshape0gnnkxdqznz/squeeze_batch_dims/Reshape_1:output:0!xrqvvalojb/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
xrqvvalojb/Reshapeo
kpulowglns/ShapeShapexrqvvalojb/Reshape:output:0*
T0*
_output_shapes
:2
kpulowglns/ShapeК
kpulowglns/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
kpulowglns/strided_slice/stackО
 kpulowglns/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 kpulowglns/strided_slice/stack_1О
 kpulowglns/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 kpulowglns/strided_slice/stack_2§
kpulowglns/strided_sliceStridedSlicekpulowglns/Shape:output:0'kpulowglns/strided_slice/stack:output:0)kpulowglns/strided_slice/stack_1:output:0)kpulowglns/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
kpulowglns/strided_slicer
kpulowglns/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/zeros/mul/yШ
kpulowglns/zeros/mulMul!kpulowglns/strided_slice:output:0kpulowglns/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/zeros/mulu
kpulowglns/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
kpulowglns/zeros/Less/yУ
kpulowglns/zeros/LessLesskpulowglns/zeros/mul:z:0 kpulowglns/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/zeros/Lessx
kpulowglns/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/zeros/packed/1ѓ
kpulowglns/zeros/packedPack!kpulowglns/strided_slice:output:0"kpulowglns/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
kpulowglns/zeros/packedu
kpulowglns/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
kpulowglns/zeros/Const°
kpulowglns/zerosFill kpulowglns/zeros/packed:output:0kpulowglns/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/zerosv
kpulowglns/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/zeros_1/mul/yЮ
kpulowglns/zeros_1/mulMul!kpulowglns/strided_slice:output:0!kpulowglns/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/zeros_1/muly
kpulowglns/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
kpulowglns/zeros_1/Less/yЫ
kpulowglns/zeros_1/LessLesskpulowglns/zeros_1/mul:z:0"kpulowglns/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/zeros_1/Less|
kpulowglns/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/zeros_1/packed/1µ
kpulowglns/zeros_1/packedPack!kpulowglns/strided_slice:output:0$kpulowglns/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
kpulowglns/zeros_1/packedy
kpulowglns/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
kpulowglns/zeros_1/Const©
kpulowglns/zeros_1Fill"kpulowglns/zeros_1/packed:output:0!kpulowglns/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/zeros_1Л
kpulowglns/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
kpulowglns/transpose/perm∞
kpulowglns/transpose	Transposexrqvvalojb/Reshape:output:0"kpulowglns/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
kpulowglns/transposep
kpulowglns/Shape_1Shapekpulowglns/transpose:y:0*
T0*
_output_shapes
:2
kpulowglns/Shape_1О
 kpulowglns/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 kpulowglns/strided_slice_1/stackТ
"kpulowglns/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"kpulowglns/strided_slice_1/stack_1Т
"kpulowglns/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"kpulowglns/strided_slice_1/stack_2∞
kpulowglns/strided_slice_1StridedSlicekpulowglns/Shape_1:output:0)kpulowglns/strided_slice_1/stack:output:0+kpulowglns/strided_slice_1/stack_1:output:0+kpulowglns/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
kpulowglns/strided_slice_1Ы
&kpulowglns/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2(
&kpulowglns/TensorArrayV2/element_shapeё
kpulowglns/TensorArrayV2TensorListReserve/kpulowglns/TensorArrayV2/element_shape:output:0#kpulowglns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
kpulowglns/TensorArrayV2’
@kpulowglns/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2B
@kpulowglns/TensorArrayUnstack/TensorListFromTensor/element_shape§
2kpulowglns/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorkpulowglns/transpose:y:0Ikpulowglns/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2kpulowglns/TensorArrayUnstack/TensorListFromTensorО
 kpulowglns/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 kpulowglns/strided_slice_2/stackТ
"kpulowglns/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"kpulowglns/strided_slice_2/stack_1Т
"kpulowglns/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"kpulowglns/strided_slice_2/stack_2Њ
kpulowglns/strided_slice_2StridedSlicekpulowglns/transpose:y:0)kpulowglns/strided_slice_2/stack:output:0+kpulowglns/strided_slice_2/stack_1:output:0+kpulowglns/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
kpulowglns/strided_slice_2–
+kpulowglns/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp4kpulowglns_fddnbxfcbs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02-
+kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp”
kpulowglns/fddnbxfcbs/MatMulMatMul#kpulowglns/strided_slice_2:output:03kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
kpulowglns/fddnbxfcbs/MatMul÷
-kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp6kpulowglns_fddnbxfcbs_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOpѕ
kpulowglns/fddnbxfcbs/MatMul_1MatMulkpulowglns/zeros:output:05kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
kpulowglns/fddnbxfcbs/MatMul_1ƒ
kpulowglns/fddnbxfcbs/addAddV2&kpulowglns/fddnbxfcbs/MatMul:product:0(kpulowglns/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
kpulowglns/fddnbxfcbs/addѕ
,kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp5kpulowglns_fddnbxfcbs_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp—
kpulowglns/fddnbxfcbs/BiasAddBiasAddkpulowglns/fddnbxfcbs/add:z:04kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
kpulowglns/fddnbxfcbs/BiasAddР
%kpulowglns/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%kpulowglns/fddnbxfcbs/split/split_dimЧ
kpulowglns/fddnbxfcbs/splitSplit.kpulowglns/fddnbxfcbs/split/split_dim:output:0&kpulowglns/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
kpulowglns/fddnbxfcbs/splitґ
$kpulowglns/fddnbxfcbs/ReadVariableOpReadVariableOp-kpulowglns_fddnbxfcbs_readvariableop_resource*
_output_shapes
: *
dtype02&
$kpulowglns/fddnbxfcbs/ReadVariableOpЇ
kpulowglns/fddnbxfcbs/mulMul,kpulowglns/fddnbxfcbs/ReadVariableOp:value:0kpulowglns/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mulЇ
kpulowglns/fddnbxfcbs/add_1AddV2$kpulowglns/fddnbxfcbs/split:output:0kpulowglns/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/add_1Ь
kpulowglns/fddnbxfcbs/SigmoidSigmoidkpulowglns/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/SigmoidЉ
&kpulowglns/fddnbxfcbs/ReadVariableOp_1ReadVariableOp/kpulowglns_fddnbxfcbs_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&kpulowglns/fddnbxfcbs/ReadVariableOp_1ј
kpulowglns/fddnbxfcbs/mul_1Mul.kpulowglns/fddnbxfcbs/ReadVariableOp_1:value:0kpulowglns/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mul_1Љ
kpulowglns/fddnbxfcbs/add_2AddV2$kpulowglns/fddnbxfcbs/split:output:1kpulowglns/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/add_2†
kpulowglns/fddnbxfcbs/Sigmoid_1Sigmoidkpulowglns/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
kpulowglns/fddnbxfcbs/Sigmoid_1µ
kpulowglns/fddnbxfcbs/mul_2Mul#kpulowglns/fddnbxfcbs/Sigmoid_1:y:0kpulowglns/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mul_2Ш
kpulowglns/fddnbxfcbs/TanhTanh$kpulowglns/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/Tanhґ
kpulowglns/fddnbxfcbs/mul_3Mul!kpulowglns/fddnbxfcbs/Sigmoid:y:0kpulowglns/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mul_3Ј
kpulowglns/fddnbxfcbs/add_3AddV2kpulowglns/fddnbxfcbs/mul_2:z:0kpulowglns/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/add_3Љ
&kpulowglns/fddnbxfcbs/ReadVariableOp_2ReadVariableOp/kpulowglns_fddnbxfcbs_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&kpulowglns/fddnbxfcbs/ReadVariableOp_2ƒ
kpulowglns/fddnbxfcbs/mul_4Mul.kpulowglns/fddnbxfcbs/ReadVariableOp_2:value:0kpulowglns/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mul_4Љ
kpulowglns/fddnbxfcbs/add_4AddV2$kpulowglns/fddnbxfcbs/split:output:3kpulowglns/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/add_4†
kpulowglns/fddnbxfcbs/Sigmoid_2Sigmoidkpulowglns/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
kpulowglns/fddnbxfcbs/Sigmoid_2Ч
kpulowglns/fddnbxfcbs/Tanh_1Tanhkpulowglns/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/Tanh_1Ї
kpulowglns/fddnbxfcbs/mul_5Mul#kpulowglns/fddnbxfcbs/Sigmoid_2:y:0 kpulowglns/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mul_5•
(kpulowglns/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2*
(kpulowglns/TensorArrayV2_1/element_shapeд
kpulowglns/TensorArrayV2_1TensorListReserve1kpulowglns/TensorArrayV2_1/element_shape:output:0#kpulowglns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
kpulowglns/TensorArrayV2_1d
kpulowglns/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/timeХ
#kpulowglns/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2%
#kpulowglns/while/maximum_iterationsА
kpulowglns/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/while/loop_counter≤
kpulowglns/whileWhile&kpulowglns/while/loop_counter:output:0,kpulowglns/while/maximum_iterations:output:0kpulowglns/time:output:0#kpulowglns/TensorArrayV2_1:handle:0kpulowglns/zeros:output:0kpulowglns/zeros_1:output:0#kpulowglns/strided_slice_1:output:0Bkpulowglns/TensorArrayUnstack/TensorListFromTensor:output_handle:04kpulowglns_fddnbxfcbs_matmul_readvariableop_resource6kpulowglns_fddnbxfcbs_matmul_1_readvariableop_resource5kpulowglns_fddnbxfcbs_biasadd_readvariableop_resource-kpulowglns_fddnbxfcbs_readvariableop_resource/kpulowglns_fddnbxfcbs_readvariableop_1_resource/kpulowglns_fddnbxfcbs_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*)
body!R
kpulowglns_while_body_1303012*)
cond!R
kpulowglns_while_cond_1303011*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
kpulowglns/whileЋ
;kpulowglns/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2=
;kpulowglns/TensorArrayV2Stack/TensorListStack/element_shapeФ
-kpulowglns/TensorArrayV2Stack/TensorListStackTensorListStackkpulowglns/while:output:3Dkpulowglns/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02/
-kpulowglns/TensorArrayV2Stack/TensorListStackЧ
 kpulowglns/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2"
 kpulowglns/strided_slice_3/stackТ
"kpulowglns/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"kpulowglns/strided_slice_3/stack_1Т
"kpulowglns/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"kpulowglns/strided_slice_3/stack_2№
kpulowglns/strided_slice_3StridedSlice6kpulowglns/TensorArrayV2Stack/TensorListStack:tensor:0)kpulowglns/strided_slice_3/stack:output:0+kpulowglns/strided_slice_3/stack_1:output:0+kpulowglns/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
kpulowglns/strided_slice_3П
kpulowglns/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
kpulowglns/transpose_1/perm—
kpulowglns/transpose_1	Transpose6kpulowglns/TensorArrayV2Stack/TensorListStack:tensor:0$kpulowglns/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
kpulowglns/transpose_1n
htheqsxgix/ShapeShapekpulowglns/transpose_1:y:0*
T0*
_output_shapes
:2
htheqsxgix/ShapeК
htheqsxgix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
htheqsxgix/strided_slice/stackО
 htheqsxgix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 htheqsxgix/strided_slice/stack_1О
 htheqsxgix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 htheqsxgix/strided_slice/stack_2§
htheqsxgix/strided_sliceStridedSlicehtheqsxgix/Shape:output:0'htheqsxgix/strided_slice/stack:output:0)htheqsxgix/strided_slice/stack_1:output:0)htheqsxgix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
htheqsxgix/strided_slicer
htheqsxgix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/zeros/mul/yШ
htheqsxgix/zeros/mulMul!htheqsxgix/strided_slice:output:0htheqsxgix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/zeros/mulu
htheqsxgix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
htheqsxgix/zeros/Less/yУ
htheqsxgix/zeros/LessLesshtheqsxgix/zeros/mul:z:0 htheqsxgix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/zeros/Lessx
htheqsxgix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/zeros/packed/1ѓ
htheqsxgix/zeros/packedPack!htheqsxgix/strided_slice:output:0"htheqsxgix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
htheqsxgix/zeros/packedu
htheqsxgix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
htheqsxgix/zeros/Const°
htheqsxgix/zerosFill htheqsxgix/zeros/packed:output:0htheqsxgix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/zerosv
htheqsxgix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/zeros_1/mul/yЮ
htheqsxgix/zeros_1/mulMul!htheqsxgix/strided_slice:output:0!htheqsxgix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/zeros_1/muly
htheqsxgix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
htheqsxgix/zeros_1/Less/yЫ
htheqsxgix/zeros_1/LessLesshtheqsxgix/zeros_1/mul:z:0"htheqsxgix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/zeros_1/Less|
htheqsxgix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/zeros_1/packed/1µ
htheqsxgix/zeros_1/packedPack!htheqsxgix/strided_slice:output:0$htheqsxgix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
htheqsxgix/zeros_1/packedy
htheqsxgix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
htheqsxgix/zeros_1/Const©
htheqsxgix/zeros_1Fill"htheqsxgix/zeros_1/packed:output:0!htheqsxgix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/zeros_1Л
htheqsxgix/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
htheqsxgix/transpose/permѓ
htheqsxgix/transpose	Transposekpulowglns/transpose_1:y:0"htheqsxgix/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/transposep
htheqsxgix/Shape_1Shapehtheqsxgix/transpose:y:0*
T0*
_output_shapes
:2
htheqsxgix/Shape_1О
 htheqsxgix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 htheqsxgix/strided_slice_1/stackТ
"htheqsxgix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"htheqsxgix/strided_slice_1/stack_1Т
"htheqsxgix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"htheqsxgix/strided_slice_1/stack_2∞
htheqsxgix/strided_slice_1StridedSlicehtheqsxgix/Shape_1:output:0)htheqsxgix/strided_slice_1/stack:output:0+htheqsxgix/strided_slice_1/stack_1:output:0+htheqsxgix/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
htheqsxgix/strided_slice_1Ы
&htheqsxgix/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2(
&htheqsxgix/TensorArrayV2/element_shapeё
htheqsxgix/TensorArrayV2TensorListReserve/htheqsxgix/TensorArrayV2/element_shape:output:0#htheqsxgix/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
htheqsxgix/TensorArrayV2’
@htheqsxgix/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2B
@htheqsxgix/TensorArrayUnstack/TensorListFromTensor/element_shape§
2htheqsxgix/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorhtheqsxgix/transpose:y:0Ihtheqsxgix/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2htheqsxgix/TensorArrayUnstack/TensorListFromTensorО
 htheqsxgix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 htheqsxgix/strided_slice_2/stackТ
"htheqsxgix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"htheqsxgix/strided_slice_2/stack_1Т
"htheqsxgix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"htheqsxgix/strided_slice_2/stack_2Њ
htheqsxgix/strided_slice_2StridedSlicehtheqsxgix/transpose:y:0)htheqsxgix/strided_slice_2/stack:output:0+htheqsxgix/strided_slice_2/stack_1:output:0+htheqsxgix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
htheqsxgix/strided_slice_2–
+htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp4htheqsxgix_tivuqvlrxj_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02-
+htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp”
htheqsxgix/tivuqvlrxj/MatMulMatMul#htheqsxgix/strided_slice_2:output:03htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
htheqsxgix/tivuqvlrxj/MatMul÷
-htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp6htheqsxgix_tivuqvlrxj_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOpѕ
htheqsxgix/tivuqvlrxj/MatMul_1MatMulhtheqsxgix/zeros:output:05htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
htheqsxgix/tivuqvlrxj/MatMul_1ƒ
htheqsxgix/tivuqvlrxj/addAddV2&htheqsxgix/tivuqvlrxj/MatMul:product:0(htheqsxgix/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
htheqsxgix/tivuqvlrxj/addѕ
,htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp5htheqsxgix_tivuqvlrxj_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp—
htheqsxgix/tivuqvlrxj/BiasAddBiasAddhtheqsxgix/tivuqvlrxj/add:z:04htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
htheqsxgix/tivuqvlrxj/BiasAddР
%htheqsxgix/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%htheqsxgix/tivuqvlrxj/split/split_dimЧ
htheqsxgix/tivuqvlrxj/splitSplit.htheqsxgix/tivuqvlrxj/split/split_dim:output:0&htheqsxgix/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
htheqsxgix/tivuqvlrxj/splitґ
$htheqsxgix/tivuqvlrxj/ReadVariableOpReadVariableOp-htheqsxgix_tivuqvlrxj_readvariableop_resource*
_output_shapes
: *
dtype02&
$htheqsxgix/tivuqvlrxj/ReadVariableOpЇ
htheqsxgix/tivuqvlrxj/mulMul,htheqsxgix/tivuqvlrxj/ReadVariableOp:value:0htheqsxgix/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mulЇ
htheqsxgix/tivuqvlrxj/add_1AddV2$htheqsxgix/tivuqvlrxj/split:output:0htheqsxgix/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/add_1Ь
htheqsxgix/tivuqvlrxj/SigmoidSigmoidhtheqsxgix/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/SigmoidЉ
&htheqsxgix/tivuqvlrxj/ReadVariableOp_1ReadVariableOp/htheqsxgix_tivuqvlrxj_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&htheqsxgix/tivuqvlrxj/ReadVariableOp_1ј
htheqsxgix/tivuqvlrxj/mul_1Mul.htheqsxgix/tivuqvlrxj/ReadVariableOp_1:value:0htheqsxgix/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mul_1Љ
htheqsxgix/tivuqvlrxj/add_2AddV2$htheqsxgix/tivuqvlrxj/split:output:1htheqsxgix/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/add_2†
htheqsxgix/tivuqvlrxj/Sigmoid_1Sigmoidhtheqsxgix/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
htheqsxgix/tivuqvlrxj/Sigmoid_1µ
htheqsxgix/tivuqvlrxj/mul_2Mul#htheqsxgix/tivuqvlrxj/Sigmoid_1:y:0htheqsxgix/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mul_2Ш
htheqsxgix/tivuqvlrxj/TanhTanh$htheqsxgix/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/Tanhґ
htheqsxgix/tivuqvlrxj/mul_3Mul!htheqsxgix/tivuqvlrxj/Sigmoid:y:0htheqsxgix/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mul_3Ј
htheqsxgix/tivuqvlrxj/add_3AddV2htheqsxgix/tivuqvlrxj/mul_2:z:0htheqsxgix/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/add_3Љ
&htheqsxgix/tivuqvlrxj/ReadVariableOp_2ReadVariableOp/htheqsxgix_tivuqvlrxj_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&htheqsxgix/tivuqvlrxj/ReadVariableOp_2ƒ
htheqsxgix/tivuqvlrxj/mul_4Mul.htheqsxgix/tivuqvlrxj/ReadVariableOp_2:value:0htheqsxgix/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mul_4Љ
htheqsxgix/tivuqvlrxj/add_4AddV2$htheqsxgix/tivuqvlrxj/split:output:3htheqsxgix/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/add_4†
htheqsxgix/tivuqvlrxj/Sigmoid_2Sigmoidhtheqsxgix/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
htheqsxgix/tivuqvlrxj/Sigmoid_2Ч
htheqsxgix/tivuqvlrxj/Tanh_1Tanhhtheqsxgix/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/Tanh_1Ї
htheqsxgix/tivuqvlrxj/mul_5Mul#htheqsxgix/tivuqvlrxj/Sigmoid_2:y:0 htheqsxgix/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mul_5•
(htheqsxgix/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2*
(htheqsxgix/TensorArrayV2_1/element_shapeд
htheqsxgix/TensorArrayV2_1TensorListReserve1htheqsxgix/TensorArrayV2_1/element_shape:output:0#htheqsxgix/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
htheqsxgix/TensorArrayV2_1d
htheqsxgix/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/timeХ
#htheqsxgix/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2%
#htheqsxgix/while/maximum_iterationsА
htheqsxgix/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/while/loop_counter≤
htheqsxgix/whileWhile&htheqsxgix/while/loop_counter:output:0,htheqsxgix/while/maximum_iterations:output:0htheqsxgix/time:output:0#htheqsxgix/TensorArrayV2_1:handle:0htheqsxgix/zeros:output:0htheqsxgix/zeros_1:output:0#htheqsxgix/strided_slice_1:output:0Bhtheqsxgix/TensorArrayUnstack/TensorListFromTensor:output_handle:04htheqsxgix_tivuqvlrxj_matmul_readvariableop_resource6htheqsxgix_tivuqvlrxj_matmul_1_readvariableop_resource5htheqsxgix_tivuqvlrxj_biasadd_readvariableop_resource-htheqsxgix_tivuqvlrxj_readvariableop_resource/htheqsxgix_tivuqvlrxj_readvariableop_1_resource/htheqsxgix_tivuqvlrxj_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*)
body!R
htheqsxgix_while_body_1303188*)
cond!R
htheqsxgix_while_cond_1303187*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
htheqsxgix/whileЋ
;htheqsxgix/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2=
;htheqsxgix/TensorArrayV2Stack/TensorListStack/element_shapeФ
-htheqsxgix/TensorArrayV2Stack/TensorListStackTensorListStackhtheqsxgix/while:output:3Dhtheqsxgix/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02/
-htheqsxgix/TensorArrayV2Stack/TensorListStackЧ
 htheqsxgix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2"
 htheqsxgix/strided_slice_3/stackТ
"htheqsxgix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"htheqsxgix/strided_slice_3/stack_1Т
"htheqsxgix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"htheqsxgix/strided_slice_3/stack_2№
htheqsxgix/strided_slice_3StridedSlice6htheqsxgix/TensorArrayV2Stack/TensorListStack:tensor:0)htheqsxgix/strided_slice_3/stack:output:0+htheqsxgix/strided_slice_3/stack_1:output:0+htheqsxgix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
htheqsxgix/strided_slice_3П
htheqsxgix/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
htheqsxgix/transpose_1/perm—
htheqsxgix/transpose_1	Transpose6htheqsxgix/TensorArrayV2Stack/TensorListStack:tensor:0$htheqsxgix/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/transpose_1Ѓ
 tgvgnagwib/MatMul/ReadVariableOpReadVariableOp)tgvgnagwib_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 tgvgnagwib/MatMul/ReadVariableOp±
tgvgnagwib/MatMulMatMul#htheqsxgix/strided_slice_3:output:0(tgvgnagwib/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
tgvgnagwib/MatMul≠
!tgvgnagwib/BiasAdd/ReadVariableOpReadVariableOp*tgvgnagwib_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!tgvgnagwib/BiasAdd/ReadVariableOp≠
tgvgnagwib/BiasAddBiasAddtgvgnagwib/MatMul:product:0)tgvgnagwib/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
tgvgnagwib/BiasAddґ
IdentityIdentitytgvgnagwib/BiasAdd:output:0.^gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp5^gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp-^htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp,^htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp.^htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp%^htheqsxgix/tivuqvlrxj/ReadVariableOp'^htheqsxgix/tivuqvlrxj/ReadVariableOp_1'^htheqsxgix/tivuqvlrxj/ReadVariableOp_2^htheqsxgix/while-^kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp,^kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp.^kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp%^kpulowglns/fddnbxfcbs/ReadVariableOp'^kpulowglns/fddnbxfcbs/ReadVariableOp_1'^kpulowglns/fddnbxfcbs/ReadVariableOp_2^kpulowglns/while"^tgvgnagwib/BiasAdd/ReadVariableOp!^tgvgnagwib/MatMul/ReadVariableOp.^xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp5^xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 2^
-gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp-gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp2l
4gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp4gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp2\
,htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp,htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp2Z
+htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp+htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp2^
-htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp-htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp2L
$htheqsxgix/tivuqvlrxj/ReadVariableOp$htheqsxgix/tivuqvlrxj/ReadVariableOp2P
&htheqsxgix/tivuqvlrxj/ReadVariableOp_1&htheqsxgix/tivuqvlrxj/ReadVariableOp_12P
&htheqsxgix/tivuqvlrxj/ReadVariableOp_2&htheqsxgix/tivuqvlrxj/ReadVariableOp_22$
htheqsxgix/whilehtheqsxgix/while2\
,kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp,kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp2Z
+kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp+kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp2^
-kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp-kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp2L
$kpulowglns/fddnbxfcbs/ReadVariableOp$kpulowglns/fddnbxfcbs/ReadVariableOp2P
&kpulowglns/fddnbxfcbs/ReadVariableOp_1&kpulowglns/fddnbxfcbs/ReadVariableOp_12P
&kpulowglns/fddnbxfcbs/ReadVariableOp_2&kpulowglns/fddnbxfcbs/ReadVariableOp_22$
kpulowglns/whilekpulowglns/while2F
!tgvgnagwib/BiasAdd/ReadVariableOp!tgvgnagwib/BiasAdd/ReadVariableOp2D
 tgvgnagwib/MatMul/ReadVariableOp tgvgnagwib/MatMul/ReadVariableOp2^
-xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp-xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp2l
4xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp4xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ь$
±
G__inference_sequential_layer_call_and_return_conditional_losses_1302322

cvyyglfjwp(
xwuftghvfx_1302279: 
xwuftghvfx_1302281:(
gnnkxdqznz_1302284: 
gnnkxdqznz_1302286:%
kpulowglns_1302290:	А%
kpulowglns_1302292:	 А!
kpulowglns_1302294:	А 
kpulowglns_1302296:  
kpulowglns_1302298:  
kpulowglns_1302300: %
htheqsxgix_1302303:	 А%
htheqsxgix_1302305:	 А!
htheqsxgix_1302307:	А 
htheqsxgix_1302309:  
htheqsxgix_1302311:  
htheqsxgix_1302313: $
tgvgnagwib_1302316:  
tgvgnagwib_1302318:
identityИҐ"gnnkxdqznz/StatefulPartitionedCallҐ"htheqsxgix/StatefulPartitionedCallҐ"kpulowglns/StatefulPartitionedCallҐ"tgvgnagwib/StatefulPartitionedCallҐ"xwuftghvfx/StatefulPartitionedCall∞
"xwuftghvfx/StatefulPartitionedCallStatefulPartitionedCall
cvyyglfjwpxwuftghvfx_1302279xwuftghvfx_1302281*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_xwuftghvfx_layer_call_and_return_conditional_losses_13011352$
"xwuftghvfx/StatefulPartitionedCall—
"gnnkxdqznz/StatefulPartitionedCallStatefulPartitionedCall+xwuftghvfx/StatefulPartitionedCall:output:0gnnkxdqznz_1302284gnnkxdqznz_1302286*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_gnnkxdqznz_layer_call_and_return_conditional_losses_13011802$
"gnnkxdqznz/StatefulPartitionedCallЗ
xrqvvalojb/PartitionedCallPartitionedCall+gnnkxdqznz/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_xrqvvalojb_layer_call_and_return_conditional_losses_13011992
xrqvvalojb/PartitionedCallЭ
"kpulowglns/StatefulPartitionedCallStatefulPartitionedCall#xrqvvalojb/PartitionedCall:output:0kpulowglns_1302290kpulowglns_1302292kpulowglns_1302294kpulowglns_1302296kpulowglns_1302298kpulowglns_1302300*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_kpulowglns_layer_call_and_return_conditional_losses_13013802$
"kpulowglns/StatefulPartitionedCall°
"htheqsxgix/StatefulPartitionedCallStatefulPartitionedCall+kpulowglns/StatefulPartitionedCall:output:0htheqsxgix_1302303htheqsxgix_1302305htheqsxgix_1302307htheqsxgix_1302309htheqsxgix_1302311htheqsxgix_1302313*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_13015732$
"htheqsxgix/StatefulPartitionedCall…
"tgvgnagwib/StatefulPartitionedCallStatefulPartitionedCall+htheqsxgix/StatefulPartitionedCall:output:0tgvgnagwib_1302316tgvgnagwib_1302318*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_tgvgnagwib_layer_call_and_return_conditional_losses_13015972$
"tgvgnagwib/StatefulPartitionedCallЄ
IdentityIdentity+tgvgnagwib/StatefulPartitionedCall:output:0#^gnnkxdqznz/StatefulPartitionedCall#^htheqsxgix/StatefulPartitionedCall#^kpulowglns/StatefulPartitionedCall#^tgvgnagwib/StatefulPartitionedCall#^xwuftghvfx/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 2H
"gnnkxdqznz/StatefulPartitionedCall"gnnkxdqznz/StatefulPartitionedCall2H
"htheqsxgix/StatefulPartitionedCall"htheqsxgix/StatefulPartitionedCall2H
"kpulowglns/StatefulPartitionedCall"kpulowglns/StatefulPartitionedCall2H
"tgvgnagwib/StatefulPartitionedCall"tgvgnagwib/StatefulPartitionedCall2H
"xwuftghvfx/StatefulPartitionedCall"xwuftghvfx/StatefulPartitionedCall:[ W
/
_output_shapes
:€€€€€€€€€
$
_user_specified_name
cvyyglfjwp
аY
З
while_body_1303928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_fddnbxfcbs_matmul_readvariableop_resource_0:	АF
3while_fddnbxfcbs_matmul_1_readvariableop_resource_0:	 АA
2while_fddnbxfcbs_biasadd_readvariableop_resource_0:	А8
*while_fddnbxfcbs_readvariableop_resource_0: :
,while_fddnbxfcbs_readvariableop_1_resource_0: :
,while_fddnbxfcbs_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_fddnbxfcbs_matmul_readvariableop_resource:	АD
1while_fddnbxfcbs_matmul_1_readvariableop_resource:	 А?
0while_fddnbxfcbs_biasadd_readvariableop_resource:	А6
(while_fddnbxfcbs_readvariableop_resource: 8
*while_fddnbxfcbs_readvariableop_1_resource: 8
*while_fddnbxfcbs_readvariableop_2_resource: ИҐ'while/fddnbxfcbs/BiasAdd/ReadVariableOpҐ&while/fddnbxfcbs/MatMul/ReadVariableOpҐ(while/fddnbxfcbs/MatMul_1/ReadVariableOpҐwhile/fddnbxfcbs/ReadVariableOpҐ!while/fddnbxfcbs/ReadVariableOp_1Ґ!while/fddnbxfcbs/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp1while_fddnbxfcbs_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/fddnbxfcbs/MatMul/ReadVariableOp—
while/fddnbxfcbs/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul…
(while/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp3while_fddnbxfcbs_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/fddnbxfcbs/MatMul_1/ReadVariableOpЇ
while/fddnbxfcbs/MatMul_1MatMulwhile_placeholder_20while/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul_1∞
while/fddnbxfcbs/addAddV2!while/fddnbxfcbs/MatMul:product:0#while/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/add¬
'while/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp2while_fddnbxfcbs_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/fddnbxfcbs/BiasAdd/ReadVariableOpљ
while/fddnbxfcbs/BiasAddBiasAddwhile/fddnbxfcbs/add:z:0/while/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/BiasAddЖ
 while/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/fddnbxfcbs/split/split_dimГ
while/fddnbxfcbs/splitSplit)while/fddnbxfcbs/split/split_dim:output:0!while/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/fddnbxfcbs/split©
while/fddnbxfcbs/ReadVariableOpReadVariableOp*while_fddnbxfcbs_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/fddnbxfcbs/ReadVariableOp£
while/fddnbxfcbs/mulMul'while/fddnbxfcbs/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul¶
while/fddnbxfcbs/add_1AddV2while/fddnbxfcbs/split:output:0while/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_1Н
while/fddnbxfcbs/SigmoidSigmoidwhile/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoidѓ
!while/fddnbxfcbs/ReadVariableOp_1ReadVariableOp,while_fddnbxfcbs_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_1©
while/fddnbxfcbs/mul_1Mul)while/fddnbxfcbs/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_1®
while/fddnbxfcbs/add_2AddV2while/fddnbxfcbs/split:output:1while/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_2С
while/fddnbxfcbs/Sigmoid_1Sigmoidwhile/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_1Ю
while/fddnbxfcbs/mul_2Mulwhile/fddnbxfcbs/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_2Й
while/fddnbxfcbs/TanhTanhwhile/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/TanhҐ
while/fddnbxfcbs/mul_3Mulwhile/fddnbxfcbs/Sigmoid:y:0while/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_3£
while/fddnbxfcbs/add_3AddV2while/fddnbxfcbs/mul_2:z:0while/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_3ѓ
!while/fddnbxfcbs/ReadVariableOp_2ReadVariableOp,while_fddnbxfcbs_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_2∞
while/fddnbxfcbs/mul_4Mul)while/fddnbxfcbs/ReadVariableOp_2:value:0while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_4®
while/fddnbxfcbs/add_4AddV2while/fddnbxfcbs/split:output:3while/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_4С
while/fddnbxfcbs/Sigmoid_2Sigmoidwhile/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_2И
while/fddnbxfcbs/Tanh_1Tanhwhile/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Tanh_1¶
while/fddnbxfcbs/mul_5Mulwhile/fddnbxfcbs/Sigmoid_2:y:0while/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/fddnbxfcbs/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/fddnbxfcbs/mul_5:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/fddnbxfcbs/add_3:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5"f
0while_fddnbxfcbs_biasadd_readvariableop_resource2while_fddnbxfcbs_biasadd_readvariableop_resource_0"h
1while_fddnbxfcbs_matmul_1_readvariableop_resource3while_fddnbxfcbs_matmul_1_readvariableop_resource_0"d
/while_fddnbxfcbs_matmul_readvariableop_resource1while_fddnbxfcbs_matmul_readvariableop_resource_0"Z
*while_fddnbxfcbs_readvariableop_1_resource,while_fddnbxfcbs_readvariableop_1_resource_0"Z
*while_fddnbxfcbs_readvariableop_2_resource,while_fddnbxfcbs_readvariableop_2_resource_0"V
(while_fddnbxfcbs_readvariableop_resource*while_fddnbxfcbs_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/fddnbxfcbs/BiasAdd/ReadVariableOp'while/fddnbxfcbs/BiasAdd/ReadVariableOp2P
&while/fddnbxfcbs/MatMul/ReadVariableOp&while/fddnbxfcbs/MatMul/ReadVariableOp2T
(while/fddnbxfcbs/MatMul_1/ReadVariableOp(while/fddnbxfcbs/MatMul_1/ReadVariableOp2B
while/fddnbxfcbs/ReadVariableOpwhile/fddnbxfcbs/ReadVariableOp2F
!while/fddnbxfcbs/ReadVariableOp_1!while/fddnbxfcbs/ReadVariableOp_12F
!while/fddnbxfcbs/ReadVariableOp_2!while/fddnbxfcbs/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Щp
 
htheqsxgix_while_body_13027492
.htheqsxgix_while_htheqsxgix_while_loop_counter8
4htheqsxgix_while_htheqsxgix_while_maximum_iterations 
htheqsxgix_while_placeholder"
htheqsxgix_while_placeholder_1"
htheqsxgix_while_placeholder_2"
htheqsxgix_while_placeholder_31
-htheqsxgix_while_htheqsxgix_strided_slice_1_0m
ihtheqsxgix_while_tensorarrayv2read_tensorlistgetitem_htheqsxgix_tensorarrayunstack_tensorlistfromtensor_0O
<htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource_0:	 АQ
>htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource_0:	 АL
=htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource_0:	АC
5htheqsxgix_while_tivuqvlrxj_readvariableop_resource_0: E
7htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource_0: E
7htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource_0: 
htheqsxgix_while_identity
htheqsxgix_while_identity_1
htheqsxgix_while_identity_2
htheqsxgix_while_identity_3
htheqsxgix_while_identity_4
htheqsxgix_while_identity_5/
+htheqsxgix_while_htheqsxgix_strided_slice_1k
ghtheqsxgix_while_tensorarrayv2read_tensorlistgetitem_htheqsxgix_tensorarrayunstack_tensorlistfromtensorM
:htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource:	 АO
<htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource:	 АJ
;htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource:	АA
3htheqsxgix_while_tivuqvlrxj_readvariableop_resource: C
5htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource: C
5htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource: ИҐ2htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOpҐ1htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOpҐ3htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOpҐ*htheqsxgix/while/tivuqvlrxj/ReadVariableOpҐ,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1Ґ,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2ў
Bhtheqsxgix/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2D
Bhtheqsxgix/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4htheqsxgix/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemihtheqsxgix_while_tensorarrayv2read_tensorlistgetitem_htheqsxgix_tensorarrayunstack_tensorlistfromtensor_0htheqsxgix_while_placeholderKhtheqsxgix/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype026
4htheqsxgix/while/TensorArrayV2Read/TensorListGetItemд
1htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp<htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype023
1htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOpэ
"htheqsxgix/while/tivuqvlrxj/MatMulMatMul;htheqsxgix/while/TensorArrayV2Read/TensorListGetItem:item:09htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"htheqsxgix/while/tivuqvlrxj/MatMulк
3htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp>htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOpж
$htheqsxgix/while/tivuqvlrxj/MatMul_1MatMulhtheqsxgix_while_placeholder_2;htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2&
$htheqsxgix/while/tivuqvlrxj/MatMul_1№
htheqsxgix/while/tivuqvlrxj/addAddV2,htheqsxgix/while/tivuqvlrxj/MatMul:product:0.htheqsxgix/while/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
htheqsxgix/while/tivuqvlrxj/addг
2htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp=htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOpй
#htheqsxgix/while/tivuqvlrxj/BiasAddBiasAdd#htheqsxgix/while/tivuqvlrxj/add:z:0:htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2%
#htheqsxgix/while/tivuqvlrxj/BiasAddЬ
+htheqsxgix/while/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+htheqsxgix/while/tivuqvlrxj/split/split_dimѓ
!htheqsxgix/while/tivuqvlrxj/splitSplit4htheqsxgix/while/tivuqvlrxj/split/split_dim:output:0,htheqsxgix/while/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2#
!htheqsxgix/while/tivuqvlrxj/split 
*htheqsxgix/while/tivuqvlrxj/ReadVariableOpReadVariableOp5htheqsxgix_while_tivuqvlrxj_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*htheqsxgix/while/tivuqvlrxj/ReadVariableOpѕ
htheqsxgix/while/tivuqvlrxj/mulMul2htheqsxgix/while/tivuqvlrxj/ReadVariableOp:value:0htheqsxgix_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2!
htheqsxgix/while/tivuqvlrxj/mul“
!htheqsxgix/while/tivuqvlrxj/add_1AddV2*htheqsxgix/while/tivuqvlrxj/split:output:0#htheqsxgix/while/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/add_1Ѓ
#htheqsxgix/while/tivuqvlrxj/SigmoidSigmoid%htheqsxgix/while/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#htheqsxgix/while/tivuqvlrxj/Sigmoid–
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1ReadVariableOp7htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1’
!htheqsxgix/while/tivuqvlrxj/mul_1Mul4htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1:value:0htheqsxgix_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/mul_1‘
!htheqsxgix/while/tivuqvlrxj/add_2AddV2*htheqsxgix/while/tivuqvlrxj/split:output:1%htheqsxgix/while/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/add_2≤
%htheqsxgix/while/tivuqvlrxj/Sigmoid_1Sigmoid%htheqsxgix/while/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%htheqsxgix/while/tivuqvlrxj/Sigmoid_1 
!htheqsxgix/while/tivuqvlrxj/mul_2Mul)htheqsxgix/while/tivuqvlrxj/Sigmoid_1:y:0htheqsxgix_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/mul_2™
 htheqsxgix/while/tivuqvlrxj/TanhTanh*htheqsxgix/while/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 htheqsxgix/while/tivuqvlrxj/Tanhќ
!htheqsxgix/while/tivuqvlrxj/mul_3Mul'htheqsxgix/while/tivuqvlrxj/Sigmoid:y:0$htheqsxgix/while/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/mul_3ѕ
!htheqsxgix/while/tivuqvlrxj/add_3AddV2%htheqsxgix/while/tivuqvlrxj/mul_2:z:0%htheqsxgix/while/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/add_3–
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2ReadVariableOp7htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2№
!htheqsxgix/while/tivuqvlrxj/mul_4Mul4htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2:value:0%htheqsxgix/while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/mul_4‘
!htheqsxgix/while/tivuqvlrxj/add_4AddV2*htheqsxgix/while/tivuqvlrxj/split:output:3%htheqsxgix/while/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/add_4≤
%htheqsxgix/while/tivuqvlrxj/Sigmoid_2Sigmoid%htheqsxgix/while/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%htheqsxgix/while/tivuqvlrxj/Sigmoid_2©
"htheqsxgix/while/tivuqvlrxj/Tanh_1Tanh%htheqsxgix/while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"htheqsxgix/while/tivuqvlrxj/Tanh_1“
!htheqsxgix/while/tivuqvlrxj/mul_5Mul)htheqsxgix/while/tivuqvlrxj/Sigmoid_2:y:0&htheqsxgix/while/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!htheqsxgix/while/tivuqvlrxj/mul_5Х
5htheqsxgix/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemhtheqsxgix_while_placeholder_1htheqsxgix_while_placeholder%htheqsxgix/while/tivuqvlrxj/mul_5:z:0*
_output_shapes
: *
element_dtype027
5htheqsxgix/while/TensorArrayV2Write/TensorListSetItemr
htheqsxgix/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
htheqsxgix/while/add/yХ
htheqsxgix/while/addAddV2htheqsxgix_while_placeholderhtheqsxgix/while/add/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/while/addv
htheqsxgix/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
htheqsxgix/while/add_1/y≠
htheqsxgix/while/add_1AddV2.htheqsxgix_while_htheqsxgix_while_loop_counter!htheqsxgix/while/add_1/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/while/add_1©
htheqsxgix/while/IdentityIdentityhtheqsxgix/while/add_1:z:03^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
htheqsxgix/while/Identity«
htheqsxgix/while/Identity_1Identity4htheqsxgix_while_htheqsxgix_while_maximum_iterations3^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
htheqsxgix/while/Identity_1Ђ
htheqsxgix/while/Identity_2Identityhtheqsxgix/while/add:z:03^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
htheqsxgix/while/Identity_2Ў
htheqsxgix/while/Identity_3IdentityEhtheqsxgix/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
htheqsxgix/while/Identity_3…
htheqsxgix/while/Identity_4Identity%htheqsxgix/while/tivuqvlrxj/mul_5:z:03^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/while/Identity_4…
htheqsxgix/while/Identity_5Identity%htheqsxgix/while/tivuqvlrxj/add_3:z:03^htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2^htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp4^htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp+^htheqsxgix/while/tivuqvlrxj/ReadVariableOp-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1-^htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/while/Identity_5"\
+htheqsxgix_while_htheqsxgix_strided_slice_1-htheqsxgix_while_htheqsxgix_strided_slice_1_0"?
htheqsxgix_while_identity"htheqsxgix/while/Identity:output:0"C
htheqsxgix_while_identity_1$htheqsxgix/while/Identity_1:output:0"C
htheqsxgix_while_identity_2$htheqsxgix/while/Identity_2:output:0"C
htheqsxgix_while_identity_3$htheqsxgix/while/Identity_3:output:0"C
htheqsxgix_while_identity_4$htheqsxgix/while/Identity_4:output:0"C
htheqsxgix_while_identity_5$htheqsxgix/while/Identity_5:output:0"‘
ghtheqsxgix_while_tensorarrayv2read_tensorlistgetitem_htheqsxgix_tensorarrayunstack_tensorlistfromtensorihtheqsxgix_while_tensorarrayv2read_tensorlistgetitem_htheqsxgix_tensorarrayunstack_tensorlistfromtensor_0"|
;htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource=htheqsxgix_while_tivuqvlrxj_biasadd_readvariableop_resource_0"~
<htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource>htheqsxgix_while_tivuqvlrxj_matmul_1_readvariableop_resource_0"z
:htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource<htheqsxgix_while_tivuqvlrxj_matmul_readvariableop_resource_0"p
5htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource7htheqsxgix_while_tivuqvlrxj_readvariableop_1_resource_0"p
5htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource7htheqsxgix_while_tivuqvlrxj_readvariableop_2_resource_0"l
3htheqsxgix_while_tivuqvlrxj_readvariableop_resource5htheqsxgix_while_tivuqvlrxj_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2h
2htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2htheqsxgix/while/tivuqvlrxj/BiasAdd/ReadVariableOp2f
1htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp1htheqsxgix/while/tivuqvlrxj/MatMul/ReadVariableOp2j
3htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp3htheqsxgix/while/tivuqvlrxj/MatMul_1/ReadVariableOp2X
*htheqsxgix/while/tivuqvlrxj/ReadVariableOp*htheqsxgix/while/tivuqvlrxj/ReadVariableOp2\
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_1,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_12\
,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2,htheqsxgix/while/tivuqvlrxj/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Ш
Л
htheqsxgix_while_cond_13031872
.htheqsxgix_while_htheqsxgix_while_loop_counter8
4htheqsxgix_while_htheqsxgix_while_maximum_iterations 
htheqsxgix_while_placeholder"
htheqsxgix_while_placeholder_1"
htheqsxgix_while_placeholder_2"
htheqsxgix_while_placeholder_34
0htheqsxgix_while_less_htheqsxgix_strided_slice_1K
Ghtheqsxgix_while_htheqsxgix_while_cond_1303187___redundant_placeholder0K
Ghtheqsxgix_while_htheqsxgix_while_cond_1303187___redundant_placeholder1K
Ghtheqsxgix_while_htheqsxgix_while_cond_1303187___redundant_placeholder2K
Ghtheqsxgix_while_htheqsxgix_while_cond_1303187___redundant_placeholder3K
Ghtheqsxgix_while_htheqsxgix_while_cond_1303187___redundant_placeholder4K
Ghtheqsxgix_while_htheqsxgix_while_cond_1303187___redundant_placeholder5K
Ghtheqsxgix_while_htheqsxgix_while_cond_1303187___redundant_placeholder6
htheqsxgix_while_identity
І
htheqsxgix/while/LessLesshtheqsxgix_while_placeholder0htheqsxgix_while_less_htheqsxgix_strided_slice_1*
T0*
_output_shapes
: 2
htheqsxgix/while/Less~
htheqsxgix/while/IdentityIdentityhtheqsxgix/while/Less:z:0*
T0
*
_output_shapes
: 2
htheqsxgix/while/Identity"?
htheqsxgix_while_identity"htheqsxgix/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
 Г
Д
G__inference_sequential_layer_call_and_return_conditional_losses_1302856

inputsL
6xwuftghvfx_conv1d_expanddims_1_readvariableop_resource:K
=xwuftghvfx_squeeze_batch_dims_biasadd_readvariableop_resource:L
6gnnkxdqznz_conv1d_expanddims_1_readvariableop_resource:K
=gnnkxdqznz_squeeze_batch_dims_biasadd_readvariableop_resource:G
4kpulowglns_fddnbxfcbs_matmul_readvariableop_resource:	АI
6kpulowglns_fddnbxfcbs_matmul_1_readvariableop_resource:	 АD
5kpulowglns_fddnbxfcbs_biasadd_readvariableop_resource:	А;
-kpulowglns_fddnbxfcbs_readvariableop_resource: =
/kpulowglns_fddnbxfcbs_readvariableop_1_resource: =
/kpulowglns_fddnbxfcbs_readvariableop_2_resource: G
4htheqsxgix_tivuqvlrxj_matmul_readvariableop_resource:	 АI
6htheqsxgix_tivuqvlrxj_matmul_1_readvariableop_resource:	 АD
5htheqsxgix_tivuqvlrxj_biasadd_readvariableop_resource:	А;
-htheqsxgix_tivuqvlrxj_readvariableop_resource: =
/htheqsxgix_tivuqvlrxj_readvariableop_1_resource: =
/htheqsxgix_tivuqvlrxj_readvariableop_2_resource: ;
)tgvgnagwib_matmul_readvariableop_resource: 8
*tgvgnagwib_biasadd_readvariableop_resource:
identityИҐ-gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOpҐ4gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOpҐ,htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOpҐ+htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOpҐ-htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOpҐ$htheqsxgix/tivuqvlrxj/ReadVariableOpҐ&htheqsxgix/tivuqvlrxj/ReadVariableOp_1Ґ&htheqsxgix/tivuqvlrxj/ReadVariableOp_2Ґhtheqsxgix/whileҐ,kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOpҐ+kpulowglns/fddnbxfcbs/MatMul/ReadVariableOpҐ-kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOpҐ$kpulowglns/fddnbxfcbs/ReadVariableOpҐ&kpulowglns/fddnbxfcbs/ReadVariableOp_1Ґ&kpulowglns/fddnbxfcbs/ReadVariableOp_2Ґkpulowglns/whileҐ!tgvgnagwib/BiasAdd/ReadVariableOpҐ tgvgnagwib/MatMul/ReadVariableOpҐ-xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOpҐ4xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOpП
 xwuftghvfx/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2"
 xwuftghvfx/conv1d/ExpandDims/dimї
xwuftghvfx/conv1d/ExpandDims
ExpandDimsinputs)xwuftghvfx/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
xwuftghvfx/conv1d/ExpandDimsў
-xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6xwuftghvfx_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOpК
"xwuftghvfx/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"xwuftghvfx/conv1d/ExpandDims_1/dimг
xwuftghvfx/conv1d/ExpandDims_1
ExpandDims5xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp:value:0+xwuftghvfx/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
xwuftghvfx/conv1d/ExpandDims_1З
xwuftghvfx/conv1d/ShapeShape%xwuftghvfx/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
xwuftghvfx/conv1d/ShapeШ
%xwuftghvfx/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%xwuftghvfx/conv1d/strided_slice/stack•
'xwuftghvfx/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2)
'xwuftghvfx/conv1d/strided_slice/stack_1Ь
'xwuftghvfx/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'xwuftghvfx/conv1d/strided_slice/stack_2ћ
xwuftghvfx/conv1d/strided_sliceStridedSlice xwuftghvfx/conv1d/Shape:output:0.xwuftghvfx/conv1d/strided_slice/stack:output:00xwuftghvfx/conv1d/strided_slice/stack_1:output:00xwuftghvfx/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
xwuftghvfx/conv1d/strided_sliceЫ
xwuftghvfx/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"€€€€         2!
xwuftghvfx/conv1d/Reshape/shapeћ
xwuftghvfx/conv1d/ReshapeReshape%xwuftghvfx/conv1d/ExpandDims:output:0(xwuftghvfx/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
xwuftghvfx/conv1d/Reshapeо
xwuftghvfx/conv1d/Conv2DConv2D"xwuftghvfx/conv1d/Reshape:output:0'xwuftghvfx/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
2
xwuftghvfx/conv1d/Conv2DЫ
!xwuftghvfx/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!xwuftghvfx/conv1d/concat/values_1Й
xwuftghvfx/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
xwuftghvfx/conv1d/concat/axisм
xwuftghvfx/conv1d/concatConcatV2(xwuftghvfx/conv1d/strided_slice:output:0*xwuftghvfx/conv1d/concat/values_1:output:0&xwuftghvfx/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
xwuftghvfx/conv1d/concat…
xwuftghvfx/conv1d/Reshape_1Reshape!xwuftghvfx/conv1d/Conv2D:output:0!xwuftghvfx/conv1d/concat:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
xwuftghvfx/conv1d/Reshape_1Ѕ
xwuftghvfx/conv1d/SqueezeSqueeze$xwuftghvfx/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€2
xwuftghvfx/conv1d/SqueezeЬ
#xwuftghvfx/squeeze_batch_dims/ShapeShape"xwuftghvfx/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#xwuftghvfx/squeeze_batch_dims/Shape∞
1xwuftghvfx/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1xwuftghvfx/squeeze_batch_dims/strided_slice/stackљ
3xwuftghvfx/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€25
3xwuftghvfx/squeeze_batch_dims/strided_slice/stack_1і
3xwuftghvfx/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3xwuftghvfx/squeeze_batch_dims/strided_slice/stack_2Ф
+xwuftghvfx/squeeze_batch_dims/strided_sliceStridedSlice,xwuftghvfx/squeeze_batch_dims/Shape:output:0:xwuftghvfx/squeeze_batch_dims/strided_slice/stack:output:0<xwuftghvfx/squeeze_batch_dims/strided_slice/stack_1:output:0<xwuftghvfx/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+xwuftghvfx/squeeze_batch_dims/strided_sliceѓ
+xwuftghvfx/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2-
+xwuftghvfx/squeeze_batch_dims/Reshape/shapeй
%xwuftghvfx/squeeze_batch_dims/ReshapeReshape"xwuftghvfx/conv1d/Squeeze:output:04xwuftghvfx/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%xwuftghvfx/squeeze_batch_dims/Reshapeж
4xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=xwuftghvfx_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOpэ
%xwuftghvfx/squeeze_batch_dims/BiasAddBiasAdd.xwuftghvfx/squeeze_batch_dims/Reshape:output:0<xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%xwuftghvfx/squeeze_batch_dims/BiasAddѓ
-xwuftghvfx/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-xwuftghvfx/squeeze_batch_dims/concat/values_1°
)xwuftghvfx/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2+
)xwuftghvfx/squeeze_batch_dims/concat/axis®
$xwuftghvfx/squeeze_batch_dims/concatConcatV24xwuftghvfx/squeeze_batch_dims/strided_slice:output:06xwuftghvfx/squeeze_batch_dims/concat/values_1:output:02xwuftghvfx/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$xwuftghvfx/squeeze_batch_dims/concatц
'xwuftghvfx/squeeze_batch_dims/Reshape_1Reshape.xwuftghvfx/squeeze_batch_dims/BiasAdd:output:0-xwuftghvfx/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€2)
'xwuftghvfx/squeeze_batch_dims/Reshape_1£
gnnkxdqznz/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                2
gnnkxdqznz/Pad/paddingsµ
gnnkxdqznz/PadPad0xwuftghvfx/squeeze_batch_dims/Reshape_1:output:0 gnnkxdqznz/Pad/paddings:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
gnnkxdqznz/PadП
 gnnkxdqznz/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2"
 gnnkxdqznz/conv1d/ExpandDims/dimћ
gnnkxdqznz/conv1d/ExpandDims
ExpandDimsgnnkxdqznz/Pad:output:0)gnnkxdqznz/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
gnnkxdqznz/conv1d/ExpandDimsў
-gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6gnnkxdqznz_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOpК
"gnnkxdqznz/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"gnnkxdqznz/conv1d/ExpandDims_1/dimг
gnnkxdqznz/conv1d/ExpandDims_1
ExpandDims5gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp:value:0+gnnkxdqznz/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
gnnkxdqznz/conv1d/ExpandDims_1З
gnnkxdqznz/conv1d/ShapeShape%gnnkxdqznz/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
gnnkxdqznz/conv1d/ShapeШ
%gnnkxdqznz/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%gnnkxdqznz/conv1d/strided_slice/stack•
'gnnkxdqznz/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€2)
'gnnkxdqznz/conv1d/strided_slice/stack_1Ь
'gnnkxdqznz/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'gnnkxdqznz/conv1d/strided_slice/stack_2ћ
gnnkxdqznz/conv1d/strided_sliceStridedSlice gnnkxdqznz/conv1d/Shape:output:0.gnnkxdqznz/conv1d/strided_slice/stack:output:00gnnkxdqznz/conv1d/strided_slice/stack_1:output:00gnnkxdqznz/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
gnnkxdqznz/conv1d/strided_sliceЫ
gnnkxdqznz/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"€€€€         2!
gnnkxdqznz/conv1d/Reshape/shapeћ
gnnkxdqznz/conv1d/ReshapeReshape%gnnkxdqznz/conv1d/ExpandDims:output:0(gnnkxdqznz/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2
gnnkxdqznz/conv1d/Reshapeо
gnnkxdqznz/conv1d/Conv2DConv2D"gnnkxdqznz/conv1d/Reshape:output:0'gnnkxdqznz/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
2
gnnkxdqznz/conv1d/Conv2DЫ
!gnnkxdqznz/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!gnnkxdqznz/conv1d/concat/values_1Й
gnnkxdqznz/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
gnnkxdqznz/conv1d/concat/axisм
gnnkxdqznz/conv1d/concatConcatV2(gnnkxdqznz/conv1d/strided_slice:output:0*gnnkxdqznz/conv1d/concat/values_1:output:0&gnnkxdqznz/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gnnkxdqznz/conv1d/concat…
gnnkxdqznz/conv1d/Reshape_1Reshape!gnnkxdqznz/conv1d/Conv2D:output:0!gnnkxdqznz/conv1d/concat:output:0*
T0*3
_output_shapes!
:€€€€€€€€€2
gnnkxdqznz/conv1d/Reshape_1Ѕ
gnnkxdqznz/conv1d/SqueezeSqueeze$gnnkxdqznz/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
squeeze_dims

э€€€€€€€€2
gnnkxdqznz/conv1d/SqueezeЬ
#gnnkxdqznz/squeeze_batch_dims/ShapeShape"gnnkxdqznz/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#gnnkxdqznz/squeeze_batch_dims/Shape∞
1gnnkxdqznz/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1gnnkxdqznz/squeeze_batch_dims/strided_slice/stackљ
3gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€25
3gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_1і
3gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_2Ф
+gnnkxdqznz/squeeze_batch_dims/strided_sliceStridedSlice,gnnkxdqznz/squeeze_batch_dims/Shape:output:0:gnnkxdqznz/squeeze_batch_dims/strided_slice/stack:output:0<gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_1:output:0<gnnkxdqznz/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+gnnkxdqznz/squeeze_batch_dims/strided_sliceѓ
+gnnkxdqznz/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2-
+gnnkxdqznz/squeeze_batch_dims/Reshape/shapeй
%gnnkxdqznz/squeeze_batch_dims/ReshapeReshape"gnnkxdqznz/conv1d/Squeeze:output:04gnnkxdqznz/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%gnnkxdqznz/squeeze_batch_dims/Reshapeж
4gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=gnnkxdqznz_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOpэ
%gnnkxdqznz/squeeze_batch_dims/BiasAddBiasAdd.gnnkxdqznz/squeeze_batch_dims/Reshape:output:0<gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%gnnkxdqznz/squeeze_batch_dims/BiasAddѓ
-gnnkxdqznz/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-gnnkxdqznz/squeeze_batch_dims/concat/values_1°
)gnnkxdqznz/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2+
)gnnkxdqznz/squeeze_batch_dims/concat/axis®
$gnnkxdqznz/squeeze_batch_dims/concatConcatV24gnnkxdqznz/squeeze_batch_dims/strided_slice:output:06gnnkxdqznz/squeeze_batch_dims/concat/values_1:output:02gnnkxdqznz/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$gnnkxdqznz/squeeze_batch_dims/concatц
'gnnkxdqznz/squeeze_batch_dims/Reshape_1Reshape.gnnkxdqznz/squeeze_batch_dims/BiasAdd:output:0-gnnkxdqznz/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:€€€€€€€€€2)
'gnnkxdqznz/squeeze_batch_dims/Reshape_1Д
xrqvvalojb/ShapeShape0gnnkxdqznz/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
xrqvvalojb/ShapeК
xrqvvalojb/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
xrqvvalojb/strided_slice/stackО
 xrqvvalojb/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 xrqvvalojb/strided_slice/stack_1О
 xrqvvalojb/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 xrqvvalojb/strided_slice/stack_2§
xrqvvalojb/strided_sliceStridedSlicexrqvvalojb/Shape:output:0'xrqvvalojb/strided_slice/stack:output:0)xrqvvalojb/strided_slice/stack_1:output:0)xrqvvalojb/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
xrqvvalojb/strided_slicez
xrqvvalojb/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
xrqvvalojb/Reshape/shape/1z
xrqvvalojb/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
xrqvvalojb/Reshape/shape/2„
xrqvvalojb/Reshape/shapePack!xrqvvalojb/strided_slice:output:0#xrqvvalojb/Reshape/shape/1:output:0#xrqvvalojb/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
xrqvvalojb/Reshape/shapeЊ
xrqvvalojb/ReshapeReshape0gnnkxdqznz/squeeze_batch_dims/Reshape_1:output:0!xrqvvalojb/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
xrqvvalojb/Reshapeo
kpulowglns/ShapeShapexrqvvalojb/Reshape:output:0*
T0*
_output_shapes
:2
kpulowglns/ShapeК
kpulowglns/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
kpulowglns/strided_slice/stackО
 kpulowglns/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 kpulowglns/strided_slice/stack_1О
 kpulowglns/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 kpulowglns/strided_slice/stack_2§
kpulowglns/strided_sliceStridedSlicekpulowglns/Shape:output:0'kpulowglns/strided_slice/stack:output:0)kpulowglns/strided_slice/stack_1:output:0)kpulowglns/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
kpulowglns/strided_slicer
kpulowglns/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/zeros/mul/yШ
kpulowglns/zeros/mulMul!kpulowglns/strided_slice:output:0kpulowglns/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/zeros/mulu
kpulowglns/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
kpulowglns/zeros/Less/yУ
kpulowglns/zeros/LessLesskpulowglns/zeros/mul:z:0 kpulowglns/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/zeros/Lessx
kpulowglns/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/zeros/packed/1ѓ
kpulowglns/zeros/packedPack!kpulowglns/strided_slice:output:0"kpulowglns/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
kpulowglns/zeros/packedu
kpulowglns/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
kpulowglns/zeros/Const°
kpulowglns/zerosFill kpulowglns/zeros/packed:output:0kpulowglns/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/zerosv
kpulowglns/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/zeros_1/mul/yЮ
kpulowglns/zeros_1/mulMul!kpulowglns/strided_slice:output:0!kpulowglns/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/zeros_1/muly
kpulowglns/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
kpulowglns/zeros_1/Less/yЫ
kpulowglns/zeros_1/LessLesskpulowglns/zeros_1/mul:z:0"kpulowglns/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/zeros_1/Less|
kpulowglns/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/zeros_1/packed/1µ
kpulowglns/zeros_1/packedPack!kpulowglns/strided_slice:output:0$kpulowglns/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
kpulowglns/zeros_1/packedy
kpulowglns/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
kpulowglns/zeros_1/Const©
kpulowglns/zeros_1Fill"kpulowglns/zeros_1/packed:output:0!kpulowglns/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/zeros_1Л
kpulowglns/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
kpulowglns/transpose/perm∞
kpulowglns/transpose	Transposexrqvvalojb/Reshape:output:0"kpulowglns/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
kpulowglns/transposep
kpulowglns/Shape_1Shapekpulowglns/transpose:y:0*
T0*
_output_shapes
:2
kpulowglns/Shape_1О
 kpulowglns/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 kpulowglns/strided_slice_1/stackТ
"kpulowglns/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"kpulowglns/strided_slice_1/stack_1Т
"kpulowglns/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"kpulowglns/strided_slice_1/stack_2∞
kpulowglns/strided_slice_1StridedSlicekpulowglns/Shape_1:output:0)kpulowglns/strided_slice_1/stack:output:0+kpulowglns/strided_slice_1/stack_1:output:0+kpulowglns/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
kpulowglns/strided_slice_1Ы
&kpulowglns/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2(
&kpulowglns/TensorArrayV2/element_shapeё
kpulowglns/TensorArrayV2TensorListReserve/kpulowglns/TensorArrayV2/element_shape:output:0#kpulowglns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
kpulowglns/TensorArrayV2’
@kpulowglns/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2B
@kpulowglns/TensorArrayUnstack/TensorListFromTensor/element_shape§
2kpulowglns/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorkpulowglns/transpose:y:0Ikpulowglns/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2kpulowglns/TensorArrayUnstack/TensorListFromTensorО
 kpulowglns/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 kpulowglns/strided_slice_2/stackТ
"kpulowglns/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"kpulowglns/strided_slice_2/stack_1Т
"kpulowglns/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"kpulowglns/strided_slice_2/stack_2Њ
kpulowglns/strided_slice_2StridedSlicekpulowglns/transpose:y:0)kpulowglns/strided_slice_2/stack:output:0+kpulowglns/strided_slice_2/stack_1:output:0+kpulowglns/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
kpulowglns/strided_slice_2–
+kpulowglns/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp4kpulowglns_fddnbxfcbs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02-
+kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp”
kpulowglns/fddnbxfcbs/MatMulMatMul#kpulowglns/strided_slice_2:output:03kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
kpulowglns/fddnbxfcbs/MatMul÷
-kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp6kpulowglns_fddnbxfcbs_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOpѕ
kpulowglns/fddnbxfcbs/MatMul_1MatMulkpulowglns/zeros:output:05kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
kpulowglns/fddnbxfcbs/MatMul_1ƒ
kpulowglns/fddnbxfcbs/addAddV2&kpulowglns/fddnbxfcbs/MatMul:product:0(kpulowglns/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
kpulowglns/fddnbxfcbs/addѕ
,kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp5kpulowglns_fddnbxfcbs_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp—
kpulowglns/fddnbxfcbs/BiasAddBiasAddkpulowglns/fddnbxfcbs/add:z:04kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
kpulowglns/fddnbxfcbs/BiasAddР
%kpulowglns/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%kpulowglns/fddnbxfcbs/split/split_dimЧ
kpulowglns/fddnbxfcbs/splitSplit.kpulowglns/fddnbxfcbs/split/split_dim:output:0&kpulowglns/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
kpulowglns/fddnbxfcbs/splitґ
$kpulowglns/fddnbxfcbs/ReadVariableOpReadVariableOp-kpulowglns_fddnbxfcbs_readvariableop_resource*
_output_shapes
: *
dtype02&
$kpulowglns/fddnbxfcbs/ReadVariableOpЇ
kpulowglns/fddnbxfcbs/mulMul,kpulowglns/fddnbxfcbs/ReadVariableOp:value:0kpulowglns/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mulЇ
kpulowglns/fddnbxfcbs/add_1AddV2$kpulowglns/fddnbxfcbs/split:output:0kpulowglns/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/add_1Ь
kpulowglns/fddnbxfcbs/SigmoidSigmoidkpulowglns/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/SigmoidЉ
&kpulowglns/fddnbxfcbs/ReadVariableOp_1ReadVariableOp/kpulowglns_fddnbxfcbs_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&kpulowglns/fddnbxfcbs/ReadVariableOp_1ј
kpulowglns/fddnbxfcbs/mul_1Mul.kpulowglns/fddnbxfcbs/ReadVariableOp_1:value:0kpulowglns/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mul_1Љ
kpulowglns/fddnbxfcbs/add_2AddV2$kpulowglns/fddnbxfcbs/split:output:1kpulowglns/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/add_2†
kpulowglns/fddnbxfcbs/Sigmoid_1Sigmoidkpulowglns/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
kpulowglns/fddnbxfcbs/Sigmoid_1µ
kpulowglns/fddnbxfcbs/mul_2Mul#kpulowglns/fddnbxfcbs/Sigmoid_1:y:0kpulowglns/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mul_2Ш
kpulowglns/fddnbxfcbs/TanhTanh$kpulowglns/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/Tanhґ
kpulowglns/fddnbxfcbs/mul_3Mul!kpulowglns/fddnbxfcbs/Sigmoid:y:0kpulowglns/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mul_3Ј
kpulowglns/fddnbxfcbs/add_3AddV2kpulowglns/fddnbxfcbs/mul_2:z:0kpulowglns/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/add_3Љ
&kpulowglns/fddnbxfcbs/ReadVariableOp_2ReadVariableOp/kpulowglns_fddnbxfcbs_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&kpulowglns/fddnbxfcbs/ReadVariableOp_2ƒ
kpulowglns/fddnbxfcbs/mul_4Mul.kpulowglns/fddnbxfcbs/ReadVariableOp_2:value:0kpulowglns/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mul_4Љ
kpulowglns/fddnbxfcbs/add_4AddV2$kpulowglns/fddnbxfcbs/split:output:3kpulowglns/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/add_4†
kpulowglns/fddnbxfcbs/Sigmoid_2Sigmoidkpulowglns/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
kpulowglns/fddnbxfcbs/Sigmoid_2Ч
kpulowglns/fddnbxfcbs/Tanh_1Tanhkpulowglns/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/Tanh_1Ї
kpulowglns/fddnbxfcbs/mul_5Mul#kpulowglns/fddnbxfcbs/Sigmoid_2:y:0 kpulowglns/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/fddnbxfcbs/mul_5•
(kpulowglns/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2*
(kpulowglns/TensorArrayV2_1/element_shapeд
kpulowglns/TensorArrayV2_1TensorListReserve1kpulowglns/TensorArrayV2_1/element_shape:output:0#kpulowglns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
kpulowglns/TensorArrayV2_1d
kpulowglns/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/timeХ
#kpulowglns/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2%
#kpulowglns/while/maximum_iterationsА
kpulowglns/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
kpulowglns/while/loop_counter≤
kpulowglns/whileWhile&kpulowglns/while/loop_counter:output:0,kpulowglns/while/maximum_iterations:output:0kpulowglns/time:output:0#kpulowglns/TensorArrayV2_1:handle:0kpulowglns/zeros:output:0kpulowglns/zeros_1:output:0#kpulowglns/strided_slice_1:output:0Bkpulowglns/TensorArrayUnstack/TensorListFromTensor:output_handle:04kpulowglns_fddnbxfcbs_matmul_readvariableop_resource6kpulowglns_fddnbxfcbs_matmul_1_readvariableop_resource5kpulowglns_fddnbxfcbs_biasadd_readvariableop_resource-kpulowglns_fddnbxfcbs_readvariableop_resource/kpulowglns_fddnbxfcbs_readvariableop_1_resource/kpulowglns_fddnbxfcbs_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*)
body!R
kpulowglns_while_body_1302573*)
cond!R
kpulowglns_while_cond_1302572*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
kpulowglns/whileЋ
;kpulowglns/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2=
;kpulowglns/TensorArrayV2Stack/TensorListStack/element_shapeФ
-kpulowglns/TensorArrayV2Stack/TensorListStackTensorListStackkpulowglns/while:output:3Dkpulowglns/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02/
-kpulowglns/TensorArrayV2Stack/TensorListStackЧ
 kpulowglns/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2"
 kpulowglns/strided_slice_3/stackТ
"kpulowglns/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"kpulowglns/strided_slice_3/stack_1Т
"kpulowglns/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"kpulowglns/strided_slice_3/stack_2№
kpulowglns/strided_slice_3StridedSlice6kpulowglns/TensorArrayV2Stack/TensorListStack:tensor:0)kpulowglns/strided_slice_3/stack:output:0+kpulowglns/strided_slice_3/stack_1:output:0+kpulowglns/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
kpulowglns/strided_slice_3П
kpulowglns/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
kpulowglns/transpose_1/perm—
kpulowglns/transpose_1	Transpose6kpulowglns/TensorArrayV2Stack/TensorListStack:tensor:0$kpulowglns/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
kpulowglns/transpose_1n
htheqsxgix/ShapeShapekpulowglns/transpose_1:y:0*
T0*
_output_shapes
:2
htheqsxgix/ShapeК
htheqsxgix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
htheqsxgix/strided_slice/stackО
 htheqsxgix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 htheqsxgix/strided_slice/stack_1О
 htheqsxgix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 htheqsxgix/strided_slice/stack_2§
htheqsxgix/strided_sliceStridedSlicehtheqsxgix/Shape:output:0'htheqsxgix/strided_slice/stack:output:0)htheqsxgix/strided_slice/stack_1:output:0)htheqsxgix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
htheqsxgix/strided_slicer
htheqsxgix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/zeros/mul/yШ
htheqsxgix/zeros/mulMul!htheqsxgix/strided_slice:output:0htheqsxgix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/zeros/mulu
htheqsxgix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
htheqsxgix/zeros/Less/yУ
htheqsxgix/zeros/LessLesshtheqsxgix/zeros/mul:z:0 htheqsxgix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/zeros/Lessx
htheqsxgix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/zeros/packed/1ѓ
htheqsxgix/zeros/packedPack!htheqsxgix/strided_slice:output:0"htheqsxgix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
htheqsxgix/zeros/packedu
htheqsxgix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
htheqsxgix/zeros/Const°
htheqsxgix/zerosFill htheqsxgix/zeros/packed:output:0htheqsxgix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/zerosv
htheqsxgix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/zeros_1/mul/yЮ
htheqsxgix/zeros_1/mulMul!htheqsxgix/strided_slice:output:0!htheqsxgix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/zeros_1/muly
htheqsxgix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
htheqsxgix/zeros_1/Less/yЫ
htheqsxgix/zeros_1/LessLesshtheqsxgix/zeros_1/mul:z:0"htheqsxgix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
htheqsxgix/zeros_1/Less|
htheqsxgix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/zeros_1/packed/1µ
htheqsxgix/zeros_1/packedPack!htheqsxgix/strided_slice:output:0$htheqsxgix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
htheqsxgix/zeros_1/packedy
htheqsxgix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
htheqsxgix/zeros_1/Const©
htheqsxgix/zeros_1Fill"htheqsxgix/zeros_1/packed:output:0!htheqsxgix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/zeros_1Л
htheqsxgix/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
htheqsxgix/transpose/permѓ
htheqsxgix/transpose	Transposekpulowglns/transpose_1:y:0"htheqsxgix/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/transposep
htheqsxgix/Shape_1Shapehtheqsxgix/transpose:y:0*
T0*
_output_shapes
:2
htheqsxgix/Shape_1О
 htheqsxgix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 htheqsxgix/strided_slice_1/stackТ
"htheqsxgix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"htheqsxgix/strided_slice_1/stack_1Т
"htheqsxgix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"htheqsxgix/strided_slice_1/stack_2∞
htheqsxgix/strided_slice_1StridedSlicehtheqsxgix/Shape_1:output:0)htheqsxgix/strided_slice_1/stack:output:0+htheqsxgix/strided_slice_1/stack_1:output:0+htheqsxgix/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
htheqsxgix/strided_slice_1Ы
&htheqsxgix/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2(
&htheqsxgix/TensorArrayV2/element_shapeё
htheqsxgix/TensorArrayV2TensorListReserve/htheqsxgix/TensorArrayV2/element_shape:output:0#htheqsxgix/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
htheqsxgix/TensorArrayV2’
@htheqsxgix/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2B
@htheqsxgix/TensorArrayUnstack/TensorListFromTensor/element_shape§
2htheqsxgix/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorhtheqsxgix/transpose:y:0Ihtheqsxgix/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2htheqsxgix/TensorArrayUnstack/TensorListFromTensorО
 htheqsxgix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 htheqsxgix/strided_slice_2/stackТ
"htheqsxgix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"htheqsxgix/strided_slice_2/stack_1Т
"htheqsxgix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"htheqsxgix/strided_slice_2/stack_2Њ
htheqsxgix/strided_slice_2StridedSlicehtheqsxgix/transpose:y:0)htheqsxgix/strided_slice_2/stack:output:0+htheqsxgix/strided_slice_2/stack_1:output:0+htheqsxgix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
htheqsxgix/strided_slice_2–
+htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp4htheqsxgix_tivuqvlrxj_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02-
+htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp”
htheqsxgix/tivuqvlrxj/MatMulMatMul#htheqsxgix/strided_slice_2:output:03htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
htheqsxgix/tivuqvlrxj/MatMul÷
-htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp6htheqsxgix_tivuqvlrxj_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOpѕ
htheqsxgix/tivuqvlrxj/MatMul_1MatMulhtheqsxgix/zeros:output:05htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
htheqsxgix/tivuqvlrxj/MatMul_1ƒ
htheqsxgix/tivuqvlrxj/addAddV2&htheqsxgix/tivuqvlrxj/MatMul:product:0(htheqsxgix/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
htheqsxgix/tivuqvlrxj/addѕ
,htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp5htheqsxgix_tivuqvlrxj_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp—
htheqsxgix/tivuqvlrxj/BiasAddBiasAddhtheqsxgix/tivuqvlrxj/add:z:04htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
htheqsxgix/tivuqvlrxj/BiasAddР
%htheqsxgix/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%htheqsxgix/tivuqvlrxj/split/split_dimЧ
htheqsxgix/tivuqvlrxj/splitSplit.htheqsxgix/tivuqvlrxj/split/split_dim:output:0&htheqsxgix/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
htheqsxgix/tivuqvlrxj/splitґ
$htheqsxgix/tivuqvlrxj/ReadVariableOpReadVariableOp-htheqsxgix_tivuqvlrxj_readvariableop_resource*
_output_shapes
: *
dtype02&
$htheqsxgix/tivuqvlrxj/ReadVariableOpЇ
htheqsxgix/tivuqvlrxj/mulMul,htheqsxgix/tivuqvlrxj/ReadVariableOp:value:0htheqsxgix/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mulЇ
htheqsxgix/tivuqvlrxj/add_1AddV2$htheqsxgix/tivuqvlrxj/split:output:0htheqsxgix/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/add_1Ь
htheqsxgix/tivuqvlrxj/SigmoidSigmoidhtheqsxgix/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/SigmoidЉ
&htheqsxgix/tivuqvlrxj/ReadVariableOp_1ReadVariableOp/htheqsxgix_tivuqvlrxj_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&htheqsxgix/tivuqvlrxj/ReadVariableOp_1ј
htheqsxgix/tivuqvlrxj/mul_1Mul.htheqsxgix/tivuqvlrxj/ReadVariableOp_1:value:0htheqsxgix/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mul_1Љ
htheqsxgix/tivuqvlrxj/add_2AddV2$htheqsxgix/tivuqvlrxj/split:output:1htheqsxgix/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/add_2†
htheqsxgix/tivuqvlrxj/Sigmoid_1Sigmoidhtheqsxgix/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
htheqsxgix/tivuqvlrxj/Sigmoid_1µ
htheqsxgix/tivuqvlrxj/mul_2Mul#htheqsxgix/tivuqvlrxj/Sigmoid_1:y:0htheqsxgix/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mul_2Ш
htheqsxgix/tivuqvlrxj/TanhTanh$htheqsxgix/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/Tanhґ
htheqsxgix/tivuqvlrxj/mul_3Mul!htheqsxgix/tivuqvlrxj/Sigmoid:y:0htheqsxgix/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mul_3Ј
htheqsxgix/tivuqvlrxj/add_3AddV2htheqsxgix/tivuqvlrxj/mul_2:z:0htheqsxgix/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/add_3Љ
&htheqsxgix/tivuqvlrxj/ReadVariableOp_2ReadVariableOp/htheqsxgix_tivuqvlrxj_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&htheqsxgix/tivuqvlrxj/ReadVariableOp_2ƒ
htheqsxgix/tivuqvlrxj/mul_4Mul.htheqsxgix/tivuqvlrxj/ReadVariableOp_2:value:0htheqsxgix/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mul_4Љ
htheqsxgix/tivuqvlrxj/add_4AddV2$htheqsxgix/tivuqvlrxj/split:output:3htheqsxgix/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/add_4†
htheqsxgix/tivuqvlrxj/Sigmoid_2Sigmoidhtheqsxgix/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
htheqsxgix/tivuqvlrxj/Sigmoid_2Ч
htheqsxgix/tivuqvlrxj/Tanh_1Tanhhtheqsxgix/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/Tanh_1Ї
htheqsxgix/tivuqvlrxj/mul_5Mul#htheqsxgix/tivuqvlrxj/Sigmoid_2:y:0 htheqsxgix/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/tivuqvlrxj/mul_5•
(htheqsxgix/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2*
(htheqsxgix/TensorArrayV2_1/element_shapeд
htheqsxgix/TensorArrayV2_1TensorListReserve1htheqsxgix/TensorArrayV2_1/element_shape:output:0#htheqsxgix/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
htheqsxgix/TensorArrayV2_1d
htheqsxgix/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/timeХ
#htheqsxgix/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2%
#htheqsxgix/while/maximum_iterationsА
htheqsxgix/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
htheqsxgix/while/loop_counter≤
htheqsxgix/whileWhile&htheqsxgix/while/loop_counter:output:0,htheqsxgix/while/maximum_iterations:output:0htheqsxgix/time:output:0#htheqsxgix/TensorArrayV2_1:handle:0htheqsxgix/zeros:output:0htheqsxgix/zeros_1:output:0#htheqsxgix/strided_slice_1:output:0Bhtheqsxgix/TensorArrayUnstack/TensorListFromTensor:output_handle:04htheqsxgix_tivuqvlrxj_matmul_readvariableop_resource6htheqsxgix_tivuqvlrxj_matmul_1_readvariableop_resource5htheqsxgix_tivuqvlrxj_biasadd_readvariableop_resource-htheqsxgix_tivuqvlrxj_readvariableop_resource/htheqsxgix_tivuqvlrxj_readvariableop_1_resource/htheqsxgix_tivuqvlrxj_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*)
body!R
htheqsxgix_while_body_1302749*)
cond!R
htheqsxgix_while_cond_1302748*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
htheqsxgix/whileЋ
;htheqsxgix/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2=
;htheqsxgix/TensorArrayV2Stack/TensorListStack/element_shapeФ
-htheqsxgix/TensorArrayV2Stack/TensorListStackTensorListStackhtheqsxgix/while:output:3Dhtheqsxgix/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02/
-htheqsxgix/TensorArrayV2Stack/TensorListStackЧ
 htheqsxgix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2"
 htheqsxgix/strided_slice_3/stackТ
"htheqsxgix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"htheqsxgix/strided_slice_3/stack_1Т
"htheqsxgix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"htheqsxgix/strided_slice_3/stack_2№
htheqsxgix/strided_slice_3StridedSlice6htheqsxgix/TensorArrayV2Stack/TensorListStack:tensor:0)htheqsxgix/strided_slice_3/stack:output:0+htheqsxgix/strided_slice_3/stack_1:output:0+htheqsxgix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
htheqsxgix/strided_slice_3П
htheqsxgix/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
htheqsxgix/transpose_1/perm—
htheqsxgix/transpose_1	Transpose6htheqsxgix/TensorArrayV2Stack/TensorListStack:tensor:0$htheqsxgix/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
htheqsxgix/transpose_1Ѓ
 tgvgnagwib/MatMul/ReadVariableOpReadVariableOp)tgvgnagwib_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 tgvgnagwib/MatMul/ReadVariableOp±
tgvgnagwib/MatMulMatMul#htheqsxgix/strided_slice_3:output:0(tgvgnagwib/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
tgvgnagwib/MatMul≠
!tgvgnagwib/BiasAdd/ReadVariableOpReadVariableOp*tgvgnagwib_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!tgvgnagwib/BiasAdd/ReadVariableOp≠
tgvgnagwib/BiasAddBiasAddtgvgnagwib/MatMul:product:0)tgvgnagwib/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
tgvgnagwib/BiasAddґ
IdentityIdentitytgvgnagwib/BiasAdd:output:0.^gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp5^gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp-^htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp,^htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp.^htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp%^htheqsxgix/tivuqvlrxj/ReadVariableOp'^htheqsxgix/tivuqvlrxj/ReadVariableOp_1'^htheqsxgix/tivuqvlrxj/ReadVariableOp_2^htheqsxgix/while-^kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp,^kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp.^kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp%^kpulowglns/fddnbxfcbs/ReadVariableOp'^kpulowglns/fddnbxfcbs/ReadVariableOp_1'^kpulowglns/fddnbxfcbs/ReadVariableOp_2^kpulowglns/while"^tgvgnagwib/BiasAdd/ReadVariableOp!^tgvgnagwib/MatMul/ReadVariableOp.^xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp5^xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 2^
-gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp-gnnkxdqznz/conv1d/ExpandDims_1/ReadVariableOp2l
4gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp4gnnkxdqznz/squeeze_batch_dims/BiasAdd/ReadVariableOp2\
,htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp,htheqsxgix/tivuqvlrxj/BiasAdd/ReadVariableOp2Z
+htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp+htheqsxgix/tivuqvlrxj/MatMul/ReadVariableOp2^
-htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp-htheqsxgix/tivuqvlrxj/MatMul_1/ReadVariableOp2L
$htheqsxgix/tivuqvlrxj/ReadVariableOp$htheqsxgix/tivuqvlrxj/ReadVariableOp2P
&htheqsxgix/tivuqvlrxj/ReadVariableOp_1&htheqsxgix/tivuqvlrxj/ReadVariableOp_12P
&htheqsxgix/tivuqvlrxj/ReadVariableOp_2&htheqsxgix/tivuqvlrxj/ReadVariableOp_22$
htheqsxgix/whilehtheqsxgix/while2\
,kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp,kpulowglns/fddnbxfcbs/BiasAdd/ReadVariableOp2Z
+kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp+kpulowglns/fddnbxfcbs/MatMul/ReadVariableOp2^
-kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp-kpulowglns/fddnbxfcbs/MatMul_1/ReadVariableOp2L
$kpulowglns/fddnbxfcbs/ReadVariableOp$kpulowglns/fddnbxfcbs/ReadVariableOp2P
&kpulowglns/fddnbxfcbs/ReadVariableOp_1&kpulowglns/fddnbxfcbs/ReadVariableOp_12P
&kpulowglns/fddnbxfcbs/ReadVariableOp_2&kpulowglns/fddnbxfcbs/ReadVariableOp_22$
kpulowglns/whilekpulowglns/while2F
!tgvgnagwib/BiasAdd/ReadVariableOp!tgvgnagwib/BiasAdd/ReadVariableOp2D
 tgvgnagwib/MatMul/ReadVariableOp tgvgnagwib/MatMul/ReadVariableOp2^
-xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp-xwuftghvfx/conv1d/ExpandDims_1/ReadVariableOp2l
4xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp4xwuftghvfx/squeeze_batch_dims/BiasAdd/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¶h
Е
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1301573

inputs<
)tivuqvlrxj_matmul_readvariableop_resource:	 А>
+tivuqvlrxj_matmul_1_readvariableop_resource:	 А9
*tivuqvlrxj_biasadd_readvariableop_resource:	А0
"tivuqvlrxj_readvariableop_resource: 2
$tivuqvlrxj_readvariableop_1_resource: 2
$tivuqvlrxj_readvariableop_2_resource: 
identityИҐ!tivuqvlrxj/BiasAdd/ReadVariableOpҐ tivuqvlrxj/MatMul/ReadVariableOpҐ"tivuqvlrxj/MatMul_1/ReadVariableOpҐtivuqvlrxj/ReadVariableOpҐtivuqvlrxj/ReadVariableOp_1Ґtivuqvlrxj/ReadVariableOp_2ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2ѓ
 tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp)tivuqvlrxj_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 tivuqvlrxj/MatMul/ReadVariableOpІ
tivuqvlrxj/MatMulMatMulstrided_slice_2:output:0(tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMulµ
"tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp+tivuqvlrxj_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"tivuqvlrxj/MatMul_1/ReadVariableOp£
tivuqvlrxj/MatMul_1MatMulzeros:output:0*tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/MatMul_1Ш
tivuqvlrxj/addAddV2tivuqvlrxj/MatMul:product:0tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/addЃ
!tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp*tivuqvlrxj_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!tivuqvlrxj/BiasAdd/ReadVariableOp•
tivuqvlrxj/BiasAddBiasAddtivuqvlrxj/add:z:0)tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
tivuqvlrxj/BiasAddz
tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
tivuqvlrxj/split/split_dimл
tivuqvlrxj/splitSplit#tivuqvlrxj/split/split_dim:output:0tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
tivuqvlrxj/splitХ
tivuqvlrxj/ReadVariableOpReadVariableOp"tivuqvlrxj_readvariableop_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOpО
tivuqvlrxj/mulMul!tivuqvlrxj/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mulО
tivuqvlrxj/add_1AddV2tivuqvlrxj/split:output:0tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_1{
tivuqvlrxj/SigmoidSigmoidtivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/SigmoidЫ
tivuqvlrxj/ReadVariableOp_1ReadVariableOp$tivuqvlrxj_readvariableop_1_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_1Ф
tivuqvlrxj/mul_1Mul#tivuqvlrxj/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_1Р
tivuqvlrxj/add_2AddV2tivuqvlrxj/split:output:1tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_2
tivuqvlrxj/Sigmoid_1Sigmoidtivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_1Й
tivuqvlrxj/mul_2Multivuqvlrxj/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_2w
tivuqvlrxj/TanhTanhtivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/TanhК
tivuqvlrxj/mul_3Multivuqvlrxj/Sigmoid:y:0tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_3Л
tivuqvlrxj/add_3AddV2tivuqvlrxj/mul_2:z:0tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_3Ы
tivuqvlrxj/ReadVariableOp_2ReadVariableOp$tivuqvlrxj_readvariableop_2_resource*
_output_shapes
: *
dtype02
tivuqvlrxj/ReadVariableOp_2Ш
tivuqvlrxj/mul_4Mul#tivuqvlrxj/ReadVariableOp_2:value:0tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_4Р
tivuqvlrxj/add_4AddV2tivuqvlrxj/split:output:3tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/add_4
tivuqvlrxj/Sigmoid_2Sigmoidtivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Sigmoid_2v
tivuqvlrxj/Tanh_1Tanhtivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/Tanh_1О
tivuqvlrxj/mul_5Multivuqvlrxj/Sigmoid_2:y:0tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
tivuqvlrxj/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)tivuqvlrxj_matmul_readvariableop_resource+tivuqvlrxj_matmul_1_readvariableop_resource*tivuqvlrxj_biasadd_readvariableop_resource"tivuqvlrxj_readvariableop_resource$tivuqvlrxj_readvariableop_1_resource$tivuqvlrxj_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1301472*
condR
while_cond_1301471*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1Є
IdentityIdentitystrided_slice_3:output:0"^tivuqvlrxj/BiasAdd/ReadVariableOp!^tivuqvlrxj/MatMul/ReadVariableOp#^tivuqvlrxj/MatMul_1/ReadVariableOp^tivuqvlrxj/ReadVariableOp^tivuqvlrxj/ReadVariableOp_1^tivuqvlrxj/ReadVariableOp_2^while*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€ : : : : : : 2F
!tivuqvlrxj/BiasAdd/ReadVariableOp!tivuqvlrxj/BiasAdd/ReadVariableOp2D
 tivuqvlrxj/MatMul/ReadVariableOp tivuqvlrxj/MatMul/ReadVariableOp2H
"tivuqvlrxj/MatMul_1/ReadVariableOp"tivuqvlrxj/MatMul_1/ReadVariableOp26
tivuqvlrxj/ReadVariableOptivuqvlrxj/ReadVariableOp2:
tivuqvlrxj/ReadVariableOp_1tivuqvlrxj/ReadVariableOp_12:
tivuqvlrxj/ReadVariableOp_2tivuqvlrxj/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
°h
Е
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1304209

inputs<
)fddnbxfcbs_matmul_readvariableop_resource:	А>
+fddnbxfcbs_matmul_1_readvariableop_resource:	 А9
*fddnbxfcbs_biasadd_readvariableop_resource:	А0
"fddnbxfcbs_readvariableop_resource: 2
$fddnbxfcbs_readvariableop_1_resource: 2
$fddnbxfcbs_readvariableop_2_resource: 
identityИҐ!fddnbxfcbs/BiasAdd/ReadVariableOpҐ fddnbxfcbs/MatMul/ReadVariableOpҐ"fddnbxfcbs/MatMul_1/ReadVariableOpҐfddnbxfcbs/ReadVariableOpҐfddnbxfcbs/ReadVariableOp_1Ґfddnbxfcbs/ReadVariableOp_2ҐwhileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2о
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask2
strided_slice_2ѓ
 fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp)fddnbxfcbs_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 fddnbxfcbs/MatMul/ReadVariableOpІ
fddnbxfcbs/MatMulMatMulstrided_slice_2:output:0(fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMulµ
"fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp+fddnbxfcbs_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"fddnbxfcbs/MatMul_1/ReadVariableOp£
fddnbxfcbs/MatMul_1MatMulzeros:output:0*fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/MatMul_1Ш
fddnbxfcbs/addAddV2fddnbxfcbs/MatMul:product:0fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/addЃ
!fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp*fddnbxfcbs_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!fddnbxfcbs/BiasAdd/ReadVariableOp•
fddnbxfcbs/BiasAddBiasAddfddnbxfcbs/add:z:0)fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
fddnbxfcbs/BiasAddz
fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
fddnbxfcbs/split/split_dimл
fddnbxfcbs/splitSplit#fddnbxfcbs/split/split_dim:output:0fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
fddnbxfcbs/splitХ
fddnbxfcbs/ReadVariableOpReadVariableOp"fddnbxfcbs_readvariableop_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOpО
fddnbxfcbs/mulMul!fddnbxfcbs/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mulО
fddnbxfcbs/add_1AddV2fddnbxfcbs/split:output:0fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_1{
fddnbxfcbs/SigmoidSigmoidfddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/SigmoidЫ
fddnbxfcbs/ReadVariableOp_1ReadVariableOp$fddnbxfcbs_readvariableop_1_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_1Ф
fddnbxfcbs/mul_1Mul#fddnbxfcbs/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_1Р
fddnbxfcbs/add_2AddV2fddnbxfcbs/split:output:1fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_2
fddnbxfcbs/Sigmoid_1Sigmoidfddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_1Й
fddnbxfcbs/mul_2Mulfddnbxfcbs/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_2w
fddnbxfcbs/TanhTanhfddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/TanhК
fddnbxfcbs/mul_3Mulfddnbxfcbs/Sigmoid:y:0fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_3Л
fddnbxfcbs/add_3AddV2fddnbxfcbs/mul_2:z:0fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_3Ы
fddnbxfcbs/ReadVariableOp_2ReadVariableOp$fddnbxfcbs_readvariableop_2_resource*
_output_shapes
: *
dtype02
fddnbxfcbs/ReadVariableOp_2Ш
fddnbxfcbs/mul_4Mul#fddnbxfcbs/ReadVariableOp_2:value:0fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_4Р
fddnbxfcbs/add_4AddV2fddnbxfcbs/split:output:3fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/add_4
fddnbxfcbs/Sigmoid_2Sigmoidfddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Sigmoid_2v
fddnbxfcbs/Tanh_1Tanhfddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/Tanh_1О
fddnbxfcbs/mul_5Mulfddnbxfcbs/Sigmoid_2:y:0fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
fddnbxfcbs/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeЄ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterм
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)fddnbxfcbs_matmul_readvariableop_resource+fddnbxfcbs_matmul_1_readvariableop_resource*fddnbxfcbs_biasadd_readvariableop_resource"fddnbxfcbs_readvariableop_resource$fddnbxfcbs_readvariableop_1_resource$fddnbxfcbs_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_1304108*
condR
while_cond_1304107*Q
output_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeи
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm•
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transpose_1≥
IdentityIdentitytranspose_1:y:0"^fddnbxfcbs/BiasAdd/ReadVariableOp!^fddnbxfcbs/MatMul/ReadVariableOp#^fddnbxfcbs/MatMul_1/ReadVariableOp^fddnbxfcbs/ReadVariableOp^fddnbxfcbs/ReadVariableOp_1^fddnbxfcbs/ReadVariableOp_2^while*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2F
!fddnbxfcbs/BiasAdd/ReadVariableOp!fddnbxfcbs/BiasAdd/ReadVariableOp2D
 fddnbxfcbs/MatMul/ReadVariableOp fddnbxfcbs/MatMul/ReadVariableOp2H
"fddnbxfcbs/MatMul_1/ReadVariableOp"fddnbxfcbs/MatMul_1/ReadVariableOp26
fddnbxfcbs/ReadVariableOpfddnbxfcbs/ReadVariableOp2:
fddnbxfcbs/ReadVariableOp_1fddnbxfcbs/ReadVariableOp_12:
fddnbxfcbs/ReadVariableOp_2fddnbxfcbs/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ь$
±
G__inference_sequential_layer_call_and_return_conditional_losses_1302368

cvyyglfjwp(
xwuftghvfx_1302325: 
xwuftghvfx_1302327:(
gnnkxdqznz_1302330: 
gnnkxdqznz_1302332:%
kpulowglns_1302336:	А%
kpulowglns_1302338:	 А!
kpulowglns_1302340:	А 
kpulowglns_1302342:  
kpulowglns_1302344:  
kpulowglns_1302346: %
htheqsxgix_1302349:	 А%
htheqsxgix_1302351:	 А!
htheqsxgix_1302353:	А 
htheqsxgix_1302355:  
htheqsxgix_1302357:  
htheqsxgix_1302359: $
tgvgnagwib_1302362:  
tgvgnagwib_1302364:
identityИҐ"gnnkxdqznz/StatefulPartitionedCallҐ"htheqsxgix/StatefulPartitionedCallҐ"kpulowglns/StatefulPartitionedCallҐ"tgvgnagwib/StatefulPartitionedCallҐ"xwuftghvfx/StatefulPartitionedCall∞
"xwuftghvfx/StatefulPartitionedCallStatefulPartitionedCall
cvyyglfjwpxwuftghvfx_1302325xwuftghvfx_1302327*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_xwuftghvfx_layer_call_and_return_conditional_losses_13011352$
"xwuftghvfx/StatefulPartitionedCall—
"gnnkxdqznz/StatefulPartitionedCallStatefulPartitionedCall+xwuftghvfx/StatefulPartitionedCall:output:0gnnkxdqznz_1302330gnnkxdqznz_1302332*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_gnnkxdqznz_layer_call_and_return_conditional_losses_13011802$
"gnnkxdqznz/StatefulPartitionedCallЗ
xrqvvalojb/PartitionedCallPartitionedCall+gnnkxdqznz/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_xrqvvalojb_layer_call_and_return_conditional_losses_13011992
xrqvvalojb/PartitionedCallЭ
"kpulowglns/StatefulPartitionedCallStatefulPartitionedCall#xrqvvalojb/PartitionedCall:output:0kpulowglns_1302336kpulowglns_1302338kpulowglns_1302340kpulowglns_1302342kpulowglns_1302344kpulowglns_1302346*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_kpulowglns_layer_call_and_return_conditional_losses_13020662$
"kpulowglns/StatefulPartitionedCall°
"htheqsxgix/StatefulPartitionedCallStatefulPartitionedCall+kpulowglns/StatefulPartitionedCall:output:0htheqsxgix_1302349htheqsxgix_1302351htheqsxgix_1302353htheqsxgix_1302355htheqsxgix_1302357htheqsxgix_1302359*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_13018522$
"htheqsxgix/StatefulPartitionedCall…
"tgvgnagwib/StatefulPartitionedCallStatefulPartitionedCall+htheqsxgix/StatefulPartitionedCall:output:0tgvgnagwib_1302362tgvgnagwib_1302364*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_tgvgnagwib_layer_call_and_return_conditional_losses_13015972$
"tgvgnagwib/StatefulPartitionedCallЄ
IdentityIdentity+tgvgnagwib/StatefulPartitionedCall:output:0#^gnnkxdqznz/StatefulPartitionedCall#^htheqsxgix/StatefulPartitionedCall#^kpulowglns/StatefulPartitionedCall#^tgvgnagwib/StatefulPartitionedCall#^xwuftghvfx/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : 2H
"gnnkxdqznz/StatefulPartitionedCall"gnnkxdqznz/StatefulPartitionedCall2H
"htheqsxgix/StatefulPartitionedCall"htheqsxgix/StatefulPartitionedCall2H
"kpulowglns/StatefulPartitionedCall"kpulowglns/StatefulPartitionedCall2H
"tgvgnagwib/StatefulPartitionedCall"tgvgnagwib/StatefulPartitionedCall2H
"xwuftghvfx/StatefulPartitionedCall"xwuftghvfx/StatefulPartitionedCall:[ W
/
_output_shapes
:€€€€€€€€€
$
_user_specified_name
cvyyglfjwp
аY
З
while_body_1304716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_tivuqvlrxj_matmul_readvariableop_resource_0:	 АF
3while_tivuqvlrxj_matmul_1_readvariableop_resource_0:	 АA
2while_tivuqvlrxj_biasadd_readvariableop_resource_0:	А8
*while_tivuqvlrxj_readvariableop_resource_0: :
,while_tivuqvlrxj_readvariableop_1_resource_0: :
,while_tivuqvlrxj_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_tivuqvlrxj_matmul_readvariableop_resource:	 АD
1while_tivuqvlrxj_matmul_1_readvariableop_resource:	 А?
0while_tivuqvlrxj_biasadd_readvariableop_resource:	А6
(while_tivuqvlrxj_readvariableop_resource: 8
*while_tivuqvlrxj_readvariableop_1_resource: 8
*while_tivuqvlrxj_readvariableop_2_resource: ИҐ'while/tivuqvlrxj/BiasAdd/ReadVariableOpҐ&while/tivuqvlrxj/MatMul/ReadVariableOpҐ(while/tivuqvlrxj/MatMul_1/ReadVariableOpҐwhile/tivuqvlrxj/ReadVariableOpҐ!while/tivuqvlrxj/ReadVariableOp_1Ґ!while/tivuqvlrxj/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp1while_tivuqvlrxj_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/tivuqvlrxj/MatMul/ReadVariableOp—
while/tivuqvlrxj/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul…
(while/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp3while_tivuqvlrxj_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/tivuqvlrxj/MatMul_1/ReadVariableOpЇ
while/tivuqvlrxj/MatMul_1MatMulwhile_placeholder_20while/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul_1∞
while/tivuqvlrxj/addAddV2!while/tivuqvlrxj/MatMul:product:0#while/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/add¬
'while/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp2while_tivuqvlrxj_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/tivuqvlrxj/BiasAdd/ReadVariableOpљ
while/tivuqvlrxj/BiasAddBiasAddwhile/tivuqvlrxj/add:z:0/while/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/BiasAddЖ
 while/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/tivuqvlrxj/split/split_dimГ
while/tivuqvlrxj/splitSplit)while/tivuqvlrxj/split/split_dim:output:0!while/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/tivuqvlrxj/split©
while/tivuqvlrxj/ReadVariableOpReadVariableOp*while_tivuqvlrxj_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/tivuqvlrxj/ReadVariableOp£
while/tivuqvlrxj/mulMul'while/tivuqvlrxj/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul¶
while/tivuqvlrxj/add_1AddV2while/tivuqvlrxj/split:output:0while/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_1Н
while/tivuqvlrxj/SigmoidSigmoidwhile/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoidѓ
!while/tivuqvlrxj/ReadVariableOp_1ReadVariableOp,while_tivuqvlrxj_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_1©
while/tivuqvlrxj/mul_1Mul)while/tivuqvlrxj/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_1®
while/tivuqvlrxj/add_2AddV2while/tivuqvlrxj/split:output:1while/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_2С
while/tivuqvlrxj/Sigmoid_1Sigmoidwhile/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_1Ю
while/tivuqvlrxj/mul_2Mulwhile/tivuqvlrxj/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_2Й
while/tivuqvlrxj/TanhTanhwhile/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/TanhҐ
while/tivuqvlrxj/mul_3Mulwhile/tivuqvlrxj/Sigmoid:y:0while/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_3£
while/tivuqvlrxj/add_3AddV2while/tivuqvlrxj/mul_2:z:0while/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_3ѓ
!while/tivuqvlrxj/ReadVariableOp_2ReadVariableOp,while_tivuqvlrxj_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_2∞
while/tivuqvlrxj/mul_4Mul)while/tivuqvlrxj/ReadVariableOp_2:value:0while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_4®
while/tivuqvlrxj/add_4AddV2while/tivuqvlrxj/split:output:3while/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_4С
while/tivuqvlrxj/Sigmoid_2Sigmoidwhile/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_2И
while/tivuqvlrxj/Tanh_1Tanhwhile/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Tanh_1¶
while/tivuqvlrxj/mul_5Mulwhile/tivuqvlrxj/Sigmoid_2:y:0while/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/tivuqvlrxj/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/tivuqvlrxj/mul_5:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/tivuqvlrxj/add_3:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_tivuqvlrxj_biasadd_readvariableop_resource2while_tivuqvlrxj_biasadd_readvariableop_resource_0"h
1while_tivuqvlrxj_matmul_1_readvariableop_resource3while_tivuqvlrxj_matmul_1_readvariableop_resource_0"d
/while_tivuqvlrxj_matmul_readvariableop_resource1while_tivuqvlrxj_matmul_readvariableop_resource_0"Z
*while_tivuqvlrxj_readvariableop_1_resource,while_tivuqvlrxj_readvariableop_1_resource_0"Z
*while_tivuqvlrxj_readvariableop_2_resource,while_tivuqvlrxj_readvariableop_2_resource_0"V
(while_tivuqvlrxj_readvariableop_resource*while_tivuqvlrxj_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/tivuqvlrxj/BiasAdd/ReadVariableOp'while/tivuqvlrxj/BiasAdd/ReadVariableOp2P
&while/tivuqvlrxj/MatMul/ReadVariableOp&while/tivuqvlrxj/MatMul/ReadVariableOp2T
(while/tivuqvlrxj/MatMul_1/ReadVariableOp(while/tivuqvlrxj/MatMul_1/ReadVariableOp2B
while/tivuqvlrxj/ReadVariableOpwhile/tivuqvlrxj/ReadVariableOp2F
!while/tivuqvlrxj/ReadVariableOp_1!while/tivuqvlrxj/ReadVariableOp_12F
!while/tivuqvlrxj/ReadVariableOp_2!while/tivuqvlrxj/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
аY
З
while_body_1304356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_tivuqvlrxj_matmul_readvariableop_resource_0:	 АF
3while_tivuqvlrxj_matmul_1_readvariableop_resource_0:	 АA
2while_tivuqvlrxj_biasadd_readvariableop_resource_0:	А8
*while_tivuqvlrxj_readvariableop_resource_0: :
,while_tivuqvlrxj_readvariableop_1_resource_0: :
,while_tivuqvlrxj_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_tivuqvlrxj_matmul_readvariableop_resource:	 АD
1while_tivuqvlrxj_matmul_1_readvariableop_resource:	 А?
0while_tivuqvlrxj_biasadd_readvariableop_resource:	А6
(while_tivuqvlrxj_readvariableop_resource: 8
*while_tivuqvlrxj_readvariableop_1_resource: 8
*while_tivuqvlrxj_readvariableop_2_resource: ИҐ'while/tivuqvlrxj/BiasAdd/ReadVariableOpҐ&while/tivuqvlrxj/MatMul/ReadVariableOpҐ(while/tivuqvlrxj/MatMul_1/ReadVariableOpҐwhile/tivuqvlrxj/ReadVariableOpҐ!while/tivuqvlrxj/ReadVariableOp_1Ґ!while/tivuqvlrxj/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/tivuqvlrxj/MatMul/ReadVariableOpReadVariableOp1while_tivuqvlrxj_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/tivuqvlrxj/MatMul/ReadVariableOp—
while/tivuqvlrxj/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/tivuqvlrxj/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul…
(while/tivuqvlrxj/MatMul_1/ReadVariableOpReadVariableOp3while_tivuqvlrxj_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/tivuqvlrxj/MatMul_1/ReadVariableOpЇ
while/tivuqvlrxj/MatMul_1MatMulwhile_placeholder_20while/tivuqvlrxj/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/MatMul_1∞
while/tivuqvlrxj/addAddV2!while/tivuqvlrxj/MatMul:product:0#while/tivuqvlrxj/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/add¬
'while/tivuqvlrxj/BiasAdd/ReadVariableOpReadVariableOp2while_tivuqvlrxj_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/tivuqvlrxj/BiasAdd/ReadVariableOpљ
while/tivuqvlrxj/BiasAddBiasAddwhile/tivuqvlrxj/add:z:0/while/tivuqvlrxj/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/tivuqvlrxj/BiasAddЖ
 while/tivuqvlrxj/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/tivuqvlrxj/split/split_dimГ
while/tivuqvlrxj/splitSplit)while/tivuqvlrxj/split/split_dim:output:0!while/tivuqvlrxj/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/tivuqvlrxj/split©
while/tivuqvlrxj/ReadVariableOpReadVariableOp*while_tivuqvlrxj_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/tivuqvlrxj/ReadVariableOp£
while/tivuqvlrxj/mulMul'while/tivuqvlrxj/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul¶
while/tivuqvlrxj/add_1AddV2while/tivuqvlrxj/split:output:0while/tivuqvlrxj/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_1Н
while/tivuqvlrxj/SigmoidSigmoidwhile/tivuqvlrxj/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoidѓ
!while/tivuqvlrxj/ReadVariableOp_1ReadVariableOp,while_tivuqvlrxj_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_1©
while/tivuqvlrxj/mul_1Mul)while/tivuqvlrxj/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_1®
while/tivuqvlrxj/add_2AddV2while/tivuqvlrxj/split:output:1while/tivuqvlrxj/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_2С
while/tivuqvlrxj/Sigmoid_1Sigmoidwhile/tivuqvlrxj/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_1Ю
while/tivuqvlrxj/mul_2Mulwhile/tivuqvlrxj/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_2Й
while/tivuqvlrxj/TanhTanhwhile/tivuqvlrxj/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/TanhҐ
while/tivuqvlrxj/mul_3Mulwhile/tivuqvlrxj/Sigmoid:y:0while/tivuqvlrxj/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_3£
while/tivuqvlrxj/add_3AddV2while/tivuqvlrxj/mul_2:z:0while/tivuqvlrxj/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_3ѓ
!while/tivuqvlrxj/ReadVariableOp_2ReadVariableOp,while_tivuqvlrxj_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/tivuqvlrxj/ReadVariableOp_2∞
while/tivuqvlrxj/mul_4Mul)while/tivuqvlrxj/ReadVariableOp_2:value:0while/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_4®
while/tivuqvlrxj/add_4AddV2while/tivuqvlrxj/split:output:3while/tivuqvlrxj/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/add_4С
while/tivuqvlrxj/Sigmoid_2Sigmoidwhile/tivuqvlrxj/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Sigmoid_2И
while/tivuqvlrxj/Tanh_1Tanhwhile/tivuqvlrxj/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/Tanh_1¶
while/tivuqvlrxj/mul_5Mulwhile/tivuqvlrxj/Sigmoid_2:y:0while/tivuqvlrxj/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/tivuqvlrxj/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/tivuqvlrxj/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/tivuqvlrxj/mul_5:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/tivuqvlrxj/add_3:z:0(^while/tivuqvlrxj/BiasAdd/ReadVariableOp'^while/tivuqvlrxj/MatMul/ReadVariableOp)^while/tivuqvlrxj/MatMul_1/ReadVariableOp ^while/tivuqvlrxj/ReadVariableOp"^while/tivuqvlrxj/ReadVariableOp_1"^while/tivuqvlrxj/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_tivuqvlrxj_biasadd_readvariableop_resource2while_tivuqvlrxj_biasadd_readvariableop_resource_0"h
1while_tivuqvlrxj_matmul_1_readvariableop_resource3while_tivuqvlrxj_matmul_1_readvariableop_resource_0"d
/while_tivuqvlrxj_matmul_readvariableop_resource1while_tivuqvlrxj_matmul_readvariableop_resource_0"Z
*while_tivuqvlrxj_readvariableop_1_resource,while_tivuqvlrxj_readvariableop_1_resource_0"Z
*while_tivuqvlrxj_readvariableop_2_resource,while_tivuqvlrxj_readvariableop_2_resource_0"V
(while_tivuqvlrxj_readvariableop_resource*while_tivuqvlrxj_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/tivuqvlrxj/BiasAdd/ReadVariableOp'while/tivuqvlrxj/BiasAdd/ReadVariableOp2P
&while/tivuqvlrxj/MatMul/ReadVariableOp&while/tivuqvlrxj/MatMul/ReadVariableOp2T
(while/tivuqvlrxj/MatMul_1/ReadVariableOp(while/tivuqvlrxj/MatMul_1/ReadVariableOp2B
while/tivuqvlrxj/ReadVariableOpwhile/tivuqvlrxj/ReadVariableOp2F
!while/tivuqvlrxj/ReadVariableOp_1!while/tivuqvlrxj/ReadVariableOp_12F
!while/tivuqvlrxj/ReadVariableOp_2!while/tivuqvlrxj/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Л

н
while_cond_1304107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304107___redundant_placeholder05
1while_while_cond_1304107___redundant_placeholder15
1while_while_cond_1304107___redundant_placeholder25
1while_while_cond_1304107___redundant_placeholder35
1while_while_cond_1304107___redundant_placeholder45
1while_while_cond_1304107___redundant_placeholder55
1while_while_cond_1304107___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:
Щp
 
kpulowglns_while_body_13030122
.kpulowglns_while_kpulowglns_while_loop_counter8
4kpulowglns_while_kpulowglns_while_maximum_iterations 
kpulowglns_while_placeholder"
kpulowglns_while_placeholder_1"
kpulowglns_while_placeholder_2"
kpulowglns_while_placeholder_31
-kpulowglns_while_kpulowglns_strided_slice_1_0m
ikpulowglns_while_tensorarrayv2read_tensorlistgetitem_kpulowglns_tensorarrayunstack_tensorlistfromtensor_0O
<kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource_0:	АQ
>kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource_0:	 АL
=kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource_0:	АC
5kpulowglns_while_fddnbxfcbs_readvariableop_resource_0: E
7kpulowglns_while_fddnbxfcbs_readvariableop_1_resource_0: E
7kpulowglns_while_fddnbxfcbs_readvariableop_2_resource_0: 
kpulowglns_while_identity
kpulowglns_while_identity_1
kpulowglns_while_identity_2
kpulowglns_while_identity_3
kpulowglns_while_identity_4
kpulowglns_while_identity_5/
+kpulowglns_while_kpulowglns_strided_slice_1k
gkpulowglns_while_tensorarrayv2read_tensorlistgetitem_kpulowglns_tensorarrayunstack_tensorlistfromtensorM
:kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource:	АO
<kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource:	 АJ
;kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource:	АA
3kpulowglns_while_fddnbxfcbs_readvariableop_resource: C
5kpulowglns_while_fddnbxfcbs_readvariableop_1_resource: C
5kpulowglns_while_fddnbxfcbs_readvariableop_2_resource: ИҐ2kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOpҐ1kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOpҐ3kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOpҐ*kpulowglns/while/fddnbxfcbs/ReadVariableOpҐ,kpulowglns/while/fddnbxfcbs/ReadVariableOp_1Ґ,kpulowglns/while/fddnbxfcbs/ReadVariableOp_2ў
Bkpulowglns/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2D
Bkpulowglns/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4kpulowglns/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemikpulowglns_while_tensorarrayv2read_tensorlistgetitem_kpulowglns_tensorarrayunstack_tensorlistfromtensor_0kpulowglns_while_placeholderKkpulowglns/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype026
4kpulowglns/while/TensorArrayV2Read/TensorListGetItemд
1kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp<kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype023
1kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOpэ
"kpulowglns/while/fddnbxfcbs/MatMulMatMul;kpulowglns/while/TensorArrayV2Read/TensorListGetItem:item:09kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2$
"kpulowglns/while/fddnbxfcbs/MatMulк
3kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp>kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOpж
$kpulowglns/while/fddnbxfcbs/MatMul_1MatMulkpulowglns_while_placeholder_2;kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2&
$kpulowglns/while/fddnbxfcbs/MatMul_1№
kpulowglns/while/fddnbxfcbs/addAddV2,kpulowglns/while/fddnbxfcbs/MatMul:product:0.kpulowglns/while/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
kpulowglns/while/fddnbxfcbs/addг
2kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp=kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOpй
#kpulowglns/while/fddnbxfcbs/BiasAddBiasAdd#kpulowglns/while/fddnbxfcbs/add:z:0:kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2%
#kpulowglns/while/fddnbxfcbs/BiasAddЬ
+kpulowglns/while/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+kpulowglns/while/fddnbxfcbs/split/split_dimѓ
!kpulowglns/while/fddnbxfcbs/splitSplit4kpulowglns/while/fddnbxfcbs/split/split_dim:output:0,kpulowglns/while/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2#
!kpulowglns/while/fddnbxfcbs/split 
*kpulowglns/while/fddnbxfcbs/ReadVariableOpReadVariableOp5kpulowglns_while_fddnbxfcbs_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*kpulowglns/while/fddnbxfcbs/ReadVariableOpѕ
kpulowglns/while/fddnbxfcbs/mulMul2kpulowglns/while/fddnbxfcbs/ReadVariableOp:value:0kpulowglns_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2!
kpulowglns/while/fddnbxfcbs/mul“
!kpulowglns/while/fddnbxfcbs/add_1AddV2*kpulowglns/while/fddnbxfcbs/split:output:0#kpulowglns/while/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/add_1Ѓ
#kpulowglns/while/fddnbxfcbs/SigmoidSigmoid%kpulowglns/while/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#kpulowglns/while/fddnbxfcbs/Sigmoid–
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_1ReadVariableOp7kpulowglns_while_fddnbxfcbs_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_1’
!kpulowglns/while/fddnbxfcbs/mul_1Mul4kpulowglns/while/fddnbxfcbs/ReadVariableOp_1:value:0kpulowglns_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/mul_1‘
!kpulowglns/while/fddnbxfcbs/add_2AddV2*kpulowglns/while/fddnbxfcbs/split:output:1%kpulowglns/while/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/add_2≤
%kpulowglns/while/fddnbxfcbs/Sigmoid_1Sigmoid%kpulowglns/while/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%kpulowglns/while/fddnbxfcbs/Sigmoid_1 
!kpulowglns/while/fddnbxfcbs/mul_2Mul)kpulowglns/while/fddnbxfcbs/Sigmoid_1:y:0kpulowglns_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/mul_2™
 kpulowglns/while/fddnbxfcbs/TanhTanh*kpulowglns/while/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2"
 kpulowglns/while/fddnbxfcbs/Tanhќ
!kpulowglns/while/fddnbxfcbs/mul_3Mul'kpulowglns/while/fddnbxfcbs/Sigmoid:y:0$kpulowglns/while/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/mul_3ѕ
!kpulowglns/while/fddnbxfcbs/add_3AddV2%kpulowglns/while/fddnbxfcbs/mul_2:z:0%kpulowglns/while/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/add_3–
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_2ReadVariableOp7kpulowglns_while_fddnbxfcbs_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_2№
!kpulowglns/while/fddnbxfcbs/mul_4Mul4kpulowglns/while/fddnbxfcbs/ReadVariableOp_2:value:0%kpulowglns/while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/mul_4‘
!kpulowglns/while/fddnbxfcbs/add_4AddV2*kpulowglns/while/fddnbxfcbs/split:output:3%kpulowglns/while/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/add_4≤
%kpulowglns/while/fddnbxfcbs/Sigmoid_2Sigmoid%kpulowglns/while/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%kpulowglns/while/fddnbxfcbs/Sigmoid_2©
"kpulowglns/while/fddnbxfcbs/Tanh_1Tanh%kpulowglns/while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2$
"kpulowglns/while/fddnbxfcbs/Tanh_1“
!kpulowglns/while/fddnbxfcbs/mul_5Mul)kpulowglns/while/fddnbxfcbs/Sigmoid_2:y:0&kpulowglns/while/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!kpulowglns/while/fddnbxfcbs/mul_5Х
5kpulowglns/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemkpulowglns_while_placeholder_1kpulowglns_while_placeholder%kpulowglns/while/fddnbxfcbs/mul_5:z:0*
_output_shapes
: *
element_dtype027
5kpulowglns/while/TensorArrayV2Write/TensorListSetItemr
kpulowglns/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
kpulowglns/while/add/yХ
kpulowglns/while/addAddV2kpulowglns_while_placeholderkpulowglns/while/add/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/while/addv
kpulowglns/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
kpulowglns/while/add_1/y≠
kpulowglns/while/add_1AddV2.kpulowglns_while_kpulowglns_while_loop_counter!kpulowglns/while/add_1/y:output:0*
T0*
_output_shapes
: 2
kpulowglns/while/add_1©
kpulowglns/while/IdentityIdentitykpulowglns/while/add_1:z:03^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
kpulowglns/while/Identity«
kpulowglns/while/Identity_1Identity4kpulowglns_while_kpulowglns_while_maximum_iterations3^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
kpulowglns/while/Identity_1Ђ
kpulowglns/while/Identity_2Identitykpulowglns/while/add:z:03^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
kpulowglns/while/Identity_2Ў
kpulowglns/while/Identity_3IdentityEkpulowglns/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
kpulowglns/while/Identity_3…
kpulowglns/while/Identity_4Identity%kpulowglns/while/fddnbxfcbs/mul_5:z:03^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/while/Identity_4…
kpulowglns/while/Identity_5Identity%kpulowglns/while/fddnbxfcbs/add_3:z:03^kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2^kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp4^kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp+^kpulowglns/while/fddnbxfcbs/ReadVariableOp-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_1-^kpulowglns/while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
kpulowglns/while/Identity_5"|
;kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource=kpulowglns_while_fddnbxfcbs_biasadd_readvariableop_resource_0"~
<kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource>kpulowglns_while_fddnbxfcbs_matmul_1_readvariableop_resource_0"z
:kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource<kpulowglns_while_fddnbxfcbs_matmul_readvariableop_resource_0"p
5kpulowglns_while_fddnbxfcbs_readvariableop_1_resource7kpulowglns_while_fddnbxfcbs_readvariableop_1_resource_0"p
5kpulowglns_while_fddnbxfcbs_readvariableop_2_resource7kpulowglns_while_fddnbxfcbs_readvariableop_2_resource_0"l
3kpulowglns_while_fddnbxfcbs_readvariableop_resource5kpulowglns_while_fddnbxfcbs_readvariableop_resource_0"?
kpulowglns_while_identity"kpulowglns/while/Identity:output:0"C
kpulowglns_while_identity_1$kpulowglns/while/Identity_1:output:0"C
kpulowglns_while_identity_2$kpulowglns/while/Identity_2:output:0"C
kpulowglns_while_identity_3$kpulowglns/while/Identity_3:output:0"C
kpulowglns_while_identity_4$kpulowglns/while/Identity_4:output:0"C
kpulowglns_while_identity_5$kpulowglns/while/Identity_5:output:0"\
+kpulowglns_while_kpulowglns_strided_slice_1-kpulowglns_while_kpulowglns_strided_slice_1_0"‘
gkpulowglns_while_tensorarrayv2read_tensorlistgetitem_kpulowglns_tensorarrayunstack_tensorlistfromtensorikpulowglns_while_tensorarrayv2read_tensorlistgetitem_kpulowglns_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2h
2kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2kpulowglns/while/fddnbxfcbs/BiasAdd/ReadVariableOp2f
1kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp1kpulowglns/while/fddnbxfcbs/MatMul/ReadVariableOp2j
3kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp3kpulowglns/while/fddnbxfcbs/MatMul_1/ReadVariableOp2X
*kpulowglns/while/fddnbxfcbs/ReadVariableOp*kpulowglns/while/fddnbxfcbs/ReadVariableOp2\
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_1,kpulowglns/while/fddnbxfcbs/ReadVariableOp_12\
,kpulowglns/while/fddnbxfcbs/ReadVariableOp_2,kpulowglns/while/fddnbxfcbs/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
аY
З
while_body_1301279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_fddnbxfcbs_matmul_readvariableop_resource_0:	АF
3while_fddnbxfcbs_matmul_1_readvariableop_resource_0:	 АA
2while_fddnbxfcbs_biasadd_readvariableop_resource_0:	А8
*while_fddnbxfcbs_readvariableop_resource_0: :
,while_fddnbxfcbs_readvariableop_1_resource_0: :
,while_fddnbxfcbs_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_fddnbxfcbs_matmul_readvariableop_resource:	АD
1while_fddnbxfcbs_matmul_1_readvariableop_resource:	 А?
0while_fddnbxfcbs_biasadd_readvariableop_resource:	А6
(while_fddnbxfcbs_readvariableop_resource: 8
*while_fddnbxfcbs_readvariableop_1_resource: 8
*while_fddnbxfcbs_readvariableop_2_resource: ИҐ'while/fddnbxfcbs/BiasAdd/ReadVariableOpҐ&while/fddnbxfcbs/MatMul/ReadVariableOpҐ(while/fddnbxfcbs/MatMul_1/ReadVariableOpҐwhile/fddnbxfcbs/ReadVariableOpҐ!while/fddnbxfcbs/ReadVariableOp_1Ґ!while/fddnbxfcbs/ReadVariableOp_2√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem√
&while/fddnbxfcbs/MatMul/ReadVariableOpReadVariableOp1while_fddnbxfcbs_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/fddnbxfcbs/MatMul/ReadVariableOp—
while/fddnbxfcbs/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/fddnbxfcbs/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul…
(while/fddnbxfcbs/MatMul_1/ReadVariableOpReadVariableOp3while_fddnbxfcbs_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/fddnbxfcbs/MatMul_1/ReadVariableOpЇ
while/fddnbxfcbs/MatMul_1MatMulwhile_placeholder_20while/fddnbxfcbs/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/MatMul_1∞
while/fddnbxfcbs/addAddV2!while/fddnbxfcbs/MatMul:product:0#while/fddnbxfcbs/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/add¬
'while/fddnbxfcbs/BiasAdd/ReadVariableOpReadVariableOp2while_fddnbxfcbs_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/fddnbxfcbs/BiasAdd/ReadVariableOpљ
while/fddnbxfcbs/BiasAddBiasAddwhile/fddnbxfcbs/add:z:0/while/fddnbxfcbs/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/fddnbxfcbs/BiasAddЖ
 while/fddnbxfcbs/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/fddnbxfcbs/split/split_dimГ
while/fddnbxfcbs/splitSplit)while/fddnbxfcbs/split/split_dim:output:0!while/fddnbxfcbs/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/fddnbxfcbs/split©
while/fddnbxfcbs/ReadVariableOpReadVariableOp*while_fddnbxfcbs_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/fddnbxfcbs/ReadVariableOp£
while/fddnbxfcbs/mulMul'while/fddnbxfcbs/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul¶
while/fddnbxfcbs/add_1AddV2while/fddnbxfcbs/split:output:0while/fddnbxfcbs/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_1Н
while/fddnbxfcbs/SigmoidSigmoidwhile/fddnbxfcbs/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoidѓ
!while/fddnbxfcbs/ReadVariableOp_1ReadVariableOp,while_fddnbxfcbs_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_1©
while/fddnbxfcbs/mul_1Mul)while/fddnbxfcbs/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_1®
while/fddnbxfcbs/add_2AddV2while/fddnbxfcbs/split:output:1while/fddnbxfcbs/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_2С
while/fddnbxfcbs/Sigmoid_1Sigmoidwhile/fddnbxfcbs/add_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_1Ю
while/fddnbxfcbs/mul_2Mulwhile/fddnbxfcbs/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_2Й
while/fddnbxfcbs/TanhTanhwhile/fddnbxfcbs/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/TanhҐ
while/fddnbxfcbs/mul_3Mulwhile/fddnbxfcbs/Sigmoid:y:0while/fddnbxfcbs/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_3£
while/fddnbxfcbs/add_3AddV2while/fddnbxfcbs/mul_2:z:0while/fddnbxfcbs/mul_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_3ѓ
!while/fddnbxfcbs/ReadVariableOp_2ReadVariableOp,while_fddnbxfcbs_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/fddnbxfcbs/ReadVariableOp_2∞
while/fddnbxfcbs/mul_4Mul)while/fddnbxfcbs/ReadVariableOp_2:value:0while/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_4®
while/fddnbxfcbs/add_4AddV2while/fddnbxfcbs/split:output:3while/fddnbxfcbs/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/add_4С
while/fddnbxfcbs/Sigmoid_2Sigmoidwhile/fddnbxfcbs/add_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Sigmoid_2И
while/fddnbxfcbs/Tanh_1Tanhwhile/fddnbxfcbs/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/Tanh_1¶
while/fddnbxfcbs/mul_5Mulwhile/fddnbxfcbs/Sigmoid_2:y:0while/fddnbxfcbs/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/fddnbxfcbs/mul_5ё
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/fddnbxfcbs/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1∆
while/IdentityIdentitywhile/add_1:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identityў
while/Identity_1Identitywhile_while_maximum_iterations(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1»
while/Identity_2Identitywhile/add:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2х
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ж
while/Identity_4Identitywhile/fddnbxfcbs/mul_5:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4ж
while/Identity_5Identitywhile/fddnbxfcbs/add_3:z:0(^while/fddnbxfcbs/BiasAdd/ReadVariableOp'^while/fddnbxfcbs/MatMul/ReadVariableOp)^while/fddnbxfcbs/MatMul_1/ReadVariableOp ^while/fddnbxfcbs/ReadVariableOp"^while/fddnbxfcbs/ReadVariableOp_1"^while/fddnbxfcbs/ReadVariableOp_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_5"f
0while_fddnbxfcbs_biasadd_readvariableop_resource2while_fddnbxfcbs_biasadd_readvariableop_resource_0"h
1while_fddnbxfcbs_matmul_1_readvariableop_resource3while_fddnbxfcbs_matmul_1_readvariableop_resource_0"d
/while_fddnbxfcbs_matmul_readvariableop_resource1while_fddnbxfcbs_matmul_readvariableop_resource_0"Z
*while_fddnbxfcbs_readvariableop_1_resource,while_fddnbxfcbs_readvariableop_1_resource_0"Z
*while_fddnbxfcbs_readvariableop_2_resource,while_fddnbxfcbs_readvariableop_2_resource_0"V
(while_fddnbxfcbs_readvariableop_resource*while_fddnbxfcbs_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : : : : 2R
'while/fddnbxfcbs/BiasAdd/ReadVariableOp'while/fddnbxfcbs/BiasAdd/ReadVariableOp2P
&while/fddnbxfcbs/MatMul/ReadVariableOp&while/fddnbxfcbs/MatMul/ReadVariableOp2T
(while/fddnbxfcbs/MatMul_1/ReadVariableOp(while/fddnbxfcbs/MatMul_1/ReadVariableOp2B
while/fddnbxfcbs/ReadVariableOpwhile/fddnbxfcbs/ReadVariableOp2F
!while/fddnbxfcbs/ReadVariableOp_1!while/fddnbxfcbs/ReadVariableOp_12F
!while/fddnbxfcbs/ReadVariableOp_2!while/fddnbxfcbs/ReadVariableOp_2: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: 
Л

н
while_cond_1304535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304535___redundant_placeholder05
1while_while_cond_1304535___redundant_placeholder15
1while_while_cond_1304535___redundant_placeholder25
1while_while_cond_1304535___redundant_placeholder35
1while_while_cond_1304535___redundant_placeholder45
1while_while_cond_1304535___redundant_placeholder55
1while_while_cond_1304535___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
:"ћL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ї
serving_defaultІ
I

cvyyglfjwp;
serving_default_cvyyglfjwp:0€€€€€€€€€>

tgvgnagwib0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:зя
юP
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
Р_default_save_signature
+С&call_and_return_all_conditional_losses
Т__call__"аM
_tf_keras_sequentialЅM{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "cvyyglfjwp"}}, {"class_name": "Conv1D", "config": {"name": "xwuftghvfx", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv1D", "config": {"name": "gnnkxdqznz", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "xrqvvalojb", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}}, {"class_name": "RNN", "config": {"name": "kpulowglns", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "fddnbxfcbs", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}}, {"class_name": "RNN", "config": {"name": "htheqsxgix", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "tivuqvlrxj", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}}, {"class_name": "Dense", "config": {"name": "tgvgnagwib", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 13}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 5, 13]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 3, 5, 13]}, "float32", "cvyyglfjwp"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "cvyyglfjwp"}, "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "xwuftghvfx", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Conv1D", "config": {"name": "gnnkxdqznz", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Reshape", "config": {"name": "xrqvvalojb", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}, "shared_object_id": 7}, {"class_name": "RNN", "config": {"name": "kpulowglns", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "fddnbxfcbs", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 11}}, "shared_object_id": 12}, {"class_name": "RNN", "config": {"name": "htheqsxgix", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "tivuqvlrxj", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 16}}, "shared_object_id": 17}, {"class_name": "Dense", "config": {"name": "tgvgnagwib", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 20}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
ћ

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+У&call_and_return_all_conditional_losses
Ф__call__"•

_tf_keras_layerЛ
{"name": "xwuftghvfx", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "xwuftghvfx", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 13}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 5, 13]}}
Ќ

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+Х&call_and_return_all_conditional_losses
Ц__call__"¶

_tf_keras_layerМ
{"name": "gnnkxdqznz", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "gnnkxdqznz", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 20}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 1, 20]}}
Р
	variables
regularization_losses
trainable_variables
	keras_api
+Ч&call_and_return_all_conditional_losses
Ш__call__"€
_tf_keras_layerе{"name": "xrqvvalojb", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "xrqvvalojb", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}, "shared_object_id": 7}
∞
cell

state_spec
	variables
 regularization_losses
!trainable_variables
"	keras_api
+Щ&call_and_return_all_conditional_losses
Ъ__call__"Е
_tf_keras_rnn_layerз{"name": "kpulowglns", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RNN", "config": {"name": "kpulowglns", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "fddnbxfcbs", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 11}}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 20]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 24}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 20]}}
≥
#cell
$
state_spec
%	variables
&regularization_losses
'trainable_variables
(	keras_api
+Ы&call_and_return_all_conditional_losses
Ь__call__"И
_tf_keras_rnn_layerк{"name": "htheqsxgix", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RNN", "config": {"name": "htheqsxgix", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "tivuqvlrxj", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 16}}, "shared_object_id": 17, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 25}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 32]}}
ў

)kernel
*bias
+	variables
,regularization_losses
-trainable_variables
.	keras_api
+Э&call_and_return_all_conditional_losses
Ю__call__"≤
_tf_keras_layerШ{"name": "tgvgnagwib", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "tgvgnagwib", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
®
/iter
	0decay
1learning_rate
2momentum
3rho	rms~	rms
rmsА
rmsБ
)rmsВ
*rmsГ
4rmsД
5rmsЕ
6rmsЖ
7rmsЗ
8rmsИ
9rmsЙ
:rmsК
;rmsЛ
<rmsМ
=rmsН
>rmsО
?rmsП"
	optimizer
¶
0
1
2
3
44
55
66
77
88
99
:10
;11
<12
=13
>14
?15
)16
*17"
trackable_list_wrapper
 "
trackable_list_wrapper
¶
0
1
2
3
44
55
66
77
88
99
:10
;11
<12
=13
>14
?15
)16
*17"
trackable_list_wrapper
ќ
@non_trainable_variables
	variables

Alayers
	regularization_losses
Blayer_metrics
Cmetrics
Dlayer_regularization_losses

trainable_variables
Т__call__
Р_default_save_signature
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
-
Яserving_default"
signature_map
':%2xwuftghvfx/kernel
:2xwuftghvfx/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
∞
Enon_trainable_variables
Flayer_metrics

Glayers
	variables
regularization_losses
Hmetrics
Ilayer_regularization_losses
trainable_variables
Ф__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
':%2gnnkxdqznz/kernel
:2gnnkxdqznz/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
∞
Jnon_trainable_variables
Klayer_metrics

Llayers
	variables
regularization_losses
Mmetrics
Nlayer_regularization_losses
trainable_variables
Ц__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Onon_trainable_variables
Player_metrics

Qlayers
	variables
regularization_losses
Rmetrics
Slayer_regularization_losses
trainable_variables
Ш__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
К

T
state_size

4kernel
5recurrent_kernel
6bias
7input_gate_peephole_weights
 8forget_gate_peephole_weights
 9output_gate_peephole_weights
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
+†&call_and_return_all_conditional_losses
°__call__"Ў
_tf_keras_layerЊ{"name": "fddnbxfcbs", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Addons>PeepholeLSTMCell", "config": {"name": "fddnbxfcbs", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 11}
 "
trackable_list_wrapper
J
40
51
62
73
84
95"
trackable_list_wrapper
 "
trackable_list_wrapper
J
40
51
62
73
84
95"
trackable_list_wrapper
Љ
Ynon_trainable_variables
	variables

Zlayers
[layer_metrics
 regularization_losses

\states
]metrics
^layer_regularization_losses
!trainable_variables
Ъ__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
М

_
state_size

:kernel
;recurrent_kernel
<bias
=input_gate_peephole_weights
 >forget_gate_peephole_weights
 ?output_gate_peephole_weights
`	variables
aregularization_losses
btrainable_variables
c	keras_api
+Ґ&call_and_return_all_conditional_losses
£__call__"Џ
_tf_keras_layerј{"name": "tivuqvlrxj", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Addons>PeepholeLSTMCell", "config": {"name": "tivuqvlrxj", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 16}
 "
trackable_list_wrapper
J
:0
;1
<2
=3
>4
?5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
:0
;1
<2
=3
>4
?5"
trackable_list_wrapper
Љ
dnon_trainable_variables
%	variables

elayers
flayer_metrics
&regularization_losses

gstates
hmetrics
ilayer_regularization_losses
'trainable_variables
Ь__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
#:! 2tgvgnagwib/kernel
:2tgvgnagwib/bias
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
∞
jnon_trainable_variables
klayer_metrics

llayers
+	variables
,regularization_losses
mmetrics
nlayer_regularization_losses
-trainable_variables
Ю__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
/:-	А2kpulowglns/fddnbxfcbs/kernel
9:7	 А2&kpulowglns/fddnbxfcbs/recurrent_kernel
):'А2kpulowglns/fddnbxfcbs/bias
?:= 21kpulowglns/fddnbxfcbs/input_gate_peephole_weights
@:> 22kpulowglns/fddnbxfcbs/forget_gate_peephole_weights
@:> 22kpulowglns/fddnbxfcbs/output_gate_peephole_weights
/:-	 А2htheqsxgix/tivuqvlrxj/kernel
9:7	 А2&htheqsxgix/tivuqvlrxj/recurrent_kernel
):'А2htheqsxgix/tivuqvlrxj/bias
?:= 21htheqsxgix/tivuqvlrxj/input_gate_peephole_weights
@:> 22htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights
@:> 22htheqsxgix/tivuqvlrxj/output_gate_peephole_weights
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_dict_wrapper
'
o0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
40
51
62
73
84
95"
trackable_list_wrapper
 "
trackable_list_wrapper
J
40
51
62
73
84
95"
trackable_list_wrapper
∞
pnon_trainable_variables
qlayer_metrics

rlayers
U	variables
Vregularization_losses
smetrics
tlayer_regularization_losses
Wtrainable_variables
°__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
:0
;1
<2
=3
>4
?5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
:0
;1
<2
=3
>4
?5"
trackable_list_wrapper
∞
unon_trainable_variables
vlayer_metrics

wlayers
`	variables
aregularization_losses
xmetrics
ylayer_regularization_losses
btrainable_variables
£__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
‘
	ztotal
	{count
|	variables
}	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 27}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
z0
{1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
1:/2RMSprop/xwuftghvfx/kernel/rms
':%2RMSprop/xwuftghvfx/bias/rms
1:/2RMSprop/gnnkxdqznz/kernel/rms
':%2RMSprop/gnnkxdqznz/bias/rms
-:+ 2RMSprop/tgvgnagwib/kernel/rms
':%2RMSprop/tgvgnagwib/bias/rms
9:7	А2(RMSprop/kpulowglns/fddnbxfcbs/kernel/rms
C:A	 А22RMSprop/kpulowglns/fddnbxfcbs/recurrent_kernel/rms
3:1А2&RMSprop/kpulowglns/fddnbxfcbs/bias/rms
I:G 2=RMSprop/kpulowglns/fddnbxfcbs/input_gate_peephole_weights/rms
J:H 2>RMSprop/kpulowglns/fddnbxfcbs/forget_gate_peephole_weights/rms
J:H 2>RMSprop/kpulowglns/fddnbxfcbs/output_gate_peephole_weights/rms
9:7	 А2(RMSprop/htheqsxgix/tivuqvlrxj/kernel/rms
C:A	 А22RMSprop/htheqsxgix/tivuqvlrxj/recurrent_kernel/rms
3:1А2&RMSprop/htheqsxgix/tivuqvlrxj/bias/rms
I:G 2=RMSprop/htheqsxgix/tivuqvlrxj/input_gate_peephole_weights/rms
J:H 2>RMSprop/htheqsxgix/tivuqvlrxj/forget_gate_peephole_weights/rms
J:H 2>RMSprop/htheqsxgix/tivuqvlrxj/output_gate_peephole_weights/rms
л2и
"__inference__wrapped_model_1299575Ѕ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *1Ґ.
,К)

cvyyglfjwp€€€€€€€€€
к2з
G__inference_sequential_layer_call_and_return_conditional_losses_1302856
G__inference_sequential_layer_call_and_return_conditional_losses_1303295
G__inference_sequential_layer_call_and_return_conditional_losses_1302322
G__inference_sequential_layer_call_and_return_conditional_losses_1302368ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ю2ы
,__inference_sequential_layer_call_fn_1301643
,__inference_sequential_layer_call_fn_1303336
,__inference_sequential_layer_call_fn_1303377
,__inference_sequential_layer_call_fn_1302276ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
с2о
G__inference_xwuftghvfx_layer_call_and_return_conditional_losses_1303414Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_xwuftghvfx_layer_call_fn_1303423Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_gnnkxdqznz_layer_call_and_return_conditional_losses_1303462Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_gnnkxdqznz_layer_call_fn_1303471Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_xrqvvalojb_layer_call_and_return_conditional_losses_1303484Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_xrqvvalojb_layer_call_fn_1303489Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Р2Н
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1303669
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1303849
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1304029
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1304209ж
Ё≤ў
FullArgSpecO
argsGЪD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
§2°
,__inference_kpulowglns_layer_call_fn_1304226
,__inference_kpulowglns_layer_call_fn_1304243
,__inference_kpulowglns_layer_call_fn_1304260
,__inference_kpulowglns_layer_call_fn_1304277ж
Ё≤ў
FullArgSpecO
argsGЪD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Р2Н
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304457
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304637
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304817
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304997ж
Ё≤ў
FullArgSpecO
argsGЪD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
§2°
,__inference_htheqsxgix_layer_call_fn_1305014
,__inference_htheqsxgix_layer_call_fn_1305031
,__inference_htheqsxgix_layer_call_fn_1305048
,__inference_htheqsxgix_layer_call_fn_1305065ж
Ё≤ў
FullArgSpecO
argsGЪD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
с2о
G__inference_tgvgnagwib_layer_call_and_return_conditional_losses_1305075Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_tgvgnagwib_layer_call_fn_1305084Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѕBћ
%__inference_signature_wrapper_1302417
cvyyglfjwp"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_1305128
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_1305172Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
†2Э
,__inference_fddnbxfcbs_layer_call_fn_1305195
,__inference_fddnbxfcbs_layer_call_fn_1305218Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
÷2”
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_1305262
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_1305306Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
†2Э
,__inference_tivuqvlrxj_layer_call_fn_1305329
,__inference_tivuqvlrxj_layer_call_fn_1305352Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 ±
"__inference__wrapped_model_1299575К456789:;<=>?)*;Ґ8
1Ґ.
,К)

cvyyglfjwp€€€€€€€€€
™ "7™4
2

tgvgnagwib$К!

tgvgnagwib€€€€€€€€€ћ
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_1305128А456789АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€ 
EЪB
К
0/1/0€€€€€€€€€ 
К
0/1/1€€€€€€€€€ 
Ъ ћ
G__inference_fddnbxfcbs_layer_call_and_return_conditional_losses_1305172А456789АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€ 
EЪB
К
0/1/0€€€€€€€€€ 
К
0/1/1€€€€€€€€€ 
Ъ °
,__inference_fddnbxfcbs_layer_call_fn_1305195р456789АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p 
™ "cҐ`
К
0€€€€€€€€€ 
AЪ>
К
1/0€€€€€€€€€ 
К
1/1€€€€€€€€€ °
,__inference_fddnbxfcbs_layer_call_fn_1305218р456789АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p
™ "cҐ`
К
0€€€€€€€€€ 
AЪ>
К
1/0€€€€€€€€€ 
К
1/1€€€€€€€€€ Ј
G__inference_gnnkxdqznz_layer_call_and_return_conditional_losses_1303462l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ П
,__inference_gnnkxdqznz_layer_call_fn_1303471_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ " К€€€€€€€€€–
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304457Д:;<=>?SҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p 

 

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ –
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304637Д:;<=>?SҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p

 

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ њ
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304817t:;<=>?CҐ@
9Ґ6
$К!
inputs€€€€€€€€€ 

 
p 

 

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ њ
G__inference_htheqsxgix_layer_call_and_return_conditional_losses_1304997t:;<=>?CҐ@
9Ґ6
$К!
inputs€€€€€€€€€ 

 
p

 

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ І
,__inference_htheqsxgix_layer_call_fn_1305014w:;<=>?SҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p 

 

 
™ "К€€€€€€€€€ І
,__inference_htheqsxgix_layer_call_fn_1305031w:;<=>?SҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p

 

 
™ "К€€€€€€€€€ Ч
,__inference_htheqsxgix_layer_call_fn_1305048g:;<=>?CҐ@
9Ґ6
$К!
inputs€€€€€€€€€ 

 
p 

 

 
™ "К€€€€€€€€€ Ч
,__inference_htheqsxgix_layer_call_fn_1305065g:;<=>?CҐ@
9Ґ6
$К!
inputs€€€€€€€€€ 

 
p

 

 
™ "К€€€€€€€€€ Ё
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1303669С456789SҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€ 
Ъ Ё
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1303849С456789SҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€ 
Ъ √
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1304029x456789CҐ@
9Ґ6
$К!
inputs€€€€€€€€€

 
p 

 

 
™ ")Ґ&
К
0€€€€€€€€€ 
Ъ √
G__inference_kpulowglns_layer_call_and_return_conditional_losses_1304209x456789CҐ@
9Ґ6
$К!
inputs€€€€€€€€€

 
p

 

 
™ ")Ґ&
К
0€€€€€€€€€ 
Ъ µ
,__inference_kpulowglns_layer_call_fn_1304226Д456789SҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 

 
™ "%К"€€€€€€€€€€€€€€€€€€ µ
,__inference_kpulowglns_layer_call_fn_1304243Д456789SҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 

 
™ "%К"€€€€€€€€€€€€€€€€€€ Ы
,__inference_kpulowglns_layer_call_fn_1304260k456789CҐ@
9Ґ6
$К!
inputs€€€€€€€€€

 
p 

 

 
™ "К€€€€€€€€€ Ы
,__inference_kpulowglns_layer_call_fn_1304277k456789CҐ@
9Ґ6
$К!
inputs€€€€€€€€€

 
p

 

 
™ "К€€€€€€€€€ ћ
G__inference_sequential_layer_call_and_return_conditional_losses_1302322А456789:;<=>?)*CҐ@
9Ґ6
,К)

cvyyglfjwp€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ћ
G__inference_sequential_layer_call_and_return_conditional_losses_1302368А456789:;<=>?)*CҐ@
9Ґ6
,К)

cvyyglfjwp€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ «
G__inference_sequential_layer_call_and_return_conditional_losses_1302856|456789:;<=>?)*?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ «
G__inference_sequential_layer_call_and_return_conditional_losses_1303295|456789:;<=>?)*?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ £
,__inference_sequential_layer_call_fn_1301643s456789:;<=>?)*CҐ@
9Ґ6
,К)

cvyyglfjwp€€€€€€€€€
p 

 
™ "К€€€€€€€€€£
,__inference_sequential_layer_call_fn_1302276s456789:;<=>?)*CҐ@
9Ґ6
,К)

cvyyglfjwp€€€€€€€€€
p

 
™ "К€€€€€€€€€Я
,__inference_sequential_layer_call_fn_1303336o456789:;<=>?)*?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€Я
,__inference_sequential_layer_call_fn_1303377o456789:;<=>?)*?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€¬
%__inference_signature_wrapper_1302417Ш456789:;<=>?)*IҐF
Ґ 
?™<
:

cvyyglfjwp,К)

cvyyglfjwp€€€€€€€€€"7™4
2

tgvgnagwib$К!

tgvgnagwib€€€€€€€€€І
G__inference_tgvgnagwib_layer_call_and_return_conditional_losses_1305075\)*/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "%Ґ"
К
0€€€€€€€€€
Ъ 
,__inference_tgvgnagwib_layer_call_fn_1305084O)*/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "К€€€€€€€€€ћ
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_1305262А:;<=>?АҐ}
vҐs
 К
inputs€€€€€€€€€ 
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€ 
EЪB
К
0/1/0€€€€€€€€€ 
К
0/1/1€€€€€€€€€ 
Ъ ћ
G__inference_tivuqvlrxj_layer_call_and_return_conditional_losses_1305306А:;<=>?АҐ}
vҐs
 К
inputs€€€€€€€€€ 
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€ 
EЪB
К
0/1/0€€€€€€€€€ 
К
0/1/1€€€€€€€€€ 
Ъ °
,__inference_tivuqvlrxj_layer_call_fn_1305329р:;<=>?АҐ}
vҐs
 К
inputs€€€€€€€€€ 
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p 
™ "cҐ`
К
0€€€€€€€€€ 
AЪ>
К
1/0€€€€€€€€€ 
К
1/1€€€€€€€€€ °
,__inference_tivuqvlrxj_layer_call_fn_1305352р:;<=>?АҐ}
vҐs
 К
inputs€€€€€€€€€ 
KҐH
"К
states/0€€€€€€€€€ 
"К
states/1€€€€€€€€€ 
p
™ "cҐ`
К
0€€€€€€€€€ 
AЪ>
К
1/0€€€€€€€€€ 
К
1/1€€€€€€€€€ ѓ
G__inference_xrqvvalojb_layer_call_and_return_conditional_losses_1303484d7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ ")Ґ&
К
0€€€€€€€€€
Ъ З
,__inference_xrqvvalojb_layer_call_fn_1303489W7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "К€€€€€€€€€Ј
G__inference_xwuftghvfx_layer_call_and_return_conditional_losses_1303414l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ П
,__inference_xwuftghvfx_layer_call_fn_1303423_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ " К€€€€€€€€€