НГ2
│Г
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
╛
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
Ў
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
num_elementsint         
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
И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ти/
В
iigfihrkup/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameiigfihrkup/kernel
{
%iigfihrkup/kernel/Read/ReadVariableOpReadVariableOpiigfihrkup/kernel*"
_output_shapes
:*
dtype0
v
iigfihrkup/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameiigfihrkup/bias
o
#iigfihrkup/bias/Read/ReadVariableOpReadVariableOpiigfihrkup/bias*
_output_shapes
:*
dtype0
~
iktogmlrmp/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_nameiktogmlrmp/kernel
w
%iktogmlrmp/kernel/Read/ReadVariableOpReadVariableOpiktogmlrmp/kernel*
_output_shapes

: *
dtype0
v
iktogmlrmp/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameiktogmlrmp/bias
o
#iktogmlrmp/bias/Read/ReadVariableOpReadVariableOpiktogmlrmp/bias*
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
omilqdycns/ddlymsxapn/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*-
shared_nameomilqdycns/ddlymsxapn/kernel
О
0omilqdycns/ddlymsxapn/kernel/Read/ReadVariableOpReadVariableOpomilqdycns/ddlymsxapn/kernel*
_output_shapes
:	А*
dtype0
й
&omilqdycns/ddlymsxapn/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&omilqdycns/ddlymsxapn/recurrent_kernel
в
:omilqdycns/ddlymsxapn/recurrent_kernel/Read/ReadVariableOpReadVariableOp&omilqdycns/ddlymsxapn/recurrent_kernel*
_output_shapes
:	 А*
dtype0
Н
omilqdycns/ddlymsxapn/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameomilqdycns/ddlymsxapn/bias
Ж
.omilqdycns/ddlymsxapn/bias/Read/ReadVariableOpReadVariableOpomilqdycns/ddlymsxapn/bias*
_output_shapes	
:А*
dtype0
║
1omilqdycns/ddlymsxapn/input_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31omilqdycns/ddlymsxapn/input_gate_peephole_weights
│
Eomilqdycns/ddlymsxapn/input_gate_peephole_weights/Read/ReadVariableOpReadVariableOp1omilqdycns/ddlymsxapn/input_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2omilqdycns/ddlymsxapn/forget_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42omilqdycns/ddlymsxapn/forget_gate_peephole_weights
╡
Fomilqdycns/ddlymsxapn/forget_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2omilqdycns/ddlymsxapn/forget_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2omilqdycns/ddlymsxapn/output_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42omilqdycns/ddlymsxapn/output_gate_peephole_weights
╡
Fomilqdycns/ddlymsxapn/output_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2omilqdycns/ddlymsxapn/output_gate_peephole_weights*
_output_shapes
: *
dtype0
Х
vlxoswgdqw/vdaevhnmja/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*-
shared_namevlxoswgdqw/vdaevhnmja/kernel
О
0vlxoswgdqw/vdaevhnmja/kernel/Read/ReadVariableOpReadVariableOpvlxoswgdqw/vdaevhnmja/kernel*
_output_shapes
:	 А*
dtype0
й
&vlxoswgdqw/vdaevhnmja/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&vlxoswgdqw/vdaevhnmja/recurrent_kernel
в
:vlxoswgdqw/vdaevhnmja/recurrent_kernel/Read/ReadVariableOpReadVariableOp&vlxoswgdqw/vdaevhnmja/recurrent_kernel*
_output_shapes
:	 А*
dtype0
Н
vlxoswgdqw/vdaevhnmja/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namevlxoswgdqw/vdaevhnmja/bias
Ж
.vlxoswgdqw/vdaevhnmja/bias/Read/ReadVariableOpReadVariableOpvlxoswgdqw/vdaevhnmja/bias*
_output_shapes	
:А*
dtype0
║
1vlxoswgdqw/vdaevhnmja/input_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights
│
Evlxoswgdqw/vdaevhnmja/input_gate_peephole_weights/Read/ReadVariableOpReadVariableOp1vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights
╡
Fvlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2vlxoswgdqw/vdaevhnmja/output_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights
╡
Fvlxoswgdqw/vdaevhnmja/output_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights*
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
RMSprop/iigfihrkup/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/iigfihrkup/kernel/rms
У
1RMSprop/iigfihrkup/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/iigfihrkup/kernel/rms*"
_output_shapes
:*
dtype0
О
RMSprop/iigfihrkup/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/iigfihrkup/bias/rms
З
/RMSprop/iigfihrkup/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/iigfihrkup/bias/rms*
_output_shapes
:*
dtype0
Ц
RMSprop/iktogmlrmp/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *.
shared_nameRMSprop/iktogmlrmp/kernel/rms
П
1RMSprop/iktogmlrmp/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/iktogmlrmp/kernel/rms*
_output_shapes

: *
dtype0
О
RMSprop/iktogmlrmp/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/iktogmlrmp/bias/rms
З
/RMSprop/iktogmlrmp/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/iktogmlrmp/bias/rms*
_output_shapes
:*
dtype0
н
(RMSprop/omilqdycns/ddlymsxapn/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*9
shared_name*(RMSprop/omilqdycns/ddlymsxapn/kernel/rms
ж
<RMSprop/omilqdycns/ddlymsxapn/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/omilqdycns/ddlymsxapn/kernel/rms*
_output_shapes
:	А*
dtype0
┴
2RMSprop/omilqdycns/ddlymsxapn/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*C
shared_name42RMSprop/omilqdycns/ddlymsxapn/recurrent_kernel/rms
║
FRMSprop/omilqdycns/ddlymsxapn/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp2RMSprop/omilqdycns/ddlymsxapn/recurrent_kernel/rms*
_output_shapes
:	 А*
dtype0
е
&RMSprop/omilqdycns/ddlymsxapn/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&RMSprop/omilqdycns/ddlymsxapn/bias/rms
Ю
:RMSprop/omilqdycns/ddlymsxapn/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/omilqdycns/ddlymsxapn/bias/rms*
_output_shapes	
:А*
dtype0
╥
=RMSprop/omilqdycns/ddlymsxapn/input_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=RMSprop/omilqdycns/ddlymsxapn/input_gate_peephole_weights/rms
╦
QRMSprop/omilqdycns/ddlymsxapn/input_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp=RMSprop/omilqdycns/ddlymsxapn/input_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/omilqdycns/ddlymsxapn/forget_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/omilqdycns/ddlymsxapn/forget_gate_peephole_weights/rms
═
RRMSprop/omilqdycns/ddlymsxapn/forget_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/omilqdycns/ddlymsxapn/forget_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/omilqdycns/ddlymsxapn/output_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/omilqdycns/ddlymsxapn/output_gate_peephole_weights/rms
═
RRMSprop/omilqdycns/ddlymsxapn/output_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/omilqdycns/ddlymsxapn/output_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
н
(RMSprop/vlxoswgdqw/vdaevhnmja/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*9
shared_name*(RMSprop/vlxoswgdqw/vdaevhnmja/kernel/rms
ж
<RMSprop/vlxoswgdqw/vdaevhnmja/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/vlxoswgdqw/vdaevhnmja/kernel/rms*
_output_shapes
:	 А*
dtype0
┴
2RMSprop/vlxoswgdqw/vdaevhnmja/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*C
shared_name42RMSprop/vlxoswgdqw/vdaevhnmja/recurrent_kernel/rms
║
FRMSprop/vlxoswgdqw/vdaevhnmja/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp2RMSprop/vlxoswgdqw/vdaevhnmja/recurrent_kernel/rms*
_output_shapes
:	 А*
dtype0
е
&RMSprop/vlxoswgdqw/vdaevhnmja/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&RMSprop/vlxoswgdqw/vdaevhnmja/bias/rms
Ю
:RMSprop/vlxoswgdqw/vdaevhnmja/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/vlxoswgdqw/vdaevhnmja/bias/rms*
_output_shapes	
:А*
dtype0
╥
=RMSprop/vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=RMSprop/vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights/rms
╦
QRMSprop/vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp=RMSprop/vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights/rms
═
RRMSprop/vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights/rms
═
RRMSprop/vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights/rms*
_output_shapes
: *
dtype0

NoOpNoOp
ВB
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╜A
value│AB░A BйA
Ъ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
 trainable_variables
!	keras_api
h

"kernel
#bias
$	variables
%regularization_losses
&trainable_variables
'	keras_api
ё
(iter
	)decay
*learning_rate
+momentum
,rho	rmsr	rmss	"rmst	#rmsu	-rmsv	.rmsw	/rmsx	0rmsy	1rmsz	2rms{	3rms|	4rms}	5rms~	6rms
7rmsА
8rmsБ
v
0
1
-2
.3
/4
05
16
27
38
49
510
611
712
813
"14
#15
 
v
0
1
-2
.3
/4
05
16
27
38
49
510
611
712
813
"14
#15
н
9metrics
	variables
:layer_regularization_losses
;layer_metrics

<layers
regularization_losses
=non_trainable_variables
	trainable_variables
 
][
VARIABLE_VALUEiigfihrkup/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEiigfihrkup/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
>metrics
	variables
?layer_regularization_losses
@layer_metrics

Alayers
regularization_losses
Bnon_trainable_variables
trainable_variables
 
 
 
н
Cmetrics
	variables
Dlayer_regularization_losses
Elayer_metrics

Flayers
regularization_losses
Gnon_trainable_variables
trainable_variables
є
H
state_size

-kernel
.recurrent_kernel
/bias
0input_gate_peephole_weights
 1forget_gate_peephole_weights
 2output_gate_peephole_weights
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
 
*
-0
.1
/2
03
14
25
 
*
-0
.1
/2
03
14
25
╣
Mmetrics
	variables

Nstates
Olayer_regularization_losses
Player_metrics

Qlayers
regularization_losses
Rnon_trainable_variables
trainable_variables
є
S
state_size

3kernel
4recurrent_kernel
5bias
6input_gate_peephole_weights
 7forget_gate_peephole_weights
 8output_gate_peephole_weights
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
 
*
30
41
52
63
74
85
 
*
30
41
52
63
74
85
╣
Xmetrics
	variables

Ystates
Zlayer_regularization_losses
[layer_metrics

\layers
regularization_losses
]non_trainable_variables
 trainable_variables
][
VARIABLE_VALUEiktogmlrmp/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEiktogmlrmp/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1
 

"0
#1
н
^metrics
$	variables
_layer_regularization_losses
`layer_metrics

alayers
%regularization_losses
bnon_trainable_variables
&trainable_variables
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
VARIABLE_VALUEomilqdycns/ddlymsxapn/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE&omilqdycns/ddlymsxapn/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEomilqdycns/ddlymsxapn/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1omilqdycns/ddlymsxapn/input_gate_peephole_weights&variables/5/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE2omilqdycns/ddlymsxapn/forget_gate_peephole_weights&variables/6/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE2omilqdycns/ddlymsxapn/output_gate_peephole_weights&variables/7/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEvlxoswgdqw/vdaevhnmja/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE&vlxoswgdqw/vdaevhnmja/recurrent_kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEvlxoswgdqw/vdaevhnmja/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE1vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights'variables/11/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE2vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights'variables/12/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE2vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights'variables/13/.ATTRIBUTES/VARIABLE_VALUE

c0
 
 
#
0
1
2
3
4
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
-0
.1
/2
03
14
25
 
*
-0
.1
/2
03
14
25
н
dmetrics
I	variables
elayer_regularization_losses
flayer_metrics

glayers
Jregularization_losses
hnon_trainable_variables
Ktrainable_variables
 
 
 
 

0
 
 
*
30
41
52
63
74
85
 
*
30
41
52
63
74
85
н
imetrics
T	variables
jlayer_regularization_losses
klayer_metrics

llayers
Uregularization_losses
mnon_trainable_variables
Vtrainable_variables
 
 
 
 

0
 
 
 
 
 
 
4
	ntotal
	ocount
p	variables
q	keras_api
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
n0
o1

p	variables
ИЕ
VARIABLE_VALUERMSprop/iigfihrkup/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/iigfihrkup/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUERMSprop/iktogmlrmp/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/iktogmlrmp/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE(RMSprop/omilqdycns/ddlymsxapn/kernel/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE2RMSprop/omilqdycns/ddlymsxapn/recurrent_kernel/rmsDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUE&RMSprop/omilqdycns/ddlymsxapn/bias/rmsDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE=RMSprop/omilqdycns/ddlymsxapn/input_gate_peephole_weights/rmsDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE>RMSprop/omilqdycns/ddlymsxapn/forget_gate_peephole_weights/rmsDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE>RMSprop/omilqdycns/ddlymsxapn/output_gate_peephole_weights/rmsDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE(RMSprop/vlxoswgdqw/vdaevhnmja/kernel/rmsDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE2RMSprop/vlxoswgdqw/vdaevhnmja/recurrent_kernel/rmsDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE&RMSprop/vlxoswgdqw/vdaevhnmja/bias/rmsEvariables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE=RMSprop/vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights/rmsEvariables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE>RMSprop/vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights/rmsEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE>RMSprop/vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights/rmsEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Н
serving_default_ahzwxypkrhPlaceholder*/
_output_shapes
:         *
dtype0*$
shape:         
Ъ
StatefulPartitionedCallStatefulPartitionedCallserving_default_ahzwxypkrhiigfihrkup/kerneliigfihrkup/biasomilqdycns/ddlymsxapn/kernel&omilqdycns/ddlymsxapn/recurrent_kernelomilqdycns/ddlymsxapn/bias1omilqdycns/ddlymsxapn/input_gate_peephole_weights2omilqdycns/ddlymsxapn/forget_gate_peephole_weights2omilqdycns/ddlymsxapn/output_gate_peephole_weightsvlxoswgdqw/vdaevhnmja/kernel&vlxoswgdqw/vdaevhnmja/recurrent_kernelvlxoswgdqw/vdaevhnmja/bias1vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights2vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights2vlxoswgdqw/vdaevhnmja/output_gate_peephole_weightsiktogmlrmp/kerneliktogmlrmp/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_223138
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ў
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%iigfihrkup/kernel/Read/ReadVariableOp#iigfihrkup/bias/Read/ReadVariableOp%iktogmlrmp/kernel/Read/ReadVariableOp#iktogmlrmp/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp0omilqdycns/ddlymsxapn/kernel/Read/ReadVariableOp:omilqdycns/ddlymsxapn/recurrent_kernel/Read/ReadVariableOp.omilqdycns/ddlymsxapn/bias/Read/ReadVariableOpEomilqdycns/ddlymsxapn/input_gate_peephole_weights/Read/ReadVariableOpFomilqdycns/ddlymsxapn/forget_gate_peephole_weights/Read/ReadVariableOpFomilqdycns/ddlymsxapn/output_gate_peephole_weights/Read/ReadVariableOp0vlxoswgdqw/vdaevhnmja/kernel/Read/ReadVariableOp:vlxoswgdqw/vdaevhnmja/recurrent_kernel/Read/ReadVariableOp.vlxoswgdqw/vdaevhnmja/bias/Read/ReadVariableOpEvlxoswgdqw/vdaevhnmja/input_gate_peephole_weights/Read/ReadVariableOpFvlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights/Read/ReadVariableOpFvlxoswgdqw/vdaevhnmja/output_gate_peephole_weights/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp1RMSprop/iigfihrkup/kernel/rms/Read/ReadVariableOp/RMSprop/iigfihrkup/bias/rms/Read/ReadVariableOp1RMSprop/iktogmlrmp/kernel/rms/Read/ReadVariableOp/RMSprop/iktogmlrmp/bias/rms/Read/ReadVariableOp<RMSprop/omilqdycns/ddlymsxapn/kernel/rms/Read/ReadVariableOpFRMSprop/omilqdycns/ddlymsxapn/recurrent_kernel/rms/Read/ReadVariableOp:RMSprop/omilqdycns/ddlymsxapn/bias/rms/Read/ReadVariableOpQRMSprop/omilqdycns/ddlymsxapn/input_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/omilqdycns/ddlymsxapn/forget_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/omilqdycns/ddlymsxapn/output_gate_peephole_weights/rms/Read/ReadVariableOp<RMSprop/vlxoswgdqw/vdaevhnmja/kernel/rms/Read/ReadVariableOpFRMSprop/vlxoswgdqw/vdaevhnmja/recurrent_kernel/rms/Read/ReadVariableOp:RMSprop/vlxoswgdqw/vdaevhnmja/bias/rms/Read/ReadVariableOpQRMSprop/vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights/rms/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_226087
х
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameiigfihrkup/kerneliigfihrkup/biasiktogmlrmp/kerneliktogmlrmp/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhoomilqdycns/ddlymsxapn/kernel&omilqdycns/ddlymsxapn/recurrent_kernelomilqdycns/ddlymsxapn/bias1omilqdycns/ddlymsxapn/input_gate_peephole_weights2omilqdycns/ddlymsxapn/forget_gate_peephole_weights2omilqdycns/ddlymsxapn/output_gate_peephole_weightsvlxoswgdqw/vdaevhnmja/kernel&vlxoswgdqw/vdaevhnmja/recurrent_kernelvlxoswgdqw/vdaevhnmja/bias1vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights2vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights2vlxoswgdqw/vdaevhnmja/output_gate_peephole_weightstotalcountRMSprop/iigfihrkup/kernel/rmsRMSprop/iigfihrkup/bias/rmsRMSprop/iktogmlrmp/kernel/rmsRMSprop/iktogmlrmp/bias/rms(RMSprop/omilqdycns/ddlymsxapn/kernel/rms2RMSprop/omilqdycns/ddlymsxapn/recurrent_kernel/rms&RMSprop/omilqdycns/ddlymsxapn/bias/rms=RMSprop/omilqdycns/ddlymsxapn/input_gate_peephole_weights/rms>RMSprop/omilqdycns/ddlymsxapn/forget_gate_peephole_weights/rms>RMSprop/omilqdycns/ddlymsxapn/output_gate_peephole_weights/rms(RMSprop/vlxoswgdqw/vdaevhnmja/kernel/rms2RMSprop/vlxoswgdqw/vdaevhnmja/recurrent_kernel/rms&RMSprop/vlxoswgdqw/vdaevhnmja/bias/rms=RMSprop/vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights/rms>RMSprop/vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights/rms>RMSprop/vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights/rms*3
Tin,
*2(*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_226214е█-
гh
Д
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_222614

inputs<
)vdaevhnmja_matmul_readvariableop_resource:	 А>
+vdaevhnmja_matmul_1_readvariableop_resource:	 А9
*vdaevhnmja_biasadd_readvariableop_resource:	А0
"vdaevhnmja_readvariableop_resource: 2
$vdaevhnmja_readvariableop_1_resource: 2
$vdaevhnmja_readvariableop_2_resource: 
identityИв!vdaevhnmja/BiasAdd/ReadVariableOpв vdaevhnmja/MatMul/ReadVariableOpв"vdaevhnmja/MatMul_1/ReadVariableOpвvdaevhnmja/ReadVariableOpвvdaevhnmja/ReadVariableOp_1вvdaevhnmja/ReadVariableOp_2вwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
:          2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_2п
 vdaevhnmja/MatMul/ReadVariableOpReadVariableOp)vdaevhnmja_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 vdaevhnmja/MatMul/ReadVariableOpз
vdaevhnmja/MatMulMatMulstrided_slice_2:output:0(vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul╡
"vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp+vdaevhnmja_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"vdaevhnmja/MatMul_1/ReadVariableOpг
vdaevhnmja/MatMul_1MatMulzeros:output:0*vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul_1Ш
vdaevhnmja/addAddV2vdaevhnmja/MatMul:product:0vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/addо
!vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp*vdaevhnmja_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!vdaevhnmja/BiasAdd/ReadVariableOpе
vdaevhnmja/BiasAddBiasAddvdaevhnmja/add:z:0)vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/BiasAddz
vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
vdaevhnmja/split/split_dimы
vdaevhnmja/splitSplit#vdaevhnmja/split/split_dim:output:0vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
vdaevhnmja/splitХ
vdaevhnmja/ReadVariableOpReadVariableOp"vdaevhnmja_readvariableop_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOpО
vdaevhnmja/mulMul!vdaevhnmja/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mulО
vdaevhnmja/add_1AddV2vdaevhnmja/split:output:0vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_1{
vdaevhnmja/SigmoidSigmoidvdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/SigmoidЫ
vdaevhnmja/ReadVariableOp_1ReadVariableOp$vdaevhnmja_readvariableop_1_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_1Ф
vdaevhnmja/mul_1Mul#vdaevhnmja/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_1Р
vdaevhnmja/add_2AddV2vdaevhnmja/split:output:1vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_2
vdaevhnmja/Sigmoid_1Sigmoidvdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_1Й
vdaevhnmja/mul_2Mulvdaevhnmja/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_2w
vdaevhnmja/TanhTanhvdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
vdaevhnmja/TanhК
vdaevhnmja/mul_3Mulvdaevhnmja/Sigmoid:y:0vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_3Л
vdaevhnmja/add_3AddV2vdaevhnmja/mul_2:z:0vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_3Ы
vdaevhnmja/ReadVariableOp_2ReadVariableOp$vdaevhnmja_readvariableop_2_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_2Ш
vdaevhnmja/mul_4Mul#vdaevhnmja/ReadVariableOp_2:value:0vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_4Р
vdaevhnmja/add_4AddV2vdaevhnmja/split:output:3vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_4
vdaevhnmja/Sigmoid_2Sigmoidvdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_2v
vdaevhnmja/Tanh_1Tanhvdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Tanh_1О
vdaevhnmja/mul_5Mulvdaevhnmja/Sigmoid_2:y:0vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)vdaevhnmja_matmul_readvariableop_resource+vdaevhnmja_matmul_1_readvariableop_resource*vdaevhnmja_biasadd_readvariableop_resource"vdaevhnmja_readvariableop_resource$vdaevhnmja_readvariableop_1_resource$vdaevhnmja_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_222513*
condR
while_cond_222512*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
transpose_1╕
IdentityIdentitystrided_slice_3:output:0"^vdaevhnmja/BiasAdd/ReadVariableOp!^vdaevhnmja/MatMul/ReadVariableOp#^vdaevhnmja/MatMul_1/ReadVariableOp^vdaevhnmja/ReadVariableOp^vdaevhnmja/ReadVariableOp_1^vdaevhnmja/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!vdaevhnmja/BiasAdd/ReadVariableOp!vdaevhnmja/BiasAdd/ReadVariableOp2D
 vdaevhnmja/MatMul/ReadVariableOp vdaevhnmja/MatMul/ReadVariableOp2H
"vdaevhnmja/MatMul_1/ReadVariableOp"vdaevhnmja/MatMul_1/ReadVariableOp26
vdaevhnmja/ReadVariableOpvdaevhnmja/ReadVariableOp2:
vdaevhnmja/ReadVariableOp_1vdaevhnmja/ReadVariableOp_12:
vdaevhnmja/ReadVariableOp_2vdaevhnmja/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
Шp
╔
omilqdycns_while_body_2237372
.omilqdycns_while_omilqdycns_while_loop_counter8
4omilqdycns_while_omilqdycns_while_maximum_iterations 
omilqdycns_while_placeholder"
omilqdycns_while_placeholder_1"
omilqdycns_while_placeholder_2"
omilqdycns_while_placeholder_31
-omilqdycns_while_omilqdycns_strided_slice_1_0m
iomilqdycns_while_tensorarrayv2read_tensorlistgetitem_omilqdycns_tensorarrayunstack_tensorlistfromtensor_0O
<omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource_0:	АQ
>omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource_0:	 АL
=omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource_0:	АC
5omilqdycns_while_ddlymsxapn_readvariableop_resource_0: E
7omilqdycns_while_ddlymsxapn_readvariableop_1_resource_0: E
7omilqdycns_while_ddlymsxapn_readvariableop_2_resource_0: 
omilqdycns_while_identity
omilqdycns_while_identity_1
omilqdycns_while_identity_2
omilqdycns_while_identity_3
omilqdycns_while_identity_4
omilqdycns_while_identity_5/
+omilqdycns_while_omilqdycns_strided_slice_1k
gomilqdycns_while_tensorarrayv2read_tensorlistgetitem_omilqdycns_tensorarrayunstack_tensorlistfromtensorM
:omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource:	АO
<omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource:	 АJ
;omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource:	АA
3omilqdycns_while_ddlymsxapn_readvariableop_resource: C
5omilqdycns_while_ddlymsxapn_readvariableop_1_resource: C
5omilqdycns_while_ddlymsxapn_readvariableop_2_resource: Ив2omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOpв1omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOpв3omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOpв*omilqdycns/while/ddlymsxapn/ReadVariableOpв,omilqdycns/while/ddlymsxapn/ReadVariableOp_1в,omilqdycns/while/ddlymsxapn/ReadVariableOp_2┘
Bomilqdycns/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2D
Bomilqdycns/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4omilqdycns/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemiomilqdycns_while_tensorarrayv2read_tensorlistgetitem_omilqdycns_tensorarrayunstack_tensorlistfromtensor_0omilqdycns_while_placeholderKomilqdycns/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype026
4omilqdycns/while/TensorArrayV2Read/TensorListGetItemф
1omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOpReadVariableOp<omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype023
1omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp¤
"omilqdycns/while/ddlymsxapn/MatMulMatMul;omilqdycns/while/TensorArrayV2Read/TensorListGetItem:item:09omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"omilqdycns/while/ddlymsxapn/MatMulъ
3omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp>omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOpц
$omilqdycns/while/ddlymsxapn/MatMul_1MatMulomilqdycns_while_placeholder_2;omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$omilqdycns/while/ddlymsxapn/MatMul_1▄
omilqdycns/while/ddlymsxapn/addAddV2,omilqdycns/while/ddlymsxapn/MatMul:product:0.omilqdycns/while/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
omilqdycns/while/ddlymsxapn/addу
2omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp=omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOpщ
#omilqdycns/while/ddlymsxapn/BiasAddBiasAdd#omilqdycns/while/ddlymsxapn/add:z:0:omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#omilqdycns/while/ddlymsxapn/BiasAddЬ
+omilqdycns/while/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+omilqdycns/while/ddlymsxapn/split/split_dimп
!omilqdycns/while/ddlymsxapn/splitSplit4omilqdycns/while/ddlymsxapn/split/split_dim:output:0,omilqdycns/while/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!omilqdycns/while/ddlymsxapn/split╩
*omilqdycns/while/ddlymsxapn/ReadVariableOpReadVariableOp5omilqdycns_while_ddlymsxapn_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*omilqdycns/while/ddlymsxapn/ReadVariableOp╧
omilqdycns/while/ddlymsxapn/mulMul2omilqdycns/while/ddlymsxapn/ReadVariableOp:value:0omilqdycns_while_placeholder_3*
T0*'
_output_shapes
:          2!
omilqdycns/while/ddlymsxapn/mul╥
!omilqdycns/while/ddlymsxapn/add_1AddV2*omilqdycns/while/ddlymsxapn/split:output:0#omilqdycns/while/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/add_1о
#omilqdycns/while/ddlymsxapn/SigmoidSigmoid%omilqdycns/while/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2%
#omilqdycns/while/ddlymsxapn/Sigmoid╨
,omilqdycns/while/ddlymsxapn/ReadVariableOp_1ReadVariableOp7omilqdycns_while_ddlymsxapn_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,omilqdycns/while/ddlymsxapn/ReadVariableOp_1╒
!omilqdycns/while/ddlymsxapn/mul_1Mul4omilqdycns/while/ddlymsxapn/ReadVariableOp_1:value:0omilqdycns_while_placeholder_3*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/mul_1╘
!omilqdycns/while/ddlymsxapn/add_2AddV2*omilqdycns/while/ddlymsxapn/split:output:1%omilqdycns/while/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/add_2▓
%omilqdycns/while/ddlymsxapn/Sigmoid_1Sigmoid%omilqdycns/while/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2'
%omilqdycns/while/ddlymsxapn/Sigmoid_1╩
!omilqdycns/while/ddlymsxapn/mul_2Mul)omilqdycns/while/ddlymsxapn/Sigmoid_1:y:0omilqdycns_while_placeholder_3*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/mul_2к
 omilqdycns/while/ddlymsxapn/TanhTanh*omilqdycns/while/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2"
 omilqdycns/while/ddlymsxapn/Tanh╬
!omilqdycns/while/ddlymsxapn/mul_3Mul'omilqdycns/while/ddlymsxapn/Sigmoid:y:0$omilqdycns/while/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/mul_3╧
!omilqdycns/while/ddlymsxapn/add_3AddV2%omilqdycns/while/ddlymsxapn/mul_2:z:0%omilqdycns/while/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/add_3╨
,omilqdycns/while/ddlymsxapn/ReadVariableOp_2ReadVariableOp7omilqdycns_while_ddlymsxapn_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,omilqdycns/while/ddlymsxapn/ReadVariableOp_2▄
!omilqdycns/while/ddlymsxapn/mul_4Mul4omilqdycns/while/ddlymsxapn/ReadVariableOp_2:value:0%omilqdycns/while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/mul_4╘
!omilqdycns/while/ddlymsxapn/add_4AddV2*omilqdycns/while/ddlymsxapn/split:output:3%omilqdycns/while/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/add_4▓
%omilqdycns/while/ddlymsxapn/Sigmoid_2Sigmoid%omilqdycns/while/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2'
%omilqdycns/while/ddlymsxapn/Sigmoid_2й
"omilqdycns/while/ddlymsxapn/Tanh_1Tanh%omilqdycns/while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2$
"omilqdycns/while/ddlymsxapn/Tanh_1╥
!omilqdycns/while/ddlymsxapn/mul_5Mul)omilqdycns/while/ddlymsxapn/Sigmoid_2:y:0&omilqdycns/while/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/mul_5Х
5omilqdycns/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemomilqdycns_while_placeholder_1omilqdycns_while_placeholder%omilqdycns/while/ddlymsxapn/mul_5:z:0*
_output_shapes
: *
element_dtype027
5omilqdycns/while/TensorArrayV2Write/TensorListSetItemr
omilqdycns/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
omilqdycns/while/add/yХ
omilqdycns/while/addAddV2omilqdycns_while_placeholderomilqdycns/while/add/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/while/addv
omilqdycns/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
omilqdycns/while/add_1/yн
omilqdycns/while/add_1AddV2.omilqdycns_while_omilqdycns_while_loop_counter!omilqdycns/while/add_1/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/while/add_1й
omilqdycns/while/IdentityIdentityomilqdycns/while/add_1:z:03^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
omilqdycns/while/Identity╟
omilqdycns/while/Identity_1Identity4omilqdycns_while_omilqdycns_while_maximum_iterations3^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
omilqdycns/while/Identity_1л
omilqdycns/while/Identity_2Identityomilqdycns/while/add:z:03^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
omilqdycns/while/Identity_2╪
omilqdycns/while/Identity_3IdentityEomilqdycns/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
omilqdycns/while/Identity_3╔
omilqdycns/while/Identity_4Identity%omilqdycns/while/ddlymsxapn/mul_5:z:03^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
omilqdycns/while/Identity_4╔
omilqdycns/while/Identity_5Identity%omilqdycns/while/ddlymsxapn/add_3:z:03^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
omilqdycns/while/Identity_5"|
;omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource=omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource_0"~
<omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource>omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource_0"z
:omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource<omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource_0"p
5omilqdycns_while_ddlymsxapn_readvariableop_1_resource7omilqdycns_while_ddlymsxapn_readvariableop_1_resource_0"p
5omilqdycns_while_ddlymsxapn_readvariableop_2_resource7omilqdycns_while_ddlymsxapn_readvariableop_2_resource_0"l
3omilqdycns_while_ddlymsxapn_readvariableop_resource5omilqdycns_while_ddlymsxapn_readvariableop_resource_0"?
omilqdycns_while_identity"omilqdycns/while/Identity:output:0"C
omilqdycns_while_identity_1$omilqdycns/while/Identity_1:output:0"C
omilqdycns_while_identity_2$omilqdycns/while/Identity_2:output:0"C
omilqdycns_while_identity_3$omilqdycns/while/Identity_3:output:0"C
omilqdycns_while_identity_4$omilqdycns/while/Identity_4:output:0"C
omilqdycns_while_identity_5$omilqdycns/while/Identity_5:output:0"\
+omilqdycns_while_omilqdycns_strided_slice_1-omilqdycns_while_omilqdycns_strided_slice_1_0"╘
gomilqdycns_while_tensorarrayv2read_tensorlistgetitem_omilqdycns_tensorarrayunstack_tensorlistfromtensoriomilqdycns_while_tensorarrayv2read_tensorlistgetitem_omilqdycns_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2f
1omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp1omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp2j
3omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp3omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp2X
*omilqdycns/while/ddlymsxapn/ReadVariableOp*omilqdycns/while/ddlymsxapn/ReadVariableOp2\
,omilqdycns/while/ddlymsxapn/ReadVariableOp_1,omilqdycns/while/ddlymsxapn/ReadVariableOp_12\
,omilqdycns/while/ddlymsxapn/ReadVariableOp_2,omilqdycns/while/ddlymsxapn/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
▀Y
Ж
while_body_222045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_ddlymsxapn_matmul_readvariableop_resource_0:	АF
3while_ddlymsxapn_matmul_1_readvariableop_resource_0:	 АA
2while_ddlymsxapn_biasadd_readvariableop_resource_0:	А8
*while_ddlymsxapn_readvariableop_resource_0: :
,while_ddlymsxapn_readvariableop_1_resource_0: :
,while_ddlymsxapn_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_ddlymsxapn_matmul_readvariableop_resource:	АD
1while_ddlymsxapn_matmul_1_readvariableop_resource:	 А?
0while_ddlymsxapn_biasadd_readvariableop_resource:	А6
(while_ddlymsxapn_readvariableop_resource: 8
*while_ddlymsxapn_readvariableop_1_resource: 8
*while_ddlymsxapn_readvariableop_2_resource: Ив'while/ddlymsxapn/BiasAdd/ReadVariableOpв&while/ddlymsxapn/MatMul/ReadVariableOpв(while/ddlymsxapn/MatMul_1/ReadVariableOpвwhile/ddlymsxapn/ReadVariableOpв!while/ddlymsxapn/ReadVariableOp_1в!while/ddlymsxapn/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/ddlymsxapn/MatMul/ReadVariableOpReadVariableOp1while_ddlymsxapn_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/ddlymsxapn/MatMul/ReadVariableOp╤
while/ddlymsxapn/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul╔
(while/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp3while_ddlymsxapn_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/ddlymsxapn/MatMul_1/ReadVariableOp║
while/ddlymsxapn/MatMul_1MatMulwhile_placeholder_20while/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul_1░
while/ddlymsxapn/addAddV2!while/ddlymsxapn/MatMul:product:0#while/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/add┬
'while/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp2while_ddlymsxapn_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/ddlymsxapn/BiasAdd/ReadVariableOp╜
while/ddlymsxapn/BiasAddBiasAddwhile/ddlymsxapn/add:z:0/while/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/BiasAddЖ
 while/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/ddlymsxapn/split/split_dimГ
while/ddlymsxapn/splitSplit)while/ddlymsxapn/split/split_dim:output:0!while/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/ddlymsxapn/splitй
while/ddlymsxapn/ReadVariableOpReadVariableOp*while_ddlymsxapn_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/ddlymsxapn/ReadVariableOpг
while/ddlymsxapn/mulMul'while/ddlymsxapn/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mulж
while/ddlymsxapn/add_1AddV2while/ddlymsxapn/split:output:0while/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_1Н
while/ddlymsxapn/SigmoidSigmoidwhile/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoidп
!while/ddlymsxapn/ReadVariableOp_1ReadVariableOp,while_ddlymsxapn_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_1й
while/ddlymsxapn/mul_1Mul)while/ddlymsxapn/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_1и
while/ddlymsxapn/add_2AddV2while/ddlymsxapn/split:output:1while/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_2С
while/ddlymsxapn/Sigmoid_1Sigmoidwhile/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_1Ю
while/ddlymsxapn/mul_2Mulwhile/ddlymsxapn/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_2Й
while/ddlymsxapn/TanhTanhwhile/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanhв
while/ddlymsxapn/mul_3Mulwhile/ddlymsxapn/Sigmoid:y:0while/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_3г
while/ddlymsxapn/add_3AddV2while/ddlymsxapn/mul_2:z:0while/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_3п
!while/ddlymsxapn/ReadVariableOp_2ReadVariableOp,while_ddlymsxapn_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_2░
while/ddlymsxapn/mul_4Mul)while/ddlymsxapn/ReadVariableOp_2:value:0while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_4и
while/ddlymsxapn/add_4AddV2while/ddlymsxapn/split:output:3while/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_4С
while/ddlymsxapn/Sigmoid_2Sigmoidwhile/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_2И
while/ddlymsxapn/Tanh_1Tanhwhile/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanh_1ж
while/ddlymsxapn/mul_5Mulwhile/ddlymsxapn/Sigmoid_2:y:0while/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ddlymsxapn/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/ddlymsxapn/mul_5:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/ddlymsxapn/add_3:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_ddlymsxapn_biasadd_readvariableop_resource2while_ddlymsxapn_biasadd_readvariableop_resource_0"h
1while_ddlymsxapn_matmul_1_readvariableop_resource3while_ddlymsxapn_matmul_1_readvariableop_resource_0"d
/while_ddlymsxapn_matmul_readvariableop_resource1while_ddlymsxapn_matmul_readvariableop_resource_0"Z
*while_ddlymsxapn_readvariableop_1_resource,while_ddlymsxapn_readvariableop_1_resource_0"Z
*while_ddlymsxapn_readvariableop_2_resource,while_ddlymsxapn_readvariableop_2_resource_0"V
(while_ddlymsxapn_readvariableop_resource*while_ddlymsxapn_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/ddlymsxapn/BiasAdd/ReadVariableOp'while/ddlymsxapn/BiasAdd/ReadVariableOp2P
&while/ddlymsxapn/MatMul/ReadVariableOp&while/ddlymsxapn/MatMul/ReadVariableOp2T
(while/ddlymsxapn/MatMul_1/ReadVariableOp(while/ddlymsxapn/MatMul_1/ReadVariableOp2B
while/ddlymsxapn/ReadVariableOpwhile/ddlymsxapn/ReadVariableOp2F
!while/ddlymsxapn/ReadVariableOp_1!while/ddlymsxapn/ReadVariableOp_12F
!while/ddlymsxapn/ReadVariableOp_2!while/ddlymsxapn/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
щ
Е
+__inference_vlxoswgdqw_layer_call_fn_224906
inputs_0
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_2215942
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
Юh
Д
F__inference_omilqdycns_layer_call_and_return_conditional_losses_222828

inputs<
)ddlymsxapn_matmul_readvariableop_resource:	А>
+ddlymsxapn_matmul_1_readvariableop_resource:	 А9
*ddlymsxapn_biasadd_readvariableop_resource:	А0
"ddlymsxapn_readvariableop_resource: 2
$ddlymsxapn_readvariableop_1_resource: 2
$ddlymsxapn_readvariableop_2_resource: 
identityИв!ddlymsxapn/BiasAdd/ReadVariableOpв ddlymsxapn/MatMul/ReadVariableOpв"ddlymsxapn/MatMul_1/ReadVariableOpвddlymsxapn/ReadVariableOpвddlymsxapn/ReadVariableOp_1вddlymsxapn/ReadVariableOp_2вwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
:         2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2п
 ddlymsxapn/MatMul/ReadVariableOpReadVariableOp)ddlymsxapn_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 ddlymsxapn/MatMul/ReadVariableOpз
ddlymsxapn/MatMulMatMulstrided_slice_2:output:0(ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul╡
"ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp+ddlymsxapn_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"ddlymsxapn/MatMul_1/ReadVariableOpг
ddlymsxapn/MatMul_1MatMulzeros:output:0*ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul_1Ш
ddlymsxapn/addAddV2ddlymsxapn/MatMul:product:0ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/addо
!ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp*ddlymsxapn_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!ddlymsxapn/BiasAdd/ReadVariableOpе
ddlymsxapn/BiasAddBiasAddddlymsxapn/add:z:0)ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/BiasAddz
ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
ddlymsxapn/split/split_dimы
ddlymsxapn/splitSplit#ddlymsxapn/split/split_dim:output:0ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
ddlymsxapn/splitХ
ddlymsxapn/ReadVariableOpReadVariableOp"ddlymsxapn_readvariableop_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOpО
ddlymsxapn/mulMul!ddlymsxapn/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mulО
ddlymsxapn/add_1AddV2ddlymsxapn/split:output:0ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_1{
ddlymsxapn/SigmoidSigmoidddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/SigmoidЫ
ddlymsxapn/ReadVariableOp_1ReadVariableOp$ddlymsxapn_readvariableop_1_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_1Ф
ddlymsxapn/mul_1Mul#ddlymsxapn/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_1Р
ddlymsxapn/add_2AddV2ddlymsxapn/split:output:1ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_2
ddlymsxapn/Sigmoid_1Sigmoidddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_1Й
ddlymsxapn/mul_2Mulddlymsxapn/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_2w
ddlymsxapn/TanhTanhddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
ddlymsxapn/TanhК
ddlymsxapn/mul_3Mulddlymsxapn/Sigmoid:y:0ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_3Л
ddlymsxapn/add_3AddV2ddlymsxapn/mul_2:z:0ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_3Ы
ddlymsxapn/ReadVariableOp_2ReadVariableOp$ddlymsxapn_readvariableop_2_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_2Ш
ddlymsxapn/mul_4Mul#ddlymsxapn/ReadVariableOp_2:value:0ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_4Р
ddlymsxapn/add_4AddV2ddlymsxapn/split:output:3ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_4
ddlymsxapn/Sigmoid_2Sigmoidddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_2v
ddlymsxapn/Tanh_1Tanhddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Tanh_1О
ddlymsxapn/mul_5Mulddlymsxapn/Sigmoid_2:y:0ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)ddlymsxapn_matmul_readvariableop_resource+ddlymsxapn_matmul_1_readvariableop_resource*ddlymsxapn_biasadd_readvariableop_resource"ddlymsxapn_readvariableop_resource$ddlymsxapn_readvariableop_1_resource$ddlymsxapn_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_222727*
condR
while_cond_222726*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
transpose_1│
IdentityIdentitytranspose_1:y:0"^ddlymsxapn/BiasAdd/ReadVariableOp!^ddlymsxapn/MatMul/ReadVariableOp#^ddlymsxapn/MatMul_1/ReadVariableOp^ddlymsxapn/ReadVariableOp^ddlymsxapn/ReadVariableOp_1^ddlymsxapn/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!ddlymsxapn/BiasAdd/ReadVariableOp!ddlymsxapn/BiasAdd/ReadVariableOp2D
 ddlymsxapn/MatMul/ReadVariableOp ddlymsxapn/MatMul/ReadVariableOp2H
"ddlymsxapn/MatMul_1/ReadVariableOp"ddlymsxapn/MatMul_1/ReadVariableOp26
ddlymsxapn/ReadVariableOpddlymsxapn/ReadVariableOp2:
ddlymsxapn/ReadVariableOp_1ddlymsxapn/ReadVariableOp_12:
ddlymsxapn/ReadVariableOp_2ddlymsxapn/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╕'
┤
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_225769

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

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpвReadVariableOpвReadVariableOp_1вReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
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
:          2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:          2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:          2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:          2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:          2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:          2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:          2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:          2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          2
mul_5▀
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identityу

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_1у

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:         :          :          : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
Щ
b
F__inference_xfbsciqeco_layer_call_and_return_conditional_losses_221965

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
strided_slice/stack_2т
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
Reshape/shape/2а
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Г

х
while_cond_220492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_220492___redundant_placeholder04
0while_while_cond_220492___redundant_placeholder14
0while_while_cond_220492___redundant_placeholder24
0while_while_cond_220492___redundant_placeholder34
0while_while_cond_220492___redundant_placeholder44
0while_while_cond_220492___redundant_placeholder54
0while_while_cond_220492___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
╤
Г
+__inference_vlxoswgdqw_layer_call_fn_224940

inputs
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_2226142
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
╟)
┼
while_body_221514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_vdaevhnmja_221538_0:	 А,
while_vdaevhnmja_221540_0:	 А(
while_vdaevhnmja_221542_0:	А'
while_vdaevhnmja_221544_0: '
while_vdaevhnmja_221546_0: '
while_vdaevhnmja_221548_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_vdaevhnmja_221538:	 А*
while_vdaevhnmja_221540:	 А&
while_vdaevhnmja_221542:	А%
while_vdaevhnmja_221544: %
while_vdaevhnmja_221546: %
while_vdaevhnmja_221548: Ив(while/vdaevhnmja/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemп
(while/vdaevhnmja/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_vdaevhnmja_221538_0while_vdaevhnmja_221540_0while_vdaevhnmja_221542_0while_vdaevhnmja_221544_0while_vdaevhnmja_221546_0while_vdaevhnmja_221548_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_2214182*
(while/vdaevhnmja/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/vdaevhnmja/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/vdaevhnmja/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/vdaevhnmja/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/vdaevhnmja/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/vdaevhnmja/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/vdaevhnmja/StatefulPartitionedCall:output:1)^while/vdaevhnmja/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/vdaevhnmja/StatefulPartitionedCall:output:2)^while/vdaevhnmja/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"4
while_vdaevhnmja_221538while_vdaevhnmja_221538_0"4
while_vdaevhnmja_221540while_vdaevhnmja_221540_0"4
while_vdaevhnmja_221542while_vdaevhnmja_221542_0"4
while_vdaevhnmja_221544while_vdaevhnmja_221544_0"4
while_vdaevhnmja_221546while_vdaevhnmja_221546_0"4
while_vdaevhnmja_221548while_vdaevhnmja_221548_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2T
(while/vdaevhnmja/StatefulPartitionedCall(while/vdaevhnmja/StatefulPartitionedCall: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
оК
╓
!__inference__wrapped_model_220386

ahzwxypkrhW
Asequential_iigfihrkup_conv1d_expanddims_1_readvariableop_resource:V
Hsequential_iigfihrkup_squeeze_batch_dims_biasadd_readvariableop_resource:R
?sequential_omilqdycns_ddlymsxapn_matmul_readvariableop_resource:	АT
Asequential_omilqdycns_ddlymsxapn_matmul_1_readvariableop_resource:	 АO
@sequential_omilqdycns_ddlymsxapn_biasadd_readvariableop_resource:	АF
8sequential_omilqdycns_ddlymsxapn_readvariableop_resource: H
:sequential_omilqdycns_ddlymsxapn_readvariableop_1_resource: H
:sequential_omilqdycns_ddlymsxapn_readvariableop_2_resource: R
?sequential_vlxoswgdqw_vdaevhnmja_matmul_readvariableop_resource:	 АT
Asequential_vlxoswgdqw_vdaevhnmja_matmul_1_readvariableop_resource:	 АO
@sequential_vlxoswgdqw_vdaevhnmja_biasadd_readvariableop_resource:	АF
8sequential_vlxoswgdqw_vdaevhnmja_readvariableop_resource: H
:sequential_vlxoswgdqw_vdaevhnmja_readvariableop_1_resource: H
:sequential_vlxoswgdqw_vdaevhnmja_readvariableop_2_resource: F
4sequential_iktogmlrmp_matmul_readvariableop_resource: C
5sequential_iktogmlrmp_biasadd_readvariableop_resource:
identityИв8sequential/iigfihrkup/conv1d/ExpandDims_1/ReadVariableOpв?sequential/iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOpв,sequential/iktogmlrmp/BiasAdd/ReadVariableOpв+sequential/iktogmlrmp/MatMul/ReadVariableOpв7sequential/omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOpв6sequential/omilqdycns/ddlymsxapn/MatMul/ReadVariableOpв8sequential/omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOpв/sequential/omilqdycns/ddlymsxapn/ReadVariableOpв1sequential/omilqdycns/ddlymsxapn/ReadVariableOp_1в1sequential/omilqdycns/ddlymsxapn/ReadVariableOp_2вsequential/omilqdycns/whileв7sequential/vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOpв6sequential/vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOpв8sequential/vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOpв/sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOpв1sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_1в1sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_2вsequential/vlxoswgdqw/whileе
+sequential/iigfihrkup/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2-
+sequential/iigfihrkup/conv1d/ExpandDims/dimр
'sequential/iigfihrkup/conv1d/ExpandDims
ExpandDims
ahzwxypkrh4sequential/iigfihrkup/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:         2)
'sequential/iigfihrkup/conv1d/ExpandDims·
8sequential/iigfihrkup/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_iigfihrkup_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02:
8sequential/iigfihrkup/conv1d/ExpandDims_1/ReadVariableOpа
-sequential/iigfihrkup/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential/iigfihrkup/conv1d/ExpandDims_1/dimП
)sequential/iigfihrkup/conv1d/ExpandDims_1
ExpandDims@sequential/iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential/iigfihrkup/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2+
)sequential/iigfihrkup/conv1d/ExpandDims_1и
"sequential/iigfihrkup/conv1d/ShapeShape0sequential/iigfihrkup/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2$
"sequential/iigfihrkup/conv1d/Shapeо
0sequential/iigfihrkup/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential/iigfihrkup/conv1d/strided_slice/stack╗
2sequential/iigfihrkup/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¤        24
2sequential/iigfihrkup/conv1d/strided_slice/stack_1▓
2sequential/iigfihrkup/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/iigfihrkup/conv1d/strided_slice/stack_2О
*sequential/iigfihrkup/conv1d/strided_sliceStridedSlice+sequential/iigfihrkup/conv1d/Shape:output:09sequential/iigfihrkup/conv1d/strided_slice/stack:output:0;sequential/iigfihrkup/conv1d/strided_slice/stack_1:output:0;sequential/iigfihrkup/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2,
*sequential/iigfihrkup/conv1d/strided_slice▒
*sequential/iigfihrkup/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*sequential/iigfihrkup/conv1d/Reshape/shape°
$sequential/iigfihrkup/conv1d/ReshapeReshape0sequential/iigfihrkup/conv1d/ExpandDims:output:03sequential/iigfihrkup/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:         2&
$sequential/iigfihrkup/conv1d/ReshapeЪ
#sequential/iigfihrkup/conv1d/Conv2DConv2D-sequential/iigfihrkup/conv1d/Reshape:output:02sequential/iigfihrkup/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2%
#sequential/iigfihrkup/conv1d/Conv2D▒
,sequential/iigfihrkup/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2.
,sequential/iigfihrkup/conv1d/concat/values_1Я
(sequential/iigfihrkup/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2*
(sequential/iigfihrkup/conv1d/concat/axisг
#sequential/iigfihrkup/conv1d/concatConcatV23sequential/iigfihrkup/conv1d/strided_slice:output:05sequential/iigfihrkup/conv1d/concat/values_1:output:01sequential/iigfihrkup/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/iigfihrkup/conv1d/concatї
&sequential/iigfihrkup/conv1d/Reshape_1Reshape,sequential/iigfihrkup/conv1d/Conv2D:output:0,sequential/iigfihrkup/conv1d/concat:output:0*
T0*3
_output_shapes!
:         2(
&sequential/iigfihrkup/conv1d/Reshape_1т
$sequential/iigfihrkup/conv1d/SqueezeSqueeze/sequential/iigfihrkup/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:         *
squeeze_dims

¤        2&
$sequential/iigfihrkup/conv1d/Squeeze╜
.sequential/iigfihrkup/squeeze_batch_dims/ShapeShape-sequential/iigfihrkup/conv1d/Squeeze:output:0*
T0*
_output_shapes
:20
.sequential/iigfihrkup/squeeze_batch_dims/Shape╞
<sequential/iigfihrkup/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential/iigfihrkup/squeeze_batch_dims/strided_slice/stack╙
>sequential/iigfihrkup/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        2@
>sequential/iigfihrkup/squeeze_batch_dims/strided_slice/stack_1╩
>sequential/iigfihrkup/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential/iigfihrkup/squeeze_batch_dims/strided_slice/stack_2╓
6sequential/iigfihrkup/squeeze_batch_dims/strided_sliceStridedSlice7sequential/iigfihrkup/squeeze_batch_dims/Shape:output:0Esequential/iigfihrkup/squeeze_batch_dims/strided_slice/stack:output:0Gsequential/iigfihrkup/squeeze_batch_dims/strided_slice/stack_1:output:0Gsequential/iigfihrkup/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask28
6sequential/iigfihrkup/squeeze_batch_dims/strided_slice┼
6sequential/iigfihrkup/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          28
6sequential/iigfihrkup/squeeze_batch_dims/Reshape/shapeХ
0sequential/iigfihrkup/squeeze_batch_dims/ReshapeReshape-sequential/iigfihrkup/conv1d/Squeeze:output:0?sequential/iigfihrkup/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:         22
0sequential/iigfihrkup/squeeze_batch_dims/ReshapeЗ
?sequential/iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOpHsequential_iigfihrkup_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02A
?sequential/iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOpй
0sequential/iigfihrkup/squeeze_batch_dims/BiasAddBiasAdd9sequential/iigfihrkup/squeeze_batch_dims/Reshape:output:0Gsequential/iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         22
0sequential/iigfihrkup/squeeze_batch_dims/BiasAdd┼
8sequential/iigfihrkup/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential/iigfihrkup/squeeze_batch_dims/concat/values_1╖
4sequential/iigfihrkup/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         26
4sequential/iigfihrkup/squeeze_batch_dims/concat/axis▀
/sequential/iigfihrkup/squeeze_batch_dims/concatConcatV2?sequential/iigfihrkup/squeeze_batch_dims/strided_slice:output:0Asequential/iigfihrkup/squeeze_batch_dims/concat/values_1:output:0=sequential/iigfihrkup/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:21
/sequential/iigfihrkup/squeeze_batch_dims/concatв
2sequential/iigfihrkup/squeeze_batch_dims/Reshape_1Reshape9sequential/iigfihrkup/squeeze_batch_dims/BiasAdd:output:08sequential/iigfihrkup/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:         24
2sequential/iigfihrkup/squeeze_batch_dims/Reshape_1е
sequential/xfbsciqeco/ShapeShape;sequential/iigfihrkup/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
sequential/xfbsciqeco/Shapeа
)sequential/xfbsciqeco/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/xfbsciqeco/strided_slice/stackд
+sequential/xfbsciqeco/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/xfbsciqeco/strided_slice/stack_1д
+sequential/xfbsciqeco/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/xfbsciqeco/strided_slice/stack_2ц
#sequential/xfbsciqeco/strided_sliceStridedSlice$sequential/xfbsciqeco/Shape:output:02sequential/xfbsciqeco/strided_slice/stack:output:04sequential/xfbsciqeco/strided_slice/stack_1:output:04sequential/xfbsciqeco/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/xfbsciqeco/strided_sliceР
%sequential/xfbsciqeco/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/xfbsciqeco/Reshape/shape/1Р
%sequential/xfbsciqeco/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/xfbsciqeco/Reshape/shape/2О
#sequential/xfbsciqeco/Reshape/shapePack,sequential/xfbsciqeco/strided_slice:output:0.sequential/xfbsciqeco/Reshape/shape/1:output:0.sequential/xfbsciqeco/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2%
#sequential/xfbsciqeco/Reshape/shapeъ
sequential/xfbsciqeco/ReshapeReshape;sequential/iigfihrkup/squeeze_batch_dims/Reshape_1:output:0,sequential/xfbsciqeco/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
sequential/xfbsciqeco/ReshapeР
sequential/omilqdycns/ShapeShape&sequential/xfbsciqeco/Reshape:output:0*
T0*
_output_shapes
:2
sequential/omilqdycns/Shapeа
)sequential/omilqdycns/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/omilqdycns/strided_slice/stackд
+sequential/omilqdycns/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/omilqdycns/strided_slice/stack_1д
+sequential/omilqdycns/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/omilqdycns/strided_slice/stack_2ц
#sequential/omilqdycns/strided_sliceStridedSlice$sequential/omilqdycns/Shape:output:02sequential/omilqdycns/strided_slice/stack:output:04sequential/omilqdycns/strided_slice/stack_1:output:04sequential/omilqdycns/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/omilqdycns/strided_sliceИ
!sequential/omilqdycns/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential/omilqdycns/zeros/mul/y─
sequential/omilqdycns/zeros/mulMul,sequential/omilqdycns/strided_slice:output:0*sequential/omilqdycns/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/omilqdycns/zeros/mulЛ
"sequential/omilqdycns/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential/omilqdycns/zeros/Less/y┐
 sequential/omilqdycns/zeros/LessLess#sequential/omilqdycns/zeros/mul:z:0+sequential/omilqdycns/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/omilqdycns/zeros/LessО
$sequential/omilqdycns/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential/omilqdycns/zeros/packed/1█
"sequential/omilqdycns/zeros/packedPack,sequential/omilqdycns/strided_slice:output:0-sequential/omilqdycns/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/omilqdycns/zeros/packedЛ
!sequential/omilqdycns/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/omilqdycns/zeros/Const═
sequential/omilqdycns/zerosFill+sequential/omilqdycns/zeros/packed:output:0*sequential/omilqdycns/zeros/Const:output:0*
T0*'
_output_shapes
:          2
sequential/omilqdycns/zerosМ
#sequential/omilqdycns/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential/omilqdycns/zeros_1/mul/y╩
!sequential/omilqdycns/zeros_1/mulMul,sequential/omilqdycns/strided_slice:output:0,sequential/omilqdycns/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/omilqdycns/zeros_1/mulП
$sequential/omilqdycns/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2&
$sequential/omilqdycns/zeros_1/Less/y╟
"sequential/omilqdycns/zeros_1/LessLess%sequential/omilqdycns/zeros_1/mul:z:0-sequential/omilqdycns/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/omilqdycns/zeros_1/LessТ
&sequential/omilqdycns/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/omilqdycns/zeros_1/packed/1с
$sequential/omilqdycns/zeros_1/packedPack,sequential/omilqdycns/strided_slice:output:0/sequential/omilqdycns/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/omilqdycns/zeros_1/packedП
#sequential/omilqdycns/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/omilqdycns/zeros_1/Const╒
sequential/omilqdycns/zeros_1Fill-sequential/omilqdycns/zeros_1/packed:output:0,sequential/omilqdycns/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
sequential/omilqdycns/zeros_1б
$sequential/omilqdycns/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/omilqdycns/transpose/perm▄
sequential/omilqdycns/transpose	Transpose&sequential/xfbsciqeco/Reshape:output:0-sequential/omilqdycns/transpose/perm:output:0*
T0*+
_output_shapes
:         2!
sequential/omilqdycns/transposeС
sequential/omilqdycns/Shape_1Shape#sequential/omilqdycns/transpose:y:0*
T0*
_output_shapes
:2
sequential/omilqdycns/Shape_1д
+sequential/omilqdycns/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/omilqdycns/strided_slice_1/stackи
-sequential/omilqdycns/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/omilqdycns/strided_slice_1/stack_1и
-sequential/omilqdycns/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/omilqdycns/strided_slice_1/stack_2Є
%sequential/omilqdycns/strided_slice_1StridedSlice&sequential/omilqdycns/Shape_1:output:04sequential/omilqdycns/strided_slice_1/stack:output:06sequential/omilqdycns/strided_slice_1/stack_1:output:06sequential/omilqdycns/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/omilqdycns/strided_slice_1▒
1sequential/omilqdycns/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         23
1sequential/omilqdycns/TensorArrayV2/element_shapeК
#sequential/omilqdycns/TensorArrayV2TensorListReserve:sequential/omilqdycns/TensorArrayV2/element_shape:output:0.sequential/omilqdycns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/omilqdycns/TensorArrayV2ы
Ksequential/omilqdycns/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2M
Ksequential/omilqdycns/TensorArrayUnstack/TensorListFromTensor/element_shape╨
=sequential/omilqdycns/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/omilqdycns/transpose:y:0Tsequential/omilqdycns/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/omilqdycns/TensorArrayUnstack/TensorListFromTensorд
+sequential/omilqdycns/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/omilqdycns/strided_slice_2/stackи
-sequential/omilqdycns/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/omilqdycns/strided_slice_2/stack_1и
-sequential/omilqdycns/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/omilqdycns/strided_slice_2/stack_2А
%sequential/omilqdycns/strided_slice_2StridedSlice#sequential/omilqdycns/transpose:y:04sequential/omilqdycns/strided_slice_2/stack:output:06sequential/omilqdycns/strided_slice_2/stack_1:output:06sequential/omilqdycns/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2'
%sequential/omilqdycns/strided_slice_2ё
6sequential/omilqdycns/ddlymsxapn/MatMul/ReadVariableOpReadVariableOp?sequential_omilqdycns_ddlymsxapn_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype028
6sequential/omilqdycns/ddlymsxapn/MatMul/ReadVariableOp 
'sequential/omilqdycns/ddlymsxapn/MatMulMatMul.sequential/omilqdycns/strided_slice_2:output:0>sequential/omilqdycns/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2)
'sequential/omilqdycns/ddlymsxapn/MatMulў
8sequential/omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOpAsequential_omilqdycns_ddlymsxapn_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02:
8sequential/omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp√
)sequential/omilqdycns/ddlymsxapn/MatMul_1MatMul$sequential/omilqdycns/zeros:output:0@sequential/omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2+
)sequential/omilqdycns/ddlymsxapn/MatMul_1Ё
$sequential/omilqdycns/ddlymsxapn/addAddV21sequential/omilqdycns/ddlymsxapn/MatMul:product:03sequential/omilqdycns/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2&
$sequential/omilqdycns/ddlymsxapn/addЁ
7sequential/omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp@sequential_omilqdycns_ddlymsxapn_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential/omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp¤
(sequential/omilqdycns/ddlymsxapn/BiasAddBiasAdd(sequential/omilqdycns/ddlymsxapn/add:z:0?sequential/omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2*
(sequential/omilqdycns/ddlymsxapn/BiasAddж
0sequential/omilqdycns/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential/omilqdycns/ddlymsxapn/split/split_dim├
&sequential/omilqdycns/ddlymsxapn/splitSplit9sequential/omilqdycns/ddlymsxapn/split/split_dim:output:01sequential/omilqdycns/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2(
&sequential/omilqdycns/ddlymsxapn/split╫
/sequential/omilqdycns/ddlymsxapn/ReadVariableOpReadVariableOp8sequential_omilqdycns_ddlymsxapn_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential/omilqdycns/ddlymsxapn/ReadVariableOpц
$sequential/omilqdycns/ddlymsxapn/mulMul7sequential/omilqdycns/ddlymsxapn/ReadVariableOp:value:0&sequential/omilqdycns/zeros_1:output:0*
T0*'
_output_shapes
:          2&
$sequential/omilqdycns/ddlymsxapn/mulц
&sequential/omilqdycns/ddlymsxapn/add_1AddV2/sequential/omilqdycns/ddlymsxapn/split:output:0(sequential/omilqdycns/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2(
&sequential/omilqdycns/ddlymsxapn/add_1╜
(sequential/omilqdycns/ddlymsxapn/SigmoidSigmoid*sequential/omilqdycns/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2*
(sequential/omilqdycns/ddlymsxapn/Sigmoid▌
1sequential/omilqdycns/ddlymsxapn/ReadVariableOp_1ReadVariableOp:sequential_omilqdycns_ddlymsxapn_readvariableop_1_resource*
_output_shapes
: *
dtype023
1sequential/omilqdycns/ddlymsxapn/ReadVariableOp_1ь
&sequential/omilqdycns/ddlymsxapn/mul_1Mul9sequential/omilqdycns/ddlymsxapn/ReadVariableOp_1:value:0&sequential/omilqdycns/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/omilqdycns/ddlymsxapn/mul_1ш
&sequential/omilqdycns/ddlymsxapn/add_2AddV2/sequential/omilqdycns/ddlymsxapn/split:output:1*sequential/omilqdycns/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2(
&sequential/omilqdycns/ddlymsxapn/add_2┴
*sequential/omilqdycns/ddlymsxapn/Sigmoid_1Sigmoid*sequential/omilqdycns/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2,
*sequential/omilqdycns/ddlymsxapn/Sigmoid_1с
&sequential/omilqdycns/ddlymsxapn/mul_2Mul.sequential/omilqdycns/ddlymsxapn/Sigmoid_1:y:0&sequential/omilqdycns/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/omilqdycns/ddlymsxapn/mul_2╣
%sequential/omilqdycns/ddlymsxapn/TanhTanh/sequential/omilqdycns/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2'
%sequential/omilqdycns/ddlymsxapn/Tanhт
&sequential/omilqdycns/ddlymsxapn/mul_3Mul,sequential/omilqdycns/ddlymsxapn/Sigmoid:y:0)sequential/omilqdycns/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2(
&sequential/omilqdycns/ddlymsxapn/mul_3у
&sequential/omilqdycns/ddlymsxapn/add_3AddV2*sequential/omilqdycns/ddlymsxapn/mul_2:z:0*sequential/omilqdycns/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/omilqdycns/ddlymsxapn/add_3▌
1sequential/omilqdycns/ddlymsxapn/ReadVariableOp_2ReadVariableOp:sequential_omilqdycns_ddlymsxapn_readvariableop_2_resource*
_output_shapes
: *
dtype023
1sequential/omilqdycns/ddlymsxapn/ReadVariableOp_2Ё
&sequential/omilqdycns/ddlymsxapn/mul_4Mul9sequential/omilqdycns/ddlymsxapn/ReadVariableOp_2:value:0*sequential/omilqdycns/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/omilqdycns/ddlymsxapn/mul_4ш
&sequential/omilqdycns/ddlymsxapn/add_4AddV2/sequential/omilqdycns/ddlymsxapn/split:output:3*sequential/omilqdycns/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2(
&sequential/omilqdycns/ddlymsxapn/add_4┴
*sequential/omilqdycns/ddlymsxapn/Sigmoid_2Sigmoid*sequential/omilqdycns/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2,
*sequential/omilqdycns/ddlymsxapn/Sigmoid_2╕
'sequential/omilqdycns/ddlymsxapn/Tanh_1Tanh*sequential/omilqdycns/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2)
'sequential/omilqdycns/ddlymsxapn/Tanh_1ц
&sequential/omilqdycns/ddlymsxapn/mul_5Mul.sequential/omilqdycns/ddlymsxapn/Sigmoid_2:y:0+sequential/omilqdycns/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2(
&sequential/omilqdycns/ddlymsxapn/mul_5╗
3sequential/omilqdycns/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential/omilqdycns/TensorArrayV2_1/element_shapeР
%sequential/omilqdycns/TensorArrayV2_1TensorListReserve<sequential/omilqdycns/TensorArrayV2_1/element_shape:output:0.sequential/omilqdycns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/omilqdycns/TensorArrayV2_1z
sequential/omilqdycns/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/omilqdycns/timeл
.sequential/omilqdycns/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         20
.sequential/omilqdycns/while/maximum_iterationsЦ
(sequential/omilqdycns/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/omilqdycns/while/loop_counterЎ	
sequential/omilqdycns/whileWhile1sequential/omilqdycns/while/loop_counter:output:07sequential/omilqdycns/while/maximum_iterations:output:0#sequential/omilqdycns/time:output:0.sequential/omilqdycns/TensorArrayV2_1:handle:0$sequential/omilqdycns/zeros:output:0&sequential/omilqdycns/zeros_1:output:0.sequential/omilqdycns/strided_slice_1:output:0Msequential/omilqdycns/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_omilqdycns_ddlymsxapn_matmul_readvariableop_resourceAsequential_omilqdycns_ddlymsxapn_matmul_1_readvariableop_resource@sequential_omilqdycns_ddlymsxapn_biasadd_readvariableop_resource8sequential_omilqdycns_ddlymsxapn_readvariableop_resource:sequential_omilqdycns_ddlymsxapn_readvariableop_1_resource:sequential_omilqdycns_ddlymsxapn_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*3
body+R)
'sequential_omilqdycns_while_body_220103*3
cond+R)
'sequential_omilqdycns_while_cond_220102*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
sequential/omilqdycns/whileс
Fsequential/omilqdycns/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential/omilqdycns/TensorArrayV2Stack/TensorListStack/element_shape└
8sequential/omilqdycns/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/omilqdycns/while:output:3Osequential/omilqdycns/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02:
8sequential/omilqdycns/TensorArrayV2Stack/TensorListStackн
+sequential/omilqdycns/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2-
+sequential/omilqdycns/strided_slice_3/stackи
-sequential/omilqdycns/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/omilqdycns/strided_slice_3/stack_1и
-sequential/omilqdycns/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/omilqdycns/strided_slice_3/stack_2Ю
%sequential/omilqdycns/strided_slice_3StridedSliceAsequential/omilqdycns/TensorArrayV2Stack/TensorListStack:tensor:04sequential/omilqdycns/strided_slice_3/stack:output:06sequential/omilqdycns/strided_slice_3/stack_1:output:06sequential/omilqdycns/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2'
%sequential/omilqdycns/strided_slice_3е
&sequential/omilqdycns/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/omilqdycns/transpose_1/perm¤
!sequential/omilqdycns/transpose_1	TransposeAsequential/omilqdycns/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/omilqdycns/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2#
!sequential/omilqdycns/transpose_1П
sequential/vlxoswgdqw/ShapeShape%sequential/omilqdycns/transpose_1:y:0*
T0*
_output_shapes
:2
sequential/vlxoswgdqw/Shapeа
)sequential/vlxoswgdqw/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/vlxoswgdqw/strided_slice/stackд
+sequential/vlxoswgdqw/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/vlxoswgdqw/strided_slice/stack_1д
+sequential/vlxoswgdqw/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/vlxoswgdqw/strided_slice/stack_2ц
#sequential/vlxoswgdqw/strided_sliceStridedSlice$sequential/vlxoswgdqw/Shape:output:02sequential/vlxoswgdqw/strided_slice/stack:output:04sequential/vlxoswgdqw/strided_slice/stack_1:output:04sequential/vlxoswgdqw/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/vlxoswgdqw/strided_sliceИ
!sequential/vlxoswgdqw/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential/vlxoswgdqw/zeros/mul/y─
sequential/vlxoswgdqw/zeros/mulMul,sequential/vlxoswgdqw/strided_slice:output:0*sequential/vlxoswgdqw/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/vlxoswgdqw/zeros/mulЛ
"sequential/vlxoswgdqw/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential/vlxoswgdqw/zeros/Less/y┐
 sequential/vlxoswgdqw/zeros/LessLess#sequential/vlxoswgdqw/zeros/mul:z:0+sequential/vlxoswgdqw/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/vlxoswgdqw/zeros/LessО
$sequential/vlxoswgdqw/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential/vlxoswgdqw/zeros/packed/1█
"sequential/vlxoswgdqw/zeros/packedPack,sequential/vlxoswgdqw/strided_slice:output:0-sequential/vlxoswgdqw/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/vlxoswgdqw/zeros/packedЛ
!sequential/vlxoswgdqw/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/vlxoswgdqw/zeros/Const═
sequential/vlxoswgdqw/zerosFill+sequential/vlxoswgdqw/zeros/packed:output:0*sequential/vlxoswgdqw/zeros/Const:output:0*
T0*'
_output_shapes
:          2
sequential/vlxoswgdqw/zerosМ
#sequential/vlxoswgdqw/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential/vlxoswgdqw/zeros_1/mul/y╩
!sequential/vlxoswgdqw/zeros_1/mulMul,sequential/vlxoswgdqw/strided_slice:output:0,sequential/vlxoswgdqw/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/vlxoswgdqw/zeros_1/mulП
$sequential/vlxoswgdqw/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2&
$sequential/vlxoswgdqw/zeros_1/Less/y╟
"sequential/vlxoswgdqw/zeros_1/LessLess%sequential/vlxoswgdqw/zeros_1/mul:z:0-sequential/vlxoswgdqw/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/vlxoswgdqw/zeros_1/LessТ
&sequential/vlxoswgdqw/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/vlxoswgdqw/zeros_1/packed/1с
$sequential/vlxoswgdqw/zeros_1/packedPack,sequential/vlxoswgdqw/strided_slice:output:0/sequential/vlxoswgdqw/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/vlxoswgdqw/zeros_1/packedП
#sequential/vlxoswgdqw/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/vlxoswgdqw/zeros_1/Const╒
sequential/vlxoswgdqw/zeros_1Fill-sequential/vlxoswgdqw/zeros_1/packed:output:0,sequential/vlxoswgdqw/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
sequential/vlxoswgdqw/zeros_1б
$sequential/vlxoswgdqw/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/vlxoswgdqw/transpose/perm█
sequential/vlxoswgdqw/transpose	Transpose%sequential/omilqdycns/transpose_1:y:0-sequential/vlxoswgdqw/transpose/perm:output:0*
T0*+
_output_shapes
:          2!
sequential/vlxoswgdqw/transposeС
sequential/vlxoswgdqw/Shape_1Shape#sequential/vlxoswgdqw/transpose:y:0*
T0*
_output_shapes
:2
sequential/vlxoswgdqw/Shape_1д
+sequential/vlxoswgdqw/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/vlxoswgdqw/strided_slice_1/stackи
-sequential/vlxoswgdqw/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/vlxoswgdqw/strided_slice_1/stack_1и
-sequential/vlxoswgdqw/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/vlxoswgdqw/strided_slice_1/stack_2Є
%sequential/vlxoswgdqw/strided_slice_1StridedSlice&sequential/vlxoswgdqw/Shape_1:output:04sequential/vlxoswgdqw/strided_slice_1/stack:output:06sequential/vlxoswgdqw/strided_slice_1/stack_1:output:06sequential/vlxoswgdqw/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/vlxoswgdqw/strided_slice_1▒
1sequential/vlxoswgdqw/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         23
1sequential/vlxoswgdqw/TensorArrayV2/element_shapeК
#sequential/vlxoswgdqw/TensorArrayV2TensorListReserve:sequential/vlxoswgdqw/TensorArrayV2/element_shape:output:0.sequential/vlxoswgdqw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/vlxoswgdqw/TensorArrayV2ы
Ksequential/vlxoswgdqw/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2M
Ksequential/vlxoswgdqw/TensorArrayUnstack/TensorListFromTensor/element_shape╨
=sequential/vlxoswgdqw/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/vlxoswgdqw/transpose:y:0Tsequential/vlxoswgdqw/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/vlxoswgdqw/TensorArrayUnstack/TensorListFromTensorд
+sequential/vlxoswgdqw/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/vlxoswgdqw/strided_slice_2/stackи
-sequential/vlxoswgdqw/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/vlxoswgdqw/strided_slice_2/stack_1и
-sequential/vlxoswgdqw/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/vlxoswgdqw/strided_slice_2/stack_2А
%sequential/vlxoswgdqw/strided_slice_2StridedSlice#sequential/vlxoswgdqw/transpose:y:04sequential/vlxoswgdqw/strided_slice_2/stack:output:06sequential/vlxoswgdqw/strided_slice_2/stack_1:output:06sequential/vlxoswgdqw/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2'
%sequential/vlxoswgdqw/strided_slice_2ё
6sequential/vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOpReadVariableOp?sequential_vlxoswgdqw_vdaevhnmja_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype028
6sequential/vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp 
'sequential/vlxoswgdqw/vdaevhnmja/MatMulMatMul.sequential/vlxoswgdqw/strided_slice_2:output:0>sequential/vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2)
'sequential/vlxoswgdqw/vdaevhnmja/MatMulў
8sequential/vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOpAsequential_vlxoswgdqw_vdaevhnmja_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02:
8sequential/vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp√
)sequential/vlxoswgdqw/vdaevhnmja/MatMul_1MatMul$sequential/vlxoswgdqw/zeros:output:0@sequential/vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2+
)sequential/vlxoswgdqw/vdaevhnmja/MatMul_1Ё
$sequential/vlxoswgdqw/vdaevhnmja/addAddV21sequential/vlxoswgdqw/vdaevhnmja/MatMul:product:03sequential/vlxoswgdqw/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2&
$sequential/vlxoswgdqw/vdaevhnmja/addЁ
7sequential/vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp@sequential_vlxoswgdqw_vdaevhnmja_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential/vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp¤
(sequential/vlxoswgdqw/vdaevhnmja/BiasAddBiasAdd(sequential/vlxoswgdqw/vdaevhnmja/add:z:0?sequential/vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2*
(sequential/vlxoswgdqw/vdaevhnmja/BiasAddж
0sequential/vlxoswgdqw/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential/vlxoswgdqw/vdaevhnmja/split/split_dim├
&sequential/vlxoswgdqw/vdaevhnmja/splitSplit9sequential/vlxoswgdqw/vdaevhnmja/split/split_dim:output:01sequential/vlxoswgdqw/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2(
&sequential/vlxoswgdqw/vdaevhnmja/split╫
/sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOpReadVariableOp8sequential_vlxoswgdqw_vdaevhnmja_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOpц
$sequential/vlxoswgdqw/vdaevhnmja/mulMul7sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp:value:0&sequential/vlxoswgdqw/zeros_1:output:0*
T0*'
_output_shapes
:          2&
$sequential/vlxoswgdqw/vdaevhnmja/mulц
&sequential/vlxoswgdqw/vdaevhnmja/add_1AddV2/sequential/vlxoswgdqw/vdaevhnmja/split:output:0(sequential/vlxoswgdqw/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2(
&sequential/vlxoswgdqw/vdaevhnmja/add_1╜
(sequential/vlxoswgdqw/vdaevhnmja/SigmoidSigmoid*sequential/vlxoswgdqw/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2*
(sequential/vlxoswgdqw/vdaevhnmja/Sigmoid▌
1sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_1ReadVariableOp:sequential_vlxoswgdqw_vdaevhnmja_readvariableop_1_resource*
_output_shapes
: *
dtype023
1sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_1ь
&sequential/vlxoswgdqw/vdaevhnmja/mul_1Mul9sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_1:value:0&sequential/vlxoswgdqw/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/vlxoswgdqw/vdaevhnmja/mul_1ш
&sequential/vlxoswgdqw/vdaevhnmja/add_2AddV2/sequential/vlxoswgdqw/vdaevhnmja/split:output:1*sequential/vlxoswgdqw/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2(
&sequential/vlxoswgdqw/vdaevhnmja/add_2┴
*sequential/vlxoswgdqw/vdaevhnmja/Sigmoid_1Sigmoid*sequential/vlxoswgdqw/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2,
*sequential/vlxoswgdqw/vdaevhnmja/Sigmoid_1с
&sequential/vlxoswgdqw/vdaevhnmja/mul_2Mul.sequential/vlxoswgdqw/vdaevhnmja/Sigmoid_1:y:0&sequential/vlxoswgdqw/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/vlxoswgdqw/vdaevhnmja/mul_2╣
%sequential/vlxoswgdqw/vdaevhnmja/TanhTanh/sequential/vlxoswgdqw/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2'
%sequential/vlxoswgdqw/vdaevhnmja/Tanhт
&sequential/vlxoswgdqw/vdaevhnmja/mul_3Mul,sequential/vlxoswgdqw/vdaevhnmja/Sigmoid:y:0)sequential/vlxoswgdqw/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2(
&sequential/vlxoswgdqw/vdaevhnmja/mul_3у
&sequential/vlxoswgdqw/vdaevhnmja/add_3AddV2*sequential/vlxoswgdqw/vdaevhnmja/mul_2:z:0*sequential/vlxoswgdqw/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/vlxoswgdqw/vdaevhnmja/add_3▌
1sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_2ReadVariableOp:sequential_vlxoswgdqw_vdaevhnmja_readvariableop_2_resource*
_output_shapes
: *
dtype023
1sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_2Ё
&sequential/vlxoswgdqw/vdaevhnmja/mul_4Mul9sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_2:value:0*sequential/vlxoswgdqw/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/vlxoswgdqw/vdaevhnmja/mul_4ш
&sequential/vlxoswgdqw/vdaevhnmja/add_4AddV2/sequential/vlxoswgdqw/vdaevhnmja/split:output:3*sequential/vlxoswgdqw/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2(
&sequential/vlxoswgdqw/vdaevhnmja/add_4┴
*sequential/vlxoswgdqw/vdaevhnmja/Sigmoid_2Sigmoid*sequential/vlxoswgdqw/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2,
*sequential/vlxoswgdqw/vdaevhnmja/Sigmoid_2╕
'sequential/vlxoswgdqw/vdaevhnmja/Tanh_1Tanh*sequential/vlxoswgdqw/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2)
'sequential/vlxoswgdqw/vdaevhnmja/Tanh_1ц
&sequential/vlxoswgdqw/vdaevhnmja/mul_5Mul.sequential/vlxoswgdqw/vdaevhnmja/Sigmoid_2:y:0+sequential/vlxoswgdqw/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2(
&sequential/vlxoswgdqw/vdaevhnmja/mul_5╗
3sequential/vlxoswgdqw/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential/vlxoswgdqw/TensorArrayV2_1/element_shapeР
%sequential/vlxoswgdqw/TensorArrayV2_1TensorListReserve<sequential/vlxoswgdqw/TensorArrayV2_1/element_shape:output:0.sequential/vlxoswgdqw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/vlxoswgdqw/TensorArrayV2_1z
sequential/vlxoswgdqw/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/vlxoswgdqw/timeл
.sequential/vlxoswgdqw/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         20
.sequential/vlxoswgdqw/while/maximum_iterationsЦ
(sequential/vlxoswgdqw/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/vlxoswgdqw/while/loop_counterЎ	
sequential/vlxoswgdqw/whileWhile1sequential/vlxoswgdqw/while/loop_counter:output:07sequential/vlxoswgdqw/while/maximum_iterations:output:0#sequential/vlxoswgdqw/time:output:0.sequential/vlxoswgdqw/TensorArrayV2_1:handle:0$sequential/vlxoswgdqw/zeros:output:0&sequential/vlxoswgdqw/zeros_1:output:0.sequential/vlxoswgdqw/strided_slice_1:output:0Msequential/vlxoswgdqw/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_vlxoswgdqw_vdaevhnmja_matmul_readvariableop_resourceAsequential_vlxoswgdqw_vdaevhnmja_matmul_1_readvariableop_resource@sequential_vlxoswgdqw_vdaevhnmja_biasadd_readvariableop_resource8sequential_vlxoswgdqw_vdaevhnmja_readvariableop_resource:sequential_vlxoswgdqw_vdaevhnmja_readvariableop_1_resource:sequential_vlxoswgdqw_vdaevhnmja_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*3
body+R)
'sequential_vlxoswgdqw_while_body_220279*3
cond+R)
'sequential_vlxoswgdqw_while_cond_220278*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
sequential/vlxoswgdqw/whileс
Fsequential/vlxoswgdqw/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential/vlxoswgdqw/TensorArrayV2Stack/TensorListStack/element_shape└
8sequential/vlxoswgdqw/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/vlxoswgdqw/while:output:3Osequential/vlxoswgdqw/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02:
8sequential/vlxoswgdqw/TensorArrayV2Stack/TensorListStackн
+sequential/vlxoswgdqw/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2-
+sequential/vlxoswgdqw/strided_slice_3/stackи
-sequential/vlxoswgdqw/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/vlxoswgdqw/strided_slice_3/stack_1и
-sequential/vlxoswgdqw/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/vlxoswgdqw/strided_slice_3/stack_2Ю
%sequential/vlxoswgdqw/strided_slice_3StridedSliceAsequential/vlxoswgdqw/TensorArrayV2Stack/TensorListStack:tensor:04sequential/vlxoswgdqw/strided_slice_3/stack:output:06sequential/vlxoswgdqw/strided_slice_3/stack_1:output:06sequential/vlxoswgdqw/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2'
%sequential/vlxoswgdqw/strided_slice_3е
&sequential/vlxoswgdqw/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/vlxoswgdqw/transpose_1/perm¤
!sequential/vlxoswgdqw/transpose_1	TransposeAsequential/vlxoswgdqw/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/vlxoswgdqw/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2#
!sequential/vlxoswgdqw/transpose_1╧
+sequential/iktogmlrmp/MatMul/ReadVariableOpReadVariableOp4sequential_iktogmlrmp_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential/iktogmlrmp/MatMul/ReadVariableOp▌
sequential/iktogmlrmp/MatMulMatMul.sequential/vlxoswgdqw/strided_slice_3:output:03sequential/iktogmlrmp/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/iktogmlrmp/MatMul╬
,sequential/iktogmlrmp/BiasAdd/ReadVariableOpReadVariableOp5sequential_iktogmlrmp_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential/iktogmlrmp/BiasAdd/ReadVariableOp┘
sequential/iktogmlrmp/BiasAddBiasAdd&sequential/iktogmlrmp/MatMul:product:04sequential/iktogmlrmp/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/iktogmlrmp/BiasAddа
IdentityIdentity&sequential/iktogmlrmp/BiasAdd:output:09^sequential/iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp@^sequential/iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp-^sequential/iktogmlrmp/BiasAdd/ReadVariableOp,^sequential/iktogmlrmp/MatMul/ReadVariableOp8^sequential/omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp7^sequential/omilqdycns/ddlymsxapn/MatMul/ReadVariableOp9^sequential/omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp0^sequential/omilqdycns/ddlymsxapn/ReadVariableOp2^sequential/omilqdycns/ddlymsxapn/ReadVariableOp_12^sequential/omilqdycns/ddlymsxapn/ReadVariableOp_2^sequential/omilqdycns/while8^sequential/vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp7^sequential/vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp9^sequential/vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp0^sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp2^sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_12^sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_2^sequential/vlxoswgdqw/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2t
8sequential/iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp8sequential/iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp2В
?sequential/iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp?sequential/iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp2\
,sequential/iktogmlrmp/BiasAdd/ReadVariableOp,sequential/iktogmlrmp/BiasAdd/ReadVariableOp2Z
+sequential/iktogmlrmp/MatMul/ReadVariableOp+sequential/iktogmlrmp/MatMul/ReadVariableOp2r
7sequential/omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp7sequential/omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp2p
6sequential/omilqdycns/ddlymsxapn/MatMul/ReadVariableOp6sequential/omilqdycns/ddlymsxapn/MatMul/ReadVariableOp2t
8sequential/omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp8sequential/omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp2b
/sequential/omilqdycns/ddlymsxapn/ReadVariableOp/sequential/omilqdycns/ddlymsxapn/ReadVariableOp2f
1sequential/omilqdycns/ddlymsxapn/ReadVariableOp_11sequential/omilqdycns/ddlymsxapn/ReadVariableOp_12f
1sequential/omilqdycns/ddlymsxapn/ReadVariableOp_21sequential/omilqdycns/ddlymsxapn/ReadVariableOp_22:
sequential/omilqdycns/whilesequential/omilqdycns/while2r
7sequential/vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp7sequential/vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp2p
6sequential/vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp6sequential/vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp2t
8sequential/vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp8sequential/vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp2b
/sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp/sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp2f
1sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_11sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_12f
1sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_21sequential/vlxoswgdqw/vdaevhnmja/ReadVariableOp_22:
sequential/vlxoswgdqw/whilesequential/vlxoswgdqw/while:[ W
/
_output_shapes
:         
$
_user_specified_name
ahzwxypkrh
▌h
Ж
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224512
inputs_0<
)ddlymsxapn_matmul_readvariableop_resource:	А>
+ddlymsxapn_matmul_1_readvariableop_resource:	 А9
*ddlymsxapn_biasadd_readvariableop_resource:	А0
"ddlymsxapn_readvariableop_resource: 2
$ddlymsxapn_readvariableop_1_resource: 2
$ddlymsxapn_readvariableop_2_resource: 
identityИв!ddlymsxapn/BiasAdd/ReadVariableOpв ddlymsxapn/MatMul/ReadVariableOpв"ddlymsxapn/MatMul_1/ReadVariableOpвddlymsxapn/ReadVariableOpвddlymsxapn/ReadVariableOp_1вddlymsxapn/ReadVariableOp_2вwhileF
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
 :                  2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2п
 ddlymsxapn/MatMul/ReadVariableOpReadVariableOp)ddlymsxapn_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 ddlymsxapn/MatMul/ReadVariableOpз
ddlymsxapn/MatMulMatMulstrided_slice_2:output:0(ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul╡
"ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp+ddlymsxapn_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"ddlymsxapn/MatMul_1/ReadVariableOpг
ddlymsxapn/MatMul_1MatMulzeros:output:0*ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul_1Ш
ddlymsxapn/addAddV2ddlymsxapn/MatMul:product:0ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/addо
!ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp*ddlymsxapn_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!ddlymsxapn/BiasAdd/ReadVariableOpе
ddlymsxapn/BiasAddBiasAddddlymsxapn/add:z:0)ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/BiasAddz
ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
ddlymsxapn/split/split_dimы
ddlymsxapn/splitSplit#ddlymsxapn/split/split_dim:output:0ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
ddlymsxapn/splitХ
ddlymsxapn/ReadVariableOpReadVariableOp"ddlymsxapn_readvariableop_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOpО
ddlymsxapn/mulMul!ddlymsxapn/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mulО
ddlymsxapn/add_1AddV2ddlymsxapn/split:output:0ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_1{
ddlymsxapn/SigmoidSigmoidddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/SigmoidЫ
ddlymsxapn/ReadVariableOp_1ReadVariableOp$ddlymsxapn_readvariableop_1_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_1Ф
ddlymsxapn/mul_1Mul#ddlymsxapn/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_1Р
ddlymsxapn/add_2AddV2ddlymsxapn/split:output:1ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_2
ddlymsxapn/Sigmoid_1Sigmoidddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_1Й
ddlymsxapn/mul_2Mulddlymsxapn/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_2w
ddlymsxapn/TanhTanhddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
ddlymsxapn/TanhК
ddlymsxapn/mul_3Mulddlymsxapn/Sigmoid:y:0ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_3Л
ddlymsxapn/add_3AddV2ddlymsxapn/mul_2:z:0ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_3Ы
ddlymsxapn/ReadVariableOp_2ReadVariableOp$ddlymsxapn_readvariableop_2_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_2Ш
ddlymsxapn/mul_4Mul#ddlymsxapn/ReadVariableOp_2:value:0ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_4Р
ddlymsxapn/add_4AddV2ddlymsxapn/split:output:3ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_4
ddlymsxapn/Sigmoid_2Sigmoidddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_2v
ddlymsxapn/Tanh_1Tanhddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Tanh_1О
ddlymsxapn/mul_5Mulddlymsxapn/Sigmoid_2:y:0ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)ddlymsxapn_matmul_readvariableop_resource+ddlymsxapn_matmul_1_readvariableop_resource*ddlymsxapn_biasadd_readvariableop_resource"ddlymsxapn_readvariableop_resource$ddlymsxapn_readvariableop_1_resource$ddlymsxapn_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_224411*
condR
while_cond_224410*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
transpose_1╝
IdentityIdentitytranspose_1:y:0"^ddlymsxapn/BiasAdd/ReadVariableOp!^ddlymsxapn/MatMul/ReadVariableOp#^ddlymsxapn/MatMul_1/ReadVariableOp^ddlymsxapn/ReadVariableOp^ddlymsxapn/ReadVariableOp_1^ddlymsxapn/ReadVariableOp_2^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2F
!ddlymsxapn/BiasAdd/ReadVariableOp!ddlymsxapn/BiasAdd/ReadVariableOp2D
 ddlymsxapn/MatMul/ReadVariableOp ddlymsxapn/MatMul/ReadVariableOp2H
"ddlymsxapn/MatMul_1/ReadVariableOp"ddlymsxapn/MatMul_1/ReadVariableOp26
ddlymsxapn/ReadVariableOpddlymsxapn/ReadVariableOp2:
ddlymsxapn/ReadVariableOp_1ddlymsxapn/ReadVariableOp_12:
ddlymsxapn/ReadVariableOp_2ddlymsxapn/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╥	
ў
F__inference_iktogmlrmp_layer_call_and_return_conditional_losses_225679

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
Шp
╔
omilqdycns_while_body_2233332
.omilqdycns_while_omilqdycns_while_loop_counter8
4omilqdycns_while_omilqdycns_while_maximum_iterations 
omilqdycns_while_placeholder"
omilqdycns_while_placeholder_1"
omilqdycns_while_placeholder_2"
omilqdycns_while_placeholder_31
-omilqdycns_while_omilqdycns_strided_slice_1_0m
iomilqdycns_while_tensorarrayv2read_tensorlistgetitem_omilqdycns_tensorarrayunstack_tensorlistfromtensor_0O
<omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource_0:	АQ
>omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource_0:	 АL
=omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource_0:	АC
5omilqdycns_while_ddlymsxapn_readvariableop_resource_0: E
7omilqdycns_while_ddlymsxapn_readvariableop_1_resource_0: E
7omilqdycns_while_ddlymsxapn_readvariableop_2_resource_0: 
omilqdycns_while_identity
omilqdycns_while_identity_1
omilqdycns_while_identity_2
omilqdycns_while_identity_3
omilqdycns_while_identity_4
omilqdycns_while_identity_5/
+omilqdycns_while_omilqdycns_strided_slice_1k
gomilqdycns_while_tensorarrayv2read_tensorlistgetitem_omilqdycns_tensorarrayunstack_tensorlistfromtensorM
:omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource:	АO
<omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource:	 АJ
;omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource:	АA
3omilqdycns_while_ddlymsxapn_readvariableop_resource: C
5omilqdycns_while_ddlymsxapn_readvariableop_1_resource: C
5omilqdycns_while_ddlymsxapn_readvariableop_2_resource: Ив2omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOpв1omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOpв3omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOpв*omilqdycns/while/ddlymsxapn/ReadVariableOpв,omilqdycns/while/ddlymsxapn/ReadVariableOp_1в,omilqdycns/while/ddlymsxapn/ReadVariableOp_2┘
Bomilqdycns/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2D
Bomilqdycns/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4omilqdycns/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemiomilqdycns_while_tensorarrayv2read_tensorlistgetitem_omilqdycns_tensorarrayunstack_tensorlistfromtensor_0omilqdycns_while_placeholderKomilqdycns/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype026
4omilqdycns/while/TensorArrayV2Read/TensorListGetItemф
1omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOpReadVariableOp<omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype023
1omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp¤
"omilqdycns/while/ddlymsxapn/MatMulMatMul;omilqdycns/while/TensorArrayV2Read/TensorListGetItem:item:09omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"omilqdycns/while/ddlymsxapn/MatMulъ
3omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp>omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOpц
$omilqdycns/while/ddlymsxapn/MatMul_1MatMulomilqdycns_while_placeholder_2;omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$omilqdycns/while/ddlymsxapn/MatMul_1▄
omilqdycns/while/ddlymsxapn/addAddV2,omilqdycns/while/ddlymsxapn/MatMul:product:0.omilqdycns/while/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
omilqdycns/while/ddlymsxapn/addу
2omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp=omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOpщ
#omilqdycns/while/ddlymsxapn/BiasAddBiasAdd#omilqdycns/while/ddlymsxapn/add:z:0:omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#omilqdycns/while/ddlymsxapn/BiasAddЬ
+omilqdycns/while/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+omilqdycns/while/ddlymsxapn/split/split_dimп
!omilqdycns/while/ddlymsxapn/splitSplit4omilqdycns/while/ddlymsxapn/split/split_dim:output:0,omilqdycns/while/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!omilqdycns/while/ddlymsxapn/split╩
*omilqdycns/while/ddlymsxapn/ReadVariableOpReadVariableOp5omilqdycns_while_ddlymsxapn_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*omilqdycns/while/ddlymsxapn/ReadVariableOp╧
omilqdycns/while/ddlymsxapn/mulMul2omilqdycns/while/ddlymsxapn/ReadVariableOp:value:0omilqdycns_while_placeholder_3*
T0*'
_output_shapes
:          2!
omilqdycns/while/ddlymsxapn/mul╥
!omilqdycns/while/ddlymsxapn/add_1AddV2*omilqdycns/while/ddlymsxapn/split:output:0#omilqdycns/while/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/add_1о
#omilqdycns/while/ddlymsxapn/SigmoidSigmoid%omilqdycns/while/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2%
#omilqdycns/while/ddlymsxapn/Sigmoid╨
,omilqdycns/while/ddlymsxapn/ReadVariableOp_1ReadVariableOp7omilqdycns_while_ddlymsxapn_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,omilqdycns/while/ddlymsxapn/ReadVariableOp_1╒
!omilqdycns/while/ddlymsxapn/mul_1Mul4omilqdycns/while/ddlymsxapn/ReadVariableOp_1:value:0omilqdycns_while_placeholder_3*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/mul_1╘
!omilqdycns/while/ddlymsxapn/add_2AddV2*omilqdycns/while/ddlymsxapn/split:output:1%omilqdycns/while/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/add_2▓
%omilqdycns/while/ddlymsxapn/Sigmoid_1Sigmoid%omilqdycns/while/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2'
%omilqdycns/while/ddlymsxapn/Sigmoid_1╩
!omilqdycns/while/ddlymsxapn/mul_2Mul)omilqdycns/while/ddlymsxapn/Sigmoid_1:y:0omilqdycns_while_placeholder_3*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/mul_2к
 omilqdycns/while/ddlymsxapn/TanhTanh*omilqdycns/while/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2"
 omilqdycns/while/ddlymsxapn/Tanh╬
!omilqdycns/while/ddlymsxapn/mul_3Mul'omilqdycns/while/ddlymsxapn/Sigmoid:y:0$omilqdycns/while/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/mul_3╧
!omilqdycns/while/ddlymsxapn/add_3AddV2%omilqdycns/while/ddlymsxapn/mul_2:z:0%omilqdycns/while/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/add_3╨
,omilqdycns/while/ddlymsxapn/ReadVariableOp_2ReadVariableOp7omilqdycns_while_ddlymsxapn_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,omilqdycns/while/ddlymsxapn/ReadVariableOp_2▄
!omilqdycns/while/ddlymsxapn/mul_4Mul4omilqdycns/while/ddlymsxapn/ReadVariableOp_2:value:0%omilqdycns/while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/mul_4╘
!omilqdycns/while/ddlymsxapn/add_4AddV2*omilqdycns/while/ddlymsxapn/split:output:3%omilqdycns/while/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/add_4▓
%omilqdycns/while/ddlymsxapn/Sigmoid_2Sigmoid%omilqdycns/while/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2'
%omilqdycns/while/ddlymsxapn/Sigmoid_2й
"omilqdycns/while/ddlymsxapn/Tanh_1Tanh%omilqdycns/while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2$
"omilqdycns/while/ddlymsxapn/Tanh_1╥
!omilqdycns/while/ddlymsxapn/mul_5Mul)omilqdycns/while/ddlymsxapn/Sigmoid_2:y:0&omilqdycns/while/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!omilqdycns/while/ddlymsxapn/mul_5Х
5omilqdycns/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemomilqdycns_while_placeholder_1omilqdycns_while_placeholder%omilqdycns/while/ddlymsxapn/mul_5:z:0*
_output_shapes
: *
element_dtype027
5omilqdycns/while/TensorArrayV2Write/TensorListSetItemr
omilqdycns/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
omilqdycns/while/add/yХ
omilqdycns/while/addAddV2omilqdycns_while_placeholderomilqdycns/while/add/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/while/addv
omilqdycns/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
omilqdycns/while/add_1/yн
omilqdycns/while/add_1AddV2.omilqdycns_while_omilqdycns_while_loop_counter!omilqdycns/while/add_1/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/while/add_1й
omilqdycns/while/IdentityIdentityomilqdycns/while/add_1:z:03^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
omilqdycns/while/Identity╟
omilqdycns/while/Identity_1Identity4omilqdycns_while_omilqdycns_while_maximum_iterations3^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
omilqdycns/while/Identity_1л
omilqdycns/while/Identity_2Identityomilqdycns/while/add:z:03^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
omilqdycns/while/Identity_2╪
omilqdycns/while/Identity_3IdentityEomilqdycns/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
omilqdycns/while/Identity_3╔
omilqdycns/while/Identity_4Identity%omilqdycns/while/ddlymsxapn/mul_5:z:03^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
omilqdycns/while/Identity_4╔
omilqdycns/while/Identity_5Identity%omilqdycns/while/ddlymsxapn/add_3:z:03^omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2^omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp4^omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp+^omilqdycns/while/ddlymsxapn/ReadVariableOp-^omilqdycns/while/ddlymsxapn/ReadVariableOp_1-^omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
omilqdycns/while/Identity_5"|
;omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource=omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource_0"~
<omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource>omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource_0"z
:omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource<omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource_0"p
5omilqdycns_while_ddlymsxapn_readvariableop_1_resource7omilqdycns_while_ddlymsxapn_readvariableop_1_resource_0"p
5omilqdycns_while_ddlymsxapn_readvariableop_2_resource7omilqdycns_while_ddlymsxapn_readvariableop_2_resource_0"l
3omilqdycns_while_ddlymsxapn_readvariableop_resource5omilqdycns_while_ddlymsxapn_readvariableop_resource_0"?
omilqdycns_while_identity"omilqdycns/while/Identity:output:0"C
omilqdycns_while_identity_1$omilqdycns/while/Identity_1:output:0"C
omilqdycns_while_identity_2$omilqdycns/while/Identity_2:output:0"C
omilqdycns_while_identity_3$omilqdycns/while/Identity_3:output:0"C
omilqdycns_while_identity_4$omilqdycns/while/Identity_4:output:0"C
omilqdycns_while_identity_5$omilqdycns/while/Identity_5:output:0"\
+omilqdycns_while_omilqdycns_strided_slice_1-omilqdycns_while_omilqdycns_strided_slice_1_0"╘
gomilqdycns_while_tensorarrayv2read_tensorlistgetitem_omilqdycns_tensorarrayunstack_tensorlistfromtensoriomilqdycns_while_tensorarrayv2read_tensorlistgetitem_omilqdycns_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2f
1omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp1omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp2j
3omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp3omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp2X
*omilqdycns/while/ddlymsxapn/ReadVariableOp*omilqdycns/while/ddlymsxapn/ReadVariableOp2\
,omilqdycns/while/ddlymsxapn/ReadVariableOp_1,omilqdycns/while/ddlymsxapn/ReadVariableOp_12\
,omilqdycns/while/ddlymsxapn/ReadVariableOp_2,omilqdycns/while/ddlymsxapn/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
Г	
Е
+__inference_omilqdycns_layer_call_fn_224118
inputs_0
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCall╝
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                   *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_omilqdycns_layer_call_and_return_conditional_losses_2208362
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Шp
╔
vlxoswgdqw_while_body_2239132
.vlxoswgdqw_while_vlxoswgdqw_while_loop_counter8
4vlxoswgdqw_while_vlxoswgdqw_while_maximum_iterations 
vlxoswgdqw_while_placeholder"
vlxoswgdqw_while_placeholder_1"
vlxoswgdqw_while_placeholder_2"
vlxoswgdqw_while_placeholder_31
-vlxoswgdqw_while_vlxoswgdqw_strided_slice_1_0m
ivlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensor_0O
<vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource_0:	 АQ
>vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource_0:	 АL
=vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource_0:	АC
5vlxoswgdqw_while_vdaevhnmja_readvariableop_resource_0: E
7vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource_0: E
7vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource_0: 
vlxoswgdqw_while_identity
vlxoswgdqw_while_identity_1
vlxoswgdqw_while_identity_2
vlxoswgdqw_while_identity_3
vlxoswgdqw_while_identity_4
vlxoswgdqw_while_identity_5/
+vlxoswgdqw_while_vlxoswgdqw_strided_slice_1k
gvlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensorM
:vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource:	 АO
<vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource:	 АJ
;vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource:	АA
3vlxoswgdqw_while_vdaevhnmja_readvariableop_resource: C
5vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource: C
5vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource: Ив2vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOpв1vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOpв3vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOpв*vlxoswgdqw/while/vdaevhnmja/ReadVariableOpв,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1в,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2┘
Bvlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bvlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemivlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensor_0vlxoswgdqw_while_placeholderKvlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype026
4vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItemф
1vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOpReadVariableOp<vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype023
1vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp¤
"vlxoswgdqw/while/vdaevhnmja/MatMulMatMul;vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem:item:09vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"vlxoswgdqw/while/vdaevhnmja/MatMulъ
3vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp>vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOpц
$vlxoswgdqw/while/vdaevhnmja/MatMul_1MatMulvlxoswgdqw_while_placeholder_2;vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$vlxoswgdqw/while/vdaevhnmja/MatMul_1▄
vlxoswgdqw/while/vdaevhnmja/addAddV2,vlxoswgdqw/while/vdaevhnmja/MatMul:product:0.vlxoswgdqw/while/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
vlxoswgdqw/while/vdaevhnmja/addу
2vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp=vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOpщ
#vlxoswgdqw/while/vdaevhnmja/BiasAddBiasAdd#vlxoswgdqw/while/vdaevhnmja/add:z:0:vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#vlxoswgdqw/while/vdaevhnmja/BiasAddЬ
+vlxoswgdqw/while/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+vlxoswgdqw/while/vdaevhnmja/split/split_dimп
!vlxoswgdqw/while/vdaevhnmja/splitSplit4vlxoswgdqw/while/vdaevhnmja/split/split_dim:output:0,vlxoswgdqw/while/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!vlxoswgdqw/while/vdaevhnmja/split╩
*vlxoswgdqw/while/vdaevhnmja/ReadVariableOpReadVariableOp5vlxoswgdqw_while_vdaevhnmja_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*vlxoswgdqw/while/vdaevhnmja/ReadVariableOp╧
vlxoswgdqw/while/vdaevhnmja/mulMul2vlxoswgdqw/while/vdaevhnmja/ReadVariableOp:value:0vlxoswgdqw_while_placeholder_3*
T0*'
_output_shapes
:          2!
vlxoswgdqw/while/vdaevhnmja/mul╥
!vlxoswgdqw/while/vdaevhnmja/add_1AddV2*vlxoswgdqw/while/vdaevhnmja/split:output:0#vlxoswgdqw/while/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/add_1о
#vlxoswgdqw/while/vdaevhnmja/SigmoidSigmoid%vlxoswgdqw/while/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2%
#vlxoswgdqw/while/vdaevhnmja/Sigmoid╨
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1ReadVariableOp7vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1╒
!vlxoswgdqw/while/vdaevhnmja/mul_1Mul4vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1:value:0vlxoswgdqw_while_placeholder_3*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/mul_1╘
!vlxoswgdqw/while/vdaevhnmja/add_2AddV2*vlxoswgdqw/while/vdaevhnmja/split:output:1%vlxoswgdqw/while/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/add_2▓
%vlxoswgdqw/while/vdaevhnmja/Sigmoid_1Sigmoid%vlxoswgdqw/while/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2'
%vlxoswgdqw/while/vdaevhnmja/Sigmoid_1╩
!vlxoswgdqw/while/vdaevhnmja/mul_2Mul)vlxoswgdqw/while/vdaevhnmja/Sigmoid_1:y:0vlxoswgdqw_while_placeholder_3*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/mul_2к
 vlxoswgdqw/while/vdaevhnmja/TanhTanh*vlxoswgdqw/while/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2"
 vlxoswgdqw/while/vdaevhnmja/Tanh╬
!vlxoswgdqw/while/vdaevhnmja/mul_3Mul'vlxoswgdqw/while/vdaevhnmja/Sigmoid:y:0$vlxoswgdqw/while/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/mul_3╧
!vlxoswgdqw/while/vdaevhnmja/add_3AddV2%vlxoswgdqw/while/vdaevhnmja/mul_2:z:0%vlxoswgdqw/while/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/add_3╨
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2ReadVariableOp7vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2▄
!vlxoswgdqw/while/vdaevhnmja/mul_4Mul4vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2:value:0%vlxoswgdqw/while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/mul_4╘
!vlxoswgdqw/while/vdaevhnmja/add_4AddV2*vlxoswgdqw/while/vdaevhnmja/split:output:3%vlxoswgdqw/while/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/add_4▓
%vlxoswgdqw/while/vdaevhnmja/Sigmoid_2Sigmoid%vlxoswgdqw/while/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2'
%vlxoswgdqw/while/vdaevhnmja/Sigmoid_2й
"vlxoswgdqw/while/vdaevhnmja/Tanh_1Tanh%vlxoswgdqw/while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2$
"vlxoswgdqw/while/vdaevhnmja/Tanh_1╥
!vlxoswgdqw/while/vdaevhnmja/mul_5Mul)vlxoswgdqw/while/vdaevhnmja/Sigmoid_2:y:0&vlxoswgdqw/while/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/mul_5Х
5vlxoswgdqw/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemvlxoswgdqw_while_placeholder_1vlxoswgdqw_while_placeholder%vlxoswgdqw/while/vdaevhnmja/mul_5:z:0*
_output_shapes
: *
element_dtype027
5vlxoswgdqw/while/TensorArrayV2Write/TensorListSetItemr
vlxoswgdqw/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
vlxoswgdqw/while/add/yХ
vlxoswgdqw/while/addAddV2vlxoswgdqw_while_placeholdervlxoswgdqw/while/add/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/while/addv
vlxoswgdqw/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
vlxoswgdqw/while/add_1/yн
vlxoswgdqw/while/add_1AddV2.vlxoswgdqw_while_vlxoswgdqw_while_loop_counter!vlxoswgdqw/while/add_1/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/while/add_1й
vlxoswgdqw/while/IdentityIdentityvlxoswgdqw/while/add_1:z:03^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
vlxoswgdqw/while/Identity╟
vlxoswgdqw/while/Identity_1Identity4vlxoswgdqw_while_vlxoswgdqw_while_maximum_iterations3^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
vlxoswgdqw/while/Identity_1л
vlxoswgdqw/while/Identity_2Identityvlxoswgdqw/while/add:z:03^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
vlxoswgdqw/while/Identity_2╪
vlxoswgdqw/while/Identity_3IdentityEvlxoswgdqw/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
vlxoswgdqw/while/Identity_3╔
vlxoswgdqw/while/Identity_4Identity%vlxoswgdqw/while/vdaevhnmja/mul_5:z:03^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
vlxoswgdqw/while/Identity_4╔
vlxoswgdqw/while/Identity_5Identity%vlxoswgdqw/while/vdaevhnmja/add_3:z:03^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
vlxoswgdqw/while/Identity_5"?
vlxoswgdqw_while_identity"vlxoswgdqw/while/Identity:output:0"C
vlxoswgdqw_while_identity_1$vlxoswgdqw/while/Identity_1:output:0"C
vlxoswgdqw_while_identity_2$vlxoswgdqw/while/Identity_2:output:0"C
vlxoswgdqw_while_identity_3$vlxoswgdqw/while/Identity_3:output:0"C
vlxoswgdqw_while_identity_4$vlxoswgdqw/while/Identity_4:output:0"C
vlxoswgdqw_while_identity_5$vlxoswgdqw/while/Identity_5:output:0"╘
gvlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensorivlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensor_0"|
;vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource=vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource_0"~
<vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource>vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource_0"z
:vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource<vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource_0"p
5vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource7vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource_0"p
5vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource7vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource_0"l
3vlxoswgdqw_while_vdaevhnmja_readvariableop_resource5vlxoswgdqw_while_vdaevhnmja_readvariableop_resource_0"\
+vlxoswgdqw_while_vlxoswgdqw_strided_slice_1-vlxoswgdqw_while_vlxoswgdqw_strided_slice_1_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2f
1vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp1vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp2j
3vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp3vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp2X
*vlxoswgdqw/while/vdaevhnmja/ReadVariableOp*vlxoswgdqw/while/vdaevhnmja/ReadVariableOp2\
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_12\
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
░'
▓
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_220660

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

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpвReadVariableOpвReadVariableOp_1вReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
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
:          2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:          2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:          2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:          2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:          2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:          2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:          2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:          2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          2
mul_5▀
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identityу

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_1у

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:         :          :          : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:          
 
_user_specified_namestates:OK
'
_output_shapes
:          
 
_user_specified_namestates
 
┐
+__inference_ddlymsxapn_layer_call_fn_225702

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

identity_2ИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_2204732
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:         :          :          : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
Р
Г
vlxoswgdqw_while_cond_2235082
.vlxoswgdqw_while_vlxoswgdqw_while_loop_counter8
4vlxoswgdqw_while_vlxoswgdqw_while_maximum_iterations 
vlxoswgdqw_while_placeholder"
vlxoswgdqw_while_placeholder_1"
vlxoswgdqw_while_placeholder_2"
vlxoswgdqw_while_placeholder_34
0vlxoswgdqw_while_less_vlxoswgdqw_strided_slice_1J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223508___redundant_placeholder0J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223508___redundant_placeholder1J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223508___redundant_placeholder2J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223508___redundant_placeholder3J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223508___redundant_placeholder4J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223508___redundant_placeholder5J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223508___redundant_placeholder6
vlxoswgdqw_while_identity
з
vlxoswgdqw/while/LessLessvlxoswgdqw_while_placeholder0vlxoswgdqw_while_less_vlxoswgdqw_strided_slice_1*
T0*
_output_shapes
: 2
vlxoswgdqw/while/Less~
vlxoswgdqw/while/IdentityIdentityvlxoswgdqw/while/Less:z:0*
T0
*
_output_shapes
: 2
vlxoswgdqw/while/Identity"?
vlxoswgdqw_while_identity"vlxoswgdqw/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
▀Y
Ж
while_body_222727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_ddlymsxapn_matmul_readvariableop_resource_0:	АF
3while_ddlymsxapn_matmul_1_readvariableop_resource_0:	 АA
2while_ddlymsxapn_biasadd_readvariableop_resource_0:	А8
*while_ddlymsxapn_readvariableop_resource_0: :
,while_ddlymsxapn_readvariableop_1_resource_0: :
,while_ddlymsxapn_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_ddlymsxapn_matmul_readvariableop_resource:	АD
1while_ddlymsxapn_matmul_1_readvariableop_resource:	 А?
0while_ddlymsxapn_biasadd_readvariableop_resource:	А6
(while_ddlymsxapn_readvariableop_resource: 8
*while_ddlymsxapn_readvariableop_1_resource: 8
*while_ddlymsxapn_readvariableop_2_resource: Ив'while/ddlymsxapn/BiasAdd/ReadVariableOpв&while/ddlymsxapn/MatMul/ReadVariableOpв(while/ddlymsxapn/MatMul_1/ReadVariableOpвwhile/ddlymsxapn/ReadVariableOpв!while/ddlymsxapn/ReadVariableOp_1в!while/ddlymsxapn/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/ddlymsxapn/MatMul/ReadVariableOpReadVariableOp1while_ddlymsxapn_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/ddlymsxapn/MatMul/ReadVariableOp╤
while/ddlymsxapn/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul╔
(while/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp3while_ddlymsxapn_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/ddlymsxapn/MatMul_1/ReadVariableOp║
while/ddlymsxapn/MatMul_1MatMulwhile_placeholder_20while/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul_1░
while/ddlymsxapn/addAddV2!while/ddlymsxapn/MatMul:product:0#while/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/add┬
'while/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp2while_ddlymsxapn_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/ddlymsxapn/BiasAdd/ReadVariableOp╜
while/ddlymsxapn/BiasAddBiasAddwhile/ddlymsxapn/add:z:0/while/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/BiasAddЖ
 while/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/ddlymsxapn/split/split_dimГ
while/ddlymsxapn/splitSplit)while/ddlymsxapn/split/split_dim:output:0!while/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/ddlymsxapn/splitй
while/ddlymsxapn/ReadVariableOpReadVariableOp*while_ddlymsxapn_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/ddlymsxapn/ReadVariableOpг
while/ddlymsxapn/mulMul'while/ddlymsxapn/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mulж
while/ddlymsxapn/add_1AddV2while/ddlymsxapn/split:output:0while/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_1Н
while/ddlymsxapn/SigmoidSigmoidwhile/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoidп
!while/ddlymsxapn/ReadVariableOp_1ReadVariableOp,while_ddlymsxapn_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_1й
while/ddlymsxapn/mul_1Mul)while/ddlymsxapn/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_1и
while/ddlymsxapn/add_2AddV2while/ddlymsxapn/split:output:1while/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_2С
while/ddlymsxapn/Sigmoid_1Sigmoidwhile/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_1Ю
while/ddlymsxapn/mul_2Mulwhile/ddlymsxapn/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_2Й
while/ddlymsxapn/TanhTanhwhile/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanhв
while/ddlymsxapn/mul_3Mulwhile/ddlymsxapn/Sigmoid:y:0while/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_3г
while/ddlymsxapn/add_3AddV2while/ddlymsxapn/mul_2:z:0while/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_3п
!while/ddlymsxapn/ReadVariableOp_2ReadVariableOp,while_ddlymsxapn_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_2░
while/ddlymsxapn/mul_4Mul)while/ddlymsxapn/ReadVariableOp_2:value:0while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_4и
while/ddlymsxapn/add_4AddV2while/ddlymsxapn/split:output:3while/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_4С
while/ddlymsxapn/Sigmoid_2Sigmoidwhile/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_2И
while/ddlymsxapn/Tanh_1Tanhwhile/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanh_1ж
while/ddlymsxapn/mul_5Mulwhile/ddlymsxapn/Sigmoid_2:y:0while/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ddlymsxapn/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/ddlymsxapn/mul_5:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/ddlymsxapn/add_3:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_ddlymsxapn_biasadd_readvariableop_resource2while_ddlymsxapn_biasadd_readvariableop_resource_0"h
1while_ddlymsxapn_matmul_1_readvariableop_resource3while_ddlymsxapn_matmul_1_readvariableop_resource_0"d
/while_ddlymsxapn_matmul_readvariableop_resource1while_ddlymsxapn_matmul_readvariableop_resource_0"Z
*while_ddlymsxapn_readvariableop_1_resource,while_ddlymsxapn_readvariableop_1_resource_0"Z
*while_ddlymsxapn_readvariableop_2_resource,while_ddlymsxapn_readvariableop_2_resource_0"V
(while_ddlymsxapn_readvariableop_resource*while_ddlymsxapn_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/ddlymsxapn/BiasAdd/ReadVariableOp'while/ddlymsxapn/BiasAdd/ReadVariableOp2P
&while/ddlymsxapn/MatMul/ReadVariableOp&while/ddlymsxapn/MatMul/ReadVariableOp2T
(while/ddlymsxapn/MatMul_1/ReadVariableOp(while/ddlymsxapn/MatMul_1/ReadVariableOp2B
while/ddlymsxapn/ReadVariableOpwhile/ddlymsxapn/ReadVariableOp2F
!while/ddlymsxapn/ReadVariableOp_1!while/ddlymsxapn/ReadVariableOp_12F
!while/ddlymsxapn/ReadVariableOp_2!while/ddlymsxapn/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
и0
╗
F__inference_iigfihrkup_layer_call_and_return_conditional_losses_221946

inputsA
+conv1d_expanddims_1_readvariableop_resource:@
2squeeze_batch_dims_biasadd_readvariableop_resource:
identityИв"conv1d/ExpandDims_1/ReadVariableOpв)squeeze_batch_dims/BiasAdd/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2
conv1d/ExpandDims/dimЪ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:         2
conv1d/ExpandDims╕
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
conv1d/ExpandDims_1/dim╖
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
¤        2
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
valueB"             2
conv1d/Reshape/shapeа
conv1d/ReshapeReshapeconv1d/ExpandDims:output:0conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
conv1d/Reshape┬
conv1d/Conv2DConv2Dconv1d/Reshape:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
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
         2
conv1d/concat/axis╡
conv1d/concatConcatV2conv1d/strided_slice:output:0conv1d/concat/values_1:output:0conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv1d/concatЭ
conv1d/Reshape_1Reshapeconv1d/Conv2D:output:0conv1d/concat:output:0*
T0*3
_output_shapes!
:         2
conv1d/Reshape_1а
conv1d/SqueezeSqueezeconv1d/Reshape_1:output:0*
T0*/
_output_shapes
:         *
squeeze_dims

¤        2
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
&squeeze_batch_dims/strided_slice/stackз
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        2*
(squeeze_batch_dims/strided_slice/stack_1Ю
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2╥
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
valueB"          2"
 squeeze_batch_dims/Reshape/shape╜
squeeze_batch_dims/ReshapeReshapeconv1d/Squeeze:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
squeeze_batch_dims/Reshape┼
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp2squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp╤
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         2
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
         2 
squeeze_batch_dims/concat/axisё
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat╩
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:         2
squeeze_batch_dims/Reshape_1╥
IdentityIdentity%squeeze_batch_dims/Reshape_1:output:0#^conv1d/ExpandDims_1/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
▌h
Ж
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224332
inputs_0<
)ddlymsxapn_matmul_readvariableop_resource:	А>
+ddlymsxapn_matmul_1_readvariableop_resource:	 А9
*ddlymsxapn_biasadd_readvariableop_resource:	А0
"ddlymsxapn_readvariableop_resource: 2
$ddlymsxapn_readvariableop_1_resource: 2
$ddlymsxapn_readvariableop_2_resource: 
identityИв!ddlymsxapn/BiasAdd/ReadVariableOpв ddlymsxapn/MatMul/ReadVariableOpв"ddlymsxapn/MatMul_1/ReadVariableOpвddlymsxapn/ReadVariableOpвddlymsxapn/ReadVariableOp_1вddlymsxapn/ReadVariableOp_2вwhileF
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
 :                  2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2п
 ddlymsxapn/MatMul/ReadVariableOpReadVariableOp)ddlymsxapn_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 ddlymsxapn/MatMul/ReadVariableOpз
ddlymsxapn/MatMulMatMulstrided_slice_2:output:0(ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul╡
"ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp+ddlymsxapn_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"ddlymsxapn/MatMul_1/ReadVariableOpг
ddlymsxapn/MatMul_1MatMulzeros:output:0*ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul_1Ш
ddlymsxapn/addAddV2ddlymsxapn/MatMul:product:0ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/addо
!ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp*ddlymsxapn_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!ddlymsxapn/BiasAdd/ReadVariableOpе
ddlymsxapn/BiasAddBiasAddddlymsxapn/add:z:0)ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/BiasAddz
ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
ddlymsxapn/split/split_dimы
ddlymsxapn/splitSplit#ddlymsxapn/split/split_dim:output:0ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
ddlymsxapn/splitХ
ddlymsxapn/ReadVariableOpReadVariableOp"ddlymsxapn_readvariableop_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOpО
ddlymsxapn/mulMul!ddlymsxapn/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mulО
ddlymsxapn/add_1AddV2ddlymsxapn/split:output:0ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_1{
ddlymsxapn/SigmoidSigmoidddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/SigmoidЫ
ddlymsxapn/ReadVariableOp_1ReadVariableOp$ddlymsxapn_readvariableop_1_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_1Ф
ddlymsxapn/mul_1Mul#ddlymsxapn/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_1Р
ddlymsxapn/add_2AddV2ddlymsxapn/split:output:1ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_2
ddlymsxapn/Sigmoid_1Sigmoidddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_1Й
ddlymsxapn/mul_2Mulddlymsxapn/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_2w
ddlymsxapn/TanhTanhddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
ddlymsxapn/TanhК
ddlymsxapn/mul_3Mulddlymsxapn/Sigmoid:y:0ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_3Л
ddlymsxapn/add_3AddV2ddlymsxapn/mul_2:z:0ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_3Ы
ddlymsxapn/ReadVariableOp_2ReadVariableOp$ddlymsxapn_readvariableop_2_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_2Ш
ddlymsxapn/mul_4Mul#ddlymsxapn/ReadVariableOp_2:value:0ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_4Р
ddlymsxapn/add_4AddV2ddlymsxapn/split:output:3ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_4
ddlymsxapn/Sigmoid_2Sigmoidddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_2v
ddlymsxapn/Tanh_1Tanhddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Tanh_1О
ddlymsxapn/mul_5Mulddlymsxapn/Sigmoid_2:y:0ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)ddlymsxapn_matmul_readvariableop_resource+ddlymsxapn_matmul_1_readvariableop_resource*ddlymsxapn_biasadd_readvariableop_resource"ddlymsxapn_readvariableop_resource$ddlymsxapn_readvariableop_1_resource$ddlymsxapn_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_224231*
condR
while_cond_224230*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
transpose_1╝
IdentityIdentitytranspose_1:y:0"^ddlymsxapn/BiasAdd/ReadVariableOp!^ddlymsxapn/MatMul/ReadVariableOp#^ddlymsxapn/MatMul_1/ReadVariableOp^ddlymsxapn/ReadVariableOp^ddlymsxapn/ReadVariableOp_1^ddlymsxapn/ReadVariableOp_2^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2F
!ddlymsxapn/BiasAdd/ReadVariableOp!ddlymsxapn/BiasAdd/ReadVariableOp2D
 ddlymsxapn/MatMul/ReadVariableOp ddlymsxapn/MatMul/ReadVariableOp2H
"ddlymsxapn/MatMul_1/ReadVariableOp"ddlymsxapn/MatMul_1/ReadVariableOp26
ddlymsxapn/ReadVariableOpddlymsxapn/ReadVariableOp2:
ddlymsxapn/ReadVariableOp_1ddlymsxapn/ReadVariableOp_12:
ddlymsxapn/ReadVariableOp_2ddlymsxapn/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Э
б	
'sequential_vlxoswgdqw_while_cond_220278H
Dsequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_loop_counterN
Jsequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_maximum_iterations+
'sequential_vlxoswgdqw_while_placeholder-
)sequential_vlxoswgdqw_while_placeholder_1-
)sequential_vlxoswgdqw_while_placeholder_2-
)sequential_vlxoswgdqw_while_placeholder_3J
Fsequential_vlxoswgdqw_while_less_sequential_vlxoswgdqw_strided_slice_1`
\sequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_cond_220278___redundant_placeholder0`
\sequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_cond_220278___redundant_placeholder1`
\sequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_cond_220278___redundant_placeholder2`
\sequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_cond_220278___redundant_placeholder3`
\sequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_cond_220278___redundant_placeholder4`
\sequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_cond_220278___redundant_placeholder5`
\sequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_cond_220278___redundant_placeholder6(
$sequential_vlxoswgdqw_while_identity
▐
 sequential/vlxoswgdqw/while/LessLess'sequential_vlxoswgdqw_while_placeholderFsequential_vlxoswgdqw_while_less_sequential_vlxoswgdqw_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/vlxoswgdqw/while/LessЯ
$sequential/vlxoswgdqw/while/IdentityIdentity$sequential/vlxoswgdqw/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/vlxoswgdqw/while/Identity"U
$sequential_vlxoswgdqw_while_identity-sequential/vlxoswgdqw/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Р
Г
omilqdycns_while_cond_2237362
.omilqdycns_while_omilqdycns_while_loop_counter8
4omilqdycns_while_omilqdycns_while_maximum_iterations 
omilqdycns_while_placeholder"
omilqdycns_while_placeholder_1"
omilqdycns_while_placeholder_2"
omilqdycns_while_placeholder_34
0omilqdycns_while_less_omilqdycns_strided_slice_1J
Fomilqdycns_while_omilqdycns_while_cond_223736___redundant_placeholder0J
Fomilqdycns_while_omilqdycns_while_cond_223736___redundant_placeholder1J
Fomilqdycns_while_omilqdycns_while_cond_223736___redundant_placeholder2J
Fomilqdycns_while_omilqdycns_while_cond_223736___redundant_placeholder3J
Fomilqdycns_while_omilqdycns_while_cond_223736___redundant_placeholder4J
Fomilqdycns_while_omilqdycns_while_cond_223736___redundant_placeholder5J
Fomilqdycns_while_omilqdycns_while_cond_223736___redundant_placeholder6
omilqdycns_while_identity
з
omilqdycns/while/LessLessomilqdycns_while_placeholder0omilqdycns_while_less_omilqdycns_strided_slice_1*
T0*
_output_shapes
: 2
omilqdycns/while/Less~
omilqdycns/while/IdentityIdentityomilqdycns/while/Less:z:0*
T0
*
_output_shapes
: 2
omilqdycns/while/Identity"?
omilqdycns_while_identity"omilqdycns/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
╕'
┤
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_225903

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

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpвReadVariableOpвReadVariableOp_1вReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
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
:          2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:          2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:          2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:          2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:          2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:          2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:          2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:          2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          2
mul_5▀
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identityу

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_1у

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:          :          :          : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
Юh
Д
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224692

inputs<
)ddlymsxapn_matmul_readvariableop_resource:	А>
+ddlymsxapn_matmul_1_readvariableop_resource:	 А9
*ddlymsxapn_biasadd_readvariableop_resource:	А0
"ddlymsxapn_readvariableop_resource: 2
$ddlymsxapn_readvariableop_1_resource: 2
$ddlymsxapn_readvariableop_2_resource: 
identityИв!ddlymsxapn/BiasAdd/ReadVariableOpв ddlymsxapn/MatMul/ReadVariableOpв"ddlymsxapn/MatMul_1/ReadVariableOpвddlymsxapn/ReadVariableOpвddlymsxapn/ReadVariableOp_1вddlymsxapn/ReadVariableOp_2вwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
:         2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2п
 ddlymsxapn/MatMul/ReadVariableOpReadVariableOp)ddlymsxapn_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 ddlymsxapn/MatMul/ReadVariableOpз
ddlymsxapn/MatMulMatMulstrided_slice_2:output:0(ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul╡
"ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp+ddlymsxapn_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"ddlymsxapn/MatMul_1/ReadVariableOpг
ddlymsxapn/MatMul_1MatMulzeros:output:0*ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul_1Ш
ddlymsxapn/addAddV2ddlymsxapn/MatMul:product:0ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/addо
!ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp*ddlymsxapn_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!ddlymsxapn/BiasAdd/ReadVariableOpе
ddlymsxapn/BiasAddBiasAddddlymsxapn/add:z:0)ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/BiasAddz
ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
ddlymsxapn/split/split_dimы
ddlymsxapn/splitSplit#ddlymsxapn/split/split_dim:output:0ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
ddlymsxapn/splitХ
ddlymsxapn/ReadVariableOpReadVariableOp"ddlymsxapn_readvariableop_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOpО
ddlymsxapn/mulMul!ddlymsxapn/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mulО
ddlymsxapn/add_1AddV2ddlymsxapn/split:output:0ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_1{
ddlymsxapn/SigmoidSigmoidddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/SigmoidЫ
ddlymsxapn/ReadVariableOp_1ReadVariableOp$ddlymsxapn_readvariableop_1_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_1Ф
ddlymsxapn/mul_1Mul#ddlymsxapn/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_1Р
ddlymsxapn/add_2AddV2ddlymsxapn/split:output:1ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_2
ddlymsxapn/Sigmoid_1Sigmoidddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_1Й
ddlymsxapn/mul_2Mulddlymsxapn/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_2w
ddlymsxapn/TanhTanhddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
ddlymsxapn/TanhК
ddlymsxapn/mul_3Mulddlymsxapn/Sigmoid:y:0ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_3Л
ddlymsxapn/add_3AddV2ddlymsxapn/mul_2:z:0ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_3Ы
ddlymsxapn/ReadVariableOp_2ReadVariableOp$ddlymsxapn_readvariableop_2_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_2Ш
ddlymsxapn/mul_4Mul#ddlymsxapn/ReadVariableOp_2:value:0ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_4Р
ddlymsxapn/add_4AddV2ddlymsxapn/split:output:3ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_4
ddlymsxapn/Sigmoid_2Sigmoidddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_2v
ddlymsxapn/Tanh_1Tanhddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Tanh_1О
ddlymsxapn/mul_5Mulddlymsxapn/Sigmoid_2:y:0ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)ddlymsxapn_matmul_readvariableop_resource+ddlymsxapn_matmul_1_readvariableop_resource*ddlymsxapn_biasadd_readvariableop_resource"ddlymsxapn_readvariableop_resource$ddlymsxapn_readvariableop_1_resource$ddlymsxapn_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_224591*
condR
while_cond_224590*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
transpose_1│
IdentityIdentitytranspose_1:y:0"^ddlymsxapn/BiasAdd/ReadVariableOp!^ddlymsxapn/MatMul/ReadVariableOp#^ddlymsxapn/MatMul_1/ReadVariableOp^ddlymsxapn/ReadVariableOp^ddlymsxapn/ReadVariableOp_1^ddlymsxapn/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!ddlymsxapn/BiasAdd/ReadVariableOp!ddlymsxapn/BiasAdd/ReadVariableOp2D
 ddlymsxapn/MatMul/ReadVariableOp ddlymsxapn/MatMul/ReadVariableOp2H
"ddlymsxapn/MatMul_1/ReadVariableOp"ddlymsxapn/MatMul_1/ReadVariableOp26
ddlymsxapn/ReadVariableOpddlymsxapn/ReadVariableOp2:
ddlymsxapn/ReadVariableOp_1ddlymsxapn/ReadVariableOp_12:
ddlymsxapn/ReadVariableOp_2ddlymsxapn/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
░'
▓
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_221231

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

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpвReadVariableOpвReadVariableOp_1вReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
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
:          2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:          2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:          2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:          2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:          2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:          2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:          2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:          2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          2
mul_5▀
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identityу

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_1у

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:          :          :          : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:OK
'
_output_shapes
:          
 
_user_specified_namestates:OK
'
_output_shapes
:          
 
_user_specified_namestates
╤
Г
+__inference_vlxoswgdqw_layer_call_fn_224923

inputs
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_2223392
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
╟)
┼
while_body_221251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_vdaevhnmja_221275_0:	 А,
while_vdaevhnmja_221277_0:	 А(
while_vdaevhnmja_221279_0:	А'
while_vdaevhnmja_221281_0: '
while_vdaevhnmja_221283_0: '
while_vdaevhnmja_221285_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_vdaevhnmja_221275:	 А*
while_vdaevhnmja_221277:	 А&
while_vdaevhnmja_221279:	А%
while_vdaevhnmja_221281: %
while_vdaevhnmja_221283: %
while_vdaevhnmja_221285: Ив(while/vdaevhnmja/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemп
(while/vdaevhnmja/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_vdaevhnmja_221275_0while_vdaevhnmja_221277_0while_vdaevhnmja_221279_0while_vdaevhnmja_221281_0while_vdaevhnmja_221283_0while_vdaevhnmja_221285_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_2212312*
(while/vdaevhnmja/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/vdaevhnmja/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/vdaevhnmja/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/vdaevhnmja/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/vdaevhnmja/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/vdaevhnmja/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/vdaevhnmja/StatefulPartitionedCall:output:1)^while/vdaevhnmja/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/vdaevhnmja/StatefulPartitionedCall:output:2)^while/vdaevhnmja/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"4
while_vdaevhnmja_221275while_vdaevhnmja_221275_0"4
while_vdaevhnmja_221277while_vdaevhnmja_221277_0"4
while_vdaevhnmja_221279while_vdaevhnmja_221279_0"4
while_vdaevhnmja_221281while_vdaevhnmja_221281_0"4
while_vdaevhnmja_221283while_vdaevhnmja_221283_0"4
while_vdaevhnmja_221285while_vdaevhnmja_221285_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2T
(while/vdaevhnmja/StatefulPartitionedCall(while/vdaevhnmja/StatefulPartitionedCall: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
Юh
Д
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224872

inputs<
)ddlymsxapn_matmul_readvariableop_resource:	А>
+ddlymsxapn_matmul_1_readvariableop_resource:	 А9
*ddlymsxapn_biasadd_readvariableop_resource:	А0
"ddlymsxapn_readvariableop_resource: 2
$ddlymsxapn_readvariableop_1_resource: 2
$ddlymsxapn_readvariableop_2_resource: 
identityИв!ddlymsxapn/BiasAdd/ReadVariableOpв ddlymsxapn/MatMul/ReadVariableOpв"ddlymsxapn/MatMul_1/ReadVariableOpвddlymsxapn/ReadVariableOpвddlymsxapn/ReadVariableOp_1вddlymsxapn/ReadVariableOp_2вwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
:         2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2п
 ddlymsxapn/MatMul/ReadVariableOpReadVariableOp)ddlymsxapn_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 ddlymsxapn/MatMul/ReadVariableOpз
ddlymsxapn/MatMulMatMulstrided_slice_2:output:0(ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul╡
"ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp+ddlymsxapn_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"ddlymsxapn/MatMul_1/ReadVariableOpг
ddlymsxapn/MatMul_1MatMulzeros:output:0*ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul_1Ш
ddlymsxapn/addAddV2ddlymsxapn/MatMul:product:0ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/addо
!ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp*ddlymsxapn_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!ddlymsxapn/BiasAdd/ReadVariableOpе
ddlymsxapn/BiasAddBiasAddddlymsxapn/add:z:0)ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/BiasAddz
ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
ddlymsxapn/split/split_dimы
ddlymsxapn/splitSplit#ddlymsxapn/split/split_dim:output:0ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
ddlymsxapn/splitХ
ddlymsxapn/ReadVariableOpReadVariableOp"ddlymsxapn_readvariableop_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOpО
ddlymsxapn/mulMul!ddlymsxapn/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mulО
ddlymsxapn/add_1AddV2ddlymsxapn/split:output:0ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_1{
ddlymsxapn/SigmoidSigmoidddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/SigmoidЫ
ddlymsxapn/ReadVariableOp_1ReadVariableOp$ddlymsxapn_readvariableop_1_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_1Ф
ddlymsxapn/mul_1Mul#ddlymsxapn/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_1Р
ddlymsxapn/add_2AddV2ddlymsxapn/split:output:1ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_2
ddlymsxapn/Sigmoid_1Sigmoidddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_1Й
ddlymsxapn/mul_2Mulddlymsxapn/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_2w
ddlymsxapn/TanhTanhddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
ddlymsxapn/TanhК
ddlymsxapn/mul_3Mulddlymsxapn/Sigmoid:y:0ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_3Л
ddlymsxapn/add_3AddV2ddlymsxapn/mul_2:z:0ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_3Ы
ddlymsxapn/ReadVariableOp_2ReadVariableOp$ddlymsxapn_readvariableop_2_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_2Ш
ddlymsxapn/mul_4Mul#ddlymsxapn/ReadVariableOp_2:value:0ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_4Р
ddlymsxapn/add_4AddV2ddlymsxapn/split:output:3ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_4
ddlymsxapn/Sigmoid_2Sigmoidddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_2v
ddlymsxapn/Tanh_1Tanhddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Tanh_1О
ddlymsxapn/mul_5Mulddlymsxapn/Sigmoid_2:y:0ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)ddlymsxapn_matmul_readvariableop_resource+ddlymsxapn_matmul_1_readvariableop_resource*ddlymsxapn_biasadd_readvariableop_resource"ddlymsxapn_readvariableop_resource$ddlymsxapn_readvariableop_1_resource$ddlymsxapn_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_224771*
condR
while_cond_224770*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
transpose_1│
IdentityIdentitytranspose_1:y:0"^ddlymsxapn/BiasAdd/ReadVariableOp!^ddlymsxapn/MatMul/ReadVariableOp#^ddlymsxapn/MatMul_1/ReadVariableOp^ddlymsxapn/ReadVariableOp^ddlymsxapn/ReadVariableOp_1^ddlymsxapn/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!ddlymsxapn/BiasAdd/ReadVariableOp!ddlymsxapn/BiasAdd/ReadVariableOp2D
 ddlymsxapn/MatMul/ReadVariableOp ddlymsxapn/MatMul/ReadVariableOp2H
"ddlymsxapn/MatMul_1/ReadVariableOp"ddlymsxapn/MatMul_1/ReadVariableOp26
ddlymsxapn/ReadVariableOpddlymsxapn/ReadVariableOp2:
ddlymsxapn/ReadVariableOp_1ddlymsxapn/ReadVariableOp_12:
ddlymsxapn/ReadVariableOp_2ddlymsxapn/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Г

х
while_cond_222044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_222044___redundant_placeholder04
0while_while_cond_222044___redundant_placeholder14
0while_while_cond_222044___redundant_placeholder24
0while_while_cond_222044___redundant_placeholder34
0while_while_cond_222044___redundant_placeholder44
0while_while_cond_222044___redundant_placeholder54
0while_while_cond_222044___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
К
Щ
+__inference_sequential_layer_call_fn_223212

inputs
unknown:
	unknown_0:
	unknown_1:	А
	unknown_2:	 А
	unknown_3:	А
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:	 А
	unknown_8:	 А
	unknown_9:	А

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:
identityИвStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2229392
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
▀Y
Ж
while_body_222238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_vdaevhnmja_matmul_readvariableop_resource_0:	 АF
3while_vdaevhnmja_matmul_1_readvariableop_resource_0:	 АA
2while_vdaevhnmja_biasadd_readvariableop_resource_0:	А8
*while_vdaevhnmja_readvariableop_resource_0: :
,while_vdaevhnmja_readvariableop_1_resource_0: :
,while_vdaevhnmja_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_vdaevhnmja_matmul_readvariableop_resource:	 АD
1while_vdaevhnmja_matmul_1_readvariableop_resource:	 А?
0while_vdaevhnmja_biasadd_readvariableop_resource:	А6
(while_vdaevhnmja_readvariableop_resource: 8
*while_vdaevhnmja_readvariableop_1_resource: 8
*while_vdaevhnmja_readvariableop_2_resource: Ив'while/vdaevhnmja/BiasAdd/ReadVariableOpв&while/vdaevhnmja/MatMul/ReadVariableOpв(while/vdaevhnmja/MatMul_1/ReadVariableOpвwhile/vdaevhnmja/ReadVariableOpв!while/vdaevhnmja/ReadVariableOp_1в!while/vdaevhnmja/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/vdaevhnmja/MatMul/ReadVariableOpReadVariableOp1while_vdaevhnmja_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/vdaevhnmja/MatMul/ReadVariableOp╤
while/vdaevhnmja/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul╔
(while/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp3while_vdaevhnmja_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/vdaevhnmja/MatMul_1/ReadVariableOp║
while/vdaevhnmja/MatMul_1MatMulwhile_placeholder_20while/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul_1░
while/vdaevhnmja/addAddV2!while/vdaevhnmja/MatMul:product:0#while/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/add┬
'while/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp2while_vdaevhnmja_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/vdaevhnmja/BiasAdd/ReadVariableOp╜
while/vdaevhnmja/BiasAddBiasAddwhile/vdaevhnmja/add:z:0/while/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/BiasAddЖ
 while/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/vdaevhnmja/split/split_dimГ
while/vdaevhnmja/splitSplit)while/vdaevhnmja/split/split_dim:output:0!while/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/vdaevhnmja/splitй
while/vdaevhnmja/ReadVariableOpReadVariableOp*while_vdaevhnmja_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/vdaevhnmja/ReadVariableOpг
while/vdaevhnmja/mulMul'while/vdaevhnmja/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mulж
while/vdaevhnmja/add_1AddV2while/vdaevhnmja/split:output:0while/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_1Н
while/vdaevhnmja/SigmoidSigmoidwhile/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoidп
!while/vdaevhnmja/ReadVariableOp_1ReadVariableOp,while_vdaevhnmja_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_1й
while/vdaevhnmja/mul_1Mul)while/vdaevhnmja/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_1и
while/vdaevhnmja/add_2AddV2while/vdaevhnmja/split:output:1while/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_2С
while/vdaevhnmja/Sigmoid_1Sigmoidwhile/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_1Ю
while/vdaevhnmja/mul_2Mulwhile/vdaevhnmja/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_2Й
while/vdaevhnmja/TanhTanhwhile/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanhв
while/vdaevhnmja/mul_3Mulwhile/vdaevhnmja/Sigmoid:y:0while/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_3г
while/vdaevhnmja/add_3AddV2while/vdaevhnmja/mul_2:z:0while/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_3п
!while/vdaevhnmja/ReadVariableOp_2ReadVariableOp,while_vdaevhnmja_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_2░
while/vdaevhnmja/mul_4Mul)while/vdaevhnmja/ReadVariableOp_2:value:0while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_4и
while/vdaevhnmja/add_4AddV2while/vdaevhnmja/split:output:3while/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_4С
while/vdaevhnmja/Sigmoid_2Sigmoidwhile/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_2И
while/vdaevhnmja/Tanh_1Tanhwhile/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanh_1ж
while/vdaevhnmja/mul_5Mulwhile/vdaevhnmja/Sigmoid_2:y:0while/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/vdaevhnmja/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/vdaevhnmja/mul_5:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/vdaevhnmja/add_3:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_vdaevhnmja_biasadd_readvariableop_resource2while_vdaevhnmja_biasadd_readvariableop_resource_0"h
1while_vdaevhnmja_matmul_1_readvariableop_resource3while_vdaevhnmja_matmul_1_readvariableop_resource_0"d
/while_vdaevhnmja_matmul_readvariableop_resource1while_vdaevhnmja_matmul_readvariableop_resource_0"Z
*while_vdaevhnmja_readvariableop_1_resource,while_vdaevhnmja_readvariableop_1_resource_0"Z
*while_vdaevhnmja_readvariableop_2_resource,while_vdaevhnmja_readvariableop_2_resource_0"V
(while_vdaevhnmja_readvariableop_resource*while_vdaevhnmja_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/vdaevhnmja/BiasAdd/ReadVariableOp'while/vdaevhnmja/BiasAdd/ReadVariableOp2P
&while/vdaevhnmja/MatMul/ReadVariableOp&while/vdaevhnmja/MatMul/ReadVariableOp2T
(while/vdaevhnmja/MatMul_1/ReadVariableOp(while/vdaevhnmja/MatMul_1/ReadVariableOp2B
while/vdaevhnmja/ReadVariableOpwhile/vdaevhnmja/ReadVariableOp2F
!while/vdaevhnmja/ReadVariableOp_1!while/vdaevhnmja/ReadVariableOp_12F
!while/vdaevhnmja/ReadVariableOp_2!while/vdaevhnmja/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
Г

х
while_cond_222512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_222512___redundant_placeholder04
0while_while_cond_222512___redundant_placeholder14
0while_while_cond_222512___redundant_placeholder24
0while_while_cond_222512___redundant_placeholder34
0while_while_cond_222512___redundant_placeholder44
0while_while_cond_222512___redundant_placeholder54
0while_while_cond_222512___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Г

х
while_cond_220755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_220755___redundant_placeholder04
0while_while_cond_220755___redundant_placeholder14
0while_while_cond_220755___redundant_placeholder24
0while_while_cond_220755___redundant_placeholder34
0while_while_cond_220755___redundant_placeholder44
0while_while_cond_220755___redundant_placeholder54
0while_while_cond_220755___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
▀Y
Ж
while_body_225379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_vdaevhnmja_matmul_readvariableop_resource_0:	 АF
3while_vdaevhnmja_matmul_1_readvariableop_resource_0:	 АA
2while_vdaevhnmja_biasadd_readvariableop_resource_0:	А8
*while_vdaevhnmja_readvariableop_resource_0: :
,while_vdaevhnmja_readvariableop_1_resource_0: :
,while_vdaevhnmja_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_vdaevhnmja_matmul_readvariableop_resource:	 АD
1while_vdaevhnmja_matmul_1_readvariableop_resource:	 А?
0while_vdaevhnmja_biasadd_readvariableop_resource:	А6
(while_vdaevhnmja_readvariableop_resource: 8
*while_vdaevhnmja_readvariableop_1_resource: 8
*while_vdaevhnmja_readvariableop_2_resource: Ив'while/vdaevhnmja/BiasAdd/ReadVariableOpв&while/vdaevhnmja/MatMul/ReadVariableOpв(while/vdaevhnmja/MatMul_1/ReadVariableOpвwhile/vdaevhnmja/ReadVariableOpв!while/vdaevhnmja/ReadVariableOp_1в!while/vdaevhnmja/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/vdaevhnmja/MatMul/ReadVariableOpReadVariableOp1while_vdaevhnmja_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/vdaevhnmja/MatMul/ReadVariableOp╤
while/vdaevhnmja/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul╔
(while/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp3while_vdaevhnmja_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/vdaevhnmja/MatMul_1/ReadVariableOp║
while/vdaevhnmja/MatMul_1MatMulwhile_placeholder_20while/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul_1░
while/vdaevhnmja/addAddV2!while/vdaevhnmja/MatMul:product:0#while/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/add┬
'while/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp2while_vdaevhnmja_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/vdaevhnmja/BiasAdd/ReadVariableOp╜
while/vdaevhnmja/BiasAddBiasAddwhile/vdaevhnmja/add:z:0/while/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/BiasAddЖ
 while/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/vdaevhnmja/split/split_dimГ
while/vdaevhnmja/splitSplit)while/vdaevhnmja/split/split_dim:output:0!while/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/vdaevhnmja/splitй
while/vdaevhnmja/ReadVariableOpReadVariableOp*while_vdaevhnmja_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/vdaevhnmja/ReadVariableOpг
while/vdaevhnmja/mulMul'while/vdaevhnmja/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mulж
while/vdaevhnmja/add_1AddV2while/vdaevhnmja/split:output:0while/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_1Н
while/vdaevhnmja/SigmoidSigmoidwhile/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoidп
!while/vdaevhnmja/ReadVariableOp_1ReadVariableOp,while_vdaevhnmja_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_1й
while/vdaevhnmja/mul_1Mul)while/vdaevhnmja/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_1и
while/vdaevhnmja/add_2AddV2while/vdaevhnmja/split:output:1while/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_2С
while/vdaevhnmja/Sigmoid_1Sigmoidwhile/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_1Ю
while/vdaevhnmja/mul_2Mulwhile/vdaevhnmja/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_2Й
while/vdaevhnmja/TanhTanhwhile/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanhв
while/vdaevhnmja/mul_3Mulwhile/vdaevhnmja/Sigmoid:y:0while/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_3г
while/vdaevhnmja/add_3AddV2while/vdaevhnmja/mul_2:z:0while/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_3п
!while/vdaevhnmja/ReadVariableOp_2ReadVariableOp,while_vdaevhnmja_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_2░
while/vdaevhnmja/mul_4Mul)while/vdaevhnmja/ReadVariableOp_2:value:0while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_4и
while/vdaevhnmja/add_4AddV2while/vdaevhnmja/split:output:3while/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_4С
while/vdaevhnmja/Sigmoid_2Sigmoidwhile/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_2И
while/vdaevhnmja/Tanh_1Tanhwhile/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanh_1ж
while/vdaevhnmja/mul_5Mulwhile/vdaevhnmja/Sigmoid_2:y:0while/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/vdaevhnmja/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/vdaevhnmja/mul_5:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/vdaevhnmja/add_3:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_vdaevhnmja_biasadd_readvariableop_resource2while_vdaevhnmja_biasadd_readvariableop_resource_0"h
1while_vdaevhnmja_matmul_1_readvariableop_resource3while_vdaevhnmja_matmul_1_readvariableop_resource_0"d
/while_vdaevhnmja_matmul_readvariableop_resource1while_vdaevhnmja_matmul_readvariableop_resource_0"Z
*while_vdaevhnmja_readvariableop_1_resource,while_vdaevhnmja_readvariableop_1_resource_0"Z
*while_vdaevhnmja_readvariableop_2_resource,while_vdaevhnmja_readvariableop_2_resource_0"V
(while_vdaevhnmja_readvariableop_resource*while_vdaevhnmja_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/vdaevhnmja/BiasAdd/ReadVariableOp'while/vdaevhnmja/BiasAdd/ReadVariableOp2P
&while/vdaevhnmja/MatMul/ReadVariableOp&while/vdaevhnmja/MatMul/ReadVariableOp2T
(while/vdaevhnmja/MatMul_1/ReadVariableOp(while/vdaevhnmja/MatMul_1/ReadVariableOp2B
while/vdaevhnmja/ReadVariableOpwhile/vdaevhnmja/ReadVariableOp2F
!while/vdaevhnmja/ReadVariableOp_1!while/vdaevhnmja/ReadVariableOp_12F
!while/vdaevhnmja/ReadVariableOp_2!while/vdaevhnmja/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
▀Y
Ж
while_body_222513
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_vdaevhnmja_matmul_readvariableop_resource_0:	 АF
3while_vdaevhnmja_matmul_1_readvariableop_resource_0:	 АA
2while_vdaevhnmja_biasadd_readvariableop_resource_0:	А8
*while_vdaevhnmja_readvariableop_resource_0: :
,while_vdaevhnmja_readvariableop_1_resource_0: :
,while_vdaevhnmja_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_vdaevhnmja_matmul_readvariableop_resource:	 АD
1while_vdaevhnmja_matmul_1_readvariableop_resource:	 А?
0while_vdaevhnmja_biasadd_readvariableop_resource:	А6
(while_vdaevhnmja_readvariableop_resource: 8
*while_vdaevhnmja_readvariableop_1_resource: 8
*while_vdaevhnmja_readvariableop_2_resource: Ив'while/vdaevhnmja/BiasAdd/ReadVariableOpв&while/vdaevhnmja/MatMul/ReadVariableOpв(while/vdaevhnmja/MatMul_1/ReadVariableOpвwhile/vdaevhnmja/ReadVariableOpв!while/vdaevhnmja/ReadVariableOp_1в!while/vdaevhnmja/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/vdaevhnmja/MatMul/ReadVariableOpReadVariableOp1while_vdaevhnmja_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/vdaevhnmja/MatMul/ReadVariableOp╤
while/vdaevhnmja/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul╔
(while/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp3while_vdaevhnmja_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/vdaevhnmja/MatMul_1/ReadVariableOp║
while/vdaevhnmja/MatMul_1MatMulwhile_placeholder_20while/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul_1░
while/vdaevhnmja/addAddV2!while/vdaevhnmja/MatMul:product:0#while/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/add┬
'while/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp2while_vdaevhnmja_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/vdaevhnmja/BiasAdd/ReadVariableOp╜
while/vdaevhnmja/BiasAddBiasAddwhile/vdaevhnmja/add:z:0/while/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/BiasAddЖ
 while/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/vdaevhnmja/split/split_dimГ
while/vdaevhnmja/splitSplit)while/vdaevhnmja/split/split_dim:output:0!while/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/vdaevhnmja/splitй
while/vdaevhnmja/ReadVariableOpReadVariableOp*while_vdaevhnmja_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/vdaevhnmja/ReadVariableOpг
while/vdaevhnmja/mulMul'while/vdaevhnmja/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mulж
while/vdaevhnmja/add_1AddV2while/vdaevhnmja/split:output:0while/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_1Н
while/vdaevhnmja/SigmoidSigmoidwhile/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoidп
!while/vdaevhnmja/ReadVariableOp_1ReadVariableOp,while_vdaevhnmja_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_1й
while/vdaevhnmja/mul_1Mul)while/vdaevhnmja/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_1и
while/vdaevhnmja/add_2AddV2while/vdaevhnmja/split:output:1while/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_2С
while/vdaevhnmja/Sigmoid_1Sigmoidwhile/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_1Ю
while/vdaevhnmja/mul_2Mulwhile/vdaevhnmja/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_2Й
while/vdaevhnmja/TanhTanhwhile/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanhв
while/vdaevhnmja/mul_3Mulwhile/vdaevhnmja/Sigmoid:y:0while/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_3г
while/vdaevhnmja/add_3AddV2while/vdaevhnmja/mul_2:z:0while/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_3п
!while/vdaevhnmja/ReadVariableOp_2ReadVariableOp,while_vdaevhnmja_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_2░
while/vdaevhnmja/mul_4Mul)while/vdaevhnmja/ReadVariableOp_2:value:0while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_4и
while/vdaevhnmja/add_4AddV2while/vdaevhnmja/split:output:3while/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_4С
while/vdaevhnmja/Sigmoid_2Sigmoidwhile/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_2И
while/vdaevhnmja/Tanh_1Tanhwhile/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanh_1ж
while/vdaevhnmja/mul_5Mulwhile/vdaevhnmja/Sigmoid_2:y:0while/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/vdaevhnmja/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/vdaevhnmja/mul_5:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/vdaevhnmja/add_3:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_vdaevhnmja_biasadd_readvariableop_resource2while_vdaevhnmja_biasadd_readvariableop_resource_0"h
1while_vdaevhnmja_matmul_1_readvariableop_resource3while_vdaevhnmja_matmul_1_readvariableop_resource_0"d
/while_vdaevhnmja_matmul_readvariableop_resource1while_vdaevhnmja_matmul_readvariableop_resource_0"Z
*while_vdaevhnmja_readvariableop_1_resource,while_vdaevhnmja_readvariableop_1_resource_0"Z
*while_vdaevhnmja_readvariableop_2_resource,while_vdaevhnmja_readvariableop_2_resource_0"V
(while_vdaevhnmja_readvariableop_resource*while_vdaevhnmja_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/vdaevhnmja/BiasAdd/ReadVariableOp'while/vdaevhnmja/BiasAdd/ReadVariableOp2P
&while/vdaevhnmja/MatMul/ReadVariableOp&while/vdaevhnmja/MatMul/ReadVariableOp2T
(while/vdaevhnmja/MatMul_1/ReadVariableOp(while/vdaevhnmja/MatMul_1/ReadVariableOp2B
while/vdaevhnmja/ReadVariableOpwhile/vdaevhnmja/ReadVariableOp2F
!while/vdaevhnmja/ReadVariableOp_1!while/vdaevhnmja/ReadVariableOp_12F
!while/vdaevhnmja/ReadVariableOp_2!while/vdaevhnmja/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
╟)
┼
while_body_220756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_ddlymsxapn_220780_0:	А,
while_ddlymsxapn_220782_0:	 А(
while_ddlymsxapn_220784_0:	А'
while_ddlymsxapn_220786_0: '
while_ddlymsxapn_220788_0: '
while_ddlymsxapn_220790_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_ddlymsxapn_220780:	А*
while_ddlymsxapn_220782:	 А&
while_ddlymsxapn_220784:	А%
while_ddlymsxapn_220786: %
while_ddlymsxapn_220788: %
while_ddlymsxapn_220790: Ив(while/ddlymsxapn/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemп
(while/ddlymsxapn/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_ddlymsxapn_220780_0while_ddlymsxapn_220782_0while_ddlymsxapn_220784_0while_ddlymsxapn_220786_0while_ddlymsxapn_220788_0while_ddlymsxapn_220790_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_2206602*
(while/ddlymsxapn/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/ddlymsxapn/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/ddlymsxapn/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/ddlymsxapn/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/ddlymsxapn/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/ddlymsxapn/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/ddlymsxapn/StatefulPartitionedCall:output:1)^while/ddlymsxapn/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/ddlymsxapn/StatefulPartitionedCall:output:2)^while/ddlymsxapn/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5"4
while_ddlymsxapn_220780while_ddlymsxapn_220780_0"4
while_ddlymsxapn_220782while_ddlymsxapn_220782_0"4
while_ddlymsxapn_220784while_ddlymsxapn_220784_0"4
while_ddlymsxapn_220786while_ddlymsxapn_220786_0"4
while_ddlymsxapn_220788while_ddlymsxapn_220788_0"4
while_ddlymsxapn_220790while_ddlymsxapn_220790_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2T
(while/ddlymsxapn/StatefulPartitionedCall(while/ddlymsxapn/StatefulPartitionedCall: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
Щ
b
F__inference_xfbsciqeco_layer_call_and_return_conditional_losses_224084

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
strided_slice/stack_2т
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
Reshape/shape/2а
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:         2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ъ
Ц
$__inference_signature_wrapper_223138

ahzwxypkrh
unknown:
	unknown_0:
	unknown_1:	А
	unknown_2:	 А
	unknown_3:	А
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:	 А
	unknown_8:	 А
	unknown_9:	А

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:
identityИвStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCall
ahzwxypkrhunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_2203862
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
ahzwxypkrh
Юh
Д
F__inference_omilqdycns_layer_call_and_return_conditional_losses_222146

inputs<
)ddlymsxapn_matmul_readvariableop_resource:	А>
+ddlymsxapn_matmul_1_readvariableop_resource:	 А9
*ddlymsxapn_biasadd_readvariableop_resource:	А0
"ddlymsxapn_readvariableop_resource: 2
$ddlymsxapn_readvariableop_1_resource: 2
$ddlymsxapn_readvariableop_2_resource: 
identityИв!ddlymsxapn/BiasAdd/ReadVariableOpв ddlymsxapn/MatMul/ReadVariableOpв"ddlymsxapn/MatMul_1/ReadVariableOpвddlymsxapn/ReadVariableOpвddlymsxapn/ReadVariableOp_1вddlymsxapn/ReadVariableOp_2вwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
:         2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2п
 ddlymsxapn/MatMul/ReadVariableOpReadVariableOp)ddlymsxapn_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 ddlymsxapn/MatMul/ReadVariableOpз
ddlymsxapn/MatMulMatMulstrided_slice_2:output:0(ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul╡
"ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp+ddlymsxapn_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"ddlymsxapn/MatMul_1/ReadVariableOpг
ddlymsxapn/MatMul_1MatMulzeros:output:0*ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/MatMul_1Ш
ddlymsxapn/addAddV2ddlymsxapn/MatMul:product:0ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/addо
!ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp*ddlymsxapn_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!ddlymsxapn/BiasAdd/ReadVariableOpе
ddlymsxapn/BiasAddBiasAddddlymsxapn/add:z:0)ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
ddlymsxapn/BiasAddz
ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
ddlymsxapn/split/split_dimы
ddlymsxapn/splitSplit#ddlymsxapn/split/split_dim:output:0ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
ddlymsxapn/splitХ
ddlymsxapn/ReadVariableOpReadVariableOp"ddlymsxapn_readvariableop_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOpО
ddlymsxapn/mulMul!ddlymsxapn/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mulО
ddlymsxapn/add_1AddV2ddlymsxapn/split:output:0ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_1{
ddlymsxapn/SigmoidSigmoidddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/SigmoidЫ
ddlymsxapn/ReadVariableOp_1ReadVariableOp$ddlymsxapn_readvariableop_1_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_1Ф
ddlymsxapn/mul_1Mul#ddlymsxapn/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_1Р
ddlymsxapn/add_2AddV2ddlymsxapn/split:output:1ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_2
ddlymsxapn/Sigmoid_1Sigmoidddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_1Й
ddlymsxapn/mul_2Mulddlymsxapn/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_2w
ddlymsxapn/TanhTanhddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
ddlymsxapn/TanhК
ddlymsxapn/mul_3Mulddlymsxapn/Sigmoid:y:0ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_3Л
ddlymsxapn/add_3AddV2ddlymsxapn/mul_2:z:0ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_3Ы
ddlymsxapn/ReadVariableOp_2ReadVariableOp$ddlymsxapn_readvariableop_2_resource*
_output_shapes
: *
dtype02
ddlymsxapn/ReadVariableOp_2Ш
ddlymsxapn/mul_4Mul#ddlymsxapn/ReadVariableOp_2:value:0ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_4Р
ddlymsxapn/add_4AddV2ddlymsxapn/split:output:3ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/add_4
ddlymsxapn/Sigmoid_2Sigmoidddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Sigmoid_2v
ddlymsxapn/Tanh_1Tanhddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
ddlymsxapn/Tanh_1О
ddlymsxapn/mul_5Mulddlymsxapn/Sigmoid_2:y:0ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
ddlymsxapn/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)ddlymsxapn_matmul_readvariableop_resource+ddlymsxapn_matmul_1_readvariableop_resource*ddlymsxapn_biasadd_readvariableop_resource"ddlymsxapn_readvariableop_resource$ddlymsxapn_readvariableop_1_resource$ddlymsxapn_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_222045*
condR
while_cond_222044*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
transpose_1│
IdentityIdentitytranspose_1:y:0"^ddlymsxapn/BiasAdd/ReadVariableOp!^ddlymsxapn/MatMul/ReadVariableOp#^ddlymsxapn/MatMul_1/ReadVariableOp^ddlymsxapn/ReadVariableOp^ddlymsxapn/ReadVariableOp_1^ddlymsxapn/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!ddlymsxapn/BiasAdd/ReadVariableOp!ddlymsxapn/BiasAdd/ReadVariableOp2D
 ddlymsxapn/MatMul/ReadVariableOp ddlymsxapn/MatMul/ReadVariableOp2H
"ddlymsxapn/MatMul_1/ReadVariableOp"ddlymsxapn/MatMul_1/ReadVariableOp26
ddlymsxapn/ReadVariableOpddlymsxapn/ReadVariableOp2:
ddlymsxapn/ReadVariableOp_1ddlymsxapn/ReadVariableOp_12:
ddlymsxapn/ReadVariableOp_2ddlymsxapn/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Т
л
F__inference_sequential_layer_call_and_return_conditional_losses_222370

inputs'
iigfihrkup_221947:
iigfihrkup_221949:$
omilqdycns_222147:	А$
omilqdycns_222149:	 А 
omilqdycns_222151:	А
omilqdycns_222153: 
omilqdycns_222155: 
omilqdycns_222157: $
vlxoswgdqw_222340:	 А$
vlxoswgdqw_222342:	 А 
vlxoswgdqw_222344:	А
vlxoswgdqw_222346: 
vlxoswgdqw_222348: 
vlxoswgdqw_222350: #
iktogmlrmp_222364: 
iktogmlrmp_222366:
identityИв"iigfihrkup/StatefulPartitionedCallв"iktogmlrmp/StatefulPartitionedCallв"omilqdycns/StatefulPartitionedCallв"vlxoswgdqw/StatefulPartitionedCallй
"iigfihrkup/StatefulPartitionedCallStatefulPartitionedCallinputsiigfihrkup_221947iigfihrkup_221949*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_iigfihrkup_layer_call_and_return_conditional_losses_2219462$
"iigfihrkup/StatefulPartitionedCallЖ
xfbsciqeco/PartitionedCallPartitionedCall+iigfihrkup/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_xfbsciqeco_layer_call_and_return_conditional_losses_2219652
xfbsciqeco/PartitionedCallЦ
"omilqdycns/StatefulPartitionedCallStatefulPartitionedCall#xfbsciqeco/PartitionedCall:output:0omilqdycns_222147omilqdycns_222149omilqdycns_222151omilqdycns_222153omilqdycns_222155omilqdycns_222157*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_omilqdycns_layer_call_and_return_conditional_losses_2221462$
"omilqdycns/StatefulPartitionedCallЪ
"vlxoswgdqw/StatefulPartitionedCallStatefulPartitionedCall+omilqdycns/StatefulPartitionedCall:output:0vlxoswgdqw_222340vlxoswgdqw_222342vlxoswgdqw_222344vlxoswgdqw_222346vlxoswgdqw_222348vlxoswgdqw_222350*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_2223392$
"vlxoswgdqw/StatefulPartitionedCall╞
"iktogmlrmp/StatefulPartitionedCallStatefulPartitionedCall+vlxoswgdqw/StatefulPartitionedCall:output:0iktogmlrmp_222364iktogmlrmp_222366*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_iktogmlrmp_layer_call_and_return_conditional_losses_2223632$
"iktogmlrmp/StatefulPartitionedCallУ
IdentityIdentity+iktogmlrmp/StatefulPartitionedCall:output:0#^iigfihrkup/StatefulPartitionedCall#^iktogmlrmp/StatefulPartitionedCall#^omilqdycns/StatefulPartitionedCall#^vlxoswgdqw/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"iigfihrkup/StatefulPartitionedCall"iigfihrkup/StatefulPartitionedCall2H
"iktogmlrmp/StatefulPartitionedCall"iktogmlrmp/StatefulPartitionedCall2H
"omilqdycns/StatefulPartitionedCall"omilqdycns/StatefulPartitionedCall2H
"vlxoswgdqw/StatefulPartitionedCall"vlxoswgdqw/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Т
л
F__inference_sequential_layer_call_and_return_conditional_losses_222939

inputs'
iigfihrkup_222901:
iigfihrkup_222903:$
omilqdycns_222907:	А$
omilqdycns_222909:	 А 
omilqdycns_222911:	А
omilqdycns_222913: 
omilqdycns_222915: 
omilqdycns_222917: $
vlxoswgdqw_222920:	 А$
vlxoswgdqw_222922:	 А 
vlxoswgdqw_222924:	А
vlxoswgdqw_222926: 
vlxoswgdqw_222928: 
vlxoswgdqw_222930: #
iktogmlrmp_222933: 
iktogmlrmp_222935:
identityИв"iigfihrkup/StatefulPartitionedCallв"iktogmlrmp/StatefulPartitionedCallв"omilqdycns/StatefulPartitionedCallв"vlxoswgdqw/StatefulPartitionedCallй
"iigfihrkup/StatefulPartitionedCallStatefulPartitionedCallinputsiigfihrkup_222901iigfihrkup_222903*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_iigfihrkup_layer_call_and_return_conditional_losses_2219462$
"iigfihrkup/StatefulPartitionedCallЖ
xfbsciqeco/PartitionedCallPartitionedCall+iigfihrkup/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_xfbsciqeco_layer_call_and_return_conditional_losses_2219652
xfbsciqeco/PartitionedCallЦ
"omilqdycns/StatefulPartitionedCallStatefulPartitionedCall#xfbsciqeco/PartitionedCall:output:0omilqdycns_222907omilqdycns_222909omilqdycns_222911omilqdycns_222913omilqdycns_222915omilqdycns_222917*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_omilqdycns_layer_call_and_return_conditional_losses_2228282$
"omilqdycns/StatefulPartitionedCallЪ
"vlxoswgdqw/StatefulPartitionedCallStatefulPartitionedCall+omilqdycns/StatefulPartitionedCall:output:0vlxoswgdqw_222920vlxoswgdqw_222922vlxoswgdqw_222924vlxoswgdqw_222926vlxoswgdqw_222928vlxoswgdqw_222930*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_2226142$
"vlxoswgdqw/StatefulPartitionedCall╞
"iktogmlrmp/StatefulPartitionedCallStatefulPartitionedCall+vlxoswgdqw/StatefulPartitionedCall:output:0iktogmlrmp_222933iktogmlrmp_222935*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_iktogmlrmp_layer_call_and_return_conditional_losses_2223632$
"iktogmlrmp/StatefulPartitionedCallУ
IdentityIdentity+iktogmlrmp/StatefulPartitionedCall:output:0#^iigfihrkup/StatefulPartitionedCall#^iktogmlrmp/StatefulPartitionedCall#^omilqdycns/StatefulPartitionedCall#^vlxoswgdqw/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"iigfihrkup/StatefulPartitionedCall"iigfihrkup/StatefulPartitionedCall2H
"iktogmlrmp/StatefulPartitionedCall"iktogmlrmp/StatefulPartitionedCall2H
"omilqdycns/StatefulPartitionedCall"omilqdycns/StatefulPartitionedCall2H
"vlxoswgdqw/StatefulPartitionedCall"vlxoswgdqw/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Р
Г
omilqdycns_while_cond_2233322
.omilqdycns_while_omilqdycns_while_loop_counter8
4omilqdycns_while_omilqdycns_while_maximum_iterations 
omilqdycns_while_placeholder"
omilqdycns_while_placeholder_1"
omilqdycns_while_placeholder_2"
omilqdycns_while_placeholder_34
0omilqdycns_while_less_omilqdycns_strided_slice_1J
Fomilqdycns_while_omilqdycns_while_cond_223332___redundant_placeholder0J
Fomilqdycns_while_omilqdycns_while_cond_223332___redundant_placeholder1J
Fomilqdycns_while_omilqdycns_while_cond_223332___redundant_placeholder2J
Fomilqdycns_while_omilqdycns_while_cond_223332___redundant_placeholder3J
Fomilqdycns_while_omilqdycns_while_cond_223332___redundant_placeholder4J
Fomilqdycns_while_omilqdycns_while_cond_223332___redundant_placeholder5J
Fomilqdycns_while_omilqdycns_while_cond_223332___redundant_placeholder6
omilqdycns_while_identity
з
omilqdycns/while/LessLessomilqdycns_while_placeholder0omilqdycns_while_less_omilqdycns_strided_slice_1*
T0*
_output_shapes
: 2
omilqdycns/while/Less~
omilqdycns/while/IdentityIdentityomilqdycns/while/Less:z:0*
T0
*
_output_shapes
: 2
omilqdycns/while/Identity"?
omilqdycns_while_identity"omilqdycns/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Г

х
while_cond_225378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_225378___redundant_placeholder04
0while_while_cond_225378___redundant_placeholder14
0while_while_cond_225378___redundant_placeholder24
0while_while_cond_225378___redundant_placeholder34
0while_while_cond_225378___redundant_placeholder44
0while_while_cond_225378___redundant_placeholder54
0while_while_cond_225378___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
и0
╗
F__inference_iigfihrkup_layer_call_and_return_conditional_losses_224066

inputsA
+conv1d_expanddims_1_readvariableop_resource:@
2squeeze_batch_dims_biasadd_readvariableop_resource:
identityИв"conv1d/ExpandDims_1/ReadVariableOpв)squeeze_batch_dims/BiasAdd/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2
conv1d/ExpandDims/dimЪ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:         2
conv1d/ExpandDims╕
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
conv1d/ExpandDims_1/dim╖
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
¤        2
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
valueB"             2
conv1d/Reshape/shapeа
conv1d/ReshapeReshapeconv1d/ExpandDims:output:0conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
conv1d/Reshape┬
conv1d/Conv2DConv2Dconv1d/Reshape:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
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
         2
conv1d/concat/axis╡
conv1d/concatConcatV2conv1d/strided_slice:output:0conv1d/concat/values_1:output:0conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv1d/concatЭ
conv1d/Reshape_1Reshapeconv1d/Conv2D:output:0conv1d/concat:output:0*
T0*3
_output_shapes!
:         2
conv1d/Reshape_1а
conv1d/SqueezeSqueezeconv1d/Reshape_1:output:0*
T0*/
_output_shapes
:         *
squeeze_dims

¤        2
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
&squeeze_batch_dims/strided_slice/stackз
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        2*
(squeeze_batch_dims/strided_slice/stack_1Ю
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2╥
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
valueB"          2"
 squeeze_batch_dims/Reshape/shape╜
squeeze_batch_dims/ReshapeReshapeconv1d/Squeeze:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
squeeze_batch_dims/Reshape┼
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp2squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp╤
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         2
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
         2 
squeeze_batch_dims/concat/axisё
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat╩
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:         2
squeeze_batch_dims/Reshape_1╥
IdentityIdentity%squeeze_batch_dims/Reshape_1:output:0#^conv1d/ExpandDims_1/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╥	
ў
F__inference_iktogmlrmp_layer_call_and_return_conditional_losses_222363

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
╕'
┤
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_225947

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

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpвReadVariableOpвReadVariableOp_1вReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
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
:          2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:          2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:          2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:          2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:          2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:          2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:          2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:          2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          2
mul_5▀
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identityу

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_1у

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:          :          :          : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
 
┐
+__inference_vdaevhnmja_layer_call_fn_225859

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

identity_2ИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_2214182
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:          :          :          : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
Г

х
while_cond_225018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_225018___redundant_placeholder04
0while_while_cond_225018___redundant_placeholder14
0while_while_cond_225018___redundant_placeholder24
0while_while_cond_225018___redundant_placeholder34
0while_while_cond_225018___redundant_placeholder44
0while_while_cond_225018___redundant_placeholder54
0while_while_cond_225018___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
▀Y
Ж
while_body_224591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_ddlymsxapn_matmul_readvariableop_resource_0:	АF
3while_ddlymsxapn_matmul_1_readvariableop_resource_0:	 АA
2while_ddlymsxapn_biasadd_readvariableop_resource_0:	А8
*while_ddlymsxapn_readvariableop_resource_0: :
,while_ddlymsxapn_readvariableop_1_resource_0: :
,while_ddlymsxapn_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_ddlymsxapn_matmul_readvariableop_resource:	АD
1while_ddlymsxapn_matmul_1_readvariableop_resource:	 А?
0while_ddlymsxapn_biasadd_readvariableop_resource:	А6
(while_ddlymsxapn_readvariableop_resource: 8
*while_ddlymsxapn_readvariableop_1_resource: 8
*while_ddlymsxapn_readvariableop_2_resource: Ив'while/ddlymsxapn/BiasAdd/ReadVariableOpв&while/ddlymsxapn/MatMul/ReadVariableOpв(while/ddlymsxapn/MatMul_1/ReadVariableOpвwhile/ddlymsxapn/ReadVariableOpв!while/ddlymsxapn/ReadVariableOp_1в!while/ddlymsxapn/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/ddlymsxapn/MatMul/ReadVariableOpReadVariableOp1while_ddlymsxapn_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/ddlymsxapn/MatMul/ReadVariableOp╤
while/ddlymsxapn/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul╔
(while/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp3while_ddlymsxapn_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/ddlymsxapn/MatMul_1/ReadVariableOp║
while/ddlymsxapn/MatMul_1MatMulwhile_placeholder_20while/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul_1░
while/ddlymsxapn/addAddV2!while/ddlymsxapn/MatMul:product:0#while/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/add┬
'while/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp2while_ddlymsxapn_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/ddlymsxapn/BiasAdd/ReadVariableOp╜
while/ddlymsxapn/BiasAddBiasAddwhile/ddlymsxapn/add:z:0/while/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/BiasAddЖ
 while/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/ddlymsxapn/split/split_dimГ
while/ddlymsxapn/splitSplit)while/ddlymsxapn/split/split_dim:output:0!while/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/ddlymsxapn/splitй
while/ddlymsxapn/ReadVariableOpReadVariableOp*while_ddlymsxapn_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/ddlymsxapn/ReadVariableOpг
while/ddlymsxapn/mulMul'while/ddlymsxapn/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mulж
while/ddlymsxapn/add_1AddV2while/ddlymsxapn/split:output:0while/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_1Н
while/ddlymsxapn/SigmoidSigmoidwhile/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoidп
!while/ddlymsxapn/ReadVariableOp_1ReadVariableOp,while_ddlymsxapn_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_1й
while/ddlymsxapn/mul_1Mul)while/ddlymsxapn/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_1и
while/ddlymsxapn/add_2AddV2while/ddlymsxapn/split:output:1while/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_2С
while/ddlymsxapn/Sigmoid_1Sigmoidwhile/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_1Ю
while/ddlymsxapn/mul_2Mulwhile/ddlymsxapn/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_2Й
while/ddlymsxapn/TanhTanhwhile/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanhв
while/ddlymsxapn/mul_3Mulwhile/ddlymsxapn/Sigmoid:y:0while/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_3г
while/ddlymsxapn/add_3AddV2while/ddlymsxapn/mul_2:z:0while/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_3п
!while/ddlymsxapn/ReadVariableOp_2ReadVariableOp,while_ddlymsxapn_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_2░
while/ddlymsxapn/mul_4Mul)while/ddlymsxapn/ReadVariableOp_2:value:0while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_4и
while/ddlymsxapn/add_4AddV2while/ddlymsxapn/split:output:3while/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_4С
while/ddlymsxapn/Sigmoid_2Sigmoidwhile/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_2И
while/ddlymsxapn/Tanh_1Tanhwhile/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanh_1ж
while/ddlymsxapn/mul_5Mulwhile/ddlymsxapn/Sigmoid_2:y:0while/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ddlymsxapn/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/ddlymsxapn/mul_5:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/ddlymsxapn/add_3:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_ddlymsxapn_biasadd_readvariableop_resource2while_ddlymsxapn_biasadd_readvariableop_resource_0"h
1while_ddlymsxapn_matmul_1_readvariableop_resource3while_ddlymsxapn_matmul_1_readvariableop_resource_0"d
/while_ddlymsxapn_matmul_readvariableop_resource1while_ddlymsxapn_matmul_readvariableop_resource_0"Z
*while_ddlymsxapn_readvariableop_1_resource,while_ddlymsxapn_readvariableop_1_resource_0"Z
*while_ddlymsxapn_readvariableop_2_resource,while_ddlymsxapn_readvariableop_2_resource_0"V
(while_ddlymsxapn_readvariableop_resource*while_ddlymsxapn_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/ddlymsxapn/BiasAdd/ReadVariableOp'while/ddlymsxapn/BiasAdd/ReadVariableOp2P
&while/ddlymsxapn/MatMul/ReadVariableOp&while/ddlymsxapn/MatMul/ReadVariableOp2T
(while/ddlymsxapn/MatMul_1/ReadVariableOp(while/ddlymsxapn/MatMul_1/ReadVariableOp2B
while/ddlymsxapn/ReadVariableOpwhile/ddlymsxapn/ReadVariableOp2F
!while/ddlymsxapn/ReadVariableOp_1!while/ddlymsxapn/ReadVariableOp_12F
!while/ddlymsxapn/ReadVariableOp_2!while/ddlymsxapn/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
ЩF
у
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_221331

inputs$
vdaevhnmja_221232:	 А$
vdaevhnmja_221234:	 А 
vdaevhnmja_221236:	А
vdaevhnmja_221238: 
vdaevhnmja_221240: 
vdaevhnmja_221242: 
identityИв"vdaevhnmja/StatefulPartitionedCallвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
 :                   2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_2╙
"vdaevhnmja/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0vdaevhnmja_221232vdaevhnmja_221234vdaevhnmja_221236vdaevhnmja_221238vdaevhnmja_221240vdaevhnmja_221242*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_2212312$
"vdaevhnmja/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0vdaevhnmja_221232vdaevhnmja_221234vdaevhnmja_221236vdaevhnmja_221238vdaevhnmja_221240vdaevhnmja_221242*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_221251*
condR
while_cond_221250*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
transpose_1Щ
IdentityIdentitystrided_slice_3:output:0#^vdaevhnmja/StatefulPartitionedCall^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2H
"vdaevhnmja/StatefulPartitionedCall"vdaevhnmja/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
Г

х
while_cond_222726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_222726___redundant_placeholder04
0while_while_cond_222726___redundant_placeholder14
0while_while_cond_222726___redundant_placeholder24
0while_while_cond_222726___redundant_placeholder34
0while_while_cond_222726___redundant_placeholder44
0while_while_cond_222726___redundant_placeholder54
0while_while_cond_222726___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Ц
Э
+__inference_sequential_layer_call_fn_223011

ahzwxypkrh
unknown:
	unknown_0:
	unknown_1:	А
	unknown_2:	 А
	unknown_3:	А
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:	 А
	unknown_8:	 А
	unknown_9:	А

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCall
ahzwxypkrhunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2229392
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
ahzwxypkrh
гh
Д
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225660

inputs<
)vdaevhnmja_matmul_readvariableop_resource:	 А>
+vdaevhnmja_matmul_1_readvariableop_resource:	 А9
*vdaevhnmja_biasadd_readvariableop_resource:	А0
"vdaevhnmja_readvariableop_resource: 2
$vdaevhnmja_readvariableop_1_resource: 2
$vdaevhnmja_readvariableop_2_resource: 
identityИв!vdaevhnmja/BiasAdd/ReadVariableOpв vdaevhnmja/MatMul/ReadVariableOpв"vdaevhnmja/MatMul_1/ReadVariableOpвvdaevhnmja/ReadVariableOpвvdaevhnmja/ReadVariableOp_1вvdaevhnmja/ReadVariableOp_2вwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
:          2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_2п
 vdaevhnmja/MatMul/ReadVariableOpReadVariableOp)vdaevhnmja_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 vdaevhnmja/MatMul/ReadVariableOpз
vdaevhnmja/MatMulMatMulstrided_slice_2:output:0(vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul╡
"vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp+vdaevhnmja_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"vdaevhnmja/MatMul_1/ReadVariableOpг
vdaevhnmja/MatMul_1MatMulzeros:output:0*vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul_1Ш
vdaevhnmja/addAddV2vdaevhnmja/MatMul:product:0vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/addо
!vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp*vdaevhnmja_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!vdaevhnmja/BiasAdd/ReadVariableOpе
vdaevhnmja/BiasAddBiasAddvdaevhnmja/add:z:0)vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/BiasAddz
vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
vdaevhnmja/split/split_dimы
vdaevhnmja/splitSplit#vdaevhnmja/split/split_dim:output:0vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
vdaevhnmja/splitХ
vdaevhnmja/ReadVariableOpReadVariableOp"vdaevhnmja_readvariableop_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOpО
vdaevhnmja/mulMul!vdaevhnmja/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mulО
vdaevhnmja/add_1AddV2vdaevhnmja/split:output:0vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_1{
vdaevhnmja/SigmoidSigmoidvdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/SigmoidЫ
vdaevhnmja/ReadVariableOp_1ReadVariableOp$vdaevhnmja_readvariableop_1_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_1Ф
vdaevhnmja/mul_1Mul#vdaevhnmja/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_1Р
vdaevhnmja/add_2AddV2vdaevhnmja/split:output:1vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_2
vdaevhnmja/Sigmoid_1Sigmoidvdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_1Й
vdaevhnmja/mul_2Mulvdaevhnmja/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_2w
vdaevhnmja/TanhTanhvdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
vdaevhnmja/TanhК
vdaevhnmja/mul_3Mulvdaevhnmja/Sigmoid:y:0vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_3Л
vdaevhnmja/add_3AddV2vdaevhnmja/mul_2:z:0vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_3Ы
vdaevhnmja/ReadVariableOp_2ReadVariableOp$vdaevhnmja_readvariableop_2_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_2Ш
vdaevhnmja/mul_4Mul#vdaevhnmja/ReadVariableOp_2:value:0vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_4Р
vdaevhnmja/add_4AddV2vdaevhnmja/split:output:3vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_4
vdaevhnmja/Sigmoid_2Sigmoidvdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_2v
vdaevhnmja/Tanh_1Tanhvdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Tanh_1О
vdaevhnmja/mul_5Mulvdaevhnmja/Sigmoid_2:y:0vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)vdaevhnmja_matmul_readvariableop_resource+vdaevhnmja_matmul_1_readvariableop_resource*vdaevhnmja_biasadd_readvariableop_resource"vdaevhnmja_readvariableop_resource$vdaevhnmja_readvariableop_1_resource$vdaevhnmja_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_225559*
condR
while_cond_225558*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
transpose_1╕
IdentityIdentitystrided_slice_3:output:0"^vdaevhnmja/BiasAdd/ReadVariableOp!^vdaevhnmja/MatMul/ReadVariableOp#^vdaevhnmja/MatMul_1/ReadVariableOp^vdaevhnmja/ReadVariableOp^vdaevhnmja/ReadVariableOp_1^vdaevhnmja/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!vdaevhnmja/BiasAdd/ReadVariableOp!vdaevhnmja/BiasAdd/ReadVariableOp2D
 vdaevhnmja/MatMul/ReadVariableOp vdaevhnmja/MatMul/ReadVariableOp2H
"vdaevhnmja/MatMul_1/ReadVariableOp"vdaevhnmja/MatMul_1/ReadVariableOp26
vdaevhnmja/ReadVariableOpvdaevhnmja/ReadVariableOp2:
vdaevhnmja/ReadVariableOp_1vdaevhnmja/ReadVariableOp_12:
vdaevhnmja/ReadVariableOp_2vdaevhnmja/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
┘
Г
+__inference_omilqdycns_layer_call_fn_224152

inputs
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCall▒
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_omilqdycns_layer_call_and_return_conditional_losses_2228282
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
░'
▓
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_220473

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

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpвReadVariableOpвReadVariableOp_1вReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
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
:          2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:          2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:          2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:          2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:          2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:          2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:          2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:          2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          2
mul_5▀
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identityу

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_1у

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:         :          :          : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:          
 
_user_specified_namestates:OK
'
_output_shapes
:          
 
_user_specified_namestates
Р
Г
vlxoswgdqw_while_cond_2239122
.vlxoswgdqw_while_vlxoswgdqw_while_loop_counter8
4vlxoswgdqw_while_vlxoswgdqw_while_maximum_iterations 
vlxoswgdqw_while_placeholder"
vlxoswgdqw_while_placeholder_1"
vlxoswgdqw_while_placeholder_2"
vlxoswgdqw_while_placeholder_34
0vlxoswgdqw_while_less_vlxoswgdqw_strided_slice_1J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223912___redundant_placeholder0J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223912___redundant_placeholder1J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223912___redundant_placeholder2J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223912___redundant_placeholder3J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223912___redundant_placeholder4J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223912___redundant_placeholder5J
Fvlxoswgdqw_while_vlxoswgdqw_while_cond_223912___redundant_placeholder6
vlxoswgdqw_while_identity
з
vlxoswgdqw/while/LessLessvlxoswgdqw_while_placeholder0vlxoswgdqw_while_less_vlxoswgdqw_strided_slice_1*
T0*
_output_shapes
: 2
vlxoswgdqw/while/Less~
vlxoswgdqw/while/IdentityIdentityvlxoswgdqw/while/Less:z:0*
T0
*
_output_shapes
: 2
vlxoswgdqw/while/Identity"?
vlxoswgdqw_while_identity"vlxoswgdqw/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Г

х
while_cond_224590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_224590___redundant_placeholder04
0while_while_cond_224590___redundant_placeholder14
0while_while_cond_224590___redundant_placeholder24
0while_while_cond_224590___redundant_placeholder34
0while_while_cond_224590___redundant_placeholder44
0while_while_cond_224590___redundant_placeholder54
0while_while_cond_224590___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Ю
п
F__inference_sequential_layer_call_and_return_conditional_losses_223052

ahzwxypkrh'
iigfihrkup_223014:
iigfihrkup_223016:$
omilqdycns_223020:	А$
omilqdycns_223022:	 А 
omilqdycns_223024:	А
omilqdycns_223026: 
omilqdycns_223028: 
omilqdycns_223030: $
vlxoswgdqw_223033:	 А$
vlxoswgdqw_223035:	 А 
vlxoswgdqw_223037:	А
vlxoswgdqw_223039: 
vlxoswgdqw_223041: 
vlxoswgdqw_223043: #
iktogmlrmp_223046: 
iktogmlrmp_223048:
identityИв"iigfihrkup/StatefulPartitionedCallв"iktogmlrmp/StatefulPartitionedCallв"omilqdycns/StatefulPartitionedCallв"vlxoswgdqw/StatefulPartitionedCallн
"iigfihrkup/StatefulPartitionedCallStatefulPartitionedCall
ahzwxypkrhiigfihrkup_223014iigfihrkup_223016*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_iigfihrkup_layer_call_and_return_conditional_losses_2219462$
"iigfihrkup/StatefulPartitionedCallЖ
xfbsciqeco/PartitionedCallPartitionedCall+iigfihrkup/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_xfbsciqeco_layer_call_and_return_conditional_losses_2219652
xfbsciqeco/PartitionedCallЦ
"omilqdycns/StatefulPartitionedCallStatefulPartitionedCall#xfbsciqeco/PartitionedCall:output:0omilqdycns_223020omilqdycns_223022omilqdycns_223024omilqdycns_223026omilqdycns_223028omilqdycns_223030*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_omilqdycns_layer_call_and_return_conditional_losses_2221462$
"omilqdycns/StatefulPartitionedCallЪ
"vlxoswgdqw/StatefulPartitionedCallStatefulPartitionedCall+omilqdycns/StatefulPartitionedCall:output:0vlxoswgdqw_223033vlxoswgdqw_223035vlxoswgdqw_223037vlxoswgdqw_223039vlxoswgdqw_223041vlxoswgdqw_223043*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_2223392$
"vlxoswgdqw/StatefulPartitionedCall╞
"iktogmlrmp/StatefulPartitionedCallStatefulPartitionedCall+vlxoswgdqw/StatefulPartitionedCall:output:0iktogmlrmp_223046iktogmlrmp_223048*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_iktogmlrmp_layer_call_and_return_conditional_losses_2223632$
"iktogmlrmp/StatefulPartitionedCallУ
IdentityIdentity+iktogmlrmp/StatefulPartitionedCall:output:0#^iigfihrkup/StatefulPartitionedCall#^iktogmlrmp/StatefulPartitionedCall#^omilqdycns/StatefulPartitionedCall#^vlxoswgdqw/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"iigfihrkup/StatefulPartitionedCall"iigfihrkup/StatefulPartitionedCall2H
"iktogmlrmp/StatefulPartitionedCall"iktogmlrmp/StatefulPartitionedCall2H
"omilqdycns/StatefulPartitionedCall"omilqdycns/StatefulPartitionedCall2H
"vlxoswgdqw/StatefulPartitionedCall"vlxoswgdqw/StatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
ahzwxypkrh
Ц
Э
+__inference_sequential_layer_call_fn_222405

ahzwxypkrh
unknown:
	unknown_0:
	unknown_1:	А
	unknown_2:	 А
	unknown_3:	А
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:	 А
	unknown_8:	 А
	unknown_9:	А

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCall
ahzwxypkrhunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2223702
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
ahzwxypkrh
 
┐
+__inference_ddlymsxapn_layer_call_fn_225725

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

identity_2ИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_2206602
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:         :          :          : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
Г

х
while_cond_225558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_225558___redundant_placeholder04
0while_while_cond_225558___redundant_placeholder14
0while_while_cond_225558___redundant_placeholder24
0while_while_cond_225558___redundant_placeholder34
0while_while_cond_225558___redundant_placeholder44
0while_while_cond_225558___redundant_placeholder54
0while_while_cond_225558___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Э
б	
'sequential_omilqdycns_while_cond_220102H
Dsequential_omilqdycns_while_sequential_omilqdycns_while_loop_counterN
Jsequential_omilqdycns_while_sequential_omilqdycns_while_maximum_iterations+
'sequential_omilqdycns_while_placeholder-
)sequential_omilqdycns_while_placeholder_1-
)sequential_omilqdycns_while_placeholder_2-
)sequential_omilqdycns_while_placeholder_3J
Fsequential_omilqdycns_while_less_sequential_omilqdycns_strided_slice_1`
\sequential_omilqdycns_while_sequential_omilqdycns_while_cond_220102___redundant_placeholder0`
\sequential_omilqdycns_while_sequential_omilqdycns_while_cond_220102___redundant_placeholder1`
\sequential_omilqdycns_while_sequential_omilqdycns_while_cond_220102___redundant_placeholder2`
\sequential_omilqdycns_while_sequential_omilqdycns_while_cond_220102___redundant_placeholder3`
\sequential_omilqdycns_while_sequential_omilqdycns_while_cond_220102___redundant_placeholder4`
\sequential_omilqdycns_while_sequential_omilqdycns_while_cond_220102___redundant_placeholder5`
\sequential_omilqdycns_while_sequential_omilqdycns_while_cond_220102___redundant_placeholder6(
$sequential_omilqdycns_while_identity
▐
 sequential/omilqdycns/while/LessLess'sequential_omilqdycns_while_placeholderFsequential_omilqdycns_while_less_sequential_omilqdycns_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/omilqdycns/while/LessЯ
$sequential/omilqdycns/while/IdentityIdentity$sequential/omilqdycns/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/omilqdycns/while/Identity"U
$sequential_omilqdycns_while_identity-sequential/omilqdycns/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
ЭF
у
F__inference_omilqdycns_layer_call_and_return_conditional_losses_220836

inputs$
ddlymsxapn_220737:	А$
ddlymsxapn_220739:	 А 
ddlymsxapn_220741:	А
ddlymsxapn_220743: 
ddlymsxapn_220745: 
ddlymsxapn_220747: 
identityИв"ddlymsxapn/StatefulPartitionedCallвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
 :                  2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╙
"ddlymsxapn/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0ddlymsxapn_220737ddlymsxapn_220739ddlymsxapn_220741ddlymsxapn_220743ddlymsxapn_220745ddlymsxapn_220747*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_2206602$
"ddlymsxapn/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0ddlymsxapn_220737ddlymsxapn_220739ddlymsxapn_220741ddlymsxapn_220743ddlymsxapn_220745ddlymsxapn_220747*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_220756*
condR
while_cond_220755*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
transpose_1Э
IdentityIdentitytranspose_1:y:0#^ddlymsxapn/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2H
"ddlymsxapn/StatefulPartitionedCall"ddlymsxapn/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ЩF
у
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_221594

inputs$
vdaevhnmja_221495:	 А$
vdaevhnmja_221497:	 А 
vdaevhnmja_221499:	А
vdaevhnmja_221501: 
vdaevhnmja_221503: 
vdaevhnmja_221505: 
identityИв"vdaevhnmja/StatefulPartitionedCallвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
 :                   2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_2╙
"vdaevhnmja/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0vdaevhnmja_221495vdaevhnmja_221497vdaevhnmja_221499vdaevhnmja_221501vdaevhnmja_221503vdaevhnmja_221505*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_2214182$
"vdaevhnmja/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0vdaevhnmja_221495vdaevhnmja_221497vdaevhnmja_221499vdaevhnmja_221501vdaevhnmja_221503vdaevhnmja_221505*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_221514*
condR
while_cond_221513*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
transpose_1Щ
IdentityIdentitystrided_slice_3:output:0#^vdaevhnmja/StatefulPartitionedCall^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2H
"vdaevhnmja/StatefulPartitionedCall"vdaevhnmja/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
Г

х
while_cond_224770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_224770___redundant_placeholder04
0while_while_cond_224770___redundant_placeholder14
0while_while_cond_224770___redundant_placeholder24
0while_while_cond_224770___redundant_placeholder34
0while_while_cond_224770___redundant_placeholder44
0while_while_cond_224770___redundant_placeholder54
0while_while_cond_224770___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
гh
Д
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_222339

inputs<
)vdaevhnmja_matmul_readvariableop_resource:	 А>
+vdaevhnmja_matmul_1_readvariableop_resource:	 А9
*vdaevhnmja_biasadd_readvariableop_resource:	А0
"vdaevhnmja_readvariableop_resource: 2
$vdaevhnmja_readvariableop_1_resource: 2
$vdaevhnmja_readvariableop_2_resource: 
identityИв!vdaevhnmja/BiasAdd/ReadVariableOpв vdaevhnmja/MatMul/ReadVariableOpв"vdaevhnmja/MatMul_1/ReadVariableOpвvdaevhnmja/ReadVariableOpвvdaevhnmja/ReadVariableOp_1вvdaevhnmja/ReadVariableOp_2вwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
:          2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_2п
 vdaevhnmja/MatMul/ReadVariableOpReadVariableOp)vdaevhnmja_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 vdaevhnmja/MatMul/ReadVariableOpз
vdaevhnmja/MatMulMatMulstrided_slice_2:output:0(vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul╡
"vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp+vdaevhnmja_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"vdaevhnmja/MatMul_1/ReadVariableOpг
vdaevhnmja/MatMul_1MatMulzeros:output:0*vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul_1Ш
vdaevhnmja/addAddV2vdaevhnmja/MatMul:product:0vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/addо
!vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp*vdaevhnmja_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!vdaevhnmja/BiasAdd/ReadVariableOpе
vdaevhnmja/BiasAddBiasAddvdaevhnmja/add:z:0)vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/BiasAddz
vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
vdaevhnmja/split/split_dimы
vdaevhnmja/splitSplit#vdaevhnmja/split/split_dim:output:0vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
vdaevhnmja/splitХ
vdaevhnmja/ReadVariableOpReadVariableOp"vdaevhnmja_readvariableop_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOpО
vdaevhnmja/mulMul!vdaevhnmja/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mulО
vdaevhnmja/add_1AddV2vdaevhnmja/split:output:0vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_1{
vdaevhnmja/SigmoidSigmoidvdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/SigmoidЫ
vdaevhnmja/ReadVariableOp_1ReadVariableOp$vdaevhnmja_readvariableop_1_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_1Ф
vdaevhnmja/mul_1Mul#vdaevhnmja/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_1Р
vdaevhnmja/add_2AddV2vdaevhnmja/split:output:1vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_2
vdaevhnmja/Sigmoid_1Sigmoidvdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_1Й
vdaevhnmja/mul_2Mulvdaevhnmja/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_2w
vdaevhnmja/TanhTanhvdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
vdaevhnmja/TanhК
vdaevhnmja/mul_3Mulvdaevhnmja/Sigmoid:y:0vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_3Л
vdaevhnmja/add_3AddV2vdaevhnmja/mul_2:z:0vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_3Ы
vdaevhnmja/ReadVariableOp_2ReadVariableOp$vdaevhnmja_readvariableop_2_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_2Ш
vdaevhnmja/mul_4Mul#vdaevhnmja/ReadVariableOp_2:value:0vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_4Р
vdaevhnmja/add_4AddV2vdaevhnmja/split:output:3vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_4
vdaevhnmja/Sigmoid_2Sigmoidvdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_2v
vdaevhnmja/Tanh_1Tanhvdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Tanh_1О
vdaevhnmja/mul_5Mulvdaevhnmja/Sigmoid_2:y:0vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)vdaevhnmja_matmul_readvariableop_resource+vdaevhnmja_matmul_1_readvariableop_resource*vdaevhnmja_biasadd_readvariableop_resource"vdaevhnmja_readvariableop_resource$vdaevhnmja_readvariableop_1_resource$vdaevhnmja_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_222238*
condR
while_cond_222237*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
transpose_1╕
IdentityIdentitystrided_slice_3:output:0"^vdaevhnmja/BiasAdd/ReadVariableOp!^vdaevhnmja/MatMul/ReadVariableOp#^vdaevhnmja/MatMul_1/ReadVariableOp^vdaevhnmja/ReadVariableOp^vdaevhnmja/ReadVariableOp_1^vdaevhnmja/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!vdaevhnmja/BiasAdd/ReadVariableOp!vdaevhnmja/BiasAdd/ReadVariableOp2D
 vdaevhnmja/MatMul/ReadVariableOp vdaevhnmja/MatMul/ReadVariableOp2H
"vdaevhnmja/MatMul_1/ReadVariableOp"vdaevhnmja/MatMul_1/ReadVariableOp26
vdaevhnmja/ReadVariableOpvdaevhnmja/ReadVariableOp2:
vdaevhnmja/ReadVariableOp_1vdaevhnmja/ReadVariableOp_12:
vdaevhnmja/ReadVariableOp_2vdaevhnmja/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
╞
Ь
+__inference_iigfihrkup_layer_call_fn_224029

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_iigfihrkup_layer_call_and_return_conditional_losses_2219462
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╟)
┼
while_body_220493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_ddlymsxapn_220517_0:	А,
while_ddlymsxapn_220519_0:	 А(
while_ddlymsxapn_220521_0:	А'
while_ddlymsxapn_220523_0: '
while_ddlymsxapn_220525_0: '
while_ddlymsxapn_220527_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_ddlymsxapn_220517:	А*
while_ddlymsxapn_220519:	 А&
while_ddlymsxapn_220521:	А%
while_ddlymsxapn_220523: %
while_ddlymsxapn_220525: %
while_ddlymsxapn_220527: Ив(while/ddlymsxapn/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemп
(while/ddlymsxapn/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_ddlymsxapn_220517_0while_ddlymsxapn_220519_0while_ddlymsxapn_220521_0while_ddlymsxapn_220523_0while_ddlymsxapn_220525_0while_ddlymsxapn_220527_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_2204732*
(while/ddlymsxapn/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/ddlymsxapn/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/ddlymsxapn/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/ddlymsxapn/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/ddlymsxapn/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/ddlymsxapn/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/ddlymsxapn/StatefulPartitionedCall:output:1)^while/ddlymsxapn/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/ddlymsxapn/StatefulPartitionedCall:output:2)^while/ddlymsxapn/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5"4
while_ddlymsxapn_220517while_ddlymsxapn_220517_0"4
while_ddlymsxapn_220519while_ddlymsxapn_220519_0"4
while_ddlymsxapn_220521while_ddlymsxapn_220521_0"4
while_ddlymsxapn_220523while_ddlymsxapn_220523_0"4
while_ddlymsxapn_220525while_ddlymsxapn_220525_0"4
while_ddlymsxapn_220527while_ddlymsxapn_220527_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2T
(while/ddlymsxapn/StatefulPartitionedCall(while/ddlymsxapn/StatefulPartitionedCall: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
Г

х
while_cond_221513
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_221513___redundant_placeholder04
0while_while_cond_221513___redundant_placeholder14
0while_while_cond_221513___redundant_placeholder24
0while_while_cond_221513___redundant_placeholder34
0while_while_cond_221513___redundant_placeholder44
0while_while_cond_221513___redundant_placeholder54
0while_while_cond_221513___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Г

х
while_cond_224410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_224410___redundant_placeholder04
0while_while_cond_224410___redundant_placeholder14
0while_while_cond_224410___redundant_placeholder24
0while_while_cond_224410___redundant_placeholder34
0while_while_cond_224410___redundant_placeholder44
0while_while_cond_224410___redundant_placeholder54
0while_while_cond_224410___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Г	
Е
+__inference_omilqdycns_layer_call_fn_224101
inputs_0
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCall╝
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                   *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_omilqdycns_layer_call_and_return_conditional_losses_2205732
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╕'
┤
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_225813

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

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpвReadVariableOpвReadVariableOp_1вReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
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
:          2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:          2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:          2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:          2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:          2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:          2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:          2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:          2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          2
mul_5▀
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identityу

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_1у

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:         :          :          : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
в
Ш
+__inference_iktogmlrmp_layer_call_fn_225669

inputs
unknown: 
	unknown_0:
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_iktogmlrmp_layer_call_and_return_conditional_losses_2223632
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
▀Y
Ж
while_body_224411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_ddlymsxapn_matmul_readvariableop_resource_0:	АF
3while_ddlymsxapn_matmul_1_readvariableop_resource_0:	 АA
2while_ddlymsxapn_biasadd_readvariableop_resource_0:	А8
*while_ddlymsxapn_readvariableop_resource_0: :
,while_ddlymsxapn_readvariableop_1_resource_0: :
,while_ddlymsxapn_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_ddlymsxapn_matmul_readvariableop_resource:	АD
1while_ddlymsxapn_matmul_1_readvariableop_resource:	 А?
0while_ddlymsxapn_biasadd_readvariableop_resource:	А6
(while_ddlymsxapn_readvariableop_resource: 8
*while_ddlymsxapn_readvariableop_1_resource: 8
*while_ddlymsxapn_readvariableop_2_resource: Ив'while/ddlymsxapn/BiasAdd/ReadVariableOpв&while/ddlymsxapn/MatMul/ReadVariableOpв(while/ddlymsxapn/MatMul_1/ReadVariableOpвwhile/ddlymsxapn/ReadVariableOpв!while/ddlymsxapn/ReadVariableOp_1в!while/ddlymsxapn/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/ddlymsxapn/MatMul/ReadVariableOpReadVariableOp1while_ddlymsxapn_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/ddlymsxapn/MatMul/ReadVariableOp╤
while/ddlymsxapn/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul╔
(while/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp3while_ddlymsxapn_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/ddlymsxapn/MatMul_1/ReadVariableOp║
while/ddlymsxapn/MatMul_1MatMulwhile_placeholder_20while/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul_1░
while/ddlymsxapn/addAddV2!while/ddlymsxapn/MatMul:product:0#while/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/add┬
'while/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp2while_ddlymsxapn_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/ddlymsxapn/BiasAdd/ReadVariableOp╜
while/ddlymsxapn/BiasAddBiasAddwhile/ddlymsxapn/add:z:0/while/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/BiasAddЖ
 while/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/ddlymsxapn/split/split_dimГ
while/ddlymsxapn/splitSplit)while/ddlymsxapn/split/split_dim:output:0!while/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/ddlymsxapn/splitй
while/ddlymsxapn/ReadVariableOpReadVariableOp*while_ddlymsxapn_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/ddlymsxapn/ReadVariableOpг
while/ddlymsxapn/mulMul'while/ddlymsxapn/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mulж
while/ddlymsxapn/add_1AddV2while/ddlymsxapn/split:output:0while/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_1Н
while/ddlymsxapn/SigmoidSigmoidwhile/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoidп
!while/ddlymsxapn/ReadVariableOp_1ReadVariableOp,while_ddlymsxapn_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_1й
while/ddlymsxapn/mul_1Mul)while/ddlymsxapn/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_1и
while/ddlymsxapn/add_2AddV2while/ddlymsxapn/split:output:1while/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_2С
while/ddlymsxapn/Sigmoid_1Sigmoidwhile/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_1Ю
while/ddlymsxapn/mul_2Mulwhile/ddlymsxapn/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_2Й
while/ddlymsxapn/TanhTanhwhile/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanhв
while/ddlymsxapn/mul_3Mulwhile/ddlymsxapn/Sigmoid:y:0while/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_3г
while/ddlymsxapn/add_3AddV2while/ddlymsxapn/mul_2:z:0while/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_3п
!while/ddlymsxapn/ReadVariableOp_2ReadVariableOp,while_ddlymsxapn_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_2░
while/ddlymsxapn/mul_4Mul)while/ddlymsxapn/ReadVariableOp_2:value:0while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_4и
while/ddlymsxapn/add_4AddV2while/ddlymsxapn/split:output:3while/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_4С
while/ddlymsxapn/Sigmoid_2Sigmoidwhile/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_2И
while/ddlymsxapn/Tanh_1Tanhwhile/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanh_1ж
while/ddlymsxapn/mul_5Mulwhile/ddlymsxapn/Sigmoid_2:y:0while/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ddlymsxapn/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/ddlymsxapn/mul_5:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/ddlymsxapn/add_3:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_ddlymsxapn_biasadd_readvariableop_resource2while_ddlymsxapn_biasadd_readvariableop_resource_0"h
1while_ddlymsxapn_matmul_1_readvariableop_resource3while_ddlymsxapn_matmul_1_readvariableop_resource_0"d
/while_ddlymsxapn_matmul_readvariableop_resource1while_ddlymsxapn_matmul_readvariableop_resource_0"Z
*while_ddlymsxapn_readvariableop_1_resource,while_ddlymsxapn_readvariableop_1_resource_0"Z
*while_ddlymsxapn_readvariableop_2_resource,while_ddlymsxapn_readvariableop_2_resource_0"V
(while_ddlymsxapn_readvariableop_resource*while_ddlymsxapn_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/ddlymsxapn/BiasAdd/ReadVariableOp'while/ddlymsxapn/BiasAdd/ReadVariableOp2P
&while/ddlymsxapn/MatMul/ReadVariableOp&while/ddlymsxapn/MatMul/ReadVariableOp2T
(while/ddlymsxapn/MatMul_1/ReadVariableOp(while/ddlymsxapn/MatMul_1/ReadVariableOp2B
while/ddlymsxapn/ReadVariableOpwhile/ddlymsxapn/ReadVariableOp2F
!while/ddlymsxapn/ReadVariableOp_1!while/ddlymsxapn/ReadVariableOp_12F
!while/ddlymsxapn/ReadVariableOp_2!while/ddlymsxapn/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
щ
Е
+__inference_vlxoswgdqw_layer_call_fn_224889
inputs_0
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_2213312
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
┘
Г
+__inference_omilqdycns_layer_call_fn_224135

inputs
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCall▒
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_omilqdycns_layer_call_and_return_conditional_losses_2221462
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Г

х
while_cond_222237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_222237___redundant_placeholder04
0while_while_cond_222237___redundant_placeholder14
0while_while_cond_222237___redundant_placeholder24
0while_while_cond_222237___redundant_placeholder34
0while_while_cond_222237___redundant_placeholder44
0while_while_cond_222237___redundant_placeholder54
0while_while_cond_222237___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
гh
Д
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225480

inputs<
)vdaevhnmja_matmul_readvariableop_resource:	 А>
+vdaevhnmja_matmul_1_readvariableop_resource:	 А9
*vdaevhnmja_biasadd_readvariableop_resource:	А0
"vdaevhnmja_readvariableop_resource: 2
$vdaevhnmja_readvariableop_1_resource: 2
$vdaevhnmja_readvariableop_2_resource: 
identityИв!vdaevhnmja/BiasAdd/ReadVariableOpв vdaevhnmja/MatMul/ReadVariableOpв"vdaevhnmja/MatMul_1/ReadVariableOpвvdaevhnmja/ReadVariableOpвvdaevhnmja/ReadVariableOp_1вvdaevhnmja/ReadVariableOp_2вwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
:          2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_2п
 vdaevhnmja/MatMul/ReadVariableOpReadVariableOp)vdaevhnmja_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 vdaevhnmja/MatMul/ReadVariableOpз
vdaevhnmja/MatMulMatMulstrided_slice_2:output:0(vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul╡
"vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp+vdaevhnmja_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"vdaevhnmja/MatMul_1/ReadVariableOpг
vdaevhnmja/MatMul_1MatMulzeros:output:0*vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul_1Ш
vdaevhnmja/addAddV2vdaevhnmja/MatMul:product:0vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/addо
!vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp*vdaevhnmja_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!vdaevhnmja/BiasAdd/ReadVariableOpе
vdaevhnmja/BiasAddBiasAddvdaevhnmja/add:z:0)vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/BiasAddz
vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
vdaevhnmja/split/split_dimы
vdaevhnmja/splitSplit#vdaevhnmja/split/split_dim:output:0vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
vdaevhnmja/splitХ
vdaevhnmja/ReadVariableOpReadVariableOp"vdaevhnmja_readvariableop_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOpО
vdaevhnmja/mulMul!vdaevhnmja/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mulО
vdaevhnmja/add_1AddV2vdaevhnmja/split:output:0vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_1{
vdaevhnmja/SigmoidSigmoidvdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/SigmoidЫ
vdaevhnmja/ReadVariableOp_1ReadVariableOp$vdaevhnmja_readvariableop_1_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_1Ф
vdaevhnmja/mul_1Mul#vdaevhnmja/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_1Р
vdaevhnmja/add_2AddV2vdaevhnmja/split:output:1vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_2
vdaevhnmja/Sigmoid_1Sigmoidvdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_1Й
vdaevhnmja/mul_2Mulvdaevhnmja/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_2w
vdaevhnmja/TanhTanhvdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
vdaevhnmja/TanhК
vdaevhnmja/mul_3Mulvdaevhnmja/Sigmoid:y:0vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_3Л
vdaevhnmja/add_3AddV2vdaevhnmja/mul_2:z:0vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_3Ы
vdaevhnmja/ReadVariableOp_2ReadVariableOp$vdaevhnmja_readvariableop_2_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_2Ш
vdaevhnmja/mul_4Mul#vdaevhnmja/ReadVariableOp_2:value:0vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_4Р
vdaevhnmja/add_4AddV2vdaevhnmja/split:output:3vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_4
vdaevhnmja/Sigmoid_2Sigmoidvdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_2v
vdaevhnmja/Tanh_1Tanhvdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Tanh_1О
vdaevhnmja/mul_5Mulvdaevhnmja/Sigmoid_2:y:0vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)vdaevhnmja_matmul_readvariableop_resource+vdaevhnmja_matmul_1_readvariableop_resource*vdaevhnmja_biasadd_readvariableop_resource"vdaevhnmja_readvariableop_resource$vdaevhnmja_readvariableop_1_resource$vdaevhnmja_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_225379*
condR
while_cond_225378*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
transpose_1╕
IdentityIdentitystrided_slice_3:output:0"^vdaevhnmja/BiasAdd/ReadVariableOp!^vdaevhnmja/MatMul/ReadVariableOp#^vdaevhnmja/MatMul_1/ReadVariableOp^vdaevhnmja/ReadVariableOp^vdaevhnmja/ReadVariableOp_1^vdaevhnmja/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!vdaevhnmja/BiasAdd/ReadVariableOp!vdaevhnmja/BiasAdd/ReadVariableOp2D
 vdaevhnmja/MatMul/ReadVariableOp vdaevhnmja/MatMul/ReadVariableOp2H
"vdaevhnmja/MatMul_1/ReadVariableOp"vdaevhnmja/MatMul_1/ReadVariableOp26
vdaevhnmja/ReadVariableOpvdaevhnmja/ReadVariableOp2:
vdaevhnmja/ReadVariableOp_1vdaevhnmja/ReadVariableOp_12:
vdaevhnmja/ReadVariableOp_2vdaevhnmja/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
┘h
Ж
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225120
inputs_0<
)vdaevhnmja_matmul_readvariableop_resource:	 А>
+vdaevhnmja_matmul_1_readvariableop_resource:	 А9
*vdaevhnmja_biasadd_readvariableop_resource:	А0
"vdaevhnmja_readvariableop_resource: 2
$vdaevhnmja_readvariableop_1_resource: 2
$vdaevhnmja_readvariableop_2_resource: 
identityИв!vdaevhnmja/BiasAdd/ReadVariableOpв vdaevhnmja/MatMul/ReadVariableOpв"vdaevhnmja/MatMul_1/ReadVariableOpвvdaevhnmja/ReadVariableOpвvdaevhnmja/ReadVariableOp_1вvdaevhnmja/ReadVariableOp_2вwhileF
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
 :                   2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_2п
 vdaevhnmja/MatMul/ReadVariableOpReadVariableOp)vdaevhnmja_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 vdaevhnmja/MatMul/ReadVariableOpз
vdaevhnmja/MatMulMatMulstrided_slice_2:output:0(vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul╡
"vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp+vdaevhnmja_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"vdaevhnmja/MatMul_1/ReadVariableOpг
vdaevhnmja/MatMul_1MatMulzeros:output:0*vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul_1Ш
vdaevhnmja/addAddV2vdaevhnmja/MatMul:product:0vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/addо
!vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp*vdaevhnmja_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!vdaevhnmja/BiasAdd/ReadVariableOpе
vdaevhnmja/BiasAddBiasAddvdaevhnmja/add:z:0)vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/BiasAddz
vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
vdaevhnmja/split/split_dimы
vdaevhnmja/splitSplit#vdaevhnmja/split/split_dim:output:0vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
vdaevhnmja/splitХ
vdaevhnmja/ReadVariableOpReadVariableOp"vdaevhnmja_readvariableop_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOpО
vdaevhnmja/mulMul!vdaevhnmja/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mulО
vdaevhnmja/add_1AddV2vdaevhnmja/split:output:0vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_1{
vdaevhnmja/SigmoidSigmoidvdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/SigmoidЫ
vdaevhnmja/ReadVariableOp_1ReadVariableOp$vdaevhnmja_readvariableop_1_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_1Ф
vdaevhnmja/mul_1Mul#vdaevhnmja/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_1Р
vdaevhnmja/add_2AddV2vdaevhnmja/split:output:1vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_2
vdaevhnmja/Sigmoid_1Sigmoidvdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_1Й
vdaevhnmja/mul_2Mulvdaevhnmja/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_2w
vdaevhnmja/TanhTanhvdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
vdaevhnmja/TanhК
vdaevhnmja/mul_3Mulvdaevhnmja/Sigmoid:y:0vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_3Л
vdaevhnmja/add_3AddV2vdaevhnmja/mul_2:z:0vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_3Ы
vdaevhnmja/ReadVariableOp_2ReadVariableOp$vdaevhnmja_readvariableop_2_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_2Ш
vdaevhnmja/mul_4Mul#vdaevhnmja/ReadVariableOp_2:value:0vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_4Р
vdaevhnmja/add_4AddV2vdaevhnmja/split:output:3vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_4
vdaevhnmja/Sigmoid_2Sigmoidvdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_2v
vdaevhnmja/Tanh_1Tanhvdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Tanh_1О
vdaevhnmja/mul_5Mulvdaevhnmja/Sigmoid_2:y:0vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)vdaevhnmja_matmul_readvariableop_resource+vdaevhnmja_matmul_1_readvariableop_resource*vdaevhnmja_biasadd_readvariableop_resource"vdaevhnmja_readvariableop_resource$vdaevhnmja_readvariableop_1_resource$vdaevhnmja_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_225019*
condR
while_cond_225018*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
transpose_1╕
IdentityIdentitystrided_slice_3:output:0"^vdaevhnmja/BiasAdd/ReadVariableOp!^vdaevhnmja/MatMul/ReadVariableOp#^vdaevhnmja/MatMul_1/ReadVariableOp^vdaevhnmja/ReadVariableOp^vdaevhnmja/ReadVariableOp_1^vdaevhnmja/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2F
!vdaevhnmja/BiasAdd/ReadVariableOp!vdaevhnmja/BiasAdd/ReadVariableOp2D
 vdaevhnmja/MatMul/ReadVariableOp vdaevhnmja/MatMul/ReadVariableOp2H
"vdaevhnmja/MatMul_1/ReadVariableOp"vdaevhnmja/MatMul_1/ReadVariableOp26
vdaevhnmja/ReadVariableOpvdaevhnmja/ReadVariableOp2:
vdaevhnmja/ReadVariableOp_1vdaevhnmja/ReadVariableOp_12:
vdaevhnmja/ReadVariableOp_2vdaevhnmja/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
┘h
Ж
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225300
inputs_0<
)vdaevhnmja_matmul_readvariableop_resource:	 А>
+vdaevhnmja_matmul_1_readvariableop_resource:	 А9
*vdaevhnmja_biasadd_readvariableop_resource:	А0
"vdaevhnmja_readvariableop_resource: 2
$vdaevhnmja_readvariableop_1_resource: 2
$vdaevhnmja_readvariableop_2_resource: 
identityИв!vdaevhnmja/BiasAdd/ReadVariableOpв vdaevhnmja/MatMul/ReadVariableOpв"vdaevhnmja/MatMul_1/ReadVariableOpвvdaevhnmja/ReadVariableOpвvdaevhnmja/ReadVariableOp_1вvdaevhnmja/ReadVariableOp_2вwhileF
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
 :                   2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_2п
 vdaevhnmja/MatMul/ReadVariableOpReadVariableOp)vdaevhnmja_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 vdaevhnmja/MatMul/ReadVariableOpз
vdaevhnmja/MatMulMatMulstrided_slice_2:output:0(vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul╡
"vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp+vdaevhnmja_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"vdaevhnmja/MatMul_1/ReadVariableOpг
vdaevhnmja/MatMul_1MatMulzeros:output:0*vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/MatMul_1Ш
vdaevhnmja/addAddV2vdaevhnmja/MatMul:product:0vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/addо
!vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp*vdaevhnmja_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!vdaevhnmja/BiasAdd/ReadVariableOpе
vdaevhnmja/BiasAddBiasAddvdaevhnmja/add:z:0)vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vdaevhnmja/BiasAddz
vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
vdaevhnmja/split/split_dimы
vdaevhnmja/splitSplit#vdaevhnmja/split/split_dim:output:0vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
vdaevhnmja/splitХ
vdaevhnmja/ReadVariableOpReadVariableOp"vdaevhnmja_readvariableop_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOpО
vdaevhnmja/mulMul!vdaevhnmja/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mulО
vdaevhnmja/add_1AddV2vdaevhnmja/split:output:0vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_1{
vdaevhnmja/SigmoidSigmoidvdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/SigmoidЫ
vdaevhnmja/ReadVariableOp_1ReadVariableOp$vdaevhnmja_readvariableop_1_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_1Ф
vdaevhnmja/mul_1Mul#vdaevhnmja/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_1Р
vdaevhnmja/add_2AddV2vdaevhnmja/split:output:1vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_2
vdaevhnmja/Sigmoid_1Sigmoidvdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_1Й
vdaevhnmja/mul_2Mulvdaevhnmja/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_2w
vdaevhnmja/TanhTanhvdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
vdaevhnmja/TanhК
vdaevhnmja/mul_3Mulvdaevhnmja/Sigmoid:y:0vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_3Л
vdaevhnmja/add_3AddV2vdaevhnmja/mul_2:z:0vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_3Ы
vdaevhnmja/ReadVariableOp_2ReadVariableOp$vdaevhnmja_readvariableop_2_resource*
_output_shapes
: *
dtype02
vdaevhnmja/ReadVariableOp_2Ш
vdaevhnmja/mul_4Mul#vdaevhnmja/ReadVariableOp_2:value:0vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_4Р
vdaevhnmja/add_4AddV2vdaevhnmja/split:output:3vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/add_4
vdaevhnmja/Sigmoid_2Sigmoidvdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Sigmoid_2v
vdaevhnmja/Tanh_1Tanhvdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vdaevhnmja/Tanh_1О
vdaevhnmja/mul_5Mulvdaevhnmja/Sigmoid_2:y:0vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
vdaevhnmja/mul_5П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)vdaevhnmja_matmul_readvariableop_resource+vdaevhnmja_matmul_1_readvariableop_resource*vdaevhnmja_biasadd_readvariableop_resource"vdaevhnmja_readvariableop_resource$vdaevhnmja_readvariableop_1_resource$vdaevhnmja_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_225199*
condR
while_cond_225198*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
transpose_1╕
IdentityIdentitystrided_slice_3:output:0"^vdaevhnmja/BiasAdd/ReadVariableOp!^vdaevhnmja/MatMul/ReadVariableOp#^vdaevhnmja/MatMul_1/ReadVariableOp^vdaevhnmja/ReadVariableOp^vdaevhnmja/ReadVariableOp_1^vdaevhnmja/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2F
!vdaevhnmja/BiasAdd/ReadVariableOp!vdaevhnmja/BiasAdd/ReadVariableOp2D
 vdaevhnmja/MatMul/ReadVariableOp vdaevhnmja/MatMul/ReadVariableOp2H
"vdaevhnmja/MatMul_1/ReadVariableOp"vdaevhnmja/MatMul_1/ReadVariableOp26
vdaevhnmja/ReadVariableOpvdaevhnmja/ReadVariableOp2:
vdaevhnmja/ReadVariableOp_1vdaevhnmja/ReadVariableOp_12:
vdaevhnmja/ReadVariableOp_2vdaevhnmja/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
Ю
п
F__inference_sequential_layer_call_and_return_conditional_losses_223093

ahzwxypkrh'
iigfihrkup_223055:
iigfihrkup_223057:$
omilqdycns_223061:	А$
omilqdycns_223063:	 А 
omilqdycns_223065:	А
omilqdycns_223067: 
omilqdycns_223069: 
omilqdycns_223071: $
vlxoswgdqw_223074:	 А$
vlxoswgdqw_223076:	 А 
vlxoswgdqw_223078:	А
vlxoswgdqw_223080: 
vlxoswgdqw_223082: 
vlxoswgdqw_223084: #
iktogmlrmp_223087: 
iktogmlrmp_223089:
identityИв"iigfihrkup/StatefulPartitionedCallв"iktogmlrmp/StatefulPartitionedCallв"omilqdycns/StatefulPartitionedCallв"vlxoswgdqw/StatefulPartitionedCallн
"iigfihrkup/StatefulPartitionedCallStatefulPartitionedCall
ahzwxypkrhiigfihrkup_223055iigfihrkup_223057*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_iigfihrkup_layer_call_and_return_conditional_losses_2219462$
"iigfihrkup/StatefulPartitionedCallЖ
xfbsciqeco/PartitionedCallPartitionedCall+iigfihrkup/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_xfbsciqeco_layer_call_and_return_conditional_losses_2219652
xfbsciqeco/PartitionedCallЦ
"omilqdycns/StatefulPartitionedCallStatefulPartitionedCall#xfbsciqeco/PartitionedCall:output:0omilqdycns_223061omilqdycns_223063omilqdycns_223065omilqdycns_223067omilqdycns_223069omilqdycns_223071*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_omilqdycns_layer_call_and_return_conditional_losses_2228282$
"omilqdycns/StatefulPartitionedCallЪ
"vlxoswgdqw/StatefulPartitionedCallStatefulPartitionedCall+omilqdycns/StatefulPartitionedCall:output:0vlxoswgdqw_223074vlxoswgdqw_223076vlxoswgdqw_223078vlxoswgdqw_223080vlxoswgdqw_223082vlxoswgdqw_223084*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_2226142$
"vlxoswgdqw/StatefulPartitionedCall╞
"iktogmlrmp/StatefulPartitionedCallStatefulPartitionedCall+vlxoswgdqw/StatefulPartitionedCall:output:0iktogmlrmp_223087iktogmlrmp_223089*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_iktogmlrmp_layer_call_and_return_conditional_losses_2223632$
"iktogmlrmp/StatefulPartitionedCallУ
IdentityIdentity+iktogmlrmp/StatefulPartitionedCall:output:0#^iigfihrkup/StatefulPartitionedCall#^iktogmlrmp/StatefulPartitionedCall#^omilqdycns/StatefulPartitionedCall#^vlxoswgdqw/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"iigfihrkup/StatefulPartitionedCall"iigfihrkup/StatefulPartitionedCall2H
"iktogmlrmp/StatefulPartitionedCall"iktogmlrmp/StatefulPartitionedCall2H
"omilqdycns/StatefulPartitionedCall"omilqdycns/StatefulPartitionedCall2H
"vlxoswgdqw/StatefulPartitionedCall"vlxoswgdqw/StatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
ahzwxypkrh
Ъп
Ж
"__inference__traced_restore_226214
file_prefix8
"assignvariableop_iigfihrkup_kernel:0
"assignvariableop_1_iigfihrkup_bias:6
$assignvariableop_2_iktogmlrmp_kernel: 0
"assignvariableop_3_iktogmlrmp_bias:)
assignvariableop_4_rmsprop_iter:	 *
 assignvariableop_5_rmsprop_decay: 2
(assignvariableop_6_rmsprop_learning_rate: -
#assignvariableop_7_rmsprop_momentum: (
assignvariableop_8_rmsprop_rho: B
/assignvariableop_9_omilqdycns_ddlymsxapn_kernel:	АM
:assignvariableop_10_omilqdycns_ddlymsxapn_recurrent_kernel:	 А=
.assignvariableop_11_omilqdycns_ddlymsxapn_bias:	АS
Eassignvariableop_12_omilqdycns_ddlymsxapn_input_gate_peephole_weights: T
Fassignvariableop_13_omilqdycns_ddlymsxapn_forget_gate_peephole_weights: T
Fassignvariableop_14_omilqdycns_ddlymsxapn_output_gate_peephole_weights: C
0assignvariableop_15_vlxoswgdqw_vdaevhnmja_kernel:	 АM
:assignvariableop_16_vlxoswgdqw_vdaevhnmja_recurrent_kernel:	 А=
.assignvariableop_17_vlxoswgdqw_vdaevhnmja_bias:	АS
Eassignvariableop_18_vlxoswgdqw_vdaevhnmja_input_gate_peephole_weights: T
Fassignvariableop_19_vlxoswgdqw_vdaevhnmja_forget_gate_peephole_weights: T
Fassignvariableop_20_vlxoswgdqw_vdaevhnmja_output_gate_peephole_weights: #
assignvariableop_21_total: #
assignvariableop_22_count: G
1assignvariableop_23_rmsprop_iigfihrkup_kernel_rms:=
/assignvariableop_24_rmsprop_iigfihrkup_bias_rms:C
1assignvariableop_25_rmsprop_iktogmlrmp_kernel_rms: =
/assignvariableop_26_rmsprop_iktogmlrmp_bias_rms:O
<assignvariableop_27_rmsprop_omilqdycns_ddlymsxapn_kernel_rms:	АY
Fassignvariableop_28_rmsprop_omilqdycns_ddlymsxapn_recurrent_kernel_rms:	 АI
:assignvariableop_29_rmsprop_omilqdycns_ddlymsxapn_bias_rms:	А_
Qassignvariableop_30_rmsprop_omilqdycns_ddlymsxapn_input_gate_peephole_weights_rms: `
Rassignvariableop_31_rmsprop_omilqdycns_ddlymsxapn_forget_gate_peephole_weights_rms: `
Rassignvariableop_32_rmsprop_omilqdycns_ddlymsxapn_output_gate_peephole_weights_rms: O
<assignvariableop_33_rmsprop_vlxoswgdqw_vdaevhnmja_kernel_rms:	 АY
Fassignvariableop_34_rmsprop_vlxoswgdqw_vdaevhnmja_recurrent_kernel_rms:	 АI
:assignvariableop_35_rmsprop_vlxoswgdqw_vdaevhnmja_bias_rms:	А_
Qassignvariableop_36_rmsprop_vlxoswgdqw_vdaevhnmja_input_gate_peephole_weights_rms: `
Rassignvariableop_37_rmsprop_vlxoswgdqw_vdaevhnmja_forget_gate_peephole_weights_rms: `
Rassignvariableop_38_rmsprop_vlxoswgdqw_vdaevhnmja_output_gate_peephole_weights_rms: 
identity_40ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╫
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*у
value┘B╓(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names▐
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЎ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╢
_output_shapesг
а::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityб
AssignVariableOpAssignVariableOp"assignvariableop_iigfihrkup_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_iigfihrkup_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_iktogmlrmp_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_iktogmlrmp_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4д
AssignVariableOp_4AssignVariableOpassignvariableop_4_rmsprop_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5е
AssignVariableOp_5AssignVariableOp assignvariableop_5_rmsprop_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6н
AssignVariableOp_6AssignVariableOp(assignvariableop_6_rmsprop_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7и
AssignVariableOp_7AssignVariableOp#assignvariableop_7_rmsprop_momentumIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8г
AssignVariableOp_8AssignVariableOpassignvariableop_8_rmsprop_rhoIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9┤
AssignVariableOp_9AssignVariableOp/assignvariableop_9_omilqdycns_ddlymsxapn_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10┬
AssignVariableOp_10AssignVariableOp:assignvariableop_10_omilqdycns_ddlymsxapn_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11╢
AssignVariableOp_11AssignVariableOp.assignvariableop_11_omilqdycns_ddlymsxapn_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12═
AssignVariableOp_12AssignVariableOpEassignvariableop_12_omilqdycns_ddlymsxapn_input_gate_peephole_weightsIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13╬
AssignVariableOp_13AssignVariableOpFassignvariableop_13_omilqdycns_ddlymsxapn_forget_gate_peephole_weightsIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14╬
AssignVariableOp_14AssignVariableOpFassignvariableop_14_omilqdycns_ddlymsxapn_output_gate_peephole_weightsIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15╕
AssignVariableOp_15AssignVariableOp0assignvariableop_15_vlxoswgdqw_vdaevhnmja_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16┬
AssignVariableOp_16AssignVariableOp:assignvariableop_16_vlxoswgdqw_vdaevhnmja_recurrent_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17╢
AssignVariableOp_17AssignVariableOp.assignvariableop_17_vlxoswgdqw_vdaevhnmja_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18═
AssignVariableOp_18AssignVariableOpEassignvariableop_18_vlxoswgdqw_vdaevhnmja_input_gate_peephole_weightsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19╬
AssignVariableOp_19AssignVariableOpFassignvariableop_19_vlxoswgdqw_vdaevhnmja_forget_gate_peephole_weightsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╬
AssignVariableOp_20AssignVariableOpFassignvariableop_20_vlxoswgdqw_vdaevhnmja_output_gate_peephole_weightsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21б
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22б
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23╣
AssignVariableOp_23AssignVariableOp1assignvariableop_23_rmsprop_iigfihrkup_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24╖
AssignVariableOp_24AssignVariableOp/assignvariableop_24_rmsprop_iigfihrkup_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25╣
AssignVariableOp_25AssignVariableOp1assignvariableop_25_rmsprop_iktogmlrmp_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╖
AssignVariableOp_26AssignVariableOp/assignvariableop_26_rmsprop_iktogmlrmp_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27─
AssignVariableOp_27AssignVariableOp<assignvariableop_27_rmsprop_omilqdycns_ddlymsxapn_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28╬
AssignVariableOp_28AssignVariableOpFassignvariableop_28_rmsprop_omilqdycns_ddlymsxapn_recurrent_kernel_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29┬
AssignVariableOp_29AssignVariableOp:assignvariableop_29_rmsprop_omilqdycns_ddlymsxapn_bias_rmsIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30┘
AssignVariableOp_30AssignVariableOpQassignvariableop_30_rmsprop_omilqdycns_ddlymsxapn_input_gate_peephole_weights_rmsIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31┌
AssignVariableOp_31AssignVariableOpRassignvariableop_31_rmsprop_omilqdycns_ddlymsxapn_forget_gate_peephole_weights_rmsIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32┌
AssignVariableOp_32AssignVariableOpRassignvariableop_32_rmsprop_omilqdycns_ddlymsxapn_output_gate_peephole_weights_rmsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33─
AssignVariableOp_33AssignVariableOp<assignvariableop_33_rmsprop_vlxoswgdqw_vdaevhnmja_kernel_rmsIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34╬
AssignVariableOp_34AssignVariableOpFassignvariableop_34_rmsprop_vlxoswgdqw_vdaevhnmja_recurrent_kernel_rmsIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35┬
AssignVariableOp_35AssignVariableOp:assignvariableop_35_rmsprop_vlxoswgdqw_vdaevhnmja_bias_rmsIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36┘
AssignVariableOp_36AssignVariableOpQassignvariableop_36_rmsprop_vlxoswgdqw_vdaevhnmja_input_gate_peephole_weights_rmsIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37┌
AssignVariableOp_37AssignVariableOpRassignvariableop_37_rmsprop_vlxoswgdqw_vdaevhnmja_forget_gate_peephole_weights_rmsIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38┌
AssignVariableOp_38AssignVariableOpRassignvariableop_38_rmsprop_vlxoswgdqw_vdaevhnmja_output_gate_peephole_weights_rmsIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╕
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39л
Identity_40IdentityIdentity_39:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_40"#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
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
ЙZ
╩
__inference__traced_save_226087
file_prefix0
,savev2_iigfihrkup_kernel_read_readvariableop.
*savev2_iigfihrkup_bias_read_readvariableop0
,savev2_iktogmlrmp_kernel_read_readvariableop.
*savev2_iktogmlrmp_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop;
7savev2_omilqdycns_ddlymsxapn_kernel_read_readvariableopE
Asavev2_omilqdycns_ddlymsxapn_recurrent_kernel_read_readvariableop9
5savev2_omilqdycns_ddlymsxapn_bias_read_readvariableopP
Lsavev2_omilqdycns_ddlymsxapn_input_gate_peephole_weights_read_readvariableopQ
Msavev2_omilqdycns_ddlymsxapn_forget_gate_peephole_weights_read_readvariableopQ
Msavev2_omilqdycns_ddlymsxapn_output_gate_peephole_weights_read_readvariableop;
7savev2_vlxoswgdqw_vdaevhnmja_kernel_read_readvariableopE
Asavev2_vlxoswgdqw_vdaevhnmja_recurrent_kernel_read_readvariableop9
5savev2_vlxoswgdqw_vdaevhnmja_bias_read_readvariableopP
Lsavev2_vlxoswgdqw_vdaevhnmja_input_gate_peephole_weights_read_readvariableopQ
Msavev2_vlxoswgdqw_vdaevhnmja_forget_gate_peephole_weights_read_readvariableopQ
Msavev2_vlxoswgdqw_vdaevhnmja_output_gate_peephole_weights_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop<
8savev2_rmsprop_iigfihrkup_kernel_rms_read_readvariableop:
6savev2_rmsprop_iigfihrkup_bias_rms_read_readvariableop<
8savev2_rmsprop_iktogmlrmp_kernel_rms_read_readvariableop:
6savev2_rmsprop_iktogmlrmp_bias_rms_read_readvariableopG
Csavev2_rmsprop_omilqdycns_ddlymsxapn_kernel_rms_read_readvariableopQ
Msavev2_rmsprop_omilqdycns_ddlymsxapn_recurrent_kernel_rms_read_readvariableopE
Asavev2_rmsprop_omilqdycns_ddlymsxapn_bias_rms_read_readvariableop\
Xsavev2_rmsprop_omilqdycns_ddlymsxapn_input_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_omilqdycns_ddlymsxapn_forget_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_omilqdycns_ddlymsxapn_output_gate_peephole_weights_rms_read_readvariableopG
Csavev2_rmsprop_vlxoswgdqw_vdaevhnmja_kernel_rms_read_readvariableopQ
Msavev2_rmsprop_vlxoswgdqw_vdaevhnmja_recurrent_kernel_rms_read_readvariableopE
Asavev2_rmsprop_vlxoswgdqw_vdaevhnmja_bias_rms_read_readvariableop\
Xsavev2_rmsprop_vlxoswgdqw_vdaevhnmja_input_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_vlxoswgdqw_vdaevhnmja_forget_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_vlxoswgdqw_vdaevhnmja_output_gate_peephole_weights_rms_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename╤
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*у
value┘B╓(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╪
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesг
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_iigfihrkup_kernel_read_readvariableop*savev2_iigfihrkup_bias_read_readvariableop,savev2_iktogmlrmp_kernel_read_readvariableop*savev2_iktogmlrmp_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop7savev2_omilqdycns_ddlymsxapn_kernel_read_readvariableopAsavev2_omilqdycns_ddlymsxapn_recurrent_kernel_read_readvariableop5savev2_omilqdycns_ddlymsxapn_bias_read_readvariableopLsavev2_omilqdycns_ddlymsxapn_input_gate_peephole_weights_read_readvariableopMsavev2_omilqdycns_ddlymsxapn_forget_gate_peephole_weights_read_readvariableopMsavev2_omilqdycns_ddlymsxapn_output_gate_peephole_weights_read_readvariableop7savev2_vlxoswgdqw_vdaevhnmja_kernel_read_readvariableopAsavev2_vlxoswgdqw_vdaevhnmja_recurrent_kernel_read_readvariableop5savev2_vlxoswgdqw_vdaevhnmja_bias_read_readvariableopLsavev2_vlxoswgdqw_vdaevhnmja_input_gate_peephole_weights_read_readvariableopMsavev2_vlxoswgdqw_vdaevhnmja_forget_gate_peephole_weights_read_readvariableopMsavev2_vlxoswgdqw_vdaevhnmja_output_gate_peephole_weights_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop8savev2_rmsprop_iigfihrkup_kernel_rms_read_readvariableop6savev2_rmsprop_iigfihrkup_bias_rms_read_readvariableop8savev2_rmsprop_iktogmlrmp_kernel_rms_read_readvariableop6savev2_rmsprop_iktogmlrmp_bias_rms_read_readvariableopCsavev2_rmsprop_omilqdycns_ddlymsxapn_kernel_rms_read_readvariableopMsavev2_rmsprop_omilqdycns_ddlymsxapn_recurrent_kernel_rms_read_readvariableopAsavev2_rmsprop_omilqdycns_ddlymsxapn_bias_rms_read_readvariableopXsavev2_rmsprop_omilqdycns_ddlymsxapn_input_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_omilqdycns_ddlymsxapn_forget_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_omilqdycns_ddlymsxapn_output_gate_peephole_weights_rms_read_readvariableopCsavev2_rmsprop_vlxoswgdqw_vdaevhnmja_kernel_rms_read_readvariableopMsavev2_rmsprop_vlxoswgdqw_vdaevhnmja_recurrent_kernel_rms_read_readvariableopAsavev2_rmsprop_vlxoswgdqw_vdaevhnmja_bias_rms_read_readvariableopXsavev2_rmsprop_vlxoswgdqw_vdaevhnmja_input_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_vlxoswgdqw_vdaevhnmja_forget_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_vlxoswgdqw_vdaevhnmja_output_gate_peephole_weights_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*л
_input_shapesЩ
Ц: ::: :: : : : : :	А:	 А:А: : : :	 А:	 А:А: : : : : ::: ::	А:	 А:А: : : :	 А:	 А:А: : : : 2(
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
::$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	А:%!

_output_shapes
:	 А:!

_output_shapes	
:А: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	 А:%!

_output_shapes
:	 А:!

_output_shapes	
:А: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	А:%!

_output_shapes
:	 А:!

_output_shapes	
:А: 

_output_shapes
: :  

_output_shapes
: : !

_output_shapes
: :%"!

_output_shapes
:	 А:%#!

_output_shapes
:	 А:!$

_output_shapes	
:А: %

_output_shapes
: : &

_output_shapes
: : '

_output_shapes
: :(

_output_shapes
: 
К
Щ
+__inference_sequential_layer_call_fn_223175

inputs
unknown:
	unknown_0:
	unknown_1:	А
	unknown_2:	 А
	unknown_3:	А
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:	 А
	unknown_8:	 А
	unknown_9:	А

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:
identityИвStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2223702
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
┘╩
Б
F__inference_sequential_layer_call_and_return_conditional_losses_224020

inputsL
6iigfihrkup_conv1d_expanddims_1_readvariableop_resource:K
=iigfihrkup_squeeze_batch_dims_biasadd_readvariableop_resource:G
4omilqdycns_ddlymsxapn_matmul_readvariableop_resource:	АI
6omilqdycns_ddlymsxapn_matmul_1_readvariableop_resource:	 АD
5omilqdycns_ddlymsxapn_biasadd_readvariableop_resource:	А;
-omilqdycns_ddlymsxapn_readvariableop_resource: =
/omilqdycns_ddlymsxapn_readvariableop_1_resource: =
/omilqdycns_ddlymsxapn_readvariableop_2_resource: G
4vlxoswgdqw_vdaevhnmja_matmul_readvariableop_resource:	 АI
6vlxoswgdqw_vdaevhnmja_matmul_1_readvariableop_resource:	 АD
5vlxoswgdqw_vdaevhnmja_biasadd_readvariableop_resource:	А;
-vlxoswgdqw_vdaevhnmja_readvariableop_resource: =
/vlxoswgdqw_vdaevhnmja_readvariableop_1_resource: =
/vlxoswgdqw_vdaevhnmja_readvariableop_2_resource: ;
)iktogmlrmp_matmul_readvariableop_resource: 8
*iktogmlrmp_biasadd_readvariableop_resource:
identityИв-iigfihrkup/conv1d/ExpandDims_1/ReadVariableOpв4iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOpв!iktogmlrmp/BiasAdd/ReadVariableOpв iktogmlrmp/MatMul/ReadVariableOpв,omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOpв+omilqdycns/ddlymsxapn/MatMul/ReadVariableOpв-omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOpв$omilqdycns/ddlymsxapn/ReadVariableOpв&omilqdycns/ddlymsxapn/ReadVariableOp_1в&omilqdycns/ddlymsxapn/ReadVariableOp_2вomilqdycns/whileв,vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOpв+vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOpв-vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOpв$vlxoswgdqw/vdaevhnmja/ReadVariableOpв&vlxoswgdqw/vdaevhnmja/ReadVariableOp_1в&vlxoswgdqw/vdaevhnmja/ReadVariableOp_2вvlxoswgdqw/whileП
 iigfihrkup/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2"
 iigfihrkup/conv1d/ExpandDims/dim╗
iigfihrkup/conv1d/ExpandDims
ExpandDimsinputs)iigfihrkup/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:         2
iigfihrkup/conv1d/ExpandDims┘
-iigfihrkup/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6iigfihrkup_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-iigfihrkup/conv1d/ExpandDims_1/ReadVariableOpК
"iigfihrkup/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"iigfihrkup/conv1d/ExpandDims_1/dimу
iigfihrkup/conv1d/ExpandDims_1
ExpandDims5iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp:value:0+iigfihrkup/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
iigfihrkup/conv1d/ExpandDims_1З
iigfihrkup/conv1d/ShapeShape%iigfihrkup/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
iigfihrkup/conv1d/ShapeШ
%iigfihrkup/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%iigfihrkup/conv1d/strided_slice/stackе
'iigfihrkup/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¤        2)
'iigfihrkup/conv1d/strided_slice/stack_1Ь
'iigfihrkup/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'iigfihrkup/conv1d/strided_slice/stack_2╠
iigfihrkup/conv1d/strided_sliceStridedSlice iigfihrkup/conv1d/Shape:output:0.iigfihrkup/conv1d/strided_slice/stack:output:00iigfihrkup/conv1d/strided_slice/stack_1:output:00iigfihrkup/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
iigfihrkup/conv1d/strided_sliceЫ
iigfihrkup/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2!
iigfihrkup/conv1d/Reshape/shape╠
iigfihrkup/conv1d/ReshapeReshape%iigfihrkup/conv1d/ExpandDims:output:0(iigfihrkup/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
iigfihrkup/conv1d/Reshapeю
iigfihrkup/conv1d/Conv2DConv2D"iigfihrkup/conv1d/Reshape:output:0'iigfihrkup/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
iigfihrkup/conv1d/Conv2DЫ
!iigfihrkup/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!iigfihrkup/conv1d/concat/values_1Й
iigfihrkup/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2
iigfihrkup/conv1d/concat/axisь
iigfihrkup/conv1d/concatConcatV2(iigfihrkup/conv1d/strided_slice:output:0*iigfihrkup/conv1d/concat/values_1:output:0&iigfihrkup/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
iigfihrkup/conv1d/concat╔
iigfihrkup/conv1d/Reshape_1Reshape!iigfihrkup/conv1d/Conv2D:output:0!iigfihrkup/conv1d/concat:output:0*
T0*3
_output_shapes!
:         2
iigfihrkup/conv1d/Reshape_1┴
iigfihrkup/conv1d/SqueezeSqueeze$iigfihrkup/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:         *
squeeze_dims

¤        2
iigfihrkup/conv1d/SqueezeЬ
#iigfihrkup/squeeze_batch_dims/ShapeShape"iigfihrkup/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#iigfihrkup/squeeze_batch_dims/Shape░
1iigfihrkup/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1iigfihrkup/squeeze_batch_dims/strided_slice/stack╜
3iigfihrkup/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        25
3iigfihrkup/squeeze_batch_dims/strided_slice/stack_1┤
3iigfihrkup/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3iigfihrkup/squeeze_batch_dims/strided_slice/stack_2Ф
+iigfihrkup/squeeze_batch_dims/strided_sliceStridedSlice,iigfihrkup/squeeze_batch_dims/Shape:output:0:iigfihrkup/squeeze_batch_dims/strided_slice/stack:output:0<iigfihrkup/squeeze_batch_dims/strided_slice/stack_1:output:0<iigfihrkup/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+iigfihrkup/squeeze_batch_dims/strided_sliceп
+iigfihrkup/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+iigfihrkup/squeeze_batch_dims/Reshape/shapeщ
%iigfihrkup/squeeze_batch_dims/ReshapeReshape"iigfihrkup/conv1d/Squeeze:output:04iigfihrkup/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:         2'
%iigfihrkup/squeeze_batch_dims/Reshapeц
4iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=iigfihrkup_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp¤
%iigfihrkup/squeeze_batch_dims/BiasAddBiasAdd.iigfihrkup/squeeze_batch_dims/Reshape:output:0<iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         2'
%iigfihrkup/squeeze_batch_dims/BiasAddп
-iigfihrkup/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-iigfihrkup/squeeze_batch_dims/concat/values_1б
)iigfihrkup/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2+
)iigfihrkup/squeeze_batch_dims/concat/axisи
$iigfihrkup/squeeze_batch_dims/concatConcatV24iigfihrkup/squeeze_batch_dims/strided_slice:output:06iigfihrkup/squeeze_batch_dims/concat/values_1:output:02iigfihrkup/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$iigfihrkup/squeeze_batch_dims/concatЎ
'iigfihrkup/squeeze_batch_dims/Reshape_1Reshape.iigfihrkup/squeeze_batch_dims/BiasAdd:output:0-iigfihrkup/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:         2)
'iigfihrkup/squeeze_batch_dims/Reshape_1Д
xfbsciqeco/ShapeShape0iigfihrkup/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
xfbsciqeco/ShapeК
xfbsciqeco/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
xfbsciqeco/strided_slice/stackО
 xfbsciqeco/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 xfbsciqeco/strided_slice/stack_1О
 xfbsciqeco/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 xfbsciqeco/strided_slice/stack_2д
xfbsciqeco/strided_sliceStridedSlicexfbsciqeco/Shape:output:0'xfbsciqeco/strided_slice/stack:output:0)xfbsciqeco/strided_slice/stack_1:output:0)xfbsciqeco/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
xfbsciqeco/strided_slicez
xfbsciqeco/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
xfbsciqeco/Reshape/shape/1z
xfbsciqeco/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
xfbsciqeco/Reshape/shape/2╫
xfbsciqeco/Reshape/shapePack!xfbsciqeco/strided_slice:output:0#xfbsciqeco/Reshape/shape/1:output:0#xfbsciqeco/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
xfbsciqeco/Reshape/shape╛
xfbsciqeco/ReshapeReshape0iigfihrkup/squeeze_batch_dims/Reshape_1:output:0!xfbsciqeco/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
xfbsciqeco/Reshapeo
omilqdycns/ShapeShapexfbsciqeco/Reshape:output:0*
T0*
_output_shapes
:2
omilqdycns/ShapeК
omilqdycns/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
omilqdycns/strided_slice/stackО
 omilqdycns/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 omilqdycns/strided_slice/stack_1О
 omilqdycns/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 omilqdycns/strided_slice/stack_2д
omilqdycns/strided_sliceStridedSliceomilqdycns/Shape:output:0'omilqdycns/strided_slice/stack:output:0)omilqdycns/strided_slice/stack_1:output:0)omilqdycns/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
omilqdycns/strided_slicer
omilqdycns/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/zeros/mul/yШ
omilqdycns/zeros/mulMul!omilqdycns/strided_slice:output:0omilqdycns/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/zeros/mulu
omilqdycns/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
omilqdycns/zeros/Less/yУ
omilqdycns/zeros/LessLessomilqdycns/zeros/mul:z:0 omilqdycns/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/zeros/Lessx
omilqdycns/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/zeros/packed/1п
omilqdycns/zeros/packedPack!omilqdycns/strided_slice:output:0"omilqdycns/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
omilqdycns/zeros/packedu
omilqdycns/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
omilqdycns/zeros/Constб
omilqdycns/zerosFill omilqdycns/zeros/packed:output:0omilqdycns/zeros/Const:output:0*
T0*'
_output_shapes
:          2
omilqdycns/zerosv
omilqdycns/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/zeros_1/mul/yЮ
omilqdycns/zeros_1/mulMul!omilqdycns/strided_slice:output:0!omilqdycns/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/zeros_1/muly
omilqdycns/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
omilqdycns/zeros_1/Less/yЫ
omilqdycns/zeros_1/LessLessomilqdycns/zeros_1/mul:z:0"omilqdycns/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/zeros_1/Less|
omilqdycns/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/zeros_1/packed/1╡
omilqdycns/zeros_1/packedPack!omilqdycns/strided_slice:output:0$omilqdycns/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
omilqdycns/zeros_1/packedy
omilqdycns/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
omilqdycns/zeros_1/Constй
omilqdycns/zeros_1Fill"omilqdycns/zeros_1/packed:output:0!omilqdycns/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
omilqdycns/zeros_1Л
omilqdycns/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
omilqdycns/transpose/perm░
omilqdycns/transpose	Transposexfbsciqeco/Reshape:output:0"omilqdycns/transpose/perm:output:0*
T0*+
_output_shapes
:         2
omilqdycns/transposep
omilqdycns/Shape_1Shapeomilqdycns/transpose:y:0*
T0*
_output_shapes
:2
omilqdycns/Shape_1О
 omilqdycns/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 omilqdycns/strided_slice_1/stackТ
"omilqdycns/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"omilqdycns/strided_slice_1/stack_1Т
"omilqdycns/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"omilqdycns/strided_slice_1/stack_2░
omilqdycns/strided_slice_1StridedSliceomilqdycns/Shape_1:output:0)omilqdycns/strided_slice_1/stack:output:0+omilqdycns/strided_slice_1/stack_1:output:0+omilqdycns/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
omilqdycns/strided_slice_1Ы
&omilqdycns/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&omilqdycns/TensorArrayV2/element_shape▐
omilqdycns/TensorArrayV2TensorListReserve/omilqdycns/TensorArrayV2/element_shape:output:0#omilqdycns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
omilqdycns/TensorArrayV2╒
@omilqdycns/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@omilqdycns/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2omilqdycns/TensorArrayUnstack/TensorListFromTensorTensorListFromTensoromilqdycns/transpose:y:0Iomilqdycns/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2omilqdycns/TensorArrayUnstack/TensorListFromTensorО
 omilqdycns/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 omilqdycns/strided_slice_2/stackТ
"omilqdycns/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"omilqdycns/strided_slice_2/stack_1Т
"omilqdycns/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"omilqdycns/strided_slice_2/stack_2╛
omilqdycns/strided_slice_2StridedSliceomilqdycns/transpose:y:0)omilqdycns/strided_slice_2/stack:output:0+omilqdycns/strided_slice_2/stack_1:output:0+omilqdycns/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
omilqdycns/strided_slice_2╨
+omilqdycns/ddlymsxapn/MatMul/ReadVariableOpReadVariableOp4omilqdycns_ddlymsxapn_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02-
+omilqdycns/ddlymsxapn/MatMul/ReadVariableOp╙
omilqdycns/ddlymsxapn/MatMulMatMul#omilqdycns/strided_slice_2:output:03omilqdycns/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
omilqdycns/ddlymsxapn/MatMul╓
-omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp6omilqdycns_ddlymsxapn_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp╧
omilqdycns/ddlymsxapn/MatMul_1MatMulomilqdycns/zeros:output:05omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
omilqdycns/ddlymsxapn/MatMul_1─
omilqdycns/ddlymsxapn/addAddV2&omilqdycns/ddlymsxapn/MatMul:product:0(omilqdycns/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
omilqdycns/ddlymsxapn/add╧
,omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp5omilqdycns_ddlymsxapn_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp╤
omilqdycns/ddlymsxapn/BiasAddBiasAddomilqdycns/ddlymsxapn/add:z:04omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
omilqdycns/ddlymsxapn/BiasAddР
%omilqdycns/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%omilqdycns/ddlymsxapn/split/split_dimЧ
omilqdycns/ddlymsxapn/splitSplit.omilqdycns/ddlymsxapn/split/split_dim:output:0&omilqdycns/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
omilqdycns/ddlymsxapn/split╢
$omilqdycns/ddlymsxapn/ReadVariableOpReadVariableOp-omilqdycns_ddlymsxapn_readvariableop_resource*
_output_shapes
: *
dtype02&
$omilqdycns/ddlymsxapn/ReadVariableOp║
omilqdycns/ddlymsxapn/mulMul,omilqdycns/ddlymsxapn/ReadVariableOp:value:0omilqdycns/zeros_1:output:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul║
omilqdycns/ddlymsxapn/add_1AddV2$omilqdycns/ddlymsxapn/split:output:0omilqdycns/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/add_1Ь
omilqdycns/ddlymsxapn/SigmoidSigmoidomilqdycns/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/Sigmoid╝
&omilqdycns/ddlymsxapn/ReadVariableOp_1ReadVariableOp/omilqdycns_ddlymsxapn_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&omilqdycns/ddlymsxapn/ReadVariableOp_1└
omilqdycns/ddlymsxapn/mul_1Mul.omilqdycns/ddlymsxapn/ReadVariableOp_1:value:0omilqdycns/zeros_1:output:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul_1╝
omilqdycns/ddlymsxapn/add_2AddV2$omilqdycns/ddlymsxapn/split:output:1omilqdycns/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/add_2а
omilqdycns/ddlymsxapn/Sigmoid_1Sigmoidomilqdycns/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2!
omilqdycns/ddlymsxapn/Sigmoid_1╡
omilqdycns/ddlymsxapn/mul_2Mul#omilqdycns/ddlymsxapn/Sigmoid_1:y:0omilqdycns/zeros_1:output:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul_2Ш
omilqdycns/ddlymsxapn/TanhTanh$omilqdycns/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/Tanh╢
omilqdycns/ddlymsxapn/mul_3Mul!omilqdycns/ddlymsxapn/Sigmoid:y:0omilqdycns/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul_3╖
omilqdycns/ddlymsxapn/add_3AddV2omilqdycns/ddlymsxapn/mul_2:z:0omilqdycns/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/add_3╝
&omilqdycns/ddlymsxapn/ReadVariableOp_2ReadVariableOp/omilqdycns_ddlymsxapn_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&omilqdycns/ddlymsxapn/ReadVariableOp_2─
omilqdycns/ddlymsxapn/mul_4Mul.omilqdycns/ddlymsxapn/ReadVariableOp_2:value:0omilqdycns/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul_4╝
omilqdycns/ddlymsxapn/add_4AddV2$omilqdycns/ddlymsxapn/split:output:3omilqdycns/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/add_4а
omilqdycns/ddlymsxapn/Sigmoid_2Sigmoidomilqdycns/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2!
omilqdycns/ddlymsxapn/Sigmoid_2Ч
omilqdycns/ddlymsxapn/Tanh_1Tanhomilqdycns/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/Tanh_1║
omilqdycns/ddlymsxapn/mul_5Mul#omilqdycns/ddlymsxapn/Sigmoid_2:y:0 omilqdycns/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul_5е
(omilqdycns/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(omilqdycns/TensorArrayV2_1/element_shapeф
omilqdycns/TensorArrayV2_1TensorListReserve1omilqdycns/TensorArrayV2_1/element_shape:output:0#omilqdycns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
omilqdycns/TensorArrayV2_1d
omilqdycns/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/timeХ
#omilqdycns/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#omilqdycns/while/maximum_iterationsА
omilqdycns/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/while/loop_counter░
omilqdycns/whileWhile&omilqdycns/while/loop_counter:output:0,omilqdycns/while/maximum_iterations:output:0omilqdycns/time:output:0#omilqdycns/TensorArrayV2_1:handle:0omilqdycns/zeros:output:0omilqdycns/zeros_1:output:0#omilqdycns/strided_slice_1:output:0Bomilqdycns/TensorArrayUnstack/TensorListFromTensor:output_handle:04omilqdycns_ddlymsxapn_matmul_readvariableop_resource6omilqdycns_ddlymsxapn_matmul_1_readvariableop_resource5omilqdycns_ddlymsxapn_biasadd_readvariableop_resource-omilqdycns_ddlymsxapn_readvariableop_resource/omilqdycns_ddlymsxapn_readvariableop_1_resource/omilqdycns_ddlymsxapn_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*(
body R
omilqdycns_while_body_223737*(
cond R
omilqdycns_while_cond_223736*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
omilqdycns/while╦
;omilqdycns/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;omilqdycns/TensorArrayV2Stack/TensorListStack/element_shapeФ
-omilqdycns/TensorArrayV2Stack/TensorListStackTensorListStackomilqdycns/while:output:3Domilqdycns/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-omilqdycns/TensorArrayV2Stack/TensorListStackЧ
 omilqdycns/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 omilqdycns/strided_slice_3/stackТ
"omilqdycns/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"omilqdycns/strided_slice_3/stack_1Т
"omilqdycns/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"omilqdycns/strided_slice_3/stack_2▄
omilqdycns/strided_slice_3StridedSlice6omilqdycns/TensorArrayV2Stack/TensorListStack:tensor:0)omilqdycns/strided_slice_3/stack:output:0+omilqdycns/strided_slice_3/stack_1:output:0+omilqdycns/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
omilqdycns/strided_slice_3П
omilqdycns/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
omilqdycns/transpose_1/perm╤
omilqdycns/transpose_1	Transpose6omilqdycns/TensorArrayV2Stack/TensorListStack:tensor:0$omilqdycns/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
omilqdycns/transpose_1n
vlxoswgdqw/ShapeShapeomilqdycns/transpose_1:y:0*
T0*
_output_shapes
:2
vlxoswgdqw/ShapeК
vlxoswgdqw/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
vlxoswgdqw/strided_slice/stackО
 vlxoswgdqw/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 vlxoswgdqw/strided_slice/stack_1О
 vlxoswgdqw/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 vlxoswgdqw/strided_slice/stack_2д
vlxoswgdqw/strided_sliceStridedSlicevlxoswgdqw/Shape:output:0'vlxoswgdqw/strided_slice/stack:output:0)vlxoswgdqw/strided_slice/stack_1:output:0)vlxoswgdqw/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
vlxoswgdqw/strided_slicer
vlxoswgdqw/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/zeros/mul/yШ
vlxoswgdqw/zeros/mulMul!vlxoswgdqw/strided_slice:output:0vlxoswgdqw/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/zeros/mulu
vlxoswgdqw/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
vlxoswgdqw/zeros/Less/yУ
vlxoswgdqw/zeros/LessLessvlxoswgdqw/zeros/mul:z:0 vlxoswgdqw/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/zeros/Lessx
vlxoswgdqw/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/zeros/packed/1п
vlxoswgdqw/zeros/packedPack!vlxoswgdqw/strided_slice:output:0"vlxoswgdqw/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
vlxoswgdqw/zeros/packedu
vlxoswgdqw/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
vlxoswgdqw/zeros/Constб
vlxoswgdqw/zerosFill vlxoswgdqw/zeros/packed:output:0vlxoswgdqw/zeros/Const:output:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/zerosv
vlxoswgdqw/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/zeros_1/mul/yЮ
vlxoswgdqw/zeros_1/mulMul!vlxoswgdqw/strided_slice:output:0!vlxoswgdqw/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/zeros_1/muly
vlxoswgdqw/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
vlxoswgdqw/zeros_1/Less/yЫ
vlxoswgdqw/zeros_1/LessLessvlxoswgdqw/zeros_1/mul:z:0"vlxoswgdqw/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/zeros_1/Less|
vlxoswgdqw/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/zeros_1/packed/1╡
vlxoswgdqw/zeros_1/packedPack!vlxoswgdqw/strided_slice:output:0$vlxoswgdqw/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
vlxoswgdqw/zeros_1/packedy
vlxoswgdqw/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
vlxoswgdqw/zeros_1/Constй
vlxoswgdqw/zeros_1Fill"vlxoswgdqw/zeros_1/packed:output:0!vlxoswgdqw/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/zeros_1Л
vlxoswgdqw/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
vlxoswgdqw/transpose/permп
vlxoswgdqw/transpose	Transposeomilqdycns/transpose_1:y:0"vlxoswgdqw/transpose/perm:output:0*
T0*+
_output_shapes
:          2
vlxoswgdqw/transposep
vlxoswgdqw/Shape_1Shapevlxoswgdqw/transpose:y:0*
T0*
_output_shapes
:2
vlxoswgdqw/Shape_1О
 vlxoswgdqw/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 vlxoswgdqw/strided_slice_1/stackТ
"vlxoswgdqw/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"vlxoswgdqw/strided_slice_1/stack_1Т
"vlxoswgdqw/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"vlxoswgdqw/strided_slice_1/stack_2░
vlxoswgdqw/strided_slice_1StridedSlicevlxoswgdqw/Shape_1:output:0)vlxoswgdqw/strided_slice_1/stack:output:0+vlxoswgdqw/strided_slice_1/stack_1:output:0+vlxoswgdqw/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
vlxoswgdqw/strided_slice_1Ы
&vlxoswgdqw/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&vlxoswgdqw/TensorArrayV2/element_shape▐
vlxoswgdqw/TensorArrayV2TensorListReserve/vlxoswgdqw/TensorArrayV2/element_shape:output:0#vlxoswgdqw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
vlxoswgdqw/TensorArrayV2╒
@vlxoswgdqw/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2B
@vlxoswgdqw/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2vlxoswgdqw/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorvlxoswgdqw/transpose:y:0Ivlxoswgdqw/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2vlxoswgdqw/TensorArrayUnstack/TensorListFromTensorО
 vlxoswgdqw/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 vlxoswgdqw/strided_slice_2/stackТ
"vlxoswgdqw/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"vlxoswgdqw/strided_slice_2/stack_1Т
"vlxoswgdqw/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"vlxoswgdqw/strided_slice_2/stack_2╛
vlxoswgdqw/strided_slice_2StridedSlicevlxoswgdqw/transpose:y:0)vlxoswgdqw/strided_slice_2/stack:output:0+vlxoswgdqw/strided_slice_2/stack_1:output:0+vlxoswgdqw/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
vlxoswgdqw/strided_slice_2╨
+vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOpReadVariableOp4vlxoswgdqw_vdaevhnmja_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02-
+vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp╙
vlxoswgdqw/vdaevhnmja/MatMulMatMul#vlxoswgdqw/strided_slice_2:output:03vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vlxoswgdqw/vdaevhnmja/MatMul╓
-vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp6vlxoswgdqw_vdaevhnmja_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp╧
vlxoswgdqw/vdaevhnmja/MatMul_1MatMulvlxoswgdqw/zeros:output:05vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
vlxoswgdqw/vdaevhnmja/MatMul_1─
vlxoswgdqw/vdaevhnmja/addAddV2&vlxoswgdqw/vdaevhnmja/MatMul:product:0(vlxoswgdqw/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
vlxoswgdqw/vdaevhnmja/add╧
,vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp5vlxoswgdqw_vdaevhnmja_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp╤
vlxoswgdqw/vdaevhnmja/BiasAddBiasAddvlxoswgdqw/vdaevhnmja/add:z:04vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vlxoswgdqw/vdaevhnmja/BiasAddР
%vlxoswgdqw/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%vlxoswgdqw/vdaevhnmja/split/split_dimЧ
vlxoswgdqw/vdaevhnmja/splitSplit.vlxoswgdqw/vdaevhnmja/split/split_dim:output:0&vlxoswgdqw/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
vlxoswgdqw/vdaevhnmja/split╢
$vlxoswgdqw/vdaevhnmja/ReadVariableOpReadVariableOp-vlxoswgdqw_vdaevhnmja_readvariableop_resource*
_output_shapes
: *
dtype02&
$vlxoswgdqw/vdaevhnmja/ReadVariableOp║
vlxoswgdqw/vdaevhnmja/mulMul,vlxoswgdqw/vdaevhnmja/ReadVariableOp:value:0vlxoswgdqw/zeros_1:output:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul║
vlxoswgdqw/vdaevhnmja/add_1AddV2$vlxoswgdqw/vdaevhnmja/split:output:0vlxoswgdqw/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/add_1Ь
vlxoswgdqw/vdaevhnmja/SigmoidSigmoidvlxoswgdqw/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/Sigmoid╝
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_1ReadVariableOp/vlxoswgdqw_vdaevhnmja_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_1└
vlxoswgdqw/vdaevhnmja/mul_1Mul.vlxoswgdqw/vdaevhnmja/ReadVariableOp_1:value:0vlxoswgdqw/zeros_1:output:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul_1╝
vlxoswgdqw/vdaevhnmja/add_2AddV2$vlxoswgdqw/vdaevhnmja/split:output:1vlxoswgdqw/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/add_2а
vlxoswgdqw/vdaevhnmja/Sigmoid_1Sigmoidvlxoswgdqw/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2!
vlxoswgdqw/vdaevhnmja/Sigmoid_1╡
vlxoswgdqw/vdaevhnmja/mul_2Mul#vlxoswgdqw/vdaevhnmja/Sigmoid_1:y:0vlxoswgdqw/zeros_1:output:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul_2Ш
vlxoswgdqw/vdaevhnmja/TanhTanh$vlxoswgdqw/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/Tanh╢
vlxoswgdqw/vdaevhnmja/mul_3Mul!vlxoswgdqw/vdaevhnmja/Sigmoid:y:0vlxoswgdqw/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul_3╖
vlxoswgdqw/vdaevhnmja/add_3AddV2vlxoswgdqw/vdaevhnmja/mul_2:z:0vlxoswgdqw/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/add_3╝
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_2ReadVariableOp/vlxoswgdqw_vdaevhnmja_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_2─
vlxoswgdqw/vdaevhnmja/mul_4Mul.vlxoswgdqw/vdaevhnmja/ReadVariableOp_2:value:0vlxoswgdqw/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul_4╝
vlxoswgdqw/vdaevhnmja/add_4AddV2$vlxoswgdqw/vdaevhnmja/split:output:3vlxoswgdqw/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/add_4а
vlxoswgdqw/vdaevhnmja/Sigmoid_2Sigmoidvlxoswgdqw/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2!
vlxoswgdqw/vdaevhnmja/Sigmoid_2Ч
vlxoswgdqw/vdaevhnmja/Tanh_1Tanhvlxoswgdqw/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/Tanh_1║
vlxoswgdqw/vdaevhnmja/mul_5Mul#vlxoswgdqw/vdaevhnmja/Sigmoid_2:y:0 vlxoswgdqw/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul_5е
(vlxoswgdqw/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(vlxoswgdqw/TensorArrayV2_1/element_shapeф
vlxoswgdqw/TensorArrayV2_1TensorListReserve1vlxoswgdqw/TensorArrayV2_1/element_shape:output:0#vlxoswgdqw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
vlxoswgdqw/TensorArrayV2_1d
vlxoswgdqw/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/timeХ
#vlxoswgdqw/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#vlxoswgdqw/while/maximum_iterationsА
vlxoswgdqw/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/while/loop_counter░
vlxoswgdqw/whileWhile&vlxoswgdqw/while/loop_counter:output:0,vlxoswgdqw/while/maximum_iterations:output:0vlxoswgdqw/time:output:0#vlxoswgdqw/TensorArrayV2_1:handle:0vlxoswgdqw/zeros:output:0vlxoswgdqw/zeros_1:output:0#vlxoswgdqw/strided_slice_1:output:0Bvlxoswgdqw/TensorArrayUnstack/TensorListFromTensor:output_handle:04vlxoswgdqw_vdaevhnmja_matmul_readvariableop_resource6vlxoswgdqw_vdaevhnmja_matmul_1_readvariableop_resource5vlxoswgdqw_vdaevhnmja_biasadd_readvariableop_resource-vlxoswgdqw_vdaevhnmja_readvariableop_resource/vlxoswgdqw_vdaevhnmja_readvariableop_1_resource/vlxoswgdqw_vdaevhnmja_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*(
body R
vlxoswgdqw_while_body_223913*(
cond R
vlxoswgdqw_while_cond_223912*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
vlxoswgdqw/while╦
;vlxoswgdqw/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;vlxoswgdqw/TensorArrayV2Stack/TensorListStack/element_shapeФ
-vlxoswgdqw/TensorArrayV2Stack/TensorListStackTensorListStackvlxoswgdqw/while:output:3Dvlxoswgdqw/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-vlxoswgdqw/TensorArrayV2Stack/TensorListStackЧ
 vlxoswgdqw/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 vlxoswgdqw/strided_slice_3/stackТ
"vlxoswgdqw/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"vlxoswgdqw/strided_slice_3/stack_1Т
"vlxoswgdqw/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"vlxoswgdqw/strided_slice_3/stack_2▄
vlxoswgdqw/strided_slice_3StridedSlice6vlxoswgdqw/TensorArrayV2Stack/TensorListStack:tensor:0)vlxoswgdqw/strided_slice_3/stack:output:0+vlxoswgdqw/strided_slice_3/stack_1:output:0+vlxoswgdqw/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
vlxoswgdqw/strided_slice_3П
vlxoswgdqw/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
vlxoswgdqw/transpose_1/perm╤
vlxoswgdqw/transpose_1	Transpose6vlxoswgdqw/TensorArrayV2Stack/TensorListStack:tensor:0$vlxoswgdqw/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
vlxoswgdqw/transpose_1о
 iktogmlrmp/MatMul/ReadVariableOpReadVariableOp)iktogmlrmp_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 iktogmlrmp/MatMul/ReadVariableOp▒
iktogmlrmp/MatMulMatMul#vlxoswgdqw/strided_slice_3:output:0(iktogmlrmp/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
iktogmlrmp/MatMulн
!iktogmlrmp/BiasAdd/ReadVariableOpReadVariableOp*iktogmlrmp_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!iktogmlrmp/BiasAdd/ReadVariableOpн
iktogmlrmp/BiasAddBiasAddiktogmlrmp/MatMul:product:0)iktogmlrmp/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
iktogmlrmp/BiasAdd╧
IdentityIdentityiktogmlrmp/BiasAdd:output:0.^iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp5^iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp"^iktogmlrmp/BiasAdd/ReadVariableOp!^iktogmlrmp/MatMul/ReadVariableOp-^omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp,^omilqdycns/ddlymsxapn/MatMul/ReadVariableOp.^omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp%^omilqdycns/ddlymsxapn/ReadVariableOp'^omilqdycns/ddlymsxapn/ReadVariableOp_1'^omilqdycns/ddlymsxapn/ReadVariableOp_2^omilqdycns/while-^vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp,^vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp.^vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp%^vlxoswgdqw/vdaevhnmja/ReadVariableOp'^vlxoswgdqw/vdaevhnmja/ReadVariableOp_1'^vlxoswgdqw/vdaevhnmja/ReadVariableOp_2^vlxoswgdqw/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2^
-iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp-iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp2l
4iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp4iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp2F
!iktogmlrmp/BiasAdd/ReadVariableOp!iktogmlrmp/BiasAdd/ReadVariableOp2D
 iktogmlrmp/MatMul/ReadVariableOp iktogmlrmp/MatMul/ReadVariableOp2\
,omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp,omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp2Z
+omilqdycns/ddlymsxapn/MatMul/ReadVariableOp+omilqdycns/ddlymsxapn/MatMul/ReadVariableOp2^
-omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp-omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp2L
$omilqdycns/ddlymsxapn/ReadVariableOp$omilqdycns/ddlymsxapn/ReadVariableOp2P
&omilqdycns/ddlymsxapn/ReadVariableOp_1&omilqdycns/ddlymsxapn/ReadVariableOp_12P
&omilqdycns/ddlymsxapn/ReadVariableOp_2&omilqdycns/ddlymsxapn/ReadVariableOp_22$
omilqdycns/whileomilqdycns/while2\
,vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp,vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp2Z
+vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp+vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp2^
-vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp-vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp2L
$vlxoswgdqw/vdaevhnmja/ReadVariableOp$vlxoswgdqw/vdaevhnmja/ReadVariableOp2P
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_1&vlxoswgdqw/vdaevhnmja/ReadVariableOp_12P
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_2&vlxoswgdqw/vdaevhnmja/ReadVariableOp_22$
vlxoswgdqw/whilevlxoswgdqw/while:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Г

х
while_cond_224230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_224230___redundant_placeholder04
0while_while_cond_224230___redundant_placeholder14
0while_while_cond_224230___redundant_placeholder24
0while_while_cond_224230___redundant_placeholder34
0while_while_cond_224230___redundant_placeholder44
0while_while_cond_224230___redundant_placeholder54
0while_while_cond_224230___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
ЭF
у
F__inference_omilqdycns_layer_call_and_return_conditional_losses_220573

inputs$
ddlymsxapn_220474:	А$
ddlymsxapn_220476:	 А 
ddlymsxapn_220478:	А
ddlymsxapn_220480: 
ddlymsxapn_220482: 
ddlymsxapn_220484: 
identityИв"ddlymsxapn/StatefulPartitionedCallвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
:          2
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
B :ш2
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
:          2	
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
 :                  2
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
strided_slice_1/stack_2ю
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
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╙
"ddlymsxapn/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0ddlymsxapn_220474ddlymsxapn_220476ddlymsxapn_220478ddlymsxapn_220480ddlymsxapn_220482ddlymsxapn_220484*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_2204732$
"ddlymsxapn/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0ddlymsxapn_220474ddlymsxapn_220476ddlymsxapn_220478ddlymsxapn_220480ddlymsxapn_220482ddlymsxapn_220484*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_220493*
condR
while_cond_220492*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
transpose_1Э
IdentityIdentitytranspose_1:y:0#^ddlymsxapn/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2H
"ddlymsxapn/StatefulPartitionedCall"ddlymsxapn/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Шp
╔
vlxoswgdqw_while_body_2235092
.vlxoswgdqw_while_vlxoswgdqw_while_loop_counter8
4vlxoswgdqw_while_vlxoswgdqw_while_maximum_iterations 
vlxoswgdqw_while_placeholder"
vlxoswgdqw_while_placeholder_1"
vlxoswgdqw_while_placeholder_2"
vlxoswgdqw_while_placeholder_31
-vlxoswgdqw_while_vlxoswgdqw_strided_slice_1_0m
ivlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensor_0O
<vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource_0:	 АQ
>vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource_0:	 АL
=vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource_0:	АC
5vlxoswgdqw_while_vdaevhnmja_readvariableop_resource_0: E
7vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource_0: E
7vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource_0: 
vlxoswgdqw_while_identity
vlxoswgdqw_while_identity_1
vlxoswgdqw_while_identity_2
vlxoswgdqw_while_identity_3
vlxoswgdqw_while_identity_4
vlxoswgdqw_while_identity_5/
+vlxoswgdqw_while_vlxoswgdqw_strided_slice_1k
gvlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensorM
:vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource:	 АO
<vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource:	 АJ
;vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource:	АA
3vlxoswgdqw_while_vdaevhnmja_readvariableop_resource: C
5vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource: C
5vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource: Ив2vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOpв1vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOpв3vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOpв*vlxoswgdqw/while/vdaevhnmja/ReadVariableOpв,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1в,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2┘
Bvlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bvlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemivlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensor_0vlxoswgdqw_while_placeholderKvlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype026
4vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItemф
1vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOpReadVariableOp<vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype023
1vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp¤
"vlxoswgdqw/while/vdaevhnmja/MatMulMatMul;vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem:item:09vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"vlxoswgdqw/while/vdaevhnmja/MatMulъ
3vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp>vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOpц
$vlxoswgdqw/while/vdaevhnmja/MatMul_1MatMulvlxoswgdqw_while_placeholder_2;vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$vlxoswgdqw/while/vdaevhnmja/MatMul_1▄
vlxoswgdqw/while/vdaevhnmja/addAddV2,vlxoswgdqw/while/vdaevhnmja/MatMul:product:0.vlxoswgdqw/while/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
vlxoswgdqw/while/vdaevhnmja/addу
2vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp=vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOpщ
#vlxoswgdqw/while/vdaevhnmja/BiasAddBiasAdd#vlxoswgdqw/while/vdaevhnmja/add:z:0:vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#vlxoswgdqw/while/vdaevhnmja/BiasAddЬ
+vlxoswgdqw/while/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+vlxoswgdqw/while/vdaevhnmja/split/split_dimп
!vlxoswgdqw/while/vdaevhnmja/splitSplit4vlxoswgdqw/while/vdaevhnmja/split/split_dim:output:0,vlxoswgdqw/while/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!vlxoswgdqw/while/vdaevhnmja/split╩
*vlxoswgdqw/while/vdaevhnmja/ReadVariableOpReadVariableOp5vlxoswgdqw_while_vdaevhnmja_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*vlxoswgdqw/while/vdaevhnmja/ReadVariableOp╧
vlxoswgdqw/while/vdaevhnmja/mulMul2vlxoswgdqw/while/vdaevhnmja/ReadVariableOp:value:0vlxoswgdqw_while_placeholder_3*
T0*'
_output_shapes
:          2!
vlxoswgdqw/while/vdaevhnmja/mul╥
!vlxoswgdqw/while/vdaevhnmja/add_1AddV2*vlxoswgdqw/while/vdaevhnmja/split:output:0#vlxoswgdqw/while/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/add_1о
#vlxoswgdqw/while/vdaevhnmja/SigmoidSigmoid%vlxoswgdqw/while/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2%
#vlxoswgdqw/while/vdaevhnmja/Sigmoid╨
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1ReadVariableOp7vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1╒
!vlxoswgdqw/while/vdaevhnmja/mul_1Mul4vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1:value:0vlxoswgdqw_while_placeholder_3*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/mul_1╘
!vlxoswgdqw/while/vdaevhnmja/add_2AddV2*vlxoswgdqw/while/vdaevhnmja/split:output:1%vlxoswgdqw/while/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/add_2▓
%vlxoswgdqw/while/vdaevhnmja/Sigmoid_1Sigmoid%vlxoswgdqw/while/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2'
%vlxoswgdqw/while/vdaevhnmja/Sigmoid_1╩
!vlxoswgdqw/while/vdaevhnmja/mul_2Mul)vlxoswgdqw/while/vdaevhnmja/Sigmoid_1:y:0vlxoswgdqw_while_placeholder_3*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/mul_2к
 vlxoswgdqw/while/vdaevhnmja/TanhTanh*vlxoswgdqw/while/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2"
 vlxoswgdqw/while/vdaevhnmja/Tanh╬
!vlxoswgdqw/while/vdaevhnmja/mul_3Mul'vlxoswgdqw/while/vdaevhnmja/Sigmoid:y:0$vlxoswgdqw/while/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/mul_3╧
!vlxoswgdqw/while/vdaevhnmja/add_3AddV2%vlxoswgdqw/while/vdaevhnmja/mul_2:z:0%vlxoswgdqw/while/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/add_3╨
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2ReadVariableOp7vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2▄
!vlxoswgdqw/while/vdaevhnmja/mul_4Mul4vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2:value:0%vlxoswgdqw/while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/mul_4╘
!vlxoswgdqw/while/vdaevhnmja/add_4AddV2*vlxoswgdqw/while/vdaevhnmja/split:output:3%vlxoswgdqw/while/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/add_4▓
%vlxoswgdqw/while/vdaevhnmja/Sigmoid_2Sigmoid%vlxoswgdqw/while/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2'
%vlxoswgdqw/while/vdaevhnmja/Sigmoid_2й
"vlxoswgdqw/while/vdaevhnmja/Tanh_1Tanh%vlxoswgdqw/while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2$
"vlxoswgdqw/while/vdaevhnmja/Tanh_1╥
!vlxoswgdqw/while/vdaevhnmja/mul_5Mul)vlxoswgdqw/while/vdaevhnmja/Sigmoid_2:y:0&vlxoswgdqw/while/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!vlxoswgdqw/while/vdaevhnmja/mul_5Х
5vlxoswgdqw/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemvlxoswgdqw_while_placeholder_1vlxoswgdqw_while_placeholder%vlxoswgdqw/while/vdaevhnmja/mul_5:z:0*
_output_shapes
: *
element_dtype027
5vlxoswgdqw/while/TensorArrayV2Write/TensorListSetItemr
vlxoswgdqw/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
vlxoswgdqw/while/add/yХ
vlxoswgdqw/while/addAddV2vlxoswgdqw_while_placeholdervlxoswgdqw/while/add/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/while/addv
vlxoswgdqw/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
vlxoswgdqw/while/add_1/yн
vlxoswgdqw/while/add_1AddV2.vlxoswgdqw_while_vlxoswgdqw_while_loop_counter!vlxoswgdqw/while/add_1/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/while/add_1й
vlxoswgdqw/while/IdentityIdentityvlxoswgdqw/while/add_1:z:03^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
vlxoswgdqw/while/Identity╟
vlxoswgdqw/while/Identity_1Identity4vlxoswgdqw_while_vlxoswgdqw_while_maximum_iterations3^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
vlxoswgdqw/while/Identity_1л
vlxoswgdqw/while/Identity_2Identityvlxoswgdqw/while/add:z:03^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
vlxoswgdqw/while/Identity_2╪
vlxoswgdqw/while/Identity_3IdentityEvlxoswgdqw/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
vlxoswgdqw/while/Identity_3╔
vlxoswgdqw/while/Identity_4Identity%vlxoswgdqw/while/vdaevhnmja/mul_5:z:03^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
vlxoswgdqw/while/Identity_4╔
vlxoswgdqw/while/Identity_5Identity%vlxoswgdqw/while/vdaevhnmja/add_3:z:03^vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2^vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp4^vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp+^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1-^vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
vlxoswgdqw/while/Identity_5"?
vlxoswgdqw_while_identity"vlxoswgdqw/while/Identity:output:0"C
vlxoswgdqw_while_identity_1$vlxoswgdqw/while/Identity_1:output:0"C
vlxoswgdqw_while_identity_2$vlxoswgdqw/while/Identity_2:output:0"C
vlxoswgdqw_while_identity_3$vlxoswgdqw/while/Identity_3:output:0"C
vlxoswgdqw_while_identity_4$vlxoswgdqw/while/Identity_4:output:0"C
vlxoswgdqw_while_identity_5$vlxoswgdqw/while/Identity_5:output:0"╘
gvlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensorivlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensor_0"|
;vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource=vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource_0"~
<vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource>vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource_0"z
:vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource<vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource_0"p
5vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource7vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource_0"p
5vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource7vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource_0"l
3vlxoswgdqw_while_vdaevhnmja_readvariableop_resource5vlxoswgdqw_while_vdaevhnmja_readvariableop_resource_0"\
+vlxoswgdqw_while_vlxoswgdqw_strided_slice_1-vlxoswgdqw_while_vlxoswgdqw_strided_slice_1_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2f
1vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp1vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp2j
3vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp3vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp2X
*vlxoswgdqw/while/vdaevhnmja/ReadVariableOp*vlxoswgdqw/while/vdaevhnmja/ReadVariableOp2\
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_12\
,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2,vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
▀Y
Ж
while_body_224771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_ddlymsxapn_matmul_readvariableop_resource_0:	АF
3while_ddlymsxapn_matmul_1_readvariableop_resource_0:	 АA
2while_ddlymsxapn_biasadd_readvariableop_resource_0:	А8
*while_ddlymsxapn_readvariableop_resource_0: :
,while_ddlymsxapn_readvariableop_1_resource_0: :
,while_ddlymsxapn_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_ddlymsxapn_matmul_readvariableop_resource:	АD
1while_ddlymsxapn_matmul_1_readvariableop_resource:	 А?
0while_ddlymsxapn_biasadd_readvariableop_resource:	А6
(while_ddlymsxapn_readvariableop_resource: 8
*while_ddlymsxapn_readvariableop_1_resource: 8
*while_ddlymsxapn_readvariableop_2_resource: Ив'while/ddlymsxapn/BiasAdd/ReadVariableOpв&while/ddlymsxapn/MatMul/ReadVariableOpв(while/ddlymsxapn/MatMul_1/ReadVariableOpвwhile/ddlymsxapn/ReadVariableOpв!while/ddlymsxapn/ReadVariableOp_1в!while/ddlymsxapn/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/ddlymsxapn/MatMul/ReadVariableOpReadVariableOp1while_ddlymsxapn_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/ddlymsxapn/MatMul/ReadVariableOp╤
while/ddlymsxapn/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul╔
(while/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp3while_ddlymsxapn_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/ddlymsxapn/MatMul_1/ReadVariableOp║
while/ddlymsxapn/MatMul_1MatMulwhile_placeholder_20while/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul_1░
while/ddlymsxapn/addAddV2!while/ddlymsxapn/MatMul:product:0#while/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/add┬
'while/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp2while_ddlymsxapn_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/ddlymsxapn/BiasAdd/ReadVariableOp╜
while/ddlymsxapn/BiasAddBiasAddwhile/ddlymsxapn/add:z:0/while/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/BiasAddЖ
 while/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/ddlymsxapn/split/split_dimГ
while/ddlymsxapn/splitSplit)while/ddlymsxapn/split/split_dim:output:0!while/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/ddlymsxapn/splitй
while/ddlymsxapn/ReadVariableOpReadVariableOp*while_ddlymsxapn_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/ddlymsxapn/ReadVariableOpг
while/ddlymsxapn/mulMul'while/ddlymsxapn/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mulж
while/ddlymsxapn/add_1AddV2while/ddlymsxapn/split:output:0while/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_1Н
while/ddlymsxapn/SigmoidSigmoidwhile/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoidп
!while/ddlymsxapn/ReadVariableOp_1ReadVariableOp,while_ddlymsxapn_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_1й
while/ddlymsxapn/mul_1Mul)while/ddlymsxapn/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_1и
while/ddlymsxapn/add_2AddV2while/ddlymsxapn/split:output:1while/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_2С
while/ddlymsxapn/Sigmoid_1Sigmoidwhile/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_1Ю
while/ddlymsxapn/mul_2Mulwhile/ddlymsxapn/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_2Й
while/ddlymsxapn/TanhTanhwhile/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanhв
while/ddlymsxapn/mul_3Mulwhile/ddlymsxapn/Sigmoid:y:0while/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_3г
while/ddlymsxapn/add_3AddV2while/ddlymsxapn/mul_2:z:0while/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_3п
!while/ddlymsxapn/ReadVariableOp_2ReadVariableOp,while_ddlymsxapn_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_2░
while/ddlymsxapn/mul_4Mul)while/ddlymsxapn/ReadVariableOp_2:value:0while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_4и
while/ddlymsxapn/add_4AddV2while/ddlymsxapn/split:output:3while/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_4С
while/ddlymsxapn/Sigmoid_2Sigmoidwhile/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_2И
while/ddlymsxapn/Tanh_1Tanhwhile/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanh_1ж
while/ddlymsxapn/mul_5Mulwhile/ddlymsxapn/Sigmoid_2:y:0while/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ddlymsxapn/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/ddlymsxapn/mul_5:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/ddlymsxapn/add_3:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_ddlymsxapn_biasadd_readvariableop_resource2while_ddlymsxapn_biasadd_readvariableop_resource_0"h
1while_ddlymsxapn_matmul_1_readvariableop_resource3while_ddlymsxapn_matmul_1_readvariableop_resource_0"d
/while_ddlymsxapn_matmul_readvariableop_resource1while_ddlymsxapn_matmul_readvariableop_resource_0"Z
*while_ddlymsxapn_readvariableop_1_resource,while_ddlymsxapn_readvariableop_1_resource_0"Z
*while_ddlymsxapn_readvariableop_2_resource,while_ddlymsxapn_readvariableop_2_resource_0"V
(while_ddlymsxapn_readvariableop_resource*while_ddlymsxapn_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/ddlymsxapn/BiasAdd/ReadVariableOp'while/ddlymsxapn/BiasAdd/ReadVariableOp2P
&while/ddlymsxapn/MatMul/ReadVariableOp&while/ddlymsxapn/MatMul/ReadVariableOp2T
(while/ddlymsxapn/MatMul_1/ReadVariableOp(while/ddlymsxapn/MatMul_1/ReadVariableOp2B
while/ddlymsxapn/ReadVariableOpwhile/ddlymsxapn/ReadVariableOp2F
!while/ddlymsxapn/ReadVariableOp_1!while/ddlymsxapn/ReadVariableOp_12F
!while/ddlymsxapn/ReadVariableOp_2!while/ddlymsxapn/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
┘╩
Б
F__inference_sequential_layer_call_and_return_conditional_losses_223616

inputsL
6iigfihrkup_conv1d_expanddims_1_readvariableop_resource:K
=iigfihrkup_squeeze_batch_dims_biasadd_readvariableop_resource:G
4omilqdycns_ddlymsxapn_matmul_readvariableop_resource:	АI
6omilqdycns_ddlymsxapn_matmul_1_readvariableop_resource:	 АD
5omilqdycns_ddlymsxapn_biasadd_readvariableop_resource:	А;
-omilqdycns_ddlymsxapn_readvariableop_resource: =
/omilqdycns_ddlymsxapn_readvariableop_1_resource: =
/omilqdycns_ddlymsxapn_readvariableop_2_resource: G
4vlxoswgdqw_vdaevhnmja_matmul_readvariableop_resource:	 АI
6vlxoswgdqw_vdaevhnmja_matmul_1_readvariableop_resource:	 АD
5vlxoswgdqw_vdaevhnmja_biasadd_readvariableop_resource:	А;
-vlxoswgdqw_vdaevhnmja_readvariableop_resource: =
/vlxoswgdqw_vdaevhnmja_readvariableop_1_resource: =
/vlxoswgdqw_vdaevhnmja_readvariableop_2_resource: ;
)iktogmlrmp_matmul_readvariableop_resource: 8
*iktogmlrmp_biasadd_readvariableop_resource:
identityИв-iigfihrkup/conv1d/ExpandDims_1/ReadVariableOpв4iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOpв!iktogmlrmp/BiasAdd/ReadVariableOpв iktogmlrmp/MatMul/ReadVariableOpв,omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOpв+omilqdycns/ddlymsxapn/MatMul/ReadVariableOpв-omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOpв$omilqdycns/ddlymsxapn/ReadVariableOpв&omilqdycns/ddlymsxapn/ReadVariableOp_1в&omilqdycns/ddlymsxapn/ReadVariableOp_2вomilqdycns/whileв,vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOpв+vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOpв-vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOpв$vlxoswgdqw/vdaevhnmja/ReadVariableOpв&vlxoswgdqw/vdaevhnmja/ReadVariableOp_1в&vlxoswgdqw/vdaevhnmja/ReadVariableOp_2вvlxoswgdqw/whileП
 iigfihrkup/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2"
 iigfihrkup/conv1d/ExpandDims/dim╗
iigfihrkup/conv1d/ExpandDims
ExpandDimsinputs)iigfihrkup/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:         2
iigfihrkup/conv1d/ExpandDims┘
-iigfihrkup/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6iigfihrkup_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-iigfihrkup/conv1d/ExpandDims_1/ReadVariableOpК
"iigfihrkup/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"iigfihrkup/conv1d/ExpandDims_1/dimу
iigfihrkup/conv1d/ExpandDims_1
ExpandDims5iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp:value:0+iigfihrkup/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
iigfihrkup/conv1d/ExpandDims_1З
iigfihrkup/conv1d/ShapeShape%iigfihrkup/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
iigfihrkup/conv1d/ShapeШ
%iigfihrkup/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%iigfihrkup/conv1d/strided_slice/stackе
'iigfihrkup/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¤        2)
'iigfihrkup/conv1d/strided_slice/stack_1Ь
'iigfihrkup/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'iigfihrkup/conv1d/strided_slice/stack_2╠
iigfihrkup/conv1d/strided_sliceStridedSlice iigfihrkup/conv1d/Shape:output:0.iigfihrkup/conv1d/strided_slice/stack:output:00iigfihrkup/conv1d/strided_slice/stack_1:output:00iigfihrkup/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
iigfihrkup/conv1d/strided_sliceЫ
iigfihrkup/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2!
iigfihrkup/conv1d/Reshape/shape╠
iigfihrkup/conv1d/ReshapeReshape%iigfihrkup/conv1d/ExpandDims:output:0(iigfihrkup/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
iigfihrkup/conv1d/Reshapeю
iigfihrkup/conv1d/Conv2DConv2D"iigfihrkup/conv1d/Reshape:output:0'iigfihrkup/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
iigfihrkup/conv1d/Conv2DЫ
!iigfihrkup/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!iigfihrkup/conv1d/concat/values_1Й
iigfihrkup/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2
iigfihrkup/conv1d/concat/axisь
iigfihrkup/conv1d/concatConcatV2(iigfihrkup/conv1d/strided_slice:output:0*iigfihrkup/conv1d/concat/values_1:output:0&iigfihrkup/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
iigfihrkup/conv1d/concat╔
iigfihrkup/conv1d/Reshape_1Reshape!iigfihrkup/conv1d/Conv2D:output:0!iigfihrkup/conv1d/concat:output:0*
T0*3
_output_shapes!
:         2
iigfihrkup/conv1d/Reshape_1┴
iigfihrkup/conv1d/SqueezeSqueeze$iigfihrkup/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:         *
squeeze_dims

¤        2
iigfihrkup/conv1d/SqueezeЬ
#iigfihrkup/squeeze_batch_dims/ShapeShape"iigfihrkup/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#iigfihrkup/squeeze_batch_dims/Shape░
1iigfihrkup/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1iigfihrkup/squeeze_batch_dims/strided_slice/stack╜
3iigfihrkup/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        25
3iigfihrkup/squeeze_batch_dims/strided_slice/stack_1┤
3iigfihrkup/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3iigfihrkup/squeeze_batch_dims/strided_slice/stack_2Ф
+iigfihrkup/squeeze_batch_dims/strided_sliceStridedSlice,iigfihrkup/squeeze_batch_dims/Shape:output:0:iigfihrkup/squeeze_batch_dims/strided_slice/stack:output:0<iigfihrkup/squeeze_batch_dims/strided_slice/stack_1:output:0<iigfihrkup/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+iigfihrkup/squeeze_batch_dims/strided_sliceп
+iigfihrkup/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+iigfihrkup/squeeze_batch_dims/Reshape/shapeщ
%iigfihrkup/squeeze_batch_dims/ReshapeReshape"iigfihrkup/conv1d/Squeeze:output:04iigfihrkup/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:         2'
%iigfihrkup/squeeze_batch_dims/Reshapeц
4iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=iigfihrkup_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp¤
%iigfihrkup/squeeze_batch_dims/BiasAddBiasAdd.iigfihrkup/squeeze_batch_dims/Reshape:output:0<iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         2'
%iigfihrkup/squeeze_batch_dims/BiasAddп
-iigfihrkup/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-iigfihrkup/squeeze_batch_dims/concat/values_1б
)iigfihrkup/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2+
)iigfihrkup/squeeze_batch_dims/concat/axisи
$iigfihrkup/squeeze_batch_dims/concatConcatV24iigfihrkup/squeeze_batch_dims/strided_slice:output:06iigfihrkup/squeeze_batch_dims/concat/values_1:output:02iigfihrkup/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$iigfihrkup/squeeze_batch_dims/concatЎ
'iigfihrkup/squeeze_batch_dims/Reshape_1Reshape.iigfihrkup/squeeze_batch_dims/BiasAdd:output:0-iigfihrkup/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:         2)
'iigfihrkup/squeeze_batch_dims/Reshape_1Д
xfbsciqeco/ShapeShape0iigfihrkup/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
xfbsciqeco/ShapeК
xfbsciqeco/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
xfbsciqeco/strided_slice/stackО
 xfbsciqeco/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 xfbsciqeco/strided_slice/stack_1О
 xfbsciqeco/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 xfbsciqeco/strided_slice/stack_2д
xfbsciqeco/strided_sliceStridedSlicexfbsciqeco/Shape:output:0'xfbsciqeco/strided_slice/stack:output:0)xfbsciqeco/strided_slice/stack_1:output:0)xfbsciqeco/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
xfbsciqeco/strided_slicez
xfbsciqeco/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
xfbsciqeco/Reshape/shape/1z
xfbsciqeco/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
xfbsciqeco/Reshape/shape/2╫
xfbsciqeco/Reshape/shapePack!xfbsciqeco/strided_slice:output:0#xfbsciqeco/Reshape/shape/1:output:0#xfbsciqeco/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
xfbsciqeco/Reshape/shape╛
xfbsciqeco/ReshapeReshape0iigfihrkup/squeeze_batch_dims/Reshape_1:output:0!xfbsciqeco/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
xfbsciqeco/Reshapeo
omilqdycns/ShapeShapexfbsciqeco/Reshape:output:0*
T0*
_output_shapes
:2
omilqdycns/ShapeК
omilqdycns/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
omilqdycns/strided_slice/stackО
 omilqdycns/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 omilqdycns/strided_slice/stack_1О
 omilqdycns/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 omilqdycns/strided_slice/stack_2д
omilqdycns/strided_sliceStridedSliceomilqdycns/Shape:output:0'omilqdycns/strided_slice/stack:output:0)omilqdycns/strided_slice/stack_1:output:0)omilqdycns/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
omilqdycns/strided_slicer
omilqdycns/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/zeros/mul/yШ
omilqdycns/zeros/mulMul!omilqdycns/strided_slice:output:0omilqdycns/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/zeros/mulu
omilqdycns/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
omilqdycns/zeros/Less/yУ
omilqdycns/zeros/LessLessomilqdycns/zeros/mul:z:0 omilqdycns/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/zeros/Lessx
omilqdycns/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/zeros/packed/1п
omilqdycns/zeros/packedPack!omilqdycns/strided_slice:output:0"omilqdycns/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
omilqdycns/zeros/packedu
omilqdycns/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
omilqdycns/zeros/Constб
omilqdycns/zerosFill omilqdycns/zeros/packed:output:0omilqdycns/zeros/Const:output:0*
T0*'
_output_shapes
:          2
omilqdycns/zerosv
omilqdycns/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/zeros_1/mul/yЮ
omilqdycns/zeros_1/mulMul!omilqdycns/strided_slice:output:0!omilqdycns/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/zeros_1/muly
omilqdycns/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
omilqdycns/zeros_1/Less/yЫ
omilqdycns/zeros_1/LessLessomilqdycns/zeros_1/mul:z:0"omilqdycns/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
omilqdycns/zeros_1/Less|
omilqdycns/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/zeros_1/packed/1╡
omilqdycns/zeros_1/packedPack!omilqdycns/strided_slice:output:0$omilqdycns/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
omilqdycns/zeros_1/packedy
omilqdycns/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
omilqdycns/zeros_1/Constй
omilqdycns/zeros_1Fill"omilqdycns/zeros_1/packed:output:0!omilqdycns/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
omilqdycns/zeros_1Л
omilqdycns/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
omilqdycns/transpose/perm░
omilqdycns/transpose	Transposexfbsciqeco/Reshape:output:0"omilqdycns/transpose/perm:output:0*
T0*+
_output_shapes
:         2
omilqdycns/transposep
omilqdycns/Shape_1Shapeomilqdycns/transpose:y:0*
T0*
_output_shapes
:2
omilqdycns/Shape_1О
 omilqdycns/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 omilqdycns/strided_slice_1/stackТ
"omilqdycns/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"omilqdycns/strided_slice_1/stack_1Т
"omilqdycns/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"omilqdycns/strided_slice_1/stack_2░
omilqdycns/strided_slice_1StridedSliceomilqdycns/Shape_1:output:0)omilqdycns/strided_slice_1/stack:output:0+omilqdycns/strided_slice_1/stack_1:output:0+omilqdycns/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
omilqdycns/strided_slice_1Ы
&omilqdycns/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&omilqdycns/TensorArrayV2/element_shape▐
omilqdycns/TensorArrayV2TensorListReserve/omilqdycns/TensorArrayV2/element_shape:output:0#omilqdycns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
omilqdycns/TensorArrayV2╒
@omilqdycns/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@omilqdycns/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2omilqdycns/TensorArrayUnstack/TensorListFromTensorTensorListFromTensoromilqdycns/transpose:y:0Iomilqdycns/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2omilqdycns/TensorArrayUnstack/TensorListFromTensorО
 omilqdycns/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 omilqdycns/strided_slice_2/stackТ
"omilqdycns/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"omilqdycns/strided_slice_2/stack_1Т
"omilqdycns/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"omilqdycns/strided_slice_2/stack_2╛
omilqdycns/strided_slice_2StridedSliceomilqdycns/transpose:y:0)omilqdycns/strided_slice_2/stack:output:0+omilqdycns/strided_slice_2/stack_1:output:0+omilqdycns/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
omilqdycns/strided_slice_2╨
+omilqdycns/ddlymsxapn/MatMul/ReadVariableOpReadVariableOp4omilqdycns_ddlymsxapn_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02-
+omilqdycns/ddlymsxapn/MatMul/ReadVariableOp╙
omilqdycns/ddlymsxapn/MatMulMatMul#omilqdycns/strided_slice_2:output:03omilqdycns/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
omilqdycns/ddlymsxapn/MatMul╓
-omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp6omilqdycns_ddlymsxapn_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp╧
omilqdycns/ddlymsxapn/MatMul_1MatMulomilqdycns/zeros:output:05omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
omilqdycns/ddlymsxapn/MatMul_1─
omilqdycns/ddlymsxapn/addAddV2&omilqdycns/ddlymsxapn/MatMul:product:0(omilqdycns/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
omilqdycns/ddlymsxapn/add╧
,omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp5omilqdycns_ddlymsxapn_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp╤
omilqdycns/ddlymsxapn/BiasAddBiasAddomilqdycns/ddlymsxapn/add:z:04omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
omilqdycns/ddlymsxapn/BiasAddР
%omilqdycns/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%omilqdycns/ddlymsxapn/split/split_dimЧ
omilqdycns/ddlymsxapn/splitSplit.omilqdycns/ddlymsxapn/split/split_dim:output:0&omilqdycns/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
omilqdycns/ddlymsxapn/split╢
$omilqdycns/ddlymsxapn/ReadVariableOpReadVariableOp-omilqdycns_ddlymsxapn_readvariableop_resource*
_output_shapes
: *
dtype02&
$omilqdycns/ddlymsxapn/ReadVariableOp║
omilqdycns/ddlymsxapn/mulMul,omilqdycns/ddlymsxapn/ReadVariableOp:value:0omilqdycns/zeros_1:output:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul║
omilqdycns/ddlymsxapn/add_1AddV2$omilqdycns/ddlymsxapn/split:output:0omilqdycns/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/add_1Ь
omilqdycns/ddlymsxapn/SigmoidSigmoidomilqdycns/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/Sigmoid╝
&omilqdycns/ddlymsxapn/ReadVariableOp_1ReadVariableOp/omilqdycns_ddlymsxapn_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&omilqdycns/ddlymsxapn/ReadVariableOp_1└
omilqdycns/ddlymsxapn/mul_1Mul.omilqdycns/ddlymsxapn/ReadVariableOp_1:value:0omilqdycns/zeros_1:output:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul_1╝
omilqdycns/ddlymsxapn/add_2AddV2$omilqdycns/ddlymsxapn/split:output:1omilqdycns/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/add_2а
omilqdycns/ddlymsxapn/Sigmoid_1Sigmoidomilqdycns/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2!
omilqdycns/ddlymsxapn/Sigmoid_1╡
omilqdycns/ddlymsxapn/mul_2Mul#omilqdycns/ddlymsxapn/Sigmoid_1:y:0omilqdycns/zeros_1:output:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul_2Ш
omilqdycns/ddlymsxapn/TanhTanh$omilqdycns/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/Tanh╢
omilqdycns/ddlymsxapn/mul_3Mul!omilqdycns/ddlymsxapn/Sigmoid:y:0omilqdycns/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul_3╖
omilqdycns/ddlymsxapn/add_3AddV2omilqdycns/ddlymsxapn/mul_2:z:0omilqdycns/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/add_3╝
&omilqdycns/ddlymsxapn/ReadVariableOp_2ReadVariableOp/omilqdycns_ddlymsxapn_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&omilqdycns/ddlymsxapn/ReadVariableOp_2─
omilqdycns/ddlymsxapn/mul_4Mul.omilqdycns/ddlymsxapn/ReadVariableOp_2:value:0omilqdycns/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul_4╝
omilqdycns/ddlymsxapn/add_4AddV2$omilqdycns/ddlymsxapn/split:output:3omilqdycns/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/add_4а
omilqdycns/ddlymsxapn/Sigmoid_2Sigmoidomilqdycns/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2!
omilqdycns/ddlymsxapn/Sigmoid_2Ч
omilqdycns/ddlymsxapn/Tanh_1Tanhomilqdycns/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/Tanh_1║
omilqdycns/ddlymsxapn/mul_5Mul#omilqdycns/ddlymsxapn/Sigmoid_2:y:0 omilqdycns/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
omilqdycns/ddlymsxapn/mul_5е
(omilqdycns/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(omilqdycns/TensorArrayV2_1/element_shapeф
omilqdycns/TensorArrayV2_1TensorListReserve1omilqdycns/TensorArrayV2_1/element_shape:output:0#omilqdycns/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
omilqdycns/TensorArrayV2_1d
omilqdycns/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/timeХ
#omilqdycns/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#omilqdycns/while/maximum_iterationsА
omilqdycns/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
omilqdycns/while/loop_counter░
omilqdycns/whileWhile&omilqdycns/while/loop_counter:output:0,omilqdycns/while/maximum_iterations:output:0omilqdycns/time:output:0#omilqdycns/TensorArrayV2_1:handle:0omilqdycns/zeros:output:0omilqdycns/zeros_1:output:0#omilqdycns/strided_slice_1:output:0Bomilqdycns/TensorArrayUnstack/TensorListFromTensor:output_handle:04omilqdycns_ddlymsxapn_matmul_readvariableop_resource6omilqdycns_ddlymsxapn_matmul_1_readvariableop_resource5omilqdycns_ddlymsxapn_biasadd_readvariableop_resource-omilqdycns_ddlymsxapn_readvariableop_resource/omilqdycns_ddlymsxapn_readvariableop_1_resource/omilqdycns_ddlymsxapn_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*(
body R
omilqdycns_while_body_223333*(
cond R
omilqdycns_while_cond_223332*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
omilqdycns/while╦
;omilqdycns/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;omilqdycns/TensorArrayV2Stack/TensorListStack/element_shapeФ
-omilqdycns/TensorArrayV2Stack/TensorListStackTensorListStackomilqdycns/while:output:3Domilqdycns/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-omilqdycns/TensorArrayV2Stack/TensorListStackЧ
 omilqdycns/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 omilqdycns/strided_slice_3/stackТ
"omilqdycns/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"omilqdycns/strided_slice_3/stack_1Т
"omilqdycns/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"omilqdycns/strided_slice_3/stack_2▄
omilqdycns/strided_slice_3StridedSlice6omilqdycns/TensorArrayV2Stack/TensorListStack:tensor:0)omilqdycns/strided_slice_3/stack:output:0+omilqdycns/strided_slice_3/stack_1:output:0+omilqdycns/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
omilqdycns/strided_slice_3П
omilqdycns/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
omilqdycns/transpose_1/perm╤
omilqdycns/transpose_1	Transpose6omilqdycns/TensorArrayV2Stack/TensorListStack:tensor:0$omilqdycns/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
omilqdycns/transpose_1n
vlxoswgdqw/ShapeShapeomilqdycns/transpose_1:y:0*
T0*
_output_shapes
:2
vlxoswgdqw/ShapeК
vlxoswgdqw/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
vlxoswgdqw/strided_slice/stackО
 vlxoswgdqw/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 vlxoswgdqw/strided_slice/stack_1О
 vlxoswgdqw/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 vlxoswgdqw/strided_slice/stack_2д
vlxoswgdqw/strided_sliceStridedSlicevlxoswgdqw/Shape:output:0'vlxoswgdqw/strided_slice/stack:output:0)vlxoswgdqw/strided_slice/stack_1:output:0)vlxoswgdqw/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
vlxoswgdqw/strided_slicer
vlxoswgdqw/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/zeros/mul/yШ
vlxoswgdqw/zeros/mulMul!vlxoswgdqw/strided_slice:output:0vlxoswgdqw/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/zeros/mulu
vlxoswgdqw/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
vlxoswgdqw/zeros/Less/yУ
vlxoswgdqw/zeros/LessLessvlxoswgdqw/zeros/mul:z:0 vlxoswgdqw/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/zeros/Lessx
vlxoswgdqw/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/zeros/packed/1п
vlxoswgdqw/zeros/packedPack!vlxoswgdqw/strided_slice:output:0"vlxoswgdqw/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
vlxoswgdqw/zeros/packedu
vlxoswgdqw/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
vlxoswgdqw/zeros/Constб
vlxoswgdqw/zerosFill vlxoswgdqw/zeros/packed:output:0vlxoswgdqw/zeros/Const:output:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/zerosv
vlxoswgdqw/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/zeros_1/mul/yЮ
vlxoswgdqw/zeros_1/mulMul!vlxoswgdqw/strided_slice:output:0!vlxoswgdqw/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/zeros_1/muly
vlxoswgdqw/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
vlxoswgdqw/zeros_1/Less/yЫ
vlxoswgdqw/zeros_1/LessLessvlxoswgdqw/zeros_1/mul:z:0"vlxoswgdqw/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
vlxoswgdqw/zeros_1/Less|
vlxoswgdqw/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/zeros_1/packed/1╡
vlxoswgdqw/zeros_1/packedPack!vlxoswgdqw/strided_slice:output:0$vlxoswgdqw/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
vlxoswgdqw/zeros_1/packedy
vlxoswgdqw/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
vlxoswgdqw/zeros_1/Constй
vlxoswgdqw/zeros_1Fill"vlxoswgdqw/zeros_1/packed:output:0!vlxoswgdqw/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/zeros_1Л
vlxoswgdqw/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
vlxoswgdqw/transpose/permп
vlxoswgdqw/transpose	Transposeomilqdycns/transpose_1:y:0"vlxoswgdqw/transpose/perm:output:0*
T0*+
_output_shapes
:          2
vlxoswgdqw/transposep
vlxoswgdqw/Shape_1Shapevlxoswgdqw/transpose:y:0*
T0*
_output_shapes
:2
vlxoswgdqw/Shape_1О
 vlxoswgdqw/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 vlxoswgdqw/strided_slice_1/stackТ
"vlxoswgdqw/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"vlxoswgdqw/strided_slice_1/stack_1Т
"vlxoswgdqw/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"vlxoswgdqw/strided_slice_1/stack_2░
vlxoswgdqw/strided_slice_1StridedSlicevlxoswgdqw/Shape_1:output:0)vlxoswgdqw/strided_slice_1/stack:output:0+vlxoswgdqw/strided_slice_1/stack_1:output:0+vlxoswgdqw/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
vlxoswgdqw/strided_slice_1Ы
&vlxoswgdqw/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&vlxoswgdqw/TensorArrayV2/element_shape▐
vlxoswgdqw/TensorArrayV2TensorListReserve/vlxoswgdqw/TensorArrayV2/element_shape:output:0#vlxoswgdqw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
vlxoswgdqw/TensorArrayV2╒
@vlxoswgdqw/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2B
@vlxoswgdqw/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2vlxoswgdqw/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorvlxoswgdqw/transpose:y:0Ivlxoswgdqw/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2vlxoswgdqw/TensorArrayUnstack/TensorListFromTensorО
 vlxoswgdqw/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 vlxoswgdqw/strided_slice_2/stackТ
"vlxoswgdqw/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"vlxoswgdqw/strided_slice_2/stack_1Т
"vlxoswgdqw/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"vlxoswgdqw/strided_slice_2/stack_2╛
vlxoswgdqw/strided_slice_2StridedSlicevlxoswgdqw/transpose:y:0)vlxoswgdqw/strided_slice_2/stack:output:0+vlxoswgdqw/strided_slice_2/stack_1:output:0+vlxoswgdqw/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
vlxoswgdqw/strided_slice_2╨
+vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOpReadVariableOp4vlxoswgdqw_vdaevhnmja_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02-
+vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp╙
vlxoswgdqw/vdaevhnmja/MatMulMatMul#vlxoswgdqw/strided_slice_2:output:03vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vlxoswgdqw/vdaevhnmja/MatMul╓
-vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp6vlxoswgdqw_vdaevhnmja_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp╧
vlxoswgdqw/vdaevhnmja/MatMul_1MatMulvlxoswgdqw/zeros:output:05vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
vlxoswgdqw/vdaevhnmja/MatMul_1─
vlxoswgdqw/vdaevhnmja/addAddV2&vlxoswgdqw/vdaevhnmja/MatMul:product:0(vlxoswgdqw/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
vlxoswgdqw/vdaevhnmja/add╧
,vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp5vlxoswgdqw_vdaevhnmja_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp╤
vlxoswgdqw/vdaevhnmja/BiasAddBiasAddvlxoswgdqw/vdaevhnmja/add:z:04vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
vlxoswgdqw/vdaevhnmja/BiasAddР
%vlxoswgdqw/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%vlxoswgdqw/vdaevhnmja/split/split_dimЧ
vlxoswgdqw/vdaevhnmja/splitSplit.vlxoswgdqw/vdaevhnmja/split/split_dim:output:0&vlxoswgdqw/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
vlxoswgdqw/vdaevhnmja/split╢
$vlxoswgdqw/vdaevhnmja/ReadVariableOpReadVariableOp-vlxoswgdqw_vdaevhnmja_readvariableop_resource*
_output_shapes
: *
dtype02&
$vlxoswgdqw/vdaevhnmja/ReadVariableOp║
vlxoswgdqw/vdaevhnmja/mulMul,vlxoswgdqw/vdaevhnmja/ReadVariableOp:value:0vlxoswgdqw/zeros_1:output:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul║
vlxoswgdqw/vdaevhnmja/add_1AddV2$vlxoswgdqw/vdaevhnmja/split:output:0vlxoswgdqw/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/add_1Ь
vlxoswgdqw/vdaevhnmja/SigmoidSigmoidvlxoswgdqw/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/Sigmoid╝
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_1ReadVariableOp/vlxoswgdqw_vdaevhnmja_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_1└
vlxoswgdqw/vdaevhnmja/mul_1Mul.vlxoswgdqw/vdaevhnmja/ReadVariableOp_1:value:0vlxoswgdqw/zeros_1:output:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul_1╝
vlxoswgdqw/vdaevhnmja/add_2AddV2$vlxoswgdqw/vdaevhnmja/split:output:1vlxoswgdqw/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/add_2а
vlxoswgdqw/vdaevhnmja/Sigmoid_1Sigmoidvlxoswgdqw/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2!
vlxoswgdqw/vdaevhnmja/Sigmoid_1╡
vlxoswgdqw/vdaevhnmja/mul_2Mul#vlxoswgdqw/vdaevhnmja/Sigmoid_1:y:0vlxoswgdqw/zeros_1:output:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul_2Ш
vlxoswgdqw/vdaevhnmja/TanhTanh$vlxoswgdqw/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/Tanh╢
vlxoswgdqw/vdaevhnmja/mul_3Mul!vlxoswgdqw/vdaevhnmja/Sigmoid:y:0vlxoswgdqw/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul_3╖
vlxoswgdqw/vdaevhnmja/add_3AddV2vlxoswgdqw/vdaevhnmja/mul_2:z:0vlxoswgdqw/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/add_3╝
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_2ReadVariableOp/vlxoswgdqw_vdaevhnmja_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_2─
vlxoswgdqw/vdaevhnmja/mul_4Mul.vlxoswgdqw/vdaevhnmja/ReadVariableOp_2:value:0vlxoswgdqw/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul_4╝
vlxoswgdqw/vdaevhnmja/add_4AddV2$vlxoswgdqw/vdaevhnmja/split:output:3vlxoswgdqw/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/add_4а
vlxoswgdqw/vdaevhnmja/Sigmoid_2Sigmoidvlxoswgdqw/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2!
vlxoswgdqw/vdaevhnmja/Sigmoid_2Ч
vlxoswgdqw/vdaevhnmja/Tanh_1Tanhvlxoswgdqw/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/Tanh_1║
vlxoswgdqw/vdaevhnmja/mul_5Mul#vlxoswgdqw/vdaevhnmja/Sigmoid_2:y:0 vlxoswgdqw/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
vlxoswgdqw/vdaevhnmja/mul_5е
(vlxoswgdqw/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(vlxoswgdqw/TensorArrayV2_1/element_shapeф
vlxoswgdqw/TensorArrayV2_1TensorListReserve1vlxoswgdqw/TensorArrayV2_1/element_shape:output:0#vlxoswgdqw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
vlxoswgdqw/TensorArrayV2_1d
vlxoswgdqw/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/timeХ
#vlxoswgdqw/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#vlxoswgdqw/while/maximum_iterationsА
vlxoswgdqw/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
vlxoswgdqw/while/loop_counter░
vlxoswgdqw/whileWhile&vlxoswgdqw/while/loop_counter:output:0,vlxoswgdqw/while/maximum_iterations:output:0vlxoswgdqw/time:output:0#vlxoswgdqw/TensorArrayV2_1:handle:0vlxoswgdqw/zeros:output:0vlxoswgdqw/zeros_1:output:0#vlxoswgdqw/strided_slice_1:output:0Bvlxoswgdqw/TensorArrayUnstack/TensorListFromTensor:output_handle:04vlxoswgdqw_vdaevhnmja_matmul_readvariableop_resource6vlxoswgdqw_vdaevhnmja_matmul_1_readvariableop_resource5vlxoswgdqw_vdaevhnmja_biasadd_readvariableop_resource-vlxoswgdqw_vdaevhnmja_readvariableop_resource/vlxoswgdqw_vdaevhnmja_readvariableop_1_resource/vlxoswgdqw_vdaevhnmja_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*(
body R
vlxoswgdqw_while_body_223509*(
cond R
vlxoswgdqw_while_cond_223508*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
vlxoswgdqw/while╦
;vlxoswgdqw/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;vlxoswgdqw/TensorArrayV2Stack/TensorListStack/element_shapeФ
-vlxoswgdqw/TensorArrayV2Stack/TensorListStackTensorListStackvlxoswgdqw/while:output:3Dvlxoswgdqw/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-vlxoswgdqw/TensorArrayV2Stack/TensorListStackЧ
 vlxoswgdqw/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 vlxoswgdqw/strided_slice_3/stackТ
"vlxoswgdqw/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"vlxoswgdqw/strided_slice_3/stack_1Т
"vlxoswgdqw/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"vlxoswgdqw/strided_slice_3/stack_2▄
vlxoswgdqw/strided_slice_3StridedSlice6vlxoswgdqw/TensorArrayV2Stack/TensorListStack:tensor:0)vlxoswgdqw/strided_slice_3/stack:output:0+vlxoswgdqw/strided_slice_3/stack_1:output:0+vlxoswgdqw/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
vlxoswgdqw/strided_slice_3П
vlxoswgdqw/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
vlxoswgdqw/transpose_1/perm╤
vlxoswgdqw/transpose_1	Transpose6vlxoswgdqw/TensorArrayV2Stack/TensorListStack:tensor:0$vlxoswgdqw/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
vlxoswgdqw/transpose_1о
 iktogmlrmp/MatMul/ReadVariableOpReadVariableOp)iktogmlrmp_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 iktogmlrmp/MatMul/ReadVariableOp▒
iktogmlrmp/MatMulMatMul#vlxoswgdqw/strided_slice_3:output:0(iktogmlrmp/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
iktogmlrmp/MatMulн
!iktogmlrmp/BiasAdd/ReadVariableOpReadVariableOp*iktogmlrmp_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!iktogmlrmp/BiasAdd/ReadVariableOpн
iktogmlrmp/BiasAddBiasAddiktogmlrmp/MatMul:product:0)iktogmlrmp/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
iktogmlrmp/BiasAdd╧
IdentityIdentityiktogmlrmp/BiasAdd:output:0.^iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp5^iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp"^iktogmlrmp/BiasAdd/ReadVariableOp!^iktogmlrmp/MatMul/ReadVariableOp-^omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp,^omilqdycns/ddlymsxapn/MatMul/ReadVariableOp.^omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp%^omilqdycns/ddlymsxapn/ReadVariableOp'^omilqdycns/ddlymsxapn/ReadVariableOp_1'^omilqdycns/ddlymsxapn/ReadVariableOp_2^omilqdycns/while-^vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp,^vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp.^vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp%^vlxoswgdqw/vdaevhnmja/ReadVariableOp'^vlxoswgdqw/vdaevhnmja/ReadVariableOp_1'^vlxoswgdqw/vdaevhnmja/ReadVariableOp_2^vlxoswgdqw/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2^
-iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp-iigfihrkup/conv1d/ExpandDims_1/ReadVariableOp2l
4iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp4iigfihrkup/squeeze_batch_dims/BiasAdd/ReadVariableOp2F
!iktogmlrmp/BiasAdd/ReadVariableOp!iktogmlrmp/BiasAdd/ReadVariableOp2D
 iktogmlrmp/MatMul/ReadVariableOp iktogmlrmp/MatMul/ReadVariableOp2\
,omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp,omilqdycns/ddlymsxapn/BiasAdd/ReadVariableOp2Z
+omilqdycns/ddlymsxapn/MatMul/ReadVariableOp+omilqdycns/ddlymsxapn/MatMul/ReadVariableOp2^
-omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp-omilqdycns/ddlymsxapn/MatMul_1/ReadVariableOp2L
$omilqdycns/ddlymsxapn/ReadVariableOp$omilqdycns/ddlymsxapn/ReadVariableOp2P
&omilqdycns/ddlymsxapn/ReadVariableOp_1&omilqdycns/ddlymsxapn/ReadVariableOp_12P
&omilqdycns/ddlymsxapn/ReadVariableOp_2&omilqdycns/ddlymsxapn/ReadVariableOp_22$
omilqdycns/whileomilqdycns/while2\
,vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp,vlxoswgdqw/vdaevhnmja/BiasAdd/ReadVariableOp2Z
+vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp+vlxoswgdqw/vdaevhnmja/MatMul/ReadVariableOp2^
-vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp-vlxoswgdqw/vdaevhnmja/MatMul_1/ReadVariableOp2L
$vlxoswgdqw/vdaevhnmja/ReadVariableOp$vlxoswgdqw/vdaevhnmja/ReadVariableOp2P
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_1&vlxoswgdqw/vdaevhnmja/ReadVariableOp_12P
&vlxoswgdqw/vdaevhnmja/ReadVariableOp_2&vlxoswgdqw/vdaevhnmja/ReadVariableOp_22$
vlxoswgdqw/whilevlxoswgdqw/while:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
▀Y
Ж
while_body_224231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_ddlymsxapn_matmul_readvariableop_resource_0:	АF
3while_ddlymsxapn_matmul_1_readvariableop_resource_0:	 АA
2while_ddlymsxapn_biasadd_readvariableop_resource_0:	А8
*while_ddlymsxapn_readvariableop_resource_0: :
,while_ddlymsxapn_readvariableop_1_resource_0: :
,while_ddlymsxapn_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_ddlymsxapn_matmul_readvariableop_resource:	АD
1while_ddlymsxapn_matmul_1_readvariableop_resource:	 А?
0while_ddlymsxapn_biasadd_readvariableop_resource:	А6
(while_ddlymsxapn_readvariableop_resource: 8
*while_ddlymsxapn_readvariableop_1_resource: 8
*while_ddlymsxapn_readvariableop_2_resource: Ив'while/ddlymsxapn/BiasAdd/ReadVariableOpв&while/ddlymsxapn/MatMul/ReadVariableOpв(while/ddlymsxapn/MatMul_1/ReadVariableOpвwhile/ddlymsxapn/ReadVariableOpв!while/ddlymsxapn/ReadVariableOp_1в!while/ddlymsxapn/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/ddlymsxapn/MatMul/ReadVariableOpReadVariableOp1while_ddlymsxapn_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/ddlymsxapn/MatMul/ReadVariableOp╤
while/ddlymsxapn/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul╔
(while/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOp3while_ddlymsxapn_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/ddlymsxapn/MatMul_1/ReadVariableOp║
while/ddlymsxapn/MatMul_1MatMulwhile_placeholder_20while/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/MatMul_1░
while/ddlymsxapn/addAddV2!while/ddlymsxapn/MatMul:product:0#while/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/add┬
'while/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOp2while_ddlymsxapn_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/ddlymsxapn/BiasAdd/ReadVariableOp╜
while/ddlymsxapn/BiasAddBiasAddwhile/ddlymsxapn/add:z:0/while/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/ddlymsxapn/BiasAddЖ
 while/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/ddlymsxapn/split/split_dimГ
while/ddlymsxapn/splitSplit)while/ddlymsxapn/split/split_dim:output:0!while/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/ddlymsxapn/splitй
while/ddlymsxapn/ReadVariableOpReadVariableOp*while_ddlymsxapn_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/ddlymsxapn/ReadVariableOpг
while/ddlymsxapn/mulMul'while/ddlymsxapn/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mulж
while/ddlymsxapn/add_1AddV2while/ddlymsxapn/split:output:0while/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_1Н
while/ddlymsxapn/SigmoidSigmoidwhile/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoidп
!while/ddlymsxapn/ReadVariableOp_1ReadVariableOp,while_ddlymsxapn_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_1й
while/ddlymsxapn/mul_1Mul)while/ddlymsxapn/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_1и
while/ddlymsxapn/add_2AddV2while/ddlymsxapn/split:output:1while/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_2С
while/ddlymsxapn/Sigmoid_1Sigmoidwhile/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_1Ю
while/ddlymsxapn/mul_2Mulwhile/ddlymsxapn/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_2Й
while/ddlymsxapn/TanhTanhwhile/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanhв
while/ddlymsxapn/mul_3Mulwhile/ddlymsxapn/Sigmoid:y:0while/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_3г
while/ddlymsxapn/add_3AddV2while/ddlymsxapn/mul_2:z:0while/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_3п
!while/ddlymsxapn/ReadVariableOp_2ReadVariableOp,while_ddlymsxapn_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/ddlymsxapn/ReadVariableOp_2░
while/ddlymsxapn/mul_4Mul)while/ddlymsxapn/ReadVariableOp_2:value:0while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_4и
while/ddlymsxapn/add_4AddV2while/ddlymsxapn/split:output:3while/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/add_4С
while/ddlymsxapn/Sigmoid_2Sigmoidwhile/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Sigmoid_2И
while/ddlymsxapn/Tanh_1Tanhwhile/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/Tanh_1ж
while/ddlymsxapn/mul_5Mulwhile/ddlymsxapn/Sigmoid_2:y:0while/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/ddlymsxapn/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ddlymsxapn/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/ddlymsxapn/mul_5:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/ddlymsxapn/add_3:z:0(^while/ddlymsxapn/BiasAdd/ReadVariableOp'^while/ddlymsxapn/MatMul/ReadVariableOp)^while/ddlymsxapn/MatMul_1/ReadVariableOp ^while/ddlymsxapn/ReadVariableOp"^while/ddlymsxapn/ReadVariableOp_1"^while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_ddlymsxapn_biasadd_readvariableop_resource2while_ddlymsxapn_biasadd_readvariableop_resource_0"h
1while_ddlymsxapn_matmul_1_readvariableop_resource3while_ddlymsxapn_matmul_1_readvariableop_resource_0"d
/while_ddlymsxapn_matmul_readvariableop_resource1while_ddlymsxapn_matmul_readvariableop_resource_0"Z
*while_ddlymsxapn_readvariableop_1_resource,while_ddlymsxapn_readvariableop_1_resource_0"Z
*while_ddlymsxapn_readvariableop_2_resource,while_ddlymsxapn_readvariableop_2_resource_0"V
(while_ddlymsxapn_readvariableop_resource*while_ddlymsxapn_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/ddlymsxapn/BiasAdd/ReadVariableOp'while/ddlymsxapn/BiasAdd/ReadVariableOp2P
&while/ddlymsxapn/MatMul/ReadVariableOp&while/ddlymsxapn/MatMul/ReadVariableOp2T
(while/ddlymsxapn/MatMul_1/ReadVariableOp(while/ddlymsxapn/MatMul_1/ReadVariableOp2B
while/ddlymsxapn/ReadVariableOpwhile/ddlymsxapn/ReadVariableOp2F
!while/ddlymsxapn/ReadVariableOp_1!while/ddlymsxapn/ReadVariableOp_12F
!while/ddlymsxapn/ReadVariableOp_2!while/ddlymsxapn/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
▀Y
Ж
while_body_225559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_vdaevhnmja_matmul_readvariableop_resource_0:	 АF
3while_vdaevhnmja_matmul_1_readvariableop_resource_0:	 АA
2while_vdaevhnmja_biasadd_readvariableop_resource_0:	А8
*while_vdaevhnmja_readvariableop_resource_0: :
,while_vdaevhnmja_readvariableop_1_resource_0: :
,while_vdaevhnmja_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_vdaevhnmja_matmul_readvariableop_resource:	 АD
1while_vdaevhnmja_matmul_1_readvariableop_resource:	 А?
0while_vdaevhnmja_biasadd_readvariableop_resource:	А6
(while_vdaevhnmja_readvariableop_resource: 8
*while_vdaevhnmja_readvariableop_1_resource: 8
*while_vdaevhnmja_readvariableop_2_resource: Ив'while/vdaevhnmja/BiasAdd/ReadVariableOpв&while/vdaevhnmja/MatMul/ReadVariableOpв(while/vdaevhnmja/MatMul_1/ReadVariableOpвwhile/vdaevhnmja/ReadVariableOpв!while/vdaevhnmja/ReadVariableOp_1в!while/vdaevhnmja/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/vdaevhnmja/MatMul/ReadVariableOpReadVariableOp1while_vdaevhnmja_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/vdaevhnmja/MatMul/ReadVariableOp╤
while/vdaevhnmja/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul╔
(while/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp3while_vdaevhnmja_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/vdaevhnmja/MatMul_1/ReadVariableOp║
while/vdaevhnmja/MatMul_1MatMulwhile_placeholder_20while/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul_1░
while/vdaevhnmja/addAddV2!while/vdaevhnmja/MatMul:product:0#while/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/add┬
'while/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp2while_vdaevhnmja_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/vdaevhnmja/BiasAdd/ReadVariableOp╜
while/vdaevhnmja/BiasAddBiasAddwhile/vdaevhnmja/add:z:0/while/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/BiasAddЖ
 while/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/vdaevhnmja/split/split_dimГ
while/vdaevhnmja/splitSplit)while/vdaevhnmja/split/split_dim:output:0!while/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/vdaevhnmja/splitй
while/vdaevhnmja/ReadVariableOpReadVariableOp*while_vdaevhnmja_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/vdaevhnmja/ReadVariableOpг
while/vdaevhnmja/mulMul'while/vdaevhnmja/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mulж
while/vdaevhnmja/add_1AddV2while/vdaevhnmja/split:output:0while/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_1Н
while/vdaevhnmja/SigmoidSigmoidwhile/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoidп
!while/vdaevhnmja/ReadVariableOp_1ReadVariableOp,while_vdaevhnmja_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_1й
while/vdaevhnmja/mul_1Mul)while/vdaevhnmja/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_1и
while/vdaevhnmja/add_2AddV2while/vdaevhnmja/split:output:1while/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_2С
while/vdaevhnmja/Sigmoid_1Sigmoidwhile/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_1Ю
while/vdaevhnmja/mul_2Mulwhile/vdaevhnmja/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_2Й
while/vdaevhnmja/TanhTanhwhile/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanhв
while/vdaevhnmja/mul_3Mulwhile/vdaevhnmja/Sigmoid:y:0while/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_3г
while/vdaevhnmja/add_3AddV2while/vdaevhnmja/mul_2:z:0while/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_3п
!while/vdaevhnmja/ReadVariableOp_2ReadVariableOp,while_vdaevhnmja_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_2░
while/vdaevhnmja/mul_4Mul)while/vdaevhnmja/ReadVariableOp_2:value:0while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_4и
while/vdaevhnmja/add_4AddV2while/vdaevhnmja/split:output:3while/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_4С
while/vdaevhnmja/Sigmoid_2Sigmoidwhile/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_2И
while/vdaevhnmja/Tanh_1Tanhwhile/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanh_1ж
while/vdaevhnmja/mul_5Mulwhile/vdaevhnmja/Sigmoid_2:y:0while/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/vdaevhnmja/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/vdaevhnmja/mul_5:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/vdaevhnmja/add_3:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_vdaevhnmja_biasadd_readvariableop_resource2while_vdaevhnmja_biasadd_readvariableop_resource_0"h
1while_vdaevhnmja_matmul_1_readvariableop_resource3while_vdaevhnmja_matmul_1_readvariableop_resource_0"d
/while_vdaevhnmja_matmul_readvariableop_resource1while_vdaevhnmja_matmul_readvariableop_resource_0"Z
*while_vdaevhnmja_readvariableop_1_resource,while_vdaevhnmja_readvariableop_1_resource_0"Z
*while_vdaevhnmja_readvariableop_2_resource,while_vdaevhnmja_readvariableop_2_resource_0"V
(while_vdaevhnmja_readvariableop_resource*while_vdaevhnmja_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/vdaevhnmja/BiasAdd/ReadVariableOp'while/vdaevhnmja/BiasAdd/ReadVariableOp2P
&while/vdaevhnmja/MatMul/ReadVariableOp&while/vdaevhnmja/MatMul/ReadVariableOp2T
(while/vdaevhnmja/MatMul_1/ReadVariableOp(while/vdaevhnmja/MatMul_1/ReadVariableOp2B
while/vdaevhnmja/ReadVariableOpwhile/vdaevhnmja/ReadVariableOp2F
!while/vdaevhnmja/ReadVariableOp_1!while/vdaevhnmja/ReadVariableOp_12F
!while/vdaevhnmja/ReadVariableOp_2!while/vdaevhnmja/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
▀Y
Ж
while_body_225019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_vdaevhnmja_matmul_readvariableop_resource_0:	 АF
3while_vdaevhnmja_matmul_1_readvariableop_resource_0:	 АA
2while_vdaevhnmja_biasadd_readvariableop_resource_0:	А8
*while_vdaevhnmja_readvariableop_resource_0: :
,while_vdaevhnmja_readvariableop_1_resource_0: :
,while_vdaevhnmja_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_vdaevhnmja_matmul_readvariableop_resource:	 АD
1while_vdaevhnmja_matmul_1_readvariableop_resource:	 А?
0while_vdaevhnmja_biasadd_readvariableop_resource:	А6
(while_vdaevhnmja_readvariableop_resource: 8
*while_vdaevhnmja_readvariableop_1_resource: 8
*while_vdaevhnmja_readvariableop_2_resource: Ив'while/vdaevhnmja/BiasAdd/ReadVariableOpв&while/vdaevhnmja/MatMul/ReadVariableOpв(while/vdaevhnmja/MatMul_1/ReadVariableOpвwhile/vdaevhnmja/ReadVariableOpв!while/vdaevhnmja/ReadVariableOp_1в!while/vdaevhnmja/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/vdaevhnmja/MatMul/ReadVariableOpReadVariableOp1while_vdaevhnmja_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/vdaevhnmja/MatMul/ReadVariableOp╤
while/vdaevhnmja/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul╔
(while/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp3while_vdaevhnmja_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/vdaevhnmja/MatMul_1/ReadVariableOp║
while/vdaevhnmja/MatMul_1MatMulwhile_placeholder_20while/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul_1░
while/vdaevhnmja/addAddV2!while/vdaevhnmja/MatMul:product:0#while/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/add┬
'while/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp2while_vdaevhnmja_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/vdaevhnmja/BiasAdd/ReadVariableOp╜
while/vdaevhnmja/BiasAddBiasAddwhile/vdaevhnmja/add:z:0/while/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/BiasAddЖ
 while/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/vdaevhnmja/split/split_dimГ
while/vdaevhnmja/splitSplit)while/vdaevhnmja/split/split_dim:output:0!while/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/vdaevhnmja/splitй
while/vdaevhnmja/ReadVariableOpReadVariableOp*while_vdaevhnmja_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/vdaevhnmja/ReadVariableOpг
while/vdaevhnmja/mulMul'while/vdaevhnmja/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mulж
while/vdaevhnmja/add_1AddV2while/vdaevhnmja/split:output:0while/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_1Н
while/vdaevhnmja/SigmoidSigmoidwhile/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoidп
!while/vdaevhnmja/ReadVariableOp_1ReadVariableOp,while_vdaevhnmja_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_1й
while/vdaevhnmja/mul_1Mul)while/vdaevhnmja/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_1и
while/vdaevhnmja/add_2AddV2while/vdaevhnmja/split:output:1while/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_2С
while/vdaevhnmja/Sigmoid_1Sigmoidwhile/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_1Ю
while/vdaevhnmja/mul_2Mulwhile/vdaevhnmja/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_2Й
while/vdaevhnmja/TanhTanhwhile/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanhв
while/vdaevhnmja/mul_3Mulwhile/vdaevhnmja/Sigmoid:y:0while/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_3г
while/vdaevhnmja/add_3AddV2while/vdaevhnmja/mul_2:z:0while/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_3п
!while/vdaevhnmja/ReadVariableOp_2ReadVariableOp,while_vdaevhnmja_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_2░
while/vdaevhnmja/mul_4Mul)while/vdaevhnmja/ReadVariableOp_2:value:0while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_4и
while/vdaevhnmja/add_4AddV2while/vdaevhnmja/split:output:3while/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_4С
while/vdaevhnmja/Sigmoid_2Sigmoidwhile/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_2И
while/vdaevhnmja/Tanh_1Tanhwhile/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanh_1ж
while/vdaevhnmja/mul_5Mulwhile/vdaevhnmja/Sigmoid_2:y:0while/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/vdaevhnmja/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/vdaevhnmja/mul_5:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/vdaevhnmja/add_3:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_vdaevhnmja_biasadd_readvariableop_resource2while_vdaevhnmja_biasadd_readvariableop_resource_0"h
1while_vdaevhnmja_matmul_1_readvariableop_resource3while_vdaevhnmja_matmul_1_readvariableop_resource_0"d
/while_vdaevhnmja_matmul_readvariableop_resource1while_vdaevhnmja_matmul_readvariableop_resource_0"Z
*while_vdaevhnmja_readvariableop_1_resource,while_vdaevhnmja_readvariableop_1_resource_0"Z
*while_vdaevhnmja_readvariableop_2_resource,while_vdaevhnmja_readvariableop_2_resource_0"V
(while_vdaevhnmja_readvariableop_resource*while_vdaevhnmja_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/vdaevhnmja/BiasAdd/ReadVariableOp'while/vdaevhnmja/BiasAdd/ReadVariableOp2P
&while/vdaevhnmja/MatMul/ReadVariableOp&while/vdaevhnmja/MatMul/ReadVariableOp2T
(while/vdaevhnmja/MatMul_1/ReadVariableOp(while/vdaevhnmja/MatMul_1/ReadVariableOp2B
while/vdaevhnmja/ReadVariableOpwhile/vdaevhnmja/ReadVariableOp2F
!while/vdaevhnmja/ReadVariableOp_1!while/vdaevhnmja/ReadVariableOp_12F
!while/vdaevhnmja/ReadVariableOp_2!while/vdaevhnmja/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
Г

х
while_cond_225198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_225198___redundant_placeholder04
0while_while_cond_225198___redundant_placeholder14
0while_while_cond_225198___redundant_placeholder24
0while_while_cond_225198___redundant_placeholder34
0while_while_cond_225198___redundant_placeholder44
0while_while_cond_225198___redundant_placeholder54
0while_while_cond_225198___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Г

х
while_cond_221250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_221250___redundant_placeholder04
0while_while_cond_221250___redundant_placeholder14
0while_while_cond_221250___redundant_placeholder24
0while_while_cond_221250___redundant_placeholder34
0while_while_cond_221250___redundant_placeholder44
0while_while_cond_221250___redundant_placeholder54
0while_while_cond_221250___redundant_placeholder6
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
L: : : : :          :          : :::::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
░'
▓
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_221418

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

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpвReadVariableOpвReadVariableOp_1вReadVariableOp_2О
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
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
:          2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:          2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:          2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:          2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:          2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:          2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:          2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:          2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:          2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          2
mul_5▀
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identityу

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_1у

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:          :          :          : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:OK
'
_output_shapes
:          
 
_user_specified_namestates:OK
'
_output_shapes
:          
 
_user_specified_namestates
█Ж
О
'sequential_omilqdycns_while_body_220103H
Dsequential_omilqdycns_while_sequential_omilqdycns_while_loop_counterN
Jsequential_omilqdycns_while_sequential_omilqdycns_while_maximum_iterations+
'sequential_omilqdycns_while_placeholder-
)sequential_omilqdycns_while_placeholder_1-
)sequential_omilqdycns_while_placeholder_2-
)sequential_omilqdycns_while_placeholder_3G
Csequential_omilqdycns_while_sequential_omilqdycns_strided_slice_1_0Г
sequential_omilqdycns_while_tensorarrayv2read_tensorlistgetitem_sequential_omilqdycns_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource_0:	А\
Isequential_omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource_0:	 АW
Hsequential_omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource_0:	АN
@sequential_omilqdycns_while_ddlymsxapn_readvariableop_resource_0: P
Bsequential_omilqdycns_while_ddlymsxapn_readvariableop_1_resource_0: P
Bsequential_omilqdycns_while_ddlymsxapn_readvariableop_2_resource_0: (
$sequential_omilqdycns_while_identity*
&sequential_omilqdycns_while_identity_1*
&sequential_omilqdycns_while_identity_2*
&sequential_omilqdycns_while_identity_3*
&sequential_omilqdycns_while_identity_4*
&sequential_omilqdycns_while_identity_5E
Asequential_omilqdycns_while_sequential_omilqdycns_strided_slice_1Б
}sequential_omilqdycns_while_tensorarrayv2read_tensorlistgetitem_sequential_omilqdycns_tensorarrayunstack_tensorlistfromtensorX
Esequential_omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource:	АZ
Gsequential_omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource:	 АU
Fsequential_omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource:	АL
>sequential_omilqdycns_while_ddlymsxapn_readvariableop_resource: N
@sequential_omilqdycns_while_ddlymsxapn_readvariableop_1_resource: N
@sequential_omilqdycns_while_ddlymsxapn_readvariableop_2_resource: Ив=sequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOpв<sequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOpв>sequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOpв5sequential/omilqdycns/while/ddlymsxapn/ReadVariableOpв7sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_1в7sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_2я
Msequential/omilqdycns/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2O
Msequential/omilqdycns/while/TensorArrayV2Read/TensorListGetItem/element_shape╫
?sequential/omilqdycns/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_omilqdycns_while_tensorarrayv2read_tensorlistgetitem_sequential_omilqdycns_tensorarrayunstack_tensorlistfromtensor_0'sequential_omilqdycns_while_placeholderVsequential/omilqdycns/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02A
?sequential/omilqdycns/while/TensorArrayV2Read/TensorListGetItemЕ
<sequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOpReadVariableOpGsequential_omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02>
<sequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOpй
-sequential/omilqdycns/while/ddlymsxapn/MatMulMatMulFsequential/omilqdycns/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2/
-sequential/omilqdycns/while/ddlymsxapn/MatMulЛ
>sequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOpReadVariableOpIsequential_omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02@
>sequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOpТ
/sequential/omilqdycns/while/ddlymsxapn/MatMul_1MatMul)sequential_omilqdycns_while_placeholder_2Fsequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А21
/sequential/omilqdycns/while/ddlymsxapn/MatMul_1И
*sequential/omilqdycns/while/ddlymsxapn/addAddV27sequential/omilqdycns/while/ddlymsxapn/MatMul:product:09sequential/omilqdycns/while/ddlymsxapn/MatMul_1:product:0*
T0*(
_output_shapes
:         А2,
*sequential/omilqdycns/while/ddlymsxapn/addД
=sequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOpReadVariableOpHsequential_omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOpХ
.sequential/omilqdycns/while/ddlymsxapn/BiasAddBiasAdd.sequential/omilqdycns/while/ddlymsxapn/add:z:0Esequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А20
.sequential/omilqdycns/while/ddlymsxapn/BiasAdd▓
6sequential/omilqdycns/while/ddlymsxapn/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/omilqdycns/while/ddlymsxapn/split/split_dim█
,sequential/omilqdycns/while/ddlymsxapn/splitSplit?sequential/omilqdycns/while/ddlymsxapn/split/split_dim:output:07sequential/omilqdycns/while/ddlymsxapn/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2.
,sequential/omilqdycns/while/ddlymsxapn/splitы
5sequential/omilqdycns/while/ddlymsxapn/ReadVariableOpReadVariableOp@sequential_omilqdycns_while_ddlymsxapn_readvariableop_resource_0*
_output_shapes
: *
dtype027
5sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp√
*sequential/omilqdycns/while/ddlymsxapn/mulMul=sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp:value:0)sequential_omilqdycns_while_placeholder_3*
T0*'
_output_shapes
:          2,
*sequential/omilqdycns/while/ddlymsxapn/mul■
,sequential/omilqdycns/while/ddlymsxapn/add_1AddV25sequential/omilqdycns/while/ddlymsxapn/split:output:0.sequential/omilqdycns/while/ddlymsxapn/mul:z:0*
T0*'
_output_shapes
:          2.
,sequential/omilqdycns/while/ddlymsxapn/add_1╧
.sequential/omilqdycns/while/ddlymsxapn/SigmoidSigmoid0sequential/omilqdycns/while/ddlymsxapn/add_1:z:0*
T0*'
_output_shapes
:          20
.sequential/omilqdycns/while/ddlymsxapn/Sigmoidё
7sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_1ReadVariableOpBsequential_omilqdycns_while_ddlymsxapn_readvariableop_1_resource_0*
_output_shapes
: *
dtype029
7sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_1Б
,sequential/omilqdycns/while/ddlymsxapn/mul_1Mul?sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_1:value:0)sequential_omilqdycns_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/omilqdycns/while/ddlymsxapn/mul_1А
,sequential/omilqdycns/while/ddlymsxapn/add_2AddV25sequential/omilqdycns/while/ddlymsxapn/split:output:10sequential/omilqdycns/while/ddlymsxapn/mul_1:z:0*
T0*'
_output_shapes
:          2.
,sequential/omilqdycns/while/ddlymsxapn/add_2╙
0sequential/omilqdycns/while/ddlymsxapn/Sigmoid_1Sigmoid0sequential/omilqdycns/while/ddlymsxapn/add_2:z:0*
T0*'
_output_shapes
:          22
0sequential/omilqdycns/while/ddlymsxapn/Sigmoid_1Ў
,sequential/omilqdycns/while/ddlymsxapn/mul_2Mul4sequential/omilqdycns/while/ddlymsxapn/Sigmoid_1:y:0)sequential_omilqdycns_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/omilqdycns/while/ddlymsxapn/mul_2╦
+sequential/omilqdycns/while/ddlymsxapn/TanhTanh5sequential/omilqdycns/while/ddlymsxapn/split:output:2*
T0*'
_output_shapes
:          2-
+sequential/omilqdycns/while/ddlymsxapn/Tanh·
,sequential/omilqdycns/while/ddlymsxapn/mul_3Mul2sequential/omilqdycns/while/ddlymsxapn/Sigmoid:y:0/sequential/omilqdycns/while/ddlymsxapn/Tanh:y:0*
T0*'
_output_shapes
:          2.
,sequential/omilqdycns/while/ddlymsxapn/mul_3√
,sequential/omilqdycns/while/ddlymsxapn/add_3AddV20sequential/omilqdycns/while/ddlymsxapn/mul_2:z:00sequential/omilqdycns/while/ddlymsxapn/mul_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/omilqdycns/while/ddlymsxapn/add_3ё
7sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_2ReadVariableOpBsequential_omilqdycns_while_ddlymsxapn_readvariableop_2_resource_0*
_output_shapes
: *
dtype029
7sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_2И
,sequential/omilqdycns/while/ddlymsxapn/mul_4Mul?sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_2:value:00sequential/omilqdycns/while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/omilqdycns/while/ddlymsxapn/mul_4А
,sequential/omilqdycns/while/ddlymsxapn/add_4AddV25sequential/omilqdycns/while/ddlymsxapn/split:output:30sequential/omilqdycns/while/ddlymsxapn/mul_4:z:0*
T0*'
_output_shapes
:          2.
,sequential/omilqdycns/while/ddlymsxapn/add_4╙
0sequential/omilqdycns/while/ddlymsxapn/Sigmoid_2Sigmoid0sequential/omilqdycns/while/ddlymsxapn/add_4:z:0*
T0*'
_output_shapes
:          22
0sequential/omilqdycns/while/ddlymsxapn/Sigmoid_2╩
-sequential/omilqdycns/while/ddlymsxapn/Tanh_1Tanh0sequential/omilqdycns/while/ddlymsxapn/add_3:z:0*
T0*'
_output_shapes
:          2/
-sequential/omilqdycns/while/ddlymsxapn/Tanh_1■
,sequential/omilqdycns/while/ddlymsxapn/mul_5Mul4sequential/omilqdycns/while/ddlymsxapn/Sigmoid_2:y:01sequential/omilqdycns/while/ddlymsxapn/Tanh_1:y:0*
T0*'
_output_shapes
:          2.
,sequential/omilqdycns/while/ddlymsxapn/mul_5╠
@sequential/omilqdycns/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_omilqdycns_while_placeholder_1'sequential_omilqdycns_while_placeholder0sequential/omilqdycns/while/ddlymsxapn/mul_5:z:0*
_output_shapes
: *
element_dtype02B
@sequential/omilqdycns/while/TensorArrayV2Write/TensorListSetItemИ
!sequential/omilqdycns/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/omilqdycns/while/add/y┴
sequential/omilqdycns/while/addAddV2'sequential_omilqdycns_while_placeholder*sequential/omilqdycns/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/omilqdycns/while/addМ
#sequential/omilqdycns/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/omilqdycns/while/add_1/yф
!sequential/omilqdycns/while/add_1AddV2Dsequential_omilqdycns_while_sequential_omilqdycns_while_loop_counter,sequential/omilqdycns/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/omilqdycns/while/add_1М
$sequential/omilqdycns/while/IdentityIdentity%sequential/omilqdycns/while/add_1:z:0>^sequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp=^sequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp?^sequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp6^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp8^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_18^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2&
$sequential/omilqdycns/while/Identity╡
&sequential/omilqdycns/while/Identity_1IdentityJsequential_omilqdycns_while_sequential_omilqdycns_while_maximum_iterations>^sequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp=^sequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp?^sequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp6^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp8^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_18^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/omilqdycns/while/Identity_1О
&sequential/omilqdycns/while/Identity_2Identity#sequential/omilqdycns/while/add:z:0>^sequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp=^sequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp?^sequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp6^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp8^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_18^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/omilqdycns/while/Identity_2╗
&sequential/omilqdycns/while/Identity_3IdentityPsequential/omilqdycns/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp=^sequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp?^sequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp6^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp8^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_18^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/omilqdycns/while/Identity_3м
&sequential/omilqdycns/while/Identity_4Identity0sequential/omilqdycns/while/ddlymsxapn/mul_5:z:0>^sequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp=^sequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp?^sequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp6^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp8^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_18^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/omilqdycns/while/Identity_4м
&sequential/omilqdycns/while/Identity_5Identity0sequential/omilqdycns/while/ddlymsxapn/add_3:z:0>^sequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp=^sequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp?^sequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp6^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp8^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_18^sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/omilqdycns/while/Identity_5"Т
Fsequential_omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resourceHsequential_omilqdycns_while_ddlymsxapn_biasadd_readvariableop_resource_0"Ф
Gsequential_omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resourceIsequential_omilqdycns_while_ddlymsxapn_matmul_1_readvariableop_resource_0"Р
Esequential_omilqdycns_while_ddlymsxapn_matmul_readvariableop_resourceGsequential_omilqdycns_while_ddlymsxapn_matmul_readvariableop_resource_0"Ж
@sequential_omilqdycns_while_ddlymsxapn_readvariableop_1_resourceBsequential_omilqdycns_while_ddlymsxapn_readvariableop_1_resource_0"Ж
@sequential_omilqdycns_while_ddlymsxapn_readvariableop_2_resourceBsequential_omilqdycns_while_ddlymsxapn_readvariableop_2_resource_0"В
>sequential_omilqdycns_while_ddlymsxapn_readvariableop_resource@sequential_omilqdycns_while_ddlymsxapn_readvariableop_resource_0"U
$sequential_omilqdycns_while_identity-sequential/omilqdycns/while/Identity:output:0"Y
&sequential_omilqdycns_while_identity_1/sequential/omilqdycns/while/Identity_1:output:0"Y
&sequential_omilqdycns_while_identity_2/sequential/omilqdycns/while/Identity_2:output:0"Y
&sequential_omilqdycns_while_identity_3/sequential/omilqdycns/while/Identity_3:output:0"Y
&sequential_omilqdycns_while_identity_4/sequential/omilqdycns/while/Identity_4:output:0"Y
&sequential_omilqdycns_while_identity_5/sequential/omilqdycns/while/Identity_5:output:0"И
Asequential_omilqdycns_while_sequential_omilqdycns_strided_slice_1Csequential_omilqdycns_while_sequential_omilqdycns_strided_slice_1_0"А
}sequential_omilqdycns_while_tensorarrayv2read_tensorlistgetitem_sequential_omilqdycns_tensorarrayunstack_tensorlistfromtensorsequential_omilqdycns_while_tensorarrayv2read_tensorlistgetitem_sequential_omilqdycns_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2~
=sequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp=sequential/omilqdycns/while/ddlymsxapn/BiasAdd/ReadVariableOp2|
<sequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp<sequential/omilqdycns/while/ddlymsxapn/MatMul/ReadVariableOp2А
>sequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp>sequential/omilqdycns/while/ddlymsxapn/MatMul_1/ReadVariableOp2n
5sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp5sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp2r
7sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_17sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_12r
7sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_27sequential/omilqdycns/while/ddlymsxapn/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
 
┐
+__inference_vdaevhnmja_layer_call_fn_225836

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

identity_2ИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_2212312
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

IdentityТ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity_1Т

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:          2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:          :          :          : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
█
G
+__inference_xfbsciqeco_layer_call_fn_224071

inputs
identity╦
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_xfbsciqeco_layer_call_and_return_conditional_losses_2219652
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
█Ж
О
'sequential_vlxoswgdqw_while_body_220279H
Dsequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_loop_counterN
Jsequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_maximum_iterations+
'sequential_vlxoswgdqw_while_placeholder-
)sequential_vlxoswgdqw_while_placeholder_1-
)sequential_vlxoswgdqw_while_placeholder_2-
)sequential_vlxoswgdqw_while_placeholder_3G
Csequential_vlxoswgdqw_while_sequential_vlxoswgdqw_strided_slice_1_0Г
sequential_vlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_sequential_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource_0:	 А\
Isequential_vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource_0:	 АW
Hsequential_vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource_0:	АN
@sequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_resource_0: P
Bsequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource_0: P
Bsequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource_0: (
$sequential_vlxoswgdqw_while_identity*
&sequential_vlxoswgdqw_while_identity_1*
&sequential_vlxoswgdqw_while_identity_2*
&sequential_vlxoswgdqw_while_identity_3*
&sequential_vlxoswgdqw_while_identity_4*
&sequential_vlxoswgdqw_while_identity_5E
Asequential_vlxoswgdqw_while_sequential_vlxoswgdqw_strided_slice_1Б
}sequential_vlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_sequential_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensorX
Esequential_vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource:	 АZ
Gsequential_vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource:	 АU
Fsequential_vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource:	АL
>sequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_resource: N
@sequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource: N
@sequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource: Ив=sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOpв<sequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOpв>sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOpв5sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOpв7sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1в7sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2я
Msequential/vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2O
Msequential/vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem/element_shape╫
?sequential/vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_vlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_sequential_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensor_0'sequential_vlxoswgdqw_while_placeholderVsequential/vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype02A
?sequential/vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItemЕ
<sequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOpReadVariableOpGsequential_vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02>
<sequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOpй
-sequential/vlxoswgdqw/while/vdaevhnmja/MatMulMatMulFsequential/vlxoswgdqw/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2/
-sequential/vlxoswgdqw/while/vdaevhnmja/MatMulЛ
>sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOpIsequential_vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02@
>sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOpТ
/sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1MatMul)sequential_vlxoswgdqw_while_placeholder_2Fsequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А21
/sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1И
*sequential/vlxoswgdqw/while/vdaevhnmja/addAddV27sequential/vlxoswgdqw/while/vdaevhnmja/MatMul:product:09sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2,
*sequential/vlxoswgdqw/while/vdaevhnmja/addД
=sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOpHsequential_vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOpХ
.sequential/vlxoswgdqw/while/vdaevhnmja/BiasAddBiasAdd.sequential/vlxoswgdqw/while/vdaevhnmja/add:z:0Esequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А20
.sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd▓
6sequential/vlxoswgdqw/while/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/vlxoswgdqw/while/vdaevhnmja/split/split_dim█
,sequential/vlxoswgdqw/while/vdaevhnmja/splitSplit?sequential/vlxoswgdqw/while/vdaevhnmja/split/split_dim:output:07sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2.
,sequential/vlxoswgdqw/while/vdaevhnmja/splitы
5sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOpReadVariableOp@sequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_resource_0*
_output_shapes
: *
dtype027
5sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp√
*sequential/vlxoswgdqw/while/vdaevhnmja/mulMul=sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp:value:0)sequential_vlxoswgdqw_while_placeholder_3*
T0*'
_output_shapes
:          2,
*sequential/vlxoswgdqw/while/vdaevhnmja/mul■
,sequential/vlxoswgdqw/while/vdaevhnmja/add_1AddV25sequential/vlxoswgdqw/while/vdaevhnmja/split:output:0.sequential/vlxoswgdqw/while/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2.
,sequential/vlxoswgdqw/while/vdaevhnmja/add_1╧
.sequential/vlxoswgdqw/while/vdaevhnmja/SigmoidSigmoid0sequential/vlxoswgdqw/while/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          20
.sequential/vlxoswgdqw/while/vdaevhnmja/Sigmoidё
7sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1ReadVariableOpBsequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource_0*
_output_shapes
: *
dtype029
7sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1Б
,sequential/vlxoswgdqw/while/vdaevhnmja/mul_1Mul?sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_1:value:0)sequential_vlxoswgdqw_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/vlxoswgdqw/while/vdaevhnmja/mul_1А
,sequential/vlxoswgdqw/while/vdaevhnmja/add_2AddV25sequential/vlxoswgdqw/while/vdaevhnmja/split:output:10sequential/vlxoswgdqw/while/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2.
,sequential/vlxoswgdqw/while/vdaevhnmja/add_2╙
0sequential/vlxoswgdqw/while/vdaevhnmja/Sigmoid_1Sigmoid0sequential/vlxoswgdqw/while/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          22
0sequential/vlxoswgdqw/while/vdaevhnmja/Sigmoid_1Ў
,sequential/vlxoswgdqw/while/vdaevhnmja/mul_2Mul4sequential/vlxoswgdqw/while/vdaevhnmja/Sigmoid_1:y:0)sequential_vlxoswgdqw_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/vlxoswgdqw/while/vdaevhnmja/mul_2╦
+sequential/vlxoswgdqw/while/vdaevhnmja/TanhTanh5sequential/vlxoswgdqw/while/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2-
+sequential/vlxoswgdqw/while/vdaevhnmja/Tanh·
,sequential/vlxoswgdqw/while/vdaevhnmja/mul_3Mul2sequential/vlxoswgdqw/while/vdaevhnmja/Sigmoid:y:0/sequential/vlxoswgdqw/while/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2.
,sequential/vlxoswgdqw/while/vdaevhnmja/mul_3√
,sequential/vlxoswgdqw/while/vdaevhnmja/add_3AddV20sequential/vlxoswgdqw/while/vdaevhnmja/mul_2:z:00sequential/vlxoswgdqw/while/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/vlxoswgdqw/while/vdaevhnmja/add_3ё
7sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2ReadVariableOpBsequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource_0*
_output_shapes
: *
dtype029
7sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2И
,sequential/vlxoswgdqw/while/vdaevhnmja/mul_4Mul?sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2:value:00sequential/vlxoswgdqw/while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/vlxoswgdqw/while/vdaevhnmja/mul_4А
,sequential/vlxoswgdqw/while/vdaevhnmja/add_4AddV25sequential/vlxoswgdqw/while/vdaevhnmja/split:output:30sequential/vlxoswgdqw/while/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2.
,sequential/vlxoswgdqw/while/vdaevhnmja/add_4╙
0sequential/vlxoswgdqw/while/vdaevhnmja/Sigmoid_2Sigmoid0sequential/vlxoswgdqw/while/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          22
0sequential/vlxoswgdqw/while/vdaevhnmja/Sigmoid_2╩
-sequential/vlxoswgdqw/while/vdaevhnmja/Tanh_1Tanh0sequential/vlxoswgdqw/while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2/
-sequential/vlxoswgdqw/while/vdaevhnmja/Tanh_1■
,sequential/vlxoswgdqw/while/vdaevhnmja/mul_5Mul4sequential/vlxoswgdqw/while/vdaevhnmja/Sigmoid_2:y:01sequential/vlxoswgdqw/while/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2.
,sequential/vlxoswgdqw/while/vdaevhnmja/mul_5╠
@sequential/vlxoswgdqw/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_vlxoswgdqw_while_placeholder_1'sequential_vlxoswgdqw_while_placeholder0sequential/vlxoswgdqw/while/vdaevhnmja/mul_5:z:0*
_output_shapes
: *
element_dtype02B
@sequential/vlxoswgdqw/while/TensorArrayV2Write/TensorListSetItemИ
!sequential/vlxoswgdqw/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/vlxoswgdqw/while/add/y┴
sequential/vlxoswgdqw/while/addAddV2'sequential_vlxoswgdqw_while_placeholder*sequential/vlxoswgdqw/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/vlxoswgdqw/while/addМ
#sequential/vlxoswgdqw/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/vlxoswgdqw/while/add_1/yф
!sequential/vlxoswgdqw/while/add_1AddV2Dsequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_loop_counter,sequential/vlxoswgdqw/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/vlxoswgdqw/while/add_1М
$sequential/vlxoswgdqw/while/IdentityIdentity%sequential/vlxoswgdqw/while/add_1:z:0>^sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp=^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp?^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp6^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp8^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_18^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2&
$sequential/vlxoswgdqw/while/Identity╡
&sequential/vlxoswgdqw/while/Identity_1IdentityJsequential_vlxoswgdqw_while_sequential_vlxoswgdqw_while_maximum_iterations>^sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp=^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp?^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp6^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp8^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_18^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/vlxoswgdqw/while/Identity_1О
&sequential/vlxoswgdqw/while/Identity_2Identity#sequential/vlxoswgdqw/while/add:z:0>^sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp=^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp?^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp6^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp8^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_18^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/vlxoswgdqw/while/Identity_2╗
&sequential/vlxoswgdqw/while/Identity_3IdentityPsequential/vlxoswgdqw/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp=^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp?^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp6^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp8^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_18^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/vlxoswgdqw/while/Identity_3м
&sequential/vlxoswgdqw/while/Identity_4Identity0sequential/vlxoswgdqw/while/vdaevhnmja/mul_5:z:0>^sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp=^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp?^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp6^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp8^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_18^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/vlxoswgdqw/while/Identity_4м
&sequential/vlxoswgdqw/while/Identity_5Identity0sequential/vlxoswgdqw/while/vdaevhnmja/add_3:z:0>^sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp=^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp?^sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp6^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp8^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_18^sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/vlxoswgdqw/while/Identity_5"U
$sequential_vlxoswgdqw_while_identity-sequential/vlxoswgdqw/while/Identity:output:0"Y
&sequential_vlxoswgdqw_while_identity_1/sequential/vlxoswgdqw/while/Identity_1:output:0"Y
&sequential_vlxoswgdqw_while_identity_2/sequential/vlxoswgdqw/while/Identity_2:output:0"Y
&sequential_vlxoswgdqw_while_identity_3/sequential/vlxoswgdqw/while/Identity_3:output:0"Y
&sequential_vlxoswgdqw_while_identity_4/sequential/vlxoswgdqw/while/Identity_4:output:0"Y
&sequential_vlxoswgdqw_while_identity_5/sequential/vlxoswgdqw/while/Identity_5:output:0"И
Asequential_vlxoswgdqw_while_sequential_vlxoswgdqw_strided_slice_1Csequential_vlxoswgdqw_while_sequential_vlxoswgdqw_strided_slice_1_0"А
}sequential_vlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_sequential_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensorsequential_vlxoswgdqw_while_tensorarrayv2read_tensorlistgetitem_sequential_vlxoswgdqw_tensorarrayunstack_tensorlistfromtensor_0"Т
Fsequential_vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resourceHsequential_vlxoswgdqw_while_vdaevhnmja_biasadd_readvariableop_resource_0"Ф
Gsequential_vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resourceIsequential_vlxoswgdqw_while_vdaevhnmja_matmul_1_readvariableop_resource_0"Р
Esequential_vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resourceGsequential_vlxoswgdqw_while_vdaevhnmja_matmul_readvariableop_resource_0"Ж
@sequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resourceBsequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_1_resource_0"Ж
@sequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resourceBsequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_2_resource_0"В
>sequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_resource@sequential_vlxoswgdqw_while_vdaevhnmja_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2~
=sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp=sequential/vlxoswgdqw/while/vdaevhnmja/BiasAdd/ReadVariableOp2|
<sequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp<sequential/vlxoswgdqw/while/vdaevhnmja/MatMul/ReadVariableOp2А
>sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp>sequential/vlxoswgdqw/while/vdaevhnmja/MatMul_1/ReadVariableOp2n
5sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp5sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp2r
7sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_17sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_12r
7sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_27sequential/vlxoswgdqw/while/vdaevhnmja/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
▀Y
Ж
while_body_225199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_vdaevhnmja_matmul_readvariableop_resource_0:	 АF
3while_vdaevhnmja_matmul_1_readvariableop_resource_0:	 АA
2while_vdaevhnmja_biasadd_readvariableop_resource_0:	А8
*while_vdaevhnmja_readvariableop_resource_0: :
,while_vdaevhnmja_readvariableop_1_resource_0: :
,while_vdaevhnmja_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_vdaevhnmja_matmul_readvariableop_resource:	 АD
1while_vdaevhnmja_matmul_1_readvariableop_resource:	 А?
0while_vdaevhnmja_biasadd_readvariableop_resource:	А6
(while_vdaevhnmja_readvariableop_resource: 8
*while_vdaevhnmja_readvariableop_1_resource: 8
*while_vdaevhnmja_readvariableop_2_resource: Ив'while/vdaevhnmja/BiasAdd/ReadVariableOpв&while/vdaevhnmja/MatMul/ReadVariableOpв(while/vdaevhnmja/MatMul_1/ReadVariableOpвwhile/vdaevhnmja/ReadVariableOpв!while/vdaevhnmja/ReadVariableOp_1в!while/vdaevhnmja/ReadVariableOp_2├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem├
&while/vdaevhnmja/MatMul/ReadVariableOpReadVariableOp1while_vdaevhnmja_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/vdaevhnmja/MatMul/ReadVariableOp╤
while/vdaevhnmja/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/vdaevhnmja/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul╔
(while/vdaevhnmja/MatMul_1/ReadVariableOpReadVariableOp3while_vdaevhnmja_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/vdaevhnmja/MatMul_1/ReadVariableOp║
while/vdaevhnmja/MatMul_1MatMulwhile_placeholder_20while/vdaevhnmja/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/MatMul_1░
while/vdaevhnmja/addAddV2!while/vdaevhnmja/MatMul:product:0#while/vdaevhnmja/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/add┬
'while/vdaevhnmja/BiasAdd/ReadVariableOpReadVariableOp2while_vdaevhnmja_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/vdaevhnmja/BiasAdd/ReadVariableOp╜
while/vdaevhnmja/BiasAddBiasAddwhile/vdaevhnmja/add:z:0/while/vdaevhnmja/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/vdaevhnmja/BiasAddЖ
 while/vdaevhnmja/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/vdaevhnmja/split/split_dimГ
while/vdaevhnmja/splitSplit)while/vdaevhnmja/split/split_dim:output:0!while/vdaevhnmja/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/vdaevhnmja/splitй
while/vdaevhnmja/ReadVariableOpReadVariableOp*while_vdaevhnmja_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/vdaevhnmja/ReadVariableOpг
while/vdaevhnmja/mulMul'while/vdaevhnmja/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mulж
while/vdaevhnmja/add_1AddV2while/vdaevhnmja/split:output:0while/vdaevhnmja/mul:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_1Н
while/vdaevhnmja/SigmoidSigmoidwhile/vdaevhnmja/add_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoidп
!while/vdaevhnmja/ReadVariableOp_1ReadVariableOp,while_vdaevhnmja_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_1й
while/vdaevhnmja/mul_1Mul)while/vdaevhnmja/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_1и
while/vdaevhnmja/add_2AddV2while/vdaevhnmja/split:output:1while/vdaevhnmja/mul_1:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_2С
while/vdaevhnmja/Sigmoid_1Sigmoidwhile/vdaevhnmja/add_2:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_1Ю
while/vdaevhnmja/mul_2Mulwhile/vdaevhnmja/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_2Й
while/vdaevhnmja/TanhTanhwhile/vdaevhnmja/split:output:2*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanhв
while/vdaevhnmja/mul_3Mulwhile/vdaevhnmja/Sigmoid:y:0while/vdaevhnmja/Tanh:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_3г
while/vdaevhnmja/add_3AddV2while/vdaevhnmja/mul_2:z:0while/vdaevhnmja/mul_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_3п
!while/vdaevhnmja/ReadVariableOp_2ReadVariableOp,while_vdaevhnmja_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/vdaevhnmja/ReadVariableOp_2░
while/vdaevhnmja/mul_4Mul)while/vdaevhnmja/ReadVariableOp_2:value:0while/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_4и
while/vdaevhnmja/add_4AddV2while/vdaevhnmja/split:output:3while/vdaevhnmja/mul_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/add_4С
while/vdaevhnmja/Sigmoid_2Sigmoidwhile/vdaevhnmja/add_4:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Sigmoid_2И
while/vdaevhnmja/Tanh_1Tanhwhile/vdaevhnmja/add_3:z:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/Tanh_1ж
while/vdaevhnmja/mul_5Mulwhile/vdaevhnmja/Sigmoid_2:y:0while/vdaevhnmja/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/vdaevhnmja/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/vdaevhnmja/mul_5:z:0*
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
while/add_1╞
while/IdentityIdentitywhile/add_1:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/vdaevhnmja/mul_5:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/vdaevhnmja/add_3:z:0(^while/vdaevhnmja/BiasAdd/ReadVariableOp'^while/vdaevhnmja/MatMul/ReadVariableOp)^while/vdaevhnmja/MatMul_1/ReadVariableOp ^while/vdaevhnmja/ReadVariableOp"^while/vdaevhnmja/ReadVariableOp_1"^while/vdaevhnmja/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"f
0while_vdaevhnmja_biasadd_readvariableop_resource2while_vdaevhnmja_biasadd_readvariableop_resource_0"h
1while_vdaevhnmja_matmul_1_readvariableop_resource3while_vdaevhnmja_matmul_1_readvariableop_resource_0"d
/while_vdaevhnmja_matmul_readvariableop_resource1while_vdaevhnmja_matmul_readvariableop_resource_0"Z
*while_vdaevhnmja_readvariableop_1_resource,while_vdaevhnmja_readvariableop_1_resource_0"Z
*while_vdaevhnmja_readvariableop_2_resource,while_vdaevhnmja_readvariableop_2_resource_0"V
(while_vdaevhnmja_readvariableop_resource*while_vdaevhnmja_readvariableop_resource_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/vdaevhnmja/BiasAdd/ReadVariableOp'while/vdaevhnmja/BiasAdd/ReadVariableOp2P
&while/vdaevhnmja/MatMul/ReadVariableOp&while/vdaevhnmja/MatMul/ReadVariableOp2T
(while/vdaevhnmja/MatMul_1/ReadVariableOp(while/vdaevhnmja/MatMul_1/ReadVariableOp2B
while/vdaevhnmja/ReadVariableOpwhile/vdaevhnmja/ReadVariableOp2F
!while/vdaevhnmja/ReadVariableOp_1!while/vdaevhnmja/ReadVariableOp_12F
!while/vdaevhnmja/ReadVariableOp_2!while/vdaevhnmja/ReadVariableOp_2: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: "╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultз
I

ahzwxypkrh;
serving_default_ahzwxypkrh:0         >

iktogmlrmp0
StatefulPartitionedCall:0         tensorflow/serving/predict:А║
╣D
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
В_default_save_signature
Г__call__
+Д&call_and_return_all_conditional_losses"┬A
_tf_keras_sequentialгA{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ahzwxypkrh"}}, {"class_name": "Conv1D", "config": {"name": "iigfihrkup", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "xfbsciqeco", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}}, {"class_name": "RNN", "config": {"name": "omilqdycns", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "ddlymsxapn", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}}, {"class_name": "RNN", "config": {"name": "vlxoswgdqw", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "vdaevhnmja", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}}, {"class_name": "Dense", "config": {"name": "iktogmlrmp", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 13}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 5, 13]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 3, 5, 13]}, "float32", "ahzwxypkrh"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "ahzwxypkrh"}, "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "iigfihrkup", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Reshape", "config": {"name": "xfbsciqeco", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}, "shared_object_id": 4}, {"class_name": "RNN", "config": {"name": "omilqdycns", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "ddlymsxapn", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}}, "shared_object_id": 9}, {"class_name": "RNN", "config": {"name": "vlxoswgdqw", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "vdaevhnmja", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "iktogmlrmp", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
╠

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"е

_tf_keras_layerЛ
{"name": "iigfihrkup", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "iigfihrkup", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 13}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 5, 13]}}
Р
	variables
regularization_losses
trainable_variables
	keras_api
З__call__
+И&call_and_return_all_conditional_losses" 
_tf_keras_layerх{"name": "xfbsciqeco", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "xfbsciqeco", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}, "shared_object_id": 4}
н
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
Й__call__
+К&call_and_return_all_conditional_losses"В
_tf_keras_rnn_layerф{"name": "omilqdycns", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RNN", "config": {"name": "omilqdycns", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "ddlymsxapn", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}}, "shared_object_id": 9, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 20]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 20]}}
│
cell

state_spec
	variables
regularization_losses
 trainable_variables
!	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"И
_tf_keras_rnn_layerъ{"name": "vlxoswgdqw", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RNN", "config": {"name": "vlxoswgdqw", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "vdaevhnmja", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}}, "shared_object_id": 14, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 21}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 32]}}
┘

"kernel
#bias
$	variables
%regularization_losses
&trainable_variables
'	keras_api
Н__call__
+О&call_and_return_all_conditional_losses"▓
_tf_keras_layerШ{"name": "iktogmlrmp", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "iktogmlrmp", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
Д
(iter
	)decay
*learning_rate
+momentum
,rho	rmsr	rmss	"rmst	#rmsu	-rmsv	.rmsw	/rmsx	0rmsy	1rmsz	2rms{	3rms|	4rms}	5rms~	6rms
7rmsА
8rmsБ"
	optimizer
Ц
0
1
-2
.3
/4
05
16
27
38
49
510
611
712
813
"14
#15"
trackable_list_wrapper
 "
trackable_list_wrapper
Ц
0
1
-2
.3
/4
05
16
27
38
49
510
611
712
813
"14
#15"
trackable_list_wrapper
╬
9metrics
	variables
:layer_regularization_losses
;layer_metrics

<layers
regularization_losses
=non_trainable_variables
	trainable_variables
Г__call__
В_default_save_signature
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
-
Пserving_default"
signature_map
':%2iigfihrkup/kernel
:2iigfihrkup/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
>metrics
	variables
?layer_regularization_losses
@layer_metrics

Alayers
regularization_losses
Bnon_trainable_variables
trainable_variables
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Cmetrics
	variables
Dlayer_regularization_losses
Elayer_metrics

Flayers
regularization_losses
Gnon_trainable_variables
trainable_variables
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
И

H
state_size

-kernel
.recurrent_kernel
/bias
0input_gate_peephole_weights
 1forget_gate_peephole_weights
 2output_gate_peephole_weights
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"╓
_tf_keras_layer╝{"name": "ddlymsxapn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Addons>PeepholeLSTMCell", "config": {"name": "ddlymsxapn", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}
 "
trackable_list_wrapper
J
-0
.1
/2
03
14
25"
trackable_list_wrapper
 "
trackable_list_wrapper
J
-0
.1
/2
03
14
25"
trackable_list_wrapper
╝
Mmetrics
	variables

Nstates
Olayer_regularization_losses
Player_metrics

Qlayers
regularization_losses
Rnon_trainable_variables
trainable_variables
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
М

S
state_size

3kernel
4recurrent_kernel
5bias
6input_gate_peephole_weights
 7forget_gate_peephole_weights
 8output_gate_peephole_weights
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"┌
_tf_keras_layer└{"name": "vdaevhnmja", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Addons>PeepholeLSTMCell", "config": {"name": "vdaevhnmja", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}
 "
trackable_list_wrapper
J
30
41
52
63
74
85"
trackable_list_wrapper
 "
trackable_list_wrapper
J
30
41
52
63
74
85"
trackable_list_wrapper
╝
Xmetrics
	variables

Ystates
Zlayer_regularization_losses
[layer_metrics

\layers
regularization_losses
]non_trainable_variables
 trainable_variables
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
#:! 2iktogmlrmp/kernel
:2iktogmlrmp/bias
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
░
^metrics
$	variables
_layer_regularization_losses
`layer_metrics

alayers
%regularization_losses
bnon_trainable_variables
&trainable_variables
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
/:-	А2omilqdycns/ddlymsxapn/kernel
9:7	 А2&omilqdycns/ddlymsxapn/recurrent_kernel
):'А2omilqdycns/ddlymsxapn/bias
?:= 21omilqdycns/ddlymsxapn/input_gate_peephole_weights
@:> 22omilqdycns/ddlymsxapn/forget_gate_peephole_weights
@:> 22omilqdycns/ddlymsxapn/output_gate_peephole_weights
/:-	 А2vlxoswgdqw/vdaevhnmja/kernel
9:7	 А2&vlxoswgdqw/vdaevhnmja/recurrent_kernel
):'А2vlxoswgdqw/vdaevhnmja/bias
?:= 21vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights
@:> 22vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights
@:> 22vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights
'
c0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
C
0
1
2
3
4"
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
J
-0
.1
/2
03
14
25"
trackable_list_wrapper
 "
trackable_list_wrapper
J
-0
.1
/2
03
14
25"
trackable_list_wrapper
░
dmetrics
I	variables
elayer_regularization_losses
flayer_metrics

glayers
Jregularization_losses
hnon_trainable_variables
Ktrainable_variables
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
30
41
52
63
74
85"
trackable_list_wrapper
 "
trackable_list_wrapper
J
30
41
52
63
74
85"
trackable_list_wrapper
░
imetrics
T	variables
jlayer_regularization_losses
klayer_metrics

llayers
Uregularization_losses
mnon_trainable_variables
Vtrainable_variables
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
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
╘
	ntotal
	ocount
p	variables
q	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 23}
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
:  (2total
:  (2count
.
n0
o1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
1:/2RMSprop/iigfihrkup/kernel/rms
':%2RMSprop/iigfihrkup/bias/rms
-:+ 2RMSprop/iktogmlrmp/kernel/rms
':%2RMSprop/iktogmlrmp/bias/rms
9:7	А2(RMSprop/omilqdycns/ddlymsxapn/kernel/rms
C:A	 А22RMSprop/omilqdycns/ddlymsxapn/recurrent_kernel/rms
3:1А2&RMSprop/omilqdycns/ddlymsxapn/bias/rms
I:G 2=RMSprop/omilqdycns/ddlymsxapn/input_gate_peephole_weights/rms
J:H 2>RMSprop/omilqdycns/ddlymsxapn/forget_gate_peephole_weights/rms
J:H 2>RMSprop/omilqdycns/ddlymsxapn/output_gate_peephole_weights/rms
9:7	 А2(RMSprop/vlxoswgdqw/vdaevhnmja/kernel/rms
C:A	 А22RMSprop/vlxoswgdqw/vdaevhnmja/recurrent_kernel/rms
3:1А2&RMSprop/vlxoswgdqw/vdaevhnmja/bias/rms
I:G 2=RMSprop/vlxoswgdqw/vdaevhnmja/input_gate_peephole_weights/rms
J:H 2>RMSprop/vlxoswgdqw/vdaevhnmja/forget_gate_peephole_weights/rms
J:H 2>RMSprop/vlxoswgdqw/vdaevhnmja/output_gate_peephole_weights/rms
ъ2ч
!__inference__wrapped_model_220386┴
Л▓З
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
annotationsк *1в.
,К)

ahzwxypkrh         
·2ў
+__inference_sequential_layer_call_fn_222405
+__inference_sequential_layer_call_fn_223175
+__inference_sequential_layer_call_fn_223212
+__inference_sequential_layer_call_fn_223011└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
ц2у
F__inference_sequential_layer_call_and_return_conditional_losses_223616
F__inference_sequential_layer_call_and_return_conditional_losses_224020
F__inference_sequential_layer_call_and_return_conditional_losses_223052
F__inference_sequential_layer_call_and_return_conditional_losses_223093└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
╒2╥
+__inference_iigfihrkup_layer_call_fn_224029в
Щ▓Х
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
annotationsк *
 
Ё2э
F__inference_iigfihrkup_layer_call_and_return_conditional_losses_224066в
Щ▓Х
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
annotationsк *
 
╒2╥
+__inference_xfbsciqeco_layer_call_fn_224071в
Щ▓Х
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
annotationsк *
 
Ё2э
F__inference_xfbsciqeco_layer_call_and_return_conditional_losses_224084в
Щ▓Х
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
annotationsк *
 
а2Э
+__inference_omilqdycns_layer_call_fn_224101
+__inference_omilqdycns_layer_call_fn_224118
+__inference_omilqdycns_layer_call_fn_224135
+__inference_omilqdycns_layer_call_fn_224152ц
▌▓┘
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
kwonlydefaultsк 
annotationsк *
 
М2Й
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224332
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224512
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224692
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224872ц
▌▓┘
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
kwonlydefaultsк 
annotationsк *
 
а2Э
+__inference_vlxoswgdqw_layer_call_fn_224889
+__inference_vlxoswgdqw_layer_call_fn_224906
+__inference_vlxoswgdqw_layer_call_fn_224923
+__inference_vlxoswgdqw_layer_call_fn_224940ц
▌▓┘
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
kwonlydefaultsк 
annotationsк *
 
М2Й
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225120
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225300
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225480
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225660ц
▌▓┘
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
kwonlydefaultsк 
annotationsк *
 
╒2╥
+__inference_iktogmlrmp_layer_call_fn_225669в
Щ▓Х
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
annotationsк *
 
Ё2э
F__inference_iktogmlrmp_layer_call_and_return_conditional_losses_225679в
Щ▓Х
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
annotationsк *
 
╬B╦
$__inference_signature_wrapper_223138
ahzwxypkrh"Ф
Н▓Й
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
annotationsк *
 
Ю2Ы
+__inference_ddlymsxapn_layer_call_fn_225702
+__inference_ddlymsxapn_layer_call_fn_225725╛
╡▓▒
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
kwonlydefaultsк 
annotationsк *
 
╘2╤
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_225769
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_225813╛
╡▓▒
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
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
+__inference_vdaevhnmja_layer_call_fn_225836
+__inference_vdaevhnmja_layer_call_fn_225859╛
╡▓▒
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
kwonlydefaultsк 
annotationsк *
 
╘2╤
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_225903
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_225947╛
╡▓▒
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
kwonlydefaultsк 
annotationsк *
 о
!__inference__wrapped_model_220386И-./012345678"#;в8
1в.
,К)

ahzwxypkrh         
к "7к4
2

iktogmlrmp$К!

iktogmlrmp         ╦
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_225769А-./012Ав}
vвs
 К
inputs         
KвH
"К
states/0          
"К
states/1          
p 
к "sвp
iвf
К
0/0          
EЪB
К
0/1/0          
К
0/1/1          
Ъ ╦
F__inference_ddlymsxapn_layer_call_and_return_conditional_losses_225813А-./012Ав}
vвs
 К
inputs         
KвH
"К
states/0          
"К
states/1          
p
к "sвp
iвf
К
0/0          
EЪB
К
0/1/0          
К
0/1/1          
Ъ а
+__inference_ddlymsxapn_layer_call_fn_225702Ё-./012Ав}
vвs
 К
inputs         
KвH
"К
states/0          
"К
states/1          
p 
к "cв`
К
0          
AЪ>
К
1/0          
К
1/1          а
+__inference_ddlymsxapn_layer_call_fn_225725Ё-./012Ав}
vвs
 К
inputs         
KвH
"К
states/0          
"К
states/1          
p
к "cв`
К
0          
AЪ>
К
1/0          
К
1/1          ╢
F__inference_iigfihrkup_layer_call_and_return_conditional_losses_224066l7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ О
+__inference_iigfihrkup_layer_call_fn_224029_7в4
-в*
(К%
inputs         
к " К         ж
F__inference_iktogmlrmp_layer_call_and_return_conditional_losses_225679\"#/в,
%в"
 К
inputs          
к "%в"
К
0         
Ъ ~
+__inference_iktogmlrmp_layer_call_fn_225669O"#/в,
%в"
 К
inputs          
к "К         ▄
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224332С-./012SвP
IвF
4Ъ1
/К,
inputs/0                  

 
p 

 

 
к "2в/
(К%
0                   
Ъ ▄
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224512С-./012SвP
IвF
4Ъ1
/К,
inputs/0                  

 
p

 

 
к "2в/
(К%
0                   
Ъ ┬
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224692x-./012Cв@
9в6
$К!
inputs         

 
p 

 

 
к ")в&
К
0          
Ъ ┬
F__inference_omilqdycns_layer_call_and_return_conditional_losses_224872x-./012Cв@
9в6
$К!
inputs         

 
p

 

 
к ")в&
К
0          
Ъ ┤
+__inference_omilqdycns_layer_call_fn_224101Д-./012SвP
IвF
4Ъ1
/К,
inputs/0                  

 
p 

 

 
к "%К"                   ┤
+__inference_omilqdycns_layer_call_fn_224118Д-./012SвP
IвF
4Ъ1
/К,
inputs/0                  

 
p

 

 
к "%К"                   Ъ
+__inference_omilqdycns_layer_call_fn_224135k-./012Cв@
9в6
$К!
inputs         

 
p 

 

 
к "К          Ъ
+__inference_omilqdycns_layer_call_fn_224152k-./012Cв@
9в6
$К!
inputs         

 
p

 

 
к "К          ╚
F__inference_sequential_layer_call_and_return_conditional_losses_223052~-./012345678"#Cв@
9в6
,К)

ahzwxypkrh         
p 

 
к "%в"
К
0         
Ъ ╚
F__inference_sequential_layer_call_and_return_conditional_losses_223093~-./012345678"#Cв@
9в6
,К)

ahzwxypkrh         
p

 
к "%в"
К
0         
Ъ ─
F__inference_sequential_layer_call_and_return_conditional_losses_223616z-./012345678"#?в<
5в2
(К%
inputs         
p 

 
к "%в"
К
0         
Ъ ─
F__inference_sequential_layer_call_and_return_conditional_losses_224020z-./012345678"#?в<
5в2
(К%
inputs         
p

 
к "%в"
К
0         
Ъ а
+__inference_sequential_layer_call_fn_222405q-./012345678"#Cв@
9в6
,К)

ahzwxypkrh         
p 

 
к "К         а
+__inference_sequential_layer_call_fn_223011q-./012345678"#Cв@
9в6
,К)

ahzwxypkrh         
p

 
к "К         Ь
+__inference_sequential_layer_call_fn_223175m-./012345678"#?в<
5в2
(К%
inputs         
p 

 
к "К         Ь
+__inference_sequential_layer_call_fn_223212m-./012345678"#?в<
5в2
(К%
inputs         
p

 
к "К         ┐
$__inference_signature_wrapper_223138Ц-./012345678"#IвF
в 
?к<
:

ahzwxypkrh,К)

ahzwxypkrh         "7к4
2

iktogmlrmp$К!

iktogmlrmp         ╦
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_225903А345678Ав}
vвs
 К
inputs          
KвH
"К
states/0          
"К
states/1          
p 
к "sвp
iвf
К
0/0          
EЪB
К
0/1/0          
К
0/1/1          
Ъ ╦
F__inference_vdaevhnmja_layer_call_and_return_conditional_losses_225947А345678Ав}
vвs
 К
inputs          
KвH
"К
states/0          
"К
states/1          
p
к "sвp
iвf
К
0/0          
EЪB
К
0/1/0          
К
0/1/1          
Ъ а
+__inference_vdaevhnmja_layer_call_fn_225836Ё345678Ав}
vвs
 К
inputs          
KвH
"К
states/0          
"К
states/1          
p 
к "cв`
К
0          
AЪ>
К
1/0          
К
1/1          а
+__inference_vdaevhnmja_layer_call_fn_225859Ё345678Ав}
vвs
 К
inputs          
KвH
"К
states/0          
"К
states/1          
p
к "cв`
К
0          
AЪ>
К
1/0          
К
1/1          ╧
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225120Д345678SвP
IвF
4Ъ1
/К,
inputs/0                   

 
p 

 

 
к "%в"
К
0          
Ъ ╧
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225300Д345678SвP
IвF
4Ъ1
/К,
inputs/0                   

 
p

 

 
к "%в"
К
0          
Ъ ╛
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225480t345678Cв@
9в6
$К!
inputs          

 
p 

 

 
к "%в"
К
0          
Ъ ╛
F__inference_vlxoswgdqw_layer_call_and_return_conditional_losses_225660t345678Cв@
9в6
$К!
inputs          

 
p

 

 
к "%в"
К
0          
Ъ ж
+__inference_vlxoswgdqw_layer_call_fn_224889w345678SвP
IвF
4Ъ1
/К,
inputs/0                   

 
p 

 

 
к "К          ж
+__inference_vlxoswgdqw_layer_call_fn_224906w345678SвP
IвF
4Ъ1
/К,
inputs/0                   

 
p

 

 
к "К          Ц
+__inference_vlxoswgdqw_layer_call_fn_224923g345678Cв@
9в6
$К!
inputs          

 
p 

 

 
к "К          Ц
+__inference_vlxoswgdqw_layer_call_fn_224940g345678Cв@
9в6
$К!
inputs          

 
p

 

 
к "К          о
F__inference_xfbsciqeco_layer_call_and_return_conditional_losses_224084d7в4
-в*
(К%
inputs         
к ")в&
К
0         
Ъ Ж
+__inference_xfbsciqeco_layer_call_fn_224071W7в4
-в*
(К%
inputs         
к "К         