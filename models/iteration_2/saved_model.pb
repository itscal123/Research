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
jjfezsyjwn/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namejjfezsyjwn/kernel
{
%jjfezsyjwn/kernel/Read/ReadVariableOpReadVariableOpjjfezsyjwn/kernel*"
_output_shapes
:*
dtype0
v
jjfezsyjwn/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namejjfezsyjwn/bias
o
#jjfezsyjwn/bias/Read/ReadVariableOpReadVariableOpjjfezsyjwn/bias*
_output_shapes
:*
dtype0
~
jhbguimgvq/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_namejhbguimgvq/kernel
w
%jhbguimgvq/kernel/Read/ReadVariableOpReadVariableOpjhbguimgvq/kernel*
_output_shapes

: *
dtype0
v
jhbguimgvq/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namejhbguimgvq/bias
o
#jhbguimgvq/bias/Read/ReadVariableOpReadVariableOpjhbguimgvq/bias*
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
eluvehoiqy/gfpcpbbmvi/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*-
shared_nameeluvehoiqy/gfpcpbbmvi/kernel
О
0eluvehoiqy/gfpcpbbmvi/kernel/Read/ReadVariableOpReadVariableOpeluvehoiqy/gfpcpbbmvi/kernel*
_output_shapes
:	А*
dtype0
й
&eluvehoiqy/gfpcpbbmvi/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&eluvehoiqy/gfpcpbbmvi/recurrent_kernel
в
:eluvehoiqy/gfpcpbbmvi/recurrent_kernel/Read/ReadVariableOpReadVariableOp&eluvehoiqy/gfpcpbbmvi/recurrent_kernel*
_output_shapes
:	 А*
dtype0
Н
eluvehoiqy/gfpcpbbmvi/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameeluvehoiqy/gfpcpbbmvi/bias
Ж
.eluvehoiqy/gfpcpbbmvi/bias/Read/ReadVariableOpReadVariableOpeluvehoiqy/gfpcpbbmvi/bias*
_output_shapes	
:А*
dtype0
║
1eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights
│
Eeluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights/Read/ReadVariableOpReadVariableOp1eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights
╡
Feluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights
╡
Feluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights*
_output_shapes
: *
dtype0
Х
tgargouhhw/leklhosgal/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*-
shared_nametgargouhhw/leklhosgal/kernel
О
0tgargouhhw/leklhosgal/kernel/Read/ReadVariableOpReadVariableOptgargouhhw/leklhosgal/kernel*
_output_shapes
:	 А*
dtype0
й
&tgargouhhw/leklhosgal/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&tgargouhhw/leklhosgal/recurrent_kernel
в
:tgargouhhw/leklhosgal/recurrent_kernel/Read/ReadVariableOpReadVariableOp&tgargouhhw/leklhosgal/recurrent_kernel*
_output_shapes
:	 А*
dtype0
Н
tgargouhhw/leklhosgal/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nametgargouhhw/leklhosgal/bias
Ж
.tgargouhhw/leklhosgal/bias/Read/ReadVariableOpReadVariableOptgargouhhw/leklhosgal/bias*
_output_shapes	
:А*
dtype0
║
1tgargouhhw/leklhosgal/input_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31tgargouhhw/leklhosgal/input_gate_peephole_weights
│
Etgargouhhw/leklhosgal/input_gate_peephole_weights/Read/ReadVariableOpReadVariableOp1tgargouhhw/leklhosgal/input_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2tgargouhhw/leklhosgal/forget_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42tgargouhhw/leklhosgal/forget_gate_peephole_weights
╡
Ftgargouhhw/leklhosgal/forget_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2tgargouhhw/leklhosgal/forget_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2tgargouhhw/leklhosgal/output_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42tgargouhhw/leklhosgal/output_gate_peephole_weights
╡
Ftgargouhhw/leklhosgal/output_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2tgargouhhw/leklhosgal/output_gate_peephole_weights*
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
RMSprop/jjfezsyjwn/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/jjfezsyjwn/kernel/rms
У
1RMSprop/jjfezsyjwn/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/jjfezsyjwn/kernel/rms*"
_output_shapes
:*
dtype0
О
RMSprop/jjfezsyjwn/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/jjfezsyjwn/bias/rms
З
/RMSprop/jjfezsyjwn/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/jjfezsyjwn/bias/rms*
_output_shapes
:*
dtype0
Ц
RMSprop/jhbguimgvq/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *.
shared_nameRMSprop/jhbguimgvq/kernel/rms
П
1RMSprop/jhbguimgvq/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/jhbguimgvq/kernel/rms*
_output_shapes

: *
dtype0
О
RMSprop/jhbguimgvq/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/jhbguimgvq/bias/rms
З
/RMSprop/jhbguimgvq/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/jhbguimgvq/bias/rms*
_output_shapes
:*
dtype0
н
(RMSprop/eluvehoiqy/gfpcpbbmvi/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*9
shared_name*(RMSprop/eluvehoiqy/gfpcpbbmvi/kernel/rms
ж
<RMSprop/eluvehoiqy/gfpcpbbmvi/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/eluvehoiqy/gfpcpbbmvi/kernel/rms*
_output_shapes
:	А*
dtype0
┴
2RMSprop/eluvehoiqy/gfpcpbbmvi/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*C
shared_name42RMSprop/eluvehoiqy/gfpcpbbmvi/recurrent_kernel/rms
║
FRMSprop/eluvehoiqy/gfpcpbbmvi/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp2RMSprop/eluvehoiqy/gfpcpbbmvi/recurrent_kernel/rms*
_output_shapes
:	 А*
dtype0
е
&RMSprop/eluvehoiqy/gfpcpbbmvi/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&RMSprop/eluvehoiqy/gfpcpbbmvi/bias/rms
Ю
:RMSprop/eluvehoiqy/gfpcpbbmvi/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/eluvehoiqy/gfpcpbbmvi/bias/rms*
_output_shapes	
:А*
dtype0
╥
=RMSprop/eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=RMSprop/eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights/rms
╦
QRMSprop/eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp=RMSprop/eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights/rms
═
RRMSprop/eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights/rms
═
RRMSprop/eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
н
(RMSprop/tgargouhhw/leklhosgal/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*9
shared_name*(RMSprop/tgargouhhw/leklhosgal/kernel/rms
ж
<RMSprop/tgargouhhw/leklhosgal/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/tgargouhhw/leklhosgal/kernel/rms*
_output_shapes
:	 А*
dtype0
┴
2RMSprop/tgargouhhw/leklhosgal/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*C
shared_name42RMSprop/tgargouhhw/leklhosgal/recurrent_kernel/rms
║
FRMSprop/tgargouhhw/leklhosgal/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp2RMSprop/tgargouhhw/leklhosgal/recurrent_kernel/rms*
_output_shapes
:	 А*
dtype0
е
&RMSprop/tgargouhhw/leklhosgal/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&RMSprop/tgargouhhw/leklhosgal/bias/rms
Ю
:RMSprop/tgargouhhw/leklhosgal/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/tgargouhhw/leklhosgal/bias/rms*
_output_shapes	
:А*
dtype0
╥
=RMSprop/tgargouhhw/leklhosgal/input_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=RMSprop/tgargouhhw/leklhosgal/input_gate_peephole_weights/rms
╦
QRMSprop/tgargouhhw/leklhosgal/input_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp=RMSprop/tgargouhhw/leklhosgal/input_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/tgargouhhw/leklhosgal/forget_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/tgargouhhw/leklhosgal/forget_gate_peephole_weights/rms
═
RRMSprop/tgargouhhw/leklhosgal/forget_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/tgargouhhw/leklhosgal/forget_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/tgargouhhw/leklhosgal/output_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/tgargouhhw/leklhosgal/output_gate_peephole_weights/rms
═
RRMSprop/tgargouhhw/leklhosgal/output_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/tgargouhhw/leklhosgal/output_gate_peephole_weights/rms*
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
trainable_variables
	regularization_losses

	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
 regularization_losses
!	keras_api
h

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
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
н

9layers
:non_trainable_variables
	variables
trainable_variables
;layer_regularization_losses
<metrics
	regularization_losses
=layer_metrics
 
][
VARIABLE_VALUEjjfezsyjwn/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEjjfezsyjwn/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
н

>layers
?non_trainable_variables
	variables
trainable_variables
@layer_regularization_losses
Ametrics
regularization_losses
Blayer_metrics
 
 
 
н

Clayers
Dnon_trainable_variables
	variables
trainable_variables
Elayer_regularization_losses
Fmetrics
regularization_losses
Glayer_metrics
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
Jtrainable_variables
Kregularization_losses
L	keras_api
 
*
-0
.1
/2
03
14
25
*
-0
.1
/2
03
14
25
 
╣

Mlayers
Nnon_trainable_variables
	variables
trainable_variables
Olayer_regularization_losses

Pstates
Qmetrics
regularization_losses
Rlayer_metrics
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
Utrainable_variables
Vregularization_losses
W	keras_api
 
*
30
41
52
63
74
85
*
30
41
52
63
74
85
 
╣

Xlayers
Ynon_trainable_variables
	variables
trainable_variables
Zlayer_regularization_losses

[states
\metrics
 regularization_losses
]layer_metrics
][
VARIABLE_VALUEjhbguimgvq/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEjhbguimgvq/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
н

^layers
_non_trainable_variables
$	variables
%trainable_variables
`layer_regularization_losses
ametrics
&regularization_losses
blayer_metrics
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
VARIABLE_VALUEeluvehoiqy/gfpcpbbmvi/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE&eluvehoiqy/gfpcpbbmvi/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEeluvehoiqy/gfpcpbbmvi/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights&variables/5/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE2eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights&variables/6/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE2eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights&variables/7/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEtgargouhhw/leklhosgal/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE&tgargouhhw/leklhosgal/recurrent_kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEtgargouhhw/leklhosgal/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE1tgargouhhw/leklhosgal/input_gate_peephole_weights'variables/11/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE2tgargouhhw/leklhosgal/forget_gate_peephole_weights'variables/12/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE2tgargouhhw/leklhosgal/output_gate_peephole_weights'variables/13/.ATTRIBUTES/VARIABLE_VALUE
#
0
1
2
3
4
 
 

c0
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
*
-0
.1
/2
03
14
25
 
н

dlayers
enon_trainable_variables
I	variables
Jtrainable_variables
flayer_regularization_losses
gmetrics
Kregularization_losses
hlayer_metrics

0
 
 
 
 
 
 
*
30
41
52
63
74
85
*
30
41
52
63
74
85
 
н

ilayers
jnon_trainable_variables
T	variables
Utrainable_variables
klayer_regularization_losses
lmetrics
Vregularization_losses
mlayer_metrics

0
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
VARIABLE_VALUERMSprop/jjfezsyjwn/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/jjfezsyjwn/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUERMSprop/jhbguimgvq/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/jhbguimgvq/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE(RMSprop/eluvehoiqy/gfpcpbbmvi/kernel/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE2RMSprop/eluvehoiqy/gfpcpbbmvi/recurrent_kernel/rmsDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUE&RMSprop/eluvehoiqy/gfpcpbbmvi/bias/rmsDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE=RMSprop/eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights/rmsDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE>RMSprop/eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights/rmsDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE>RMSprop/eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights/rmsDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE(RMSprop/tgargouhhw/leklhosgal/kernel/rmsDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE2RMSprop/tgargouhhw/leklhosgal/recurrent_kernel/rmsDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE&RMSprop/tgargouhhw/leklhosgal/bias/rmsEvariables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE=RMSprop/tgargouhhw/leklhosgal/input_gate_peephole_weights/rmsEvariables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE>RMSprop/tgargouhhw/leklhosgal/forget_gate_peephole_weights/rmsEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE>RMSprop/tgargouhhw/leklhosgal/output_gate_peephole_weights/rmsEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Н
serving_default_khvjuhjlxePlaceholder*/
_output_shapes
:         *
dtype0*$
shape:         
Ъ
StatefulPartitionedCallStatefulPartitionedCallserving_default_khvjuhjlxejjfezsyjwn/kerneljjfezsyjwn/biaseluvehoiqy/gfpcpbbmvi/kernel&eluvehoiqy/gfpcpbbmvi/recurrent_kerneleluvehoiqy/gfpcpbbmvi/bias1eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights2eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights2eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weightstgargouhhw/leklhosgal/kernel&tgargouhhw/leklhosgal/recurrent_kerneltgargouhhw/leklhosgal/bias1tgargouhhw/leklhosgal/input_gate_peephole_weights2tgargouhhw/leklhosgal/forget_gate_peephole_weights2tgargouhhw/leklhosgal/output_gate_peephole_weightsjhbguimgvq/kerneljhbguimgvq/bias*
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
$__inference_signature_wrapper_357945
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ў
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%jjfezsyjwn/kernel/Read/ReadVariableOp#jjfezsyjwn/bias/Read/ReadVariableOp%jhbguimgvq/kernel/Read/ReadVariableOp#jhbguimgvq/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp0eluvehoiqy/gfpcpbbmvi/kernel/Read/ReadVariableOp:eluvehoiqy/gfpcpbbmvi/recurrent_kernel/Read/ReadVariableOp.eluvehoiqy/gfpcpbbmvi/bias/Read/ReadVariableOpEeluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights/Read/ReadVariableOpFeluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights/Read/ReadVariableOpFeluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights/Read/ReadVariableOp0tgargouhhw/leklhosgal/kernel/Read/ReadVariableOp:tgargouhhw/leklhosgal/recurrent_kernel/Read/ReadVariableOp.tgargouhhw/leklhosgal/bias/Read/ReadVariableOpEtgargouhhw/leklhosgal/input_gate_peephole_weights/Read/ReadVariableOpFtgargouhhw/leklhosgal/forget_gate_peephole_weights/Read/ReadVariableOpFtgargouhhw/leklhosgal/output_gate_peephole_weights/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp1RMSprop/jjfezsyjwn/kernel/rms/Read/ReadVariableOp/RMSprop/jjfezsyjwn/bias/rms/Read/ReadVariableOp1RMSprop/jhbguimgvq/kernel/rms/Read/ReadVariableOp/RMSprop/jhbguimgvq/bias/rms/Read/ReadVariableOp<RMSprop/eluvehoiqy/gfpcpbbmvi/kernel/rms/Read/ReadVariableOpFRMSprop/eluvehoiqy/gfpcpbbmvi/recurrent_kernel/rms/Read/ReadVariableOp:RMSprop/eluvehoiqy/gfpcpbbmvi/bias/rms/Read/ReadVariableOpQRMSprop/eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights/rms/Read/ReadVariableOp<RMSprop/tgargouhhw/leklhosgal/kernel/rms/Read/ReadVariableOpFRMSprop/tgargouhhw/leklhosgal/recurrent_kernel/rms/Read/ReadVariableOp:RMSprop/tgargouhhw/leklhosgal/bias/rms/Read/ReadVariableOpQRMSprop/tgargouhhw/leklhosgal/input_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/tgargouhhw/leklhosgal/forget_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/tgargouhhw/leklhosgal/output_gate_peephole_weights/rms/Read/ReadVariableOpConst*4
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
__inference__traced_save_360894
х
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamejjfezsyjwn/kerneljjfezsyjwn/biasjhbguimgvq/kerneljhbguimgvq/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhoeluvehoiqy/gfpcpbbmvi/kernel&eluvehoiqy/gfpcpbbmvi/recurrent_kerneleluvehoiqy/gfpcpbbmvi/bias1eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights2eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights2eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weightstgargouhhw/leklhosgal/kernel&tgargouhhw/leklhosgal/recurrent_kerneltgargouhhw/leklhosgal/bias1tgargouhhw/leklhosgal/input_gate_peephole_weights2tgargouhhw/leklhosgal/forget_gate_peephole_weights2tgargouhhw/leklhosgal/output_gate_peephole_weightstotalcountRMSprop/jjfezsyjwn/kernel/rmsRMSprop/jjfezsyjwn/bias/rmsRMSprop/jhbguimgvq/kernel/rmsRMSprop/jhbguimgvq/bias/rms(RMSprop/eluvehoiqy/gfpcpbbmvi/kernel/rms2RMSprop/eluvehoiqy/gfpcpbbmvi/recurrent_kernel/rms&RMSprop/eluvehoiqy/gfpcpbbmvi/bias/rms=RMSprop/eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights/rms>RMSprop/eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights/rms>RMSprop/eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights/rms(RMSprop/tgargouhhw/leklhosgal/kernel/rms2RMSprop/tgargouhhw/leklhosgal/recurrent_kernel/rms&RMSprop/tgargouhhw/leklhosgal/bias/rms=RMSprop/tgargouhhw/leklhosgal/input_gate_peephole_weights/rms>RMSprop/tgargouhhw/leklhosgal/forget_gate_peephole_weights/rms>RMSprop/tgargouhhw/leklhosgal/output_gate_peephole_weights/rms*3
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
"__inference__traced_restore_361021е█-
Р
Г
eluvehoiqy_while_cond_3584692
.eluvehoiqy_while_eluvehoiqy_while_loop_counter8
4eluvehoiqy_while_eluvehoiqy_while_maximum_iterations 
eluvehoiqy_while_placeholder"
eluvehoiqy_while_placeholder_1"
eluvehoiqy_while_placeholder_2"
eluvehoiqy_while_placeholder_34
0eluvehoiqy_while_less_eluvehoiqy_strided_slice_1J
Feluvehoiqy_while_eluvehoiqy_while_cond_358469___redundant_placeholder0J
Feluvehoiqy_while_eluvehoiqy_while_cond_358469___redundant_placeholder1J
Feluvehoiqy_while_eluvehoiqy_while_cond_358469___redundant_placeholder2J
Feluvehoiqy_while_eluvehoiqy_while_cond_358469___redundant_placeholder3J
Feluvehoiqy_while_eluvehoiqy_while_cond_358469___redundant_placeholder4J
Feluvehoiqy_while_eluvehoiqy_while_cond_358469___redundant_placeholder5J
Feluvehoiqy_while_eluvehoiqy_while_cond_358469___redundant_placeholder6
eluvehoiqy_while_identity
з
eluvehoiqy/while/LessLesseluvehoiqy_while_placeholder0eluvehoiqy_while_less_eluvehoiqy_strided_slice_1*
T0*
_output_shapes
: 2
eluvehoiqy/while/Less~
eluvehoiqy/while/IdentityIdentityeluvehoiqy/while/Less:z:0*
T0
*
_output_shapes
: 2
eluvehoiqy/while/Identity"?
eluvehoiqy_while_identity"eluvehoiqy/while/Identity:output:0*(
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
+__inference_eluvehoiqy_layer_call_fn_359645
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
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_3556432
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
Э
б	
'sequential_tgargouhhw_while_cond_355085H
Dsequential_tgargouhhw_while_sequential_tgargouhhw_while_loop_counterN
Jsequential_tgargouhhw_while_sequential_tgargouhhw_while_maximum_iterations+
'sequential_tgargouhhw_while_placeholder-
)sequential_tgargouhhw_while_placeholder_1-
)sequential_tgargouhhw_while_placeholder_2-
)sequential_tgargouhhw_while_placeholder_3J
Fsequential_tgargouhhw_while_less_sequential_tgargouhhw_strided_slice_1`
\sequential_tgargouhhw_while_sequential_tgargouhhw_while_cond_355085___redundant_placeholder0`
\sequential_tgargouhhw_while_sequential_tgargouhhw_while_cond_355085___redundant_placeholder1`
\sequential_tgargouhhw_while_sequential_tgargouhhw_while_cond_355085___redundant_placeholder2`
\sequential_tgargouhhw_while_sequential_tgargouhhw_while_cond_355085___redundant_placeholder3`
\sequential_tgargouhhw_while_sequential_tgargouhhw_while_cond_355085___redundant_placeholder4`
\sequential_tgargouhhw_while_sequential_tgargouhhw_while_cond_355085___redundant_placeholder5`
\sequential_tgargouhhw_while_sequential_tgargouhhw_while_cond_355085___redundant_placeholder6(
$sequential_tgargouhhw_while_identity
▐
 sequential/tgargouhhw/while/LessLess'sequential_tgargouhhw_while_placeholderFsequential_tgargouhhw_while_less_sequential_tgargouhhw_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/tgargouhhw/while/LessЯ
$sequential/tgargouhhw/while/IdentityIdentity$sequential/tgargouhhw/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/tgargouhhw/while/Identity"U
$sequential_tgargouhhw_while_identity-sequential/tgargouhhw/while/Identity:output:0*(
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
щ
Е
+__inference_tgargouhhw_layer_call_fn_360416
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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_3561382
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
╕'
┤
F__inference_leklhosgal_layer_call_and_return_conditional_losses_360664

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
ЙZ
╩
__inference__traced_save_360894
file_prefix0
,savev2_jjfezsyjwn_kernel_read_readvariableop.
*savev2_jjfezsyjwn_bias_read_readvariableop0
,savev2_jhbguimgvq_kernel_read_readvariableop.
*savev2_jhbguimgvq_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop;
7savev2_eluvehoiqy_gfpcpbbmvi_kernel_read_readvariableopE
Asavev2_eluvehoiqy_gfpcpbbmvi_recurrent_kernel_read_readvariableop9
5savev2_eluvehoiqy_gfpcpbbmvi_bias_read_readvariableopP
Lsavev2_eluvehoiqy_gfpcpbbmvi_input_gate_peephole_weights_read_readvariableopQ
Msavev2_eluvehoiqy_gfpcpbbmvi_forget_gate_peephole_weights_read_readvariableopQ
Msavev2_eluvehoiqy_gfpcpbbmvi_output_gate_peephole_weights_read_readvariableop;
7savev2_tgargouhhw_leklhosgal_kernel_read_readvariableopE
Asavev2_tgargouhhw_leklhosgal_recurrent_kernel_read_readvariableop9
5savev2_tgargouhhw_leklhosgal_bias_read_readvariableopP
Lsavev2_tgargouhhw_leklhosgal_input_gate_peephole_weights_read_readvariableopQ
Msavev2_tgargouhhw_leklhosgal_forget_gate_peephole_weights_read_readvariableopQ
Msavev2_tgargouhhw_leklhosgal_output_gate_peephole_weights_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop<
8savev2_rmsprop_jjfezsyjwn_kernel_rms_read_readvariableop:
6savev2_rmsprop_jjfezsyjwn_bias_rms_read_readvariableop<
8savev2_rmsprop_jhbguimgvq_kernel_rms_read_readvariableop:
6savev2_rmsprop_jhbguimgvq_bias_rms_read_readvariableopG
Csavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_kernel_rms_read_readvariableopQ
Msavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_recurrent_kernel_rms_read_readvariableopE
Asavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_bias_rms_read_readvariableop\
Xsavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_input_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_forget_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_output_gate_peephole_weights_rms_read_readvariableopG
Csavev2_rmsprop_tgargouhhw_leklhosgal_kernel_rms_read_readvariableopQ
Msavev2_rmsprop_tgargouhhw_leklhosgal_recurrent_kernel_rms_read_readvariableopE
Asavev2_rmsprop_tgargouhhw_leklhosgal_bias_rms_read_readvariableop\
Xsavev2_rmsprop_tgargouhhw_leklhosgal_input_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_tgargouhhw_leklhosgal_forget_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_tgargouhhw_leklhosgal_output_gate_peephole_weights_rms_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_jjfezsyjwn_kernel_read_readvariableop*savev2_jjfezsyjwn_bias_read_readvariableop,savev2_jhbguimgvq_kernel_read_readvariableop*savev2_jhbguimgvq_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop7savev2_eluvehoiqy_gfpcpbbmvi_kernel_read_readvariableopAsavev2_eluvehoiqy_gfpcpbbmvi_recurrent_kernel_read_readvariableop5savev2_eluvehoiqy_gfpcpbbmvi_bias_read_readvariableopLsavev2_eluvehoiqy_gfpcpbbmvi_input_gate_peephole_weights_read_readvariableopMsavev2_eluvehoiqy_gfpcpbbmvi_forget_gate_peephole_weights_read_readvariableopMsavev2_eluvehoiqy_gfpcpbbmvi_output_gate_peephole_weights_read_readvariableop7savev2_tgargouhhw_leklhosgal_kernel_read_readvariableopAsavev2_tgargouhhw_leklhosgal_recurrent_kernel_read_readvariableop5savev2_tgargouhhw_leklhosgal_bias_read_readvariableopLsavev2_tgargouhhw_leklhosgal_input_gate_peephole_weights_read_readvariableopMsavev2_tgargouhhw_leklhosgal_forget_gate_peephole_weights_read_readvariableopMsavev2_tgargouhhw_leklhosgal_output_gate_peephole_weights_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop8savev2_rmsprop_jjfezsyjwn_kernel_rms_read_readvariableop6savev2_rmsprop_jjfezsyjwn_bias_rms_read_readvariableop8savev2_rmsprop_jhbguimgvq_kernel_rms_read_readvariableop6savev2_rmsprop_jhbguimgvq_bias_rms_read_readvariableopCsavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_kernel_rms_read_readvariableopMsavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_recurrent_kernel_rms_read_readvariableopAsavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_bias_rms_read_readvariableopXsavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_input_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_forget_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_eluvehoiqy_gfpcpbbmvi_output_gate_peephole_weights_rms_read_readvariableopCsavev2_rmsprop_tgargouhhw_leklhosgal_kernel_rms_read_readvariableopMsavev2_rmsprop_tgargouhhw_leklhosgal_recurrent_kernel_rms_read_readvariableopAsavev2_rmsprop_tgargouhhw_leklhosgal_bias_rms_read_readvariableopXsavev2_rmsprop_tgargouhhw_leklhosgal_input_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_tgargouhhw_leklhosgal_forget_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_tgargouhhw_leklhosgal_output_gate_peephole_weights_rms_read_readvariableopsavev2_const"/device:CPU:0*
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
Шp
╔
tgargouhhw_while_body_3586462
.tgargouhhw_while_tgargouhhw_while_loop_counter8
4tgargouhhw_while_tgargouhhw_while_maximum_iterations 
tgargouhhw_while_placeholder"
tgargouhhw_while_placeholder_1"
tgargouhhw_while_placeholder_2"
tgargouhhw_while_placeholder_31
-tgargouhhw_while_tgargouhhw_strided_slice_1_0m
itgargouhhw_while_tensorarrayv2read_tensorlistgetitem_tgargouhhw_tensorarrayunstack_tensorlistfromtensor_0O
<tgargouhhw_while_leklhosgal_matmul_readvariableop_resource_0:	 АQ
>tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource_0:	 АL
=tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource_0:	АC
5tgargouhhw_while_leklhosgal_readvariableop_resource_0: E
7tgargouhhw_while_leklhosgal_readvariableop_1_resource_0: E
7tgargouhhw_while_leklhosgal_readvariableop_2_resource_0: 
tgargouhhw_while_identity
tgargouhhw_while_identity_1
tgargouhhw_while_identity_2
tgargouhhw_while_identity_3
tgargouhhw_while_identity_4
tgargouhhw_while_identity_5/
+tgargouhhw_while_tgargouhhw_strided_slice_1k
gtgargouhhw_while_tensorarrayv2read_tensorlistgetitem_tgargouhhw_tensorarrayunstack_tensorlistfromtensorM
:tgargouhhw_while_leklhosgal_matmul_readvariableop_resource:	 АO
<tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource:	 АJ
;tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource:	АA
3tgargouhhw_while_leklhosgal_readvariableop_resource: C
5tgargouhhw_while_leklhosgal_readvariableop_1_resource: C
5tgargouhhw_while_leklhosgal_readvariableop_2_resource: Ив2tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOpв1tgargouhhw/while/leklhosgal/MatMul/ReadVariableOpв3tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOpв*tgargouhhw/while/leklhosgal/ReadVariableOpв,tgargouhhw/while/leklhosgal/ReadVariableOp_1в,tgargouhhw/while/leklhosgal/ReadVariableOp_2┘
Btgargouhhw/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2D
Btgargouhhw/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4tgargouhhw/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemitgargouhhw_while_tensorarrayv2read_tensorlistgetitem_tgargouhhw_tensorarrayunstack_tensorlistfromtensor_0tgargouhhw_while_placeholderKtgargouhhw/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype026
4tgargouhhw/while/TensorArrayV2Read/TensorListGetItemф
1tgargouhhw/while/leklhosgal/MatMul/ReadVariableOpReadVariableOp<tgargouhhw_while_leklhosgal_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype023
1tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp¤
"tgargouhhw/while/leklhosgal/MatMulMatMul;tgargouhhw/while/TensorArrayV2Read/TensorListGetItem:item:09tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"tgargouhhw/while/leklhosgal/MatMulъ
3tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOpReadVariableOp>tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOpц
$tgargouhhw/while/leklhosgal/MatMul_1MatMultgargouhhw_while_placeholder_2;tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$tgargouhhw/while/leklhosgal/MatMul_1▄
tgargouhhw/while/leklhosgal/addAddV2,tgargouhhw/while/leklhosgal/MatMul:product:0.tgargouhhw/while/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
tgargouhhw/while/leklhosgal/addу
2tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOpReadVariableOp=tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOpщ
#tgargouhhw/while/leklhosgal/BiasAddBiasAdd#tgargouhhw/while/leklhosgal/add:z:0:tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#tgargouhhw/while/leklhosgal/BiasAddЬ
+tgargouhhw/while/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+tgargouhhw/while/leklhosgal/split/split_dimп
!tgargouhhw/while/leklhosgal/splitSplit4tgargouhhw/while/leklhosgal/split/split_dim:output:0,tgargouhhw/while/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!tgargouhhw/while/leklhosgal/split╩
*tgargouhhw/while/leklhosgal/ReadVariableOpReadVariableOp5tgargouhhw_while_leklhosgal_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*tgargouhhw/while/leklhosgal/ReadVariableOp╧
tgargouhhw/while/leklhosgal/mulMul2tgargouhhw/while/leklhosgal/ReadVariableOp:value:0tgargouhhw_while_placeholder_3*
T0*'
_output_shapes
:          2!
tgargouhhw/while/leklhosgal/mul╥
!tgargouhhw/while/leklhosgal/add_1AddV2*tgargouhhw/while/leklhosgal/split:output:0#tgargouhhw/while/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/add_1о
#tgargouhhw/while/leklhosgal/SigmoidSigmoid%tgargouhhw/while/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2%
#tgargouhhw/while/leklhosgal/Sigmoid╨
,tgargouhhw/while/leklhosgal/ReadVariableOp_1ReadVariableOp7tgargouhhw_while_leklhosgal_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,tgargouhhw/while/leklhosgal/ReadVariableOp_1╒
!tgargouhhw/while/leklhosgal/mul_1Mul4tgargouhhw/while/leklhosgal/ReadVariableOp_1:value:0tgargouhhw_while_placeholder_3*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/mul_1╘
!tgargouhhw/while/leklhosgal/add_2AddV2*tgargouhhw/while/leklhosgal/split:output:1%tgargouhhw/while/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/add_2▓
%tgargouhhw/while/leklhosgal/Sigmoid_1Sigmoid%tgargouhhw/while/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2'
%tgargouhhw/while/leklhosgal/Sigmoid_1╩
!tgargouhhw/while/leklhosgal/mul_2Mul)tgargouhhw/while/leklhosgal/Sigmoid_1:y:0tgargouhhw_while_placeholder_3*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/mul_2к
 tgargouhhw/while/leklhosgal/TanhTanh*tgargouhhw/while/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2"
 tgargouhhw/while/leklhosgal/Tanh╬
!tgargouhhw/while/leklhosgal/mul_3Mul'tgargouhhw/while/leklhosgal/Sigmoid:y:0$tgargouhhw/while/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/mul_3╧
!tgargouhhw/while/leklhosgal/add_3AddV2%tgargouhhw/while/leklhosgal/mul_2:z:0%tgargouhhw/while/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/add_3╨
,tgargouhhw/while/leklhosgal/ReadVariableOp_2ReadVariableOp7tgargouhhw_while_leklhosgal_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,tgargouhhw/while/leklhosgal/ReadVariableOp_2▄
!tgargouhhw/while/leklhosgal/mul_4Mul4tgargouhhw/while/leklhosgal/ReadVariableOp_2:value:0%tgargouhhw/while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/mul_4╘
!tgargouhhw/while/leklhosgal/add_4AddV2*tgargouhhw/while/leklhosgal/split:output:3%tgargouhhw/while/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/add_4▓
%tgargouhhw/while/leklhosgal/Sigmoid_2Sigmoid%tgargouhhw/while/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2'
%tgargouhhw/while/leklhosgal/Sigmoid_2й
"tgargouhhw/while/leklhosgal/Tanh_1Tanh%tgargouhhw/while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2$
"tgargouhhw/while/leklhosgal/Tanh_1╥
!tgargouhhw/while/leklhosgal/mul_5Mul)tgargouhhw/while/leklhosgal/Sigmoid_2:y:0&tgargouhhw/while/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/mul_5Х
5tgargouhhw/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemtgargouhhw_while_placeholder_1tgargouhhw_while_placeholder%tgargouhhw/while/leklhosgal/mul_5:z:0*
_output_shapes
: *
element_dtype027
5tgargouhhw/while/TensorArrayV2Write/TensorListSetItemr
tgargouhhw/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
tgargouhhw/while/add/yХ
tgargouhhw/while/addAddV2tgargouhhw_while_placeholdertgargouhhw/while/add/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/while/addv
tgargouhhw/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
tgargouhhw/while/add_1/yн
tgargouhhw/while/add_1AddV2.tgargouhhw_while_tgargouhhw_while_loop_counter!tgargouhhw/while/add_1/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/while/add_1й
tgargouhhw/while/IdentityIdentitytgargouhhw/while/add_1:z:03^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
tgargouhhw/while/Identity╟
tgargouhhw/while/Identity_1Identity4tgargouhhw_while_tgargouhhw_while_maximum_iterations3^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
tgargouhhw/while/Identity_1л
tgargouhhw/while/Identity_2Identitytgargouhhw/while/add:z:03^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
tgargouhhw/while/Identity_2╪
tgargouhhw/while/Identity_3IdentityEtgargouhhw/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
tgargouhhw/while/Identity_3╔
tgargouhhw/while/Identity_4Identity%tgargouhhw/while/leklhosgal/mul_5:z:03^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
tgargouhhw/while/Identity_4╔
tgargouhhw/while/Identity_5Identity%tgargouhhw/while/leklhosgal/add_3:z:03^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
tgargouhhw/while/Identity_5"?
tgargouhhw_while_identity"tgargouhhw/while/Identity:output:0"C
tgargouhhw_while_identity_1$tgargouhhw/while/Identity_1:output:0"C
tgargouhhw_while_identity_2$tgargouhhw/while/Identity_2:output:0"C
tgargouhhw_while_identity_3$tgargouhhw/while/Identity_3:output:0"C
tgargouhhw_while_identity_4$tgargouhhw/while/Identity_4:output:0"C
tgargouhhw_while_identity_5$tgargouhhw/while/Identity_5:output:0"|
;tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource=tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource_0"~
<tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource>tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource_0"z
:tgargouhhw_while_leklhosgal_matmul_readvariableop_resource<tgargouhhw_while_leklhosgal_matmul_readvariableop_resource_0"p
5tgargouhhw_while_leklhosgal_readvariableop_1_resource7tgargouhhw_while_leklhosgal_readvariableop_1_resource_0"p
5tgargouhhw_while_leklhosgal_readvariableop_2_resource7tgargouhhw_while_leklhosgal_readvariableop_2_resource_0"l
3tgargouhhw_while_leklhosgal_readvariableop_resource5tgargouhhw_while_leklhosgal_readvariableop_resource_0"╘
gtgargouhhw_while_tensorarrayv2read_tensorlistgetitem_tgargouhhw_tensorarrayunstack_tensorlistfromtensoritgargouhhw_while_tensorarrayv2read_tensorlistgetitem_tgargouhhw_tensorarrayunstack_tensorlistfromtensor_0"\
+tgargouhhw_while_tgargouhhw_strided_slice_1-tgargouhhw_while_tgargouhhw_strided_slice_1_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2f
1tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp1tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp2j
3tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp3tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp2X
*tgargouhhw/while/leklhosgal/ReadVariableOp*tgargouhhw/while/leklhosgal/ReadVariableOp2\
,tgargouhhw/while/leklhosgal/ReadVariableOp_1,tgargouhhw/while/leklhosgal/ReadVariableOp_12\
,tgargouhhw/while/leklhosgal/ReadVariableOp_2,tgargouhhw/while/leklhosgal/ReadVariableOp_2: 
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
К
Щ
+__inference_sequential_layer_call_fn_358790

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
F__inference_sequential_layer_call_and_return_conditional_losses_3571772
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
▌h
Ж
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359251
inputs_0<
)gfpcpbbmvi_matmul_readvariableop_resource:	А>
+gfpcpbbmvi_matmul_1_readvariableop_resource:	 А9
*gfpcpbbmvi_biasadd_readvariableop_resource:	А0
"gfpcpbbmvi_readvariableop_resource: 2
$gfpcpbbmvi_readvariableop_1_resource: 2
$gfpcpbbmvi_readvariableop_2_resource: 
identityИв!gfpcpbbmvi/BiasAdd/ReadVariableOpв gfpcpbbmvi/MatMul/ReadVariableOpв"gfpcpbbmvi/MatMul_1/ReadVariableOpвgfpcpbbmvi/ReadVariableOpвgfpcpbbmvi/ReadVariableOp_1вgfpcpbbmvi/ReadVariableOp_2вwhileF
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
 gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp)gfpcpbbmvi_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 gfpcpbbmvi/MatMul/ReadVariableOpз
gfpcpbbmvi/MatMulMatMulstrided_slice_2:output:0(gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul╡
"gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp+gfpcpbbmvi_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"gfpcpbbmvi/MatMul_1/ReadVariableOpг
gfpcpbbmvi/MatMul_1MatMulzeros:output:0*gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul_1Ш
gfpcpbbmvi/addAddV2gfpcpbbmvi/MatMul:product:0gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/addо
!gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp*gfpcpbbmvi_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!gfpcpbbmvi/BiasAdd/ReadVariableOpе
gfpcpbbmvi/BiasAddBiasAddgfpcpbbmvi/add:z:0)gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/BiasAddz
gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
gfpcpbbmvi/split/split_dimы
gfpcpbbmvi/splitSplit#gfpcpbbmvi/split/split_dim:output:0gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
gfpcpbbmvi/splitХ
gfpcpbbmvi/ReadVariableOpReadVariableOp"gfpcpbbmvi_readvariableop_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOpО
gfpcpbbmvi/mulMul!gfpcpbbmvi/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mulО
gfpcpbbmvi/add_1AddV2gfpcpbbmvi/split:output:0gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_1{
gfpcpbbmvi/SigmoidSigmoidgfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/SigmoidЫ
gfpcpbbmvi/ReadVariableOp_1ReadVariableOp$gfpcpbbmvi_readvariableop_1_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_1Ф
gfpcpbbmvi/mul_1Mul#gfpcpbbmvi/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_1Р
gfpcpbbmvi/add_2AddV2gfpcpbbmvi/split:output:1gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_2
gfpcpbbmvi/Sigmoid_1Sigmoidgfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_1Й
gfpcpbbmvi/mul_2Mulgfpcpbbmvi/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_2w
gfpcpbbmvi/TanhTanhgfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
gfpcpbbmvi/TanhК
gfpcpbbmvi/mul_3Mulgfpcpbbmvi/Sigmoid:y:0gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_3Л
gfpcpbbmvi/add_3AddV2gfpcpbbmvi/mul_2:z:0gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_3Ы
gfpcpbbmvi/ReadVariableOp_2ReadVariableOp$gfpcpbbmvi_readvariableop_2_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_2Ш
gfpcpbbmvi/mul_4Mul#gfpcpbbmvi/ReadVariableOp_2:value:0gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_4Р
gfpcpbbmvi/add_4AddV2gfpcpbbmvi/split:output:3gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_4
gfpcpbbmvi/Sigmoid_2Sigmoidgfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_2v
gfpcpbbmvi/Tanh_1Tanhgfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Tanh_1О
gfpcpbbmvi/mul_5Mulgfpcpbbmvi/Sigmoid_2:y:0gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gfpcpbbmvi_matmul_readvariableop_resource+gfpcpbbmvi_matmul_1_readvariableop_resource*gfpcpbbmvi_biasadd_readvariableop_resource"gfpcpbbmvi_readvariableop_resource$gfpcpbbmvi_readvariableop_1_resource$gfpcpbbmvi_readvariableop_2_resource*
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
while_body_359150*
condR
while_cond_359149*Q
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
IdentityIdentitytranspose_1:y:0"^gfpcpbbmvi/BiasAdd/ReadVariableOp!^gfpcpbbmvi/MatMul/ReadVariableOp#^gfpcpbbmvi/MatMul_1/ReadVariableOp^gfpcpbbmvi/ReadVariableOp^gfpcpbbmvi/ReadVariableOp_1^gfpcpbbmvi/ReadVariableOp_2^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2F
!gfpcpbbmvi/BiasAdd/ReadVariableOp!gfpcpbbmvi/BiasAdd/ReadVariableOp2D
 gfpcpbbmvi/MatMul/ReadVariableOp gfpcpbbmvi/MatMul/ReadVariableOp2H
"gfpcpbbmvi/MatMul_1/ReadVariableOp"gfpcpbbmvi/MatMul_1/ReadVariableOp26
gfpcpbbmvi/ReadVariableOpgfpcpbbmvi/ReadVariableOp2:
gfpcpbbmvi/ReadVariableOp_1gfpcpbbmvi/ReadVariableOp_12:
gfpcpbbmvi/ReadVariableOp_2gfpcpbbmvi/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╞
Ь
+__inference_jjfezsyjwn_layer_call_fn_358873

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
F__inference_jjfezsyjwn_layer_call_and_return_conditional_losses_3567532
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
ъ
Ц
$__inference_signature_wrapper_357945

khvjuhjlxe
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
khvjuhjlxeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_3551932
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
khvjuhjlxe
Г

х
while_cond_355299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_355299___redundant_placeholder04
0while_while_cond_355299___redundant_placeholder14
0while_while_cond_355299___redundant_placeholder24
0while_while_cond_355299___redundant_placeholder34
0while_while_cond_355299___redundant_placeholder44
0while_while_cond_355299___redundant_placeholder54
0while_while_cond_355299___redundant_placeholder6
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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_357421

inputs<
)leklhosgal_matmul_readvariableop_resource:	 А>
+leklhosgal_matmul_1_readvariableop_resource:	 А9
*leklhosgal_biasadd_readvariableop_resource:	А0
"leklhosgal_readvariableop_resource: 2
$leklhosgal_readvariableop_1_resource: 2
$leklhosgal_readvariableop_2_resource: 
identityИв!leklhosgal/BiasAdd/ReadVariableOpв leklhosgal/MatMul/ReadVariableOpв"leklhosgal/MatMul_1/ReadVariableOpвleklhosgal/ReadVariableOpвleklhosgal/ReadVariableOp_1вleklhosgal/ReadVariableOp_2вwhileD
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
 leklhosgal/MatMul/ReadVariableOpReadVariableOp)leklhosgal_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 leklhosgal/MatMul/ReadVariableOpз
leklhosgal/MatMulMatMulstrided_slice_2:output:0(leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul╡
"leklhosgal/MatMul_1/ReadVariableOpReadVariableOp+leklhosgal_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"leklhosgal/MatMul_1/ReadVariableOpг
leklhosgal/MatMul_1MatMulzeros:output:0*leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul_1Ш
leklhosgal/addAddV2leklhosgal/MatMul:product:0leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
leklhosgal/addо
!leklhosgal/BiasAdd/ReadVariableOpReadVariableOp*leklhosgal_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!leklhosgal/BiasAdd/ReadVariableOpе
leklhosgal/BiasAddBiasAddleklhosgal/add:z:0)leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/BiasAddz
leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
leklhosgal/split/split_dimы
leklhosgal/splitSplit#leklhosgal/split/split_dim:output:0leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
leklhosgal/splitХ
leklhosgal/ReadVariableOpReadVariableOp"leklhosgal_readvariableop_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOpО
leklhosgal/mulMul!leklhosgal/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mulО
leklhosgal/add_1AddV2leklhosgal/split:output:0leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_1{
leklhosgal/SigmoidSigmoidleklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/SigmoidЫ
leklhosgal/ReadVariableOp_1ReadVariableOp$leklhosgal_readvariableop_1_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_1Ф
leklhosgal/mul_1Mul#leklhosgal/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_1Р
leklhosgal/add_2AddV2leklhosgal/split:output:1leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_2
leklhosgal/Sigmoid_1Sigmoidleklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_1Й
leklhosgal/mul_2Mulleklhosgal/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_2w
leklhosgal/TanhTanhleklhosgal/split:output:2*
T0*'
_output_shapes
:          2
leklhosgal/TanhК
leklhosgal/mul_3Mulleklhosgal/Sigmoid:y:0leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_3Л
leklhosgal/add_3AddV2leklhosgal/mul_2:z:0leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_3Ы
leklhosgal/ReadVariableOp_2ReadVariableOp$leklhosgal_readvariableop_2_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_2Ш
leklhosgal/mul_4Mul#leklhosgal/ReadVariableOp_2:value:0leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_4Р
leklhosgal/add_4AddV2leklhosgal/split:output:3leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_4
leklhosgal/Sigmoid_2Sigmoidleklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_2v
leklhosgal/Tanh_1Tanhleklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Tanh_1О
leklhosgal/mul_5Mulleklhosgal/Sigmoid_2:y:0leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)leklhosgal_matmul_readvariableop_resource+leklhosgal_matmul_1_readvariableop_resource*leklhosgal_biasadd_readvariableop_resource"leklhosgal_readvariableop_resource$leklhosgal_readvariableop_1_resource$leklhosgal_readvariableop_2_resource*
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
while_body_357320*
condR
while_cond_357319*Q
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
IdentityIdentitystrided_slice_3:output:0"^leklhosgal/BiasAdd/ReadVariableOp!^leklhosgal/MatMul/ReadVariableOp#^leklhosgal/MatMul_1/ReadVariableOp^leklhosgal/ReadVariableOp^leklhosgal/ReadVariableOp_1^leklhosgal/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!leklhosgal/BiasAdd/ReadVariableOp!leklhosgal/BiasAdd/ReadVariableOp2D
 leklhosgal/MatMul/ReadVariableOp leklhosgal/MatMul/ReadVariableOp2H
"leklhosgal/MatMul_1/ReadVariableOp"leklhosgal/MatMul_1/ReadVariableOp26
leklhosgal/ReadVariableOpleklhosgal/ReadVariableOp2:
leklhosgal/ReadVariableOp_1leklhosgal/ReadVariableOp_12:
leklhosgal/ReadVariableOp_2leklhosgal/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
▀Y
Ж
while_body_358970
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gfpcpbbmvi_matmul_readvariableop_resource_0:	АF
3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0:	 АA
2while_gfpcpbbmvi_biasadd_readvariableop_resource_0:	А8
*while_gfpcpbbmvi_readvariableop_resource_0: :
,while_gfpcpbbmvi_readvariableop_1_resource_0: :
,while_gfpcpbbmvi_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gfpcpbbmvi_matmul_readvariableop_resource:	АD
1while_gfpcpbbmvi_matmul_1_readvariableop_resource:	 А?
0while_gfpcpbbmvi_biasadd_readvariableop_resource:	А6
(while_gfpcpbbmvi_readvariableop_resource: 8
*while_gfpcpbbmvi_readvariableop_1_resource: 8
*while_gfpcpbbmvi_readvariableop_2_resource: Ив'while/gfpcpbbmvi/BiasAdd/ReadVariableOpв&while/gfpcpbbmvi/MatMul/ReadVariableOpв(while/gfpcpbbmvi/MatMul_1/ReadVariableOpвwhile/gfpcpbbmvi/ReadVariableOpв!while/gfpcpbbmvi/ReadVariableOp_1в!while/gfpcpbbmvi/ReadVariableOp_2├
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
&while/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp1while_gfpcpbbmvi_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/gfpcpbbmvi/MatMul/ReadVariableOp╤
while/gfpcpbbmvi/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul╔
(while/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp║
while/gfpcpbbmvi/MatMul_1MatMulwhile_placeholder_20while/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul_1░
while/gfpcpbbmvi/addAddV2!while/gfpcpbbmvi/MatMul:product:0#while/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/add┬
'while/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp2while_gfpcpbbmvi_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp╜
while/gfpcpbbmvi/BiasAddBiasAddwhile/gfpcpbbmvi/add:z:0/while/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/BiasAddЖ
 while/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/gfpcpbbmvi/split/split_dimГ
while/gfpcpbbmvi/splitSplit)while/gfpcpbbmvi/split/split_dim:output:0!while/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/gfpcpbbmvi/splitй
while/gfpcpbbmvi/ReadVariableOpReadVariableOp*while_gfpcpbbmvi_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/gfpcpbbmvi/ReadVariableOpг
while/gfpcpbbmvi/mulMul'while/gfpcpbbmvi/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mulж
while/gfpcpbbmvi/add_1AddV2while/gfpcpbbmvi/split:output:0while/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_1Н
while/gfpcpbbmvi/SigmoidSigmoidwhile/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoidп
!while/gfpcpbbmvi/ReadVariableOp_1ReadVariableOp,while_gfpcpbbmvi_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_1й
while/gfpcpbbmvi/mul_1Mul)while/gfpcpbbmvi/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_1и
while/gfpcpbbmvi/add_2AddV2while/gfpcpbbmvi/split:output:1while/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_2С
while/gfpcpbbmvi/Sigmoid_1Sigmoidwhile/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_1Ю
while/gfpcpbbmvi/mul_2Mulwhile/gfpcpbbmvi/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_2Й
while/gfpcpbbmvi/TanhTanhwhile/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanhв
while/gfpcpbbmvi/mul_3Mulwhile/gfpcpbbmvi/Sigmoid:y:0while/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_3г
while/gfpcpbbmvi/add_3AddV2while/gfpcpbbmvi/mul_2:z:0while/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_3п
!while/gfpcpbbmvi/ReadVariableOp_2ReadVariableOp,while_gfpcpbbmvi_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_2░
while/gfpcpbbmvi/mul_4Mul)while/gfpcpbbmvi/ReadVariableOp_2:value:0while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_4и
while/gfpcpbbmvi/add_4AddV2while/gfpcpbbmvi/split:output:3while/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_4С
while/gfpcpbbmvi/Sigmoid_2Sigmoidwhile/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_2И
while/gfpcpbbmvi/Tanh_1Tanhwhile/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanh_1ж
while/gfpcpbbmvi/mul_5Mulwhile/gfpcpbbmvi/Sigmoid_2:y:0while/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gfpcpbbmvi/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/gfpcpbbmvi/mul_5:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/gfpcpbbmvi/add_3:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_gfpcpbbmvi_biasadd_readvariableop_resource2while_gfpcpbbmvi_biasadd_readvariableop_resource_0"h
1while_gfpcpbbmvi_matmul_1_readvariableop_resource3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0"d
/while_gfpcpbbmvi_matmul_readvariableop_resource1while_gfpcpbbmvi_matmul_readvariableop_resource_0"Z
*while_gfpcpbbmvi_readvariableop_1_resource,while_gfpcpbbmvi_readvariableop_1_resource_0"Z
*while_gfpcpbbmvi_readvariableop_2_resource,while_gfpcpbbmvi_readvariableop_2_resource_0"V
(while_gfpcpbbmvi_readvariableop_resource*while_gfpcpbbmvi_readvariableop_resource_0")
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
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp'while/gfpcpbbmvi/BiasAdd/ReadVariableOp2P
&while/gfpcpbbmvi/MatMul/ReadVariableOp&while/gfpcpbbmvi/MatMul/ReadVariableOp2T
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp(while/gfpcpbbmvi/MatMul_1/ReadVariableOp2B
while/gfpcpbbmvi/ReadVariableOpwhile/gfpcpbbmvi/ReadVariableOp2F
!while/gfpcpbbmvi/ReadVariableOp_1!while/gfpcpbbmvi/ReadVariableOp_12F
!while/gfpcpbbmvi/ReadVariableOp_2!while/gfpcpbbmvi/ReadVariableOp_2: 
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
F__inference_jjfezsyjwn_layer_call_and_return_conditional_losses_358864

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
F__inference_jhbguimgvq_layer_call_and_return_conditional_losses_357170

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
Г

х
while_cond_356851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356851___redundant_placeholder04
0while_while_cond_356851___redundant_placeholder14
0while_while_cond_356851___redundant_placeholder24
0while_while_cond_356851___redundant_placeholder34
0while_while_cond_356851___redundant_placeholder44
0while_while_cond_356851___redundant_placeholder54
0while_while_cond_356851___redundant_placeholder6
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
Шp
╔
eluvehoiqy_while_body_3584702
.eluvehoiqy_while_eluvehoiqy_while_loop_counter8
4eluvehoiqy_while_eluvehoiqy_while_maximum_iterations 
eluvehoiqy_while_placeholder"
eluvehoiqy_while_placeholder_1"
eluvehoiqy_while_placeholder_2"
eluvehoiqy_while_placeholder_31
-eluvehoiqy_while_eluvehoiqy_strided_slice_1_0m
ieluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_eluvehoiqy_tensorarrayunstack_tensorlistfromtensor_0O
<eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource_0:	АQ
>eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource_0:	 АL
=eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource_0:	АC
5eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource_0: E
7eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource_0: E
7eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource_0: 
eluvehoiqy_while_identity
eluvehoiqy_while_identity_1
eluvehoiqy_while_identity_2
eluvehoiqy_while_identity_3
eluvehoiqy_while_identity_4
eluvehoiqy_while_identity_5/
+eluvehoiqy_while_eluvehoiqy_strided_slice_1k
geluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_eluvehoiqy_tensorarrayunstack_tensorlistfromtensorM
:eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource:	АO
<eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource:	 АJ
;eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource:	АA
3eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource: C
5eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource: C
5eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource: Ив2eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOpв1eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOpв3eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOpв*eluvehoiqy/while/gfpcpbbmvi/ReadVariableOpв,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1в,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2┘
Beluvehoiqy/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2D
Beluvehoiqy/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4eluvehoiqy/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemieluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_eluvehoiqy_tensorarrayunstack_tensorlistfromtensor_0eluvehoiqy_while_placeholderKeluvehoiqy/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype026
4eluvehoiqy/while/TensorArrayV2Read/TensorListGetItemф
1eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp<eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype023
1eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp¤
"eluvehoiqy/while/gfpcpbbmvi/MatMulMatMul;eluvehoiqy/while/TensorArrayV2Read/TensorListGetItem:item:09eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"eluvehoiqy/while/gfpcpbbmvi/MatMulъ
3eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp>eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOpц
$eluvehoiqy/while/gfpcpbbmvi/MatMul_1MatMuleluvehoiqy_while_placeholder_2;eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$eluvehoiqy/while/gfpcpbbmvi/MatMul_1▄
eluvehoiqy/while/gfpcpbbmvi/addAddV2,eluvehoiqy/while/gfpcpbbmvi/MatMul:product:0.eluvehoiqy/while/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
eluvehoiqy/while/gfpcpbbmvi/addу
2eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp=eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOpщ
#eluvehoiqy/while/gfpcpbbmvi/BiasAddBiasAdd#eluvehoiqy/while/gfpcpbbmvi/add:z:0:eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#eluvehoiqy/while/gfpcpbbmvi/BiasAddЬ
+eluvehoiqy/while/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+eluvehoiqy/while/gfpcpbbmvi/split/split_dimп
!eluvehoiqy/while/gfpcpbbmvi/splitSplit4eluvehoiqy/while/gfpcpbbmvi/split/split_dim:output:0,eluvehoiqy/while/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!eluvehoiqy/while/gfpcpbbmvi/split╩
*eluvehoiqy/while/gfpcpbbmvi/ReadVariableOpReadVariableOp5eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp╧
eluvehoiqy/while/gfpcpbbmvi/mulMul2eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp:value:0eluvehoiqy_while_placeholder_3*
T0*'
_output_shapes
:          2!
eluvehoiqy/while/gfpcpbbmvi/mul╥
!eluvehoiqy/while/gfpcpbbmvi/add_1AddV2*eluvehoiqy/while/gfpcpbbmvi/split:output:0#eluvehoiqy/while/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/add_1о
#eluvehoiqy/while/gfpcpbbmvi/SigmoidSigmoid%eluvehoiqy/while/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2%
#eluvehoiqy/while/gfpcpbbmvi/Sigmoid╨
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1ReadVariableOp7eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1╒
!eluvehoiqy/while/gfpcpbbmvi/mul_1Mul4eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1:value:0eluvehoiqy_while_placeholder_3*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/mul_1╘
!eluvehoiqy/while/gfpcpbbmvi/add_2AddV2*eluvehoiqy/while/gfpcpbbmvi/split:output:1%eluvehoiqy/while/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/add_2▓
%eluvehoiqy/while/gfpcpbbmvi/Sigmoid_1Sigmoid%eluvehoiqy/while/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2'
%eluvehoiqy/while/gfpcpbbmvi/Sigmoid_1╩
!eluvehoiqy/while/gfpcpbbmvi/mul_2Mul)eluvehoiqy/while/gfpcpbbmvi/Sigmoid_1:y:0eluvehoiqy_while_placeholder_3*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/mul_2к
 eluvehoiqy/while/gfpcpbbmvi/TanhTanh*eluvehoiqy/while/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2"
 eluvehoiqy/while/gfpcpbbmvi/Tanh╬
!eluvehoiqy/while/gfpcpbbmvi/mul_3Mul'eluvehoiqy/while/gfpcpbbmvi/Sigmoid:y:0$eluvehoiqy/while/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/mul_3╧
!eluvehoiqy/while/gfpcpbbmvi/add_3AddV2%eluvehoiqy/while/gfpcpbbmvi/mul_2:z:0%eluvehoiqy/while/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/add_3╨
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2ReadVariableOp7eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2▄
!eluvehoiqy/while/gfpcpbbmvi/mul_4Mul4eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2:value:0%eluvehoiqy/while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/mul_4╘
!eluvehoiqy/while/gfpcpbbmvi/add_4AddV2*eluvehoiqy/while/gfpcpbbmvi/split:output:3%eluvehoiqy/while/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/add_4▓
%eluvehoiqy/while/gfpcpbbmvi/Sigmoid_2Sigmoid%eluvehoiqy/while/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2'
%eluvehoiqy/while/gfpcpbbmvi/Sigmoid_2й
"eluvehoiqy/while/gfpcpbbmvi/Tanh_1Tanh%eluvehoiqy/while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2$
"eluvehoiqy/while/gfpcpbbmvi/Tanh_1╥
!eluvehoiqy/while/gfpcpbbmvi/mul_5Mul)eluvehoiqy/while/gfpcpbbmvi/Sigmoid_2:y:0&eluvehoiqy/while/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/mul_5Х
5eluvehoiqy/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemeluvehoiqy_while_placeholder_1eluvehoiqy_while_placeholder%eluvehoiqy/while/gfpcpbbmvi/mul_5:z:0*
_output_shapes
: *
element_dtype027
5eluvehoiqy/while/TensorArrayV2Write/TensorListSetItemr
eluvehoiqy/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
eluvehoiqy/while/add/yХ
eluvehoiqy/while/addAddV2eluvehoiqy_while_placeholdereluvehoiqy/while/add/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/while/addv
eluvehoiqy/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
eluvehoiqy/while/add_1/yн
eluvehoiqy/while/add_1AddV2.eluvehoiqy_while_eluvehoiqy_while_loop_counter!eluvehoiqy/while/add_1/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/while/add_1й
eluvehoiqy/while/IdentityIdentityeluvehoiqy/while/add_1:z:03^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
eluvehoiqy/while/Identity╟
eluvehoiqy/while/Identity_1Identity4eluvehoiqy_while_eluvehoiqy_while_maximum_iterations3^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
eluvehoiqy/while/Identity_1л
eluvehoiqy/while/Identity_2Identityeluvehoiqy/while/add:z:03^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
eluvehoiqy/while/Identity_2╪
eluvehoiqy/while/Identity_3IdentityEeluvehoiqy/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
eluvehoiqy/while/Identity_3╔
eluvehoiqy/while/Identity_4Identity%eluvehoiqy/while/gfpcpbbmvi/mul_5:z:03^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
eluvehoiqy/while/Identity_4╔
eluvehoiqy/while/Identity_5Identity%eluvehoiqy/while/gfpcpbbmvi/add_3:z:03^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
eluvehoiqy/while/Identity_5"\
+eluvehoiqy_while_eluvehoiqy_strided_slice_1-eluvehoiqy_while_eluvehoiqy_strided_slice_1_0"|
;eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource=eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource_0"~
<eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource>eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource_0"z
:eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource<eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource_0"p
5eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource7eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource_0"p
5eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource7eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource_0"l
3eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource5eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource_0"?
eluvehoiqy_while_identity"eluvehoiqy/while/Identity:output:0"C
eluvehoiqy_while_identity_1$eluvehoiqy/while/Identity_1:output:0"C
eluvehoiqy_while_identity_2$eluvehoiqy/while/Identity_2:output:0"C
eluvehoiqy_while_identity_3$eluvehoiqy/while/Identity_3:output:0"C
eluvehoiqy_while_identity_4$eluvehoiqy/while/Identity_4:output:0"C
eluvehoiqy_while_identity_5$eluvehoiqy/while/Identity_5:output:0"╘
geluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_eluvehoiqy_tensorarrayunstack_tensorlistfromtensorieluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_eluvehoiqy_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2f
1eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp1eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp2j
3eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp3eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp2X
*eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp*eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp2\
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_12\
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2: 
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
while_body_357045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_leklhosgal_matmul_readvariableop_resource_0:	 АF
3while_leklhosgal_matmul_1_readvariableop_resource_0:	 АA
2while_leklhosgal_biasadd_readvariableop_resource_0:	А8
*while_leklhosgal_readvariableop_resource_0: :
,while_leklhosgal_readvariableop_1_resource_0: :
,while_leklhosgal_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_leklhosgal_matmul_readvariableop_resource:	 АD
1while_leklhosgal_matmul_1_readvariableop_resource:	 А?
0while_leklhosgal_biasadd_readvariableop_resource:	А6
(while_leklhosgal_readvariableop_resource: 8
*while_leklhosgal_readvariableop_1_resource: 8
*while_leklhosgal_readvariableop_2_resource: Ив'while/leklhosgal/BiasAdd/ReadVariableOpв&while/leklhosgal/MatMul/ReadVariableOpв(while/leklhosgal/MatMul_1/ReadVariableOpвwhile/leklhosgal/ReadVariableOpв!while/leklhosgal/ReadVariableOp_1в!while/leklhosgal/ReadVariableOp_2├
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
&while/leklhosgal/MatMul/ReadVariableOpReadVariableOp1while_leklhosgal_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/leklhosgal/MatMul/ReadVariableOp╤
while/leklhosgal/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul╔
(while/leklhosgal/MatMul_1/ReadVariableOpReadVariableOp3while_leklhosgal_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/leklhosgal/MatMul_1/ReadVariableOp║
while/leklhosgal/MatMul_1MatMulwhile_placeholder_20while/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul_1░
while/leklhosgal/addAddV2!while/leklhosgal/MatMul:product:0#while/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/add┬
'while/leklhosgal/BiasAdd/ReadVariableOpReadVariableOp2while_leklhosgal_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/leklhosgal/BiasAdd/ReadVariableOp╜
while/leklhosgal/BiasAddBiasAddwhile/leklhosgal/add:z:0/while/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/BiasAddЖ
 while/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/leklhosgal/split/split_dimГ
while/leklhosgal/splitSplit)while/leklhosgal/split/split_dim:output:0!while/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/leklhosgal/splitй
while/leklhosgal/ReadVariableOpReadVariableOp*while_leklhosgal_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/leklhosgal/ReadVariableOpг
while/leklhosgal/mulMul'while/leklhosgal/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mulж
while/leklhosgal/add_1AddV2while/leklhosgal/split:output:0while/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_1Н
while/leklhosgal/SigmoidSigmoidwhile/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoidп
!while/leklhosgal/ReadVariableOp_1ReadVariableOp,while_leklhosgal_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_1й
while/leklhosgal/mul_1Mul)while/leklhosgal/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_1и
while/leklhosgal/add_2AddV2while/leklhosgal/split:output:1while/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_2С
while/leklhosgal/Sigmoid_1Sigmoidwhile/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_1Ю
while/leklhosgal/mul_2Mulwhile/leklhosgal/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_2Й
while/leklhosgal/TanhTanhwhile/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanhв
while/leklhosgal/mul_3Mulwhile/leklhosgal/Sigmoid:y:0while/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_3г
while/leklhosgal/add_3AddV2while/leklhosgal/mul_2:z:0while/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_3п
!while/leklhosgal/ReadVariableOp_2ReadVariableOp,while_leklhosgal_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_2░
while/leklhosgal/mul_4Mul)while/leklhosgal/ReadVariableOp_2:value:0while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_4и
while/leklhosgal/add_4AddV2while/leklhosgal/split:output:3while/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_4С
while/leklhosgal/Sigmoid_2Sigmoidwhile/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_2И
while/leklhosgal/Tanh_1Tanhwhile/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanh_1ж
while/leklhosgal/mul_5Mulwhile/leklhosgal/Sigmoid_2:y:0while/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/leklhosgal/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/leklhosgal/mul_5:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/leklhosgal/add_3:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"f
0while_leklhosgal_biasadd_readvariableop_resource2while_leklhosgal_biasadd_readvariableop_resource_0"h
1while_leklhosgal_matmul_1_readvariableop_resource3while_leklhosgal_matmul_1_readvariableop_resource_0"d
/while_leklhosgal_matmul_readvariableop_resource1while_leklhosgal_matmul_readvariableop_resource_0"Z
*while_leklhosgal_readvariableop_1_resource,while_leklhosgal_readvariableop_1_resource_0"Z
*while_leklhosgal_readvariableop_2_resource,while_leklhosgal_readvariableop_2_resource_0"V
(while_leklhosgal_readvariableop_resource*while_leklhosgal_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/leklhosgal/BiasAdd/ReadVariableOp'while/leklhosgal/BiasAdd/ReadVariableOp2P
&while/leklhosgal/MatMul/ReadVariableOp&while/leklhosgal/MatMul/ReadVariableOp2T
(while/leklhosgal/MatMul_1/ReadVariableOp(while/leklhosgal/MatMul_1/ReadVariableOp2B
while/leklhosgal/ReadVariableOpwhile/leklhosgal/ReadVariableOp2F
!while/leklhosgal/ReadVariableOp_1!while/leklhosgal/ReadVariableOp_12F
!while/leklhosgal/ReadVariableOp_2!while/leklhosgal/ReadVariableOp_2: 
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
╕'
┤
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_360530

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
Шp
╔
eluvehoiqy_while_body_3580662
.eluvehoiqy_while_eluvehoiqy_while_loop_counter8
4eluvehoiqy_while_eluvehoiqy_while_maximum_iterations 
eluvehoiqy_while_placeholder"
eluvehoiqy_while_placeholder_1"
eluvehoiqy_while_placeholder_2"
eluvehoiqy_while_placeholder_31
-eluvehoiqy_while_eluvehoiqy_strided_slice_1_0m
ieluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_eluvehoiqy_tensorarrayunstack_tensorlistfromtensor_0O
<eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource_0:	АQ
>eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource_0:	 АL
=eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource_0:	АC
5eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource_0: E
7eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource_0: E
7eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource_0: 
eluvehoiqy_while_identity
eluvehoiqy_while_identity_1
eluvehoiqy_while_identity_2
eluvehoiqy_while_identity_3
eluvehoiqy_while_identity_4
eluvehoiqy_while_identity_5/
+eluvehoiqy_while_eluvehoiqy_strided_slice_1k
geluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_eluvehoiqy_tensorarrayunstack_tensorlistfromtensorM
:eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource:	АO
<eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource:	 АJ
;eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource:	АA
3eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource: C
5eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource: C
5eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource: Ив2eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOpв1eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOpв3eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOpв*eluvehoiqy/while/gfpcpbbmvi/ReadVariableOpв,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1в,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2┘
Beluvehoiqy/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2D
Beluvehoiqy/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4eluvehoiqy/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemieluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_eluvehoiqy_tensorarrayunstack_tensorlistfromtensor_0eluvehoiqy_while_placeholderKeluvehoiqy/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype026
4eluvehoiqy/while/TensorArrayV2Read/TensorListGetItemф
1eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp<eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype023
1eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp¤
"eluvehoiqy/while/gfpcpbbmvi/MatMulMatMul;eluvehoiqy/while/TensorArrayV2Read/TensorListGetItem:item:09eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"eluvehoiqy/while/gfpcpbbmvi/MatMulъ
3eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp>eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOpц
$eluvehoiqy/while/gfpcpbbmvi/MatMul_1MatMuleluvehoiqy_while_placeholder_2;eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$eluvehoiqy/while/gfpcpbbmvi/MatMul_1▄
eluvehoiqy/while/gfpcpbbmvi/addAddV2,eluvehoiqy/while/gfpcpbbmvi/MatMul:product:0.eluvehoiqy/while/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
eluvehoiqy/while/gfpcpbbmvi/addу
2eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp=eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOpщ
#eluvehoiqy/while/gfpcpbbmvi/BiasAddBiasAdd#eluvehoiqy/while/gfpcpbbmvi/add:z:0:eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#eluvehoiqy/while/gfpcpbbmvi/BiasAddЬ
+eluvehoiqy/while/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+eluvehoiqy/while/gfpcpbbmvi/split/split_dimп
!eluvehoiqy/while/gfpcpbbmvi/splitSplit4eluvehoiqy/while/gfpcpbbmvi/split/split_dim:output:0,eluvehoiqy/while/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!eluvehoiqy/while/gfpcpbbmvi/split╩
*eluvehoiqy/while/gfpcpbbmvi/ReadVariableOpReadVariableOp5eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp╧
eluvehoiqy/while/gfpcpbbmvi/mulMul2eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp:value:0eluvehoiqy_while_placeholder_3*
T0*'
_output_shapes
:          2!
eluvehoiqy/while/gfpcpbbmvi/mul╥
!eluvehoiqy/while/gfpcpbbmvi/add_1AddV2*eluvehoiqy/while/gfpcpbbmvi/split:output:0#eluvehoiqy/while/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/add_1о
#eluvehoiqy/while/gfpcpbbmvi/SigmoidSigmoid%eluvehoiqy/while/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2%
#eluvehoiqy/while/gfpcpbbmvi/Sigmoid╨
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1ReadVariableOp7eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1╒
!eluvehoiqy/while/gfpcpbbmvi/mul_1Mul4eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1:value:0eluvehoiqy_while_placeholder_3*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/mul_1╘
!eluvehoiqy/while/gfpcpbbmvi/add_2AddV2*eluvehoiqy/while/gfpcpbbmvi/split:output:1%eluvehoiqy/while/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/add_2▓
%eluvehoiqy/while/gfpcpbbmvi/Sigmoid_1Sigmoid%eluvehoiqy/while/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2'
%eluvehoiqy/while/gfpcpbbmvi/Sigmoid_1╩
!eluvehoiqy/while/gfpcpbbmvi/mul_2Mul)eluvehoiqy/while/gfpcpbbmvi/Sigmoid_1:y:0eluvehoiqy_while_placeholder_3*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/mul_2к
 eluvehoiqy/while/gfpcpbbmvi/TanhTanh*eluvehoiqy/while/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2"
 eluvehoiqy/while/gfpcpbbmvi/Tanh╬
!eluvehoiqy/while/gfpcpbbmvi/mul_3Mul'eluvehoiqy/while/gfpcpbbmvi/Sigmoid:y:0$eluvehoiqy/while/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/mul_3╧
!eluvehoiqy/while/gfpcpbbmvi/add_3AddV2%eluvehoiqy/while/gfpcpbbmvi/mul_2:z:0%eluvehoiqy/while/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/add_3╨
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2ReadVariableOp7eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2▄
!eluvehoiqy/while/gfpcpbbmvi/mul_4Mul4eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2:value:0%eluvehoiqy/while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/mul_4╘
!eluvehoiqy/while/gfpcpbbmvi/add_4AddV2*eluvehoiqy/while/gfpcpbbmvi/split:output:3%eluvehoiqy/while/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/add_4▓
%eluvehoiqy/while/gfpcpbbmvi/Sigmoid_2Sigmoid%eluvehoiqy/while/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2'
%eluvehoiqy/while/gfpcpbbmvi/Sigmoid_2й
"eluvehoiqy/while/gfpcpbbmvi/Tanh_1Tanh%eluvehoiqy/while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2$
"eluvehoiqy/while/gfpcpbbmvi/Tanh_1╥
!eluvehoiqy/while/gfpcpbbmvi/mul_5Mul)eluvehoiqy/while/gfpcpbbmvi/Sigmoid_2:y:0&eluvehoiqy/while/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!eluvehoiqy/while/gfpcpbbmvi/mul_5Х
5eluvehoiqy/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemeluvehoiqy_while_placeholder_1eluvehoiqy_while_placeholder%eluvehoiqy/while/gfpcpbbmvi/mul_5:z:0*
_output_shapes
: *
element_dtype027
5eluvehoiqy/while/TensorArrayV2Write/TensorListSetItemr
eluvehoiqy/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
eluvehoiqy/while/add/yХ
eluvehoiqy/while/addAddV2eluvehoiqy_while_placeholdereluvehoiqy/while/add/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/while/addv
eluvehoiqy/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
eluvehoiqy/while/add_1/yн
eluvehoiqy/while/add_1AddV2.eluvehoiqy_while_eluvehoiqy_while_loop_counter!eluvehoiqy/while/add_1/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/while/add_1й
eluvehoiqy/while/IdentityIdentityeluvehoiqy/while/add_1:z:03^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
eluvehoiqy/while/Identity╟
eluvehoiqy/while/Identity_1Identity4eluvehoiqy_while_eluvehoiqy_while_maximum_iterations3^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
eluvehoiqy/while/Identity_1л
eluvehoiqy/while/Identity_2Identityeluvehoiqy/while/add:z:03^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
eluvehoiqy/while/Identity_2╪
eluvehoiqy/while/Identity_3IdentityEeluvehoiqy/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
eluvehoiqy/while/Identity_3╔
eluvehoiqy/while/Identity_4Identity%eluvehoiqy/while/gfpcpbbmvi/mul_5:z:03^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
eluvehoiqy/while/Identity_4╔
eluvehoiqy/while/Identity_5Identity%eluvehoiqy/while/gfpcpbbmvi/add_3:z:03^eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2^eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp4^eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp+^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1-^eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
eluvehoiqy/while/Identity_5"\
+eluvehoiqy_while_eluvehoiqy_strided_slice_1-eluvehoiqy_while_eluvehoiqy_strided_slice_1_0"|
;eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource=eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource_0"~
<eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource>eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource_0"z
:eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource<eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource_0"p
5eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource7eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource_0"p
5eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource7eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource_0"l
3eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource5eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource_0"?
eluvehoiqy_while_identity"eluvehoiqy/while/Identity:output:0"C
eluvehoiqy_while_identity_1$eluvehoiqy/while/Identity_1:output:0"C
eluvehoiqy_while_identity_2$eluvehoiqy/while/Identity_2:output:0"C
eluvehoiqy_while_identity_3$eluvehoiqy/while/Identity_3:output:0"C
eluvehoiqy_while_identity_4$eluvehoiqy/while/Identity_4:output:0"C
eluvehoiqy_while_identity_5$eluvehoiqy/while/Identity_5:output:0"╘
geluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_eluvehoiqy_tensorarrayunstack_tensorlistfromtensorieluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_eluvehoiqy_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2f
1eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp1eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp2j
3eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp3eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp2X
*eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp*eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp2\
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_12\
,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2,eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2: 
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
F__inference_whckbkkggk_layer_call_and_return_conditional_losses_356772

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
╕'
┤
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_360574

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
Г

х
while_cond_359149
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_359149___redundant_placeholder04
0while_while_cond_359149___redundant_placeholder14
0while_while_cond_359149___redundant_placeholder24
0while_while_cond_359149___redundant_placeholder34
0while_while_cond_359149___redundant_placeholder44
0while_while_cond_359149___redundant_placeholder54
0while_while_cond_359149___redundant_placeholder6
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
F__inference_leklhosgal_layer_call_and_return_conditional_losses_356038

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
 
┐
+__inference_leklhosgal_layer_call_fn_360754

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
F__inference_leklhosgal_layer_call_and_return_conditional_losses_3562252
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
▌h
Ж
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359071
inputs_0<
)gfpcpbbmvi_matmul_readvariableop_resource:	А>
+gfpcpbbmvi_matmul_1_readvariableop_resource:	 А9
*gfpcpbbmvi_biasadd_readvariableop_resource:	А0
"gfpcpbbmvi_readvariableop_resource: 2
$gfpcpbbmvi_readvariableop_1_resource: 2
$gfpcpbbmvi_readvariableop_2_resource: 
identityИв!gfpcpbbmvi/BiasAdd/ReadVariableOpв gfpcpbbmvi/MatMul/ReadVariableOpв"gfpcpbbmvi/MatMul_1/ReadVariableOpвgfpcpbbmvi/ReadVariableOpвgfpcpbbmvi/ReadVariableOp_1вgfpcpbbmvi/ReadVariableOp_2вwhileF
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
 gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp)gfpcpbbmvi_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 gfpcpbbmvi/MatMul/ReadVariableOpз
gfpcpbbmvi/MatMulMatMulstrided_slice_2:output:0(gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul╡
"gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp+gfpcpbbmvi_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"gfpcpbbmvi/MatMul_1/ReadVariableOpг
gfpcpbbmvi/MatMul_1MatMulzeros:output:0*gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul_1Ш
gfpcpbbmvi/addAddV2gfpcpbbmvi/MatMul:product:0gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/addо
!gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp*gfpcpbbmvi_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!gfpcpbbmvi/BiasAdd/ReadVariableOpе
gfpcpbbmvi/BiasAddBiasAddgfpcpbbmvi/add:z:0)gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/BiasAddz
gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
gfpcpbbmvi/split/split_dimы
gfpcpbbmvi/splitSplit#gfpcpbbmvi/split/split_dim:output:0gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
gfpcpbbmvi/splitХ
gfpcpbbmvi/ReadVariableOpReadVariableOp"gfpcpbbmvi_readvariableop_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOpО
gfpcpbbmvi/mulMul!gfpcpbbmvi/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mulО
gfpcpbbmvi/add_1AddV2gfpcpbbmvi/split:output:0gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_1{
gfpcpbbmvi/SigmoidSigmoidgfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/SigmoidЫ
gfpcpbbmvi/ReadVariableOp_1ReadVariableOp$gfpcpbbmvi_readvariableop_1_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_1Ф
gfpcpbbmvi/mul_1Mul#gfpcpbbmvi/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_1Р
gfpcpbbmvi/add_2AddV2gfpcpbbmvi/split:output:1gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_2
gfpcpbbmvi/Sigmoid_1Sigmoidgfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_1Й
gfpcpbbmvi/mul_2Mulgfpcpbbmvi/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_2w
gfpcpbbmvi/TanhTanhgfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
gfpcpbbmvi/TanhК
gfpcpbbmvi/mul_3Mulgfpcpbbmvi/Sigmoid:y:0gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_3Л
gfpcpbbmvi/add_3AddV2gfpcpbbmvi/mul_2:z:0gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_3Ы
gfpcpbbmvi/ReadVariableOp_2ReadVariableOp$gfpcpbbmvi_readvariableop_2_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_2Ш
gfpcpbbmvi/mul_4Mul#gfpcpbbmvi/ReadVariableOp_2:value:0gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_4Р
gfpcpbbmvi/add_4AddV2gfpcpbbmvi/split:output:3gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_4
gfpcpbbmvi/Sigmoid_2Sigmoidgfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_2v
gfpcpbbmvi/Tanh_1Tanhgfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Tanh_1О
gfpcpbbmvi/mul_5Mulgfpcpbbmvi/Sigmoid_2:y:0gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gfpcpbbmvi_matmul_readvariableop_resource+gfpcpbbmvi_matmul_1_readvariableop_resource*gfpcpbbmvi_biasadd_readvariableop_resource"gfpcpbbmvi_readvariableop_resource$gfpcpbbmvi_readvariableop_1_resource$gfpcpbbmvi_readvariableop_2_resource*
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
while_body_358970*
condR
while_cond_358969*Q
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
IdentityIdentitytranspose_1:y:0"^gfpcpbbmvi/BiasAdd/ReadVariableOp!^gfpcpbbmvi/MatMul/ReadVariableOp#^gfpcpbbmvi/MatMul_1/ReadVariableOp^gfpcpbbmvi/ReadVariableOp^gfpcpbbmvi/ReadVariableOp_1^gfpcpbbmvi/ReadVariableOp_2^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2F
!gfpcpbbmvi/BiasAdd/ReadVariableOp!gfpcpbbmvi/BiasAdd/ReadVariableOp2D
 gfpcpbbmvi/MatMul/ReadVariableOp gfpcpbbmvi/MatMul/ReadVariableOp2H
"gfpcpbbmvi/MatMul_1/ReadVariableOp"gfpcpbbmvi/MatMul_1/ReadVariableOp26
gfpcpbbmvi/ReadVariableOpgfpcpbbmvi/ReadVariableOp2:
gfpcpbbmvi/ReadVariableOp_1gfpcpbbmvi/ReadVariableOp_12:
gfpcpbbmvi/ReadVariableOp_2gfpcpbbmvi/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Г

х
while_cond_357533
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357533___redundant_placeholder04
0while_while_cond_357533___redundant_placeholder14
0while_while_cond_357533___redundant_placeholder24
0while_while_cond_357533___redundant_placeholder34
0while_while_cond_357533___redundant_placeholder44
0while_while_cond_357533___redundant_placeholder54
0while_while_cond_357533___redundant_placeholder6
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
 
┐
+__inference_leklhosgal_layer_call_fn_360731

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
F__inference_leklhosgal_layer_call_and_return_conditional_losses_3560382
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
+__inference_whckbkkggk_layer_call_fn_358891

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
F__inference_whckbkkggk_layer_call_and_return_conditional_losses_3567722
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
Ц
Э
+__inference_sequential_layer_call_fn_357212

khvjuhjlxe
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
khvjuhjlxeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
F__inference_sequential_layer_call_and_return_conditional_losses_3571772
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
khvjuhjlxe
К
Щ
+__inference_sequential_layer_call_fn_358827

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
F__inference_sequential_layer_call_and_return_conditional_losses_3577462
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
ЭF
у
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_355380

inputs$
gfpcpbbmvi_355281:	А$
gfpcpbbmvi_355283:	 А 
gfpcpbbmvi_355285:	А
gfpcpbbmvi_355287: 
gfpcpbbmvi_355289: 
gfpcpbbmvi_355291: 
identityИв"gfpcpbbmvi/StatefulPartitionedCallвwhileD
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
"gfpcpbbmvi/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0gfpcpbbmvi_355281gfpcpbbmvi_355283gfpcpbbmvi_355285gfpcpbbmvi_355287gfpcpbbmvi_355289gfpcpbbmvi_355291*
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
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_3552802$
"gfpcpbbmvi/StatefulPartitionedCallП
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gfpcpbbmvi_355281gfpcpbbmvi_355283gfpcpbbmvi_355285gfpcpbbmvi_355287gfpcpbbmvi_355289gfpcpbbmvi_355291*
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
while_body_355300*
condR
while_cond_355299*Q
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
IdentityIdentitytranspose_1:y:0#^gfpcpbbmvi/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2H
"gfpcpbbmvi/StatefulPartitionedCall"gfpcpbbmvi/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Юh
Д
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359611

inputs<
)gfpcpbbmvi_matmul_readvariableop_resource:	А>
+gfpcpbbmvi_matmul_1_readvariableop_resource:	 А9
*gfpcpbbmvi_biasadd_readvariableop_resource:	А0
"gfpcpbbmvi_readvariableop_resource: 2
$gfpcpbbmvi_readvariableop_1_resource: 2
$gfpcpbbmvi_readvariableop_2_resource: 
identityИв!gfpcpbbmvi/BiasAdd/ReadVariableOpв gfpcpbbmvi/MatMul/ReadVariableOpв"gfpcpbbmvi/MatMul_1/ReadVariableOpвgfpcpbbmvi/ReadVariableOpвgfpcpbbmvi/ReadVariableOp_1вgfpcpbbmvi/ReadVariableOp_2вwhileD
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
 gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp)gfpcpbbmvi_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 gfpcpbbmvi/MatMul/ReadVariableOpз
gfpcpbbmvi/MatMulMatMulstrided_slice_2:output:0(gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul╡
"gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp+gfpcpbbmvi_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"gfpcpbbmvi/MatMul_1/ReadVariableOpг
gfpcpbbmvi/MatMul_1MatMulzeros:output:0*gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul_1Ш
gfpcpbbmvi/addAddV2gfpcpbbmvi/MatMul:product:0gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/addо
!gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp*gfpcpbbmvi_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!gfpcpbbmvi/BiasAdd/ReadVariableOpе
gfpcpbbmvi/BiasAddBiasAddgfpcpbbmvi/add:z:0)gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/BiasAddz
gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
gfpcpbbmvi/split/split_dimы
gfpcpbbmvi/splitSplit#gfpcpbbmvi/split/split_dim:output:0gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
gfpcpbbmvi/splitХ
gfpcpbbmvi/ReadVariableOpReadVariableOp"gfpcpbbmvi_readvariableop_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOpО
gfpcpbbmvi/mulMul!gfpcpbbmvi/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mulО
gfpcpbbmvi/add_1AddV2gfpcpbbmvi/split:output:0gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_1{
gfpcpbbmvi/SigmoidSigmoidgfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/SigmoidЫ
gfpcpbbmvi/ReadVariableOp_1ReadVariableOp$gfpcpbbmvi_readvariableop_1_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_1Ф
gfpcpbbmvi/mul_1Mul#gfpcpbbmvi/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_1Р
gfpcpbbmvi/add_2AddV2gfpcpbbmvi/split:output:1gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_2
gfpcpbbmvi/Sigmoid_1Sigmoidgfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_1Й
gfpcpbbmvi/mul_2Mulgfpcpbbmvi/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_2w
gfpcpbbmvi/TanhTanhgfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
gfpcpbbmvi/TanhК
gfpcpbbmvi/mul_3Mulgfpcpbbmvi/Sigmoid:y:0gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_3Л
gfpcpbbmvi/add_3AddV2gfpcpbbmvi/mul_2:z:0gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_3Ы
gfpcpbbmvi/ReadVariableOp_2ReadVariableOp$gfpcpbbmvi_readvariableop_2_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_2Ш
gfpcpbbmvi/mul_4Mul#gfpcpbbmvi/ReadVariableOp_2:value:0gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_4Р
gfpcpbbmvi/add_4AddV2gfpcpbbmvi/split:output:3gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_4
gfpcpbbmvi/Sigmoid_2Sigmoidgfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_2v
gfpcpbbmvi/Tanh_1Tanhgfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Tanh_1О
gfpcpbbmvi/mul_5Mulgfpcpbbmvi/Sigmoid_2:y:0gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gfpcpbbmvi_matmul_readvariableop_resource+gfpcpbbmvi_matmul_1_readvariableop_resource*gfpcpbbmvi_biasadd_readvariableop_resource"gfpcpbbmvi_readvariableop_resource$gfpcpbbmvi_readvariableop_1_resource$gfpcpbbmvi_readvariableop_2_resource*
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
while_body_359510*
condR
while_cond_359509*Q
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
IdentityIdentitytranspose_1:y:0"^gfpcpbbmvi/BiasAdd/ReadVariableOp!^gfpcpbbmvi/MatMul/ReadVariableOp#^gfpcpbbmvi/MatMul_1/ReadVariableOp^gfpcpbbmvi/ReadVariableOp^gfpcpbbmvi/ReadVariableOp_1^gfpcpbbmvi/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!gfpcpbbmvi/BiasAdd/ReadVariableOp!gfpcpbbmvi/BiasAdd/ReadVariableOp2D
 gfpcpbbmvi/MatMul/ReadVariableOp gfpcpbbmvi/MatMul/ReadVariableOp2H
"gfpcpbbmvi/MatMul_1/ReadVariableOp"gfpcpbbmvi/MatMul_1/ReadVariableOp26
gfpcpbbmvi/ReadVariableOpgfpcpbbmvi/ReadVariableOp2:
gfpcpbbmvi/ReadVariableOp_1gfpcpbbmvi/ReadVariableOp_12:
gfpcpbbmvi/ReadVariableOp_2gfpcpbbmvi/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╕'
┤
F__inference_leklhosgal_layer_call_and_return_conditional_losses_360708

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
Г

х
while_cond_359329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_359329___redundant_placeholder04
0while_while_cond_359329___redundant_placeholder14
0while_while_cond_359329___redundant_placeholder24
0while_while_cond_359329___redundant_placeholder34
0while_while_cond_359329___redundant_placeholder44
0while_while_cond_359329___redundant_placeholder54
0while_while_cond_359329___redundant_placeholder6
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
while_cond_359509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_359509___redundant_placeholder04
0while_while_cond_359509___redundant_placeholder14
0while_while_cond_359509___redundant_placeholder24
0while_while_cond_359509___redundant_placeholder34
0while_while_cond_359509___redundant_placeholder44
0while_while_cond_359509___redundant_placeholder54
0while_while_cond_359509___redundant_placeholder6
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
F__inference_sequential_layer_call_and_return_conditional_losses_357859

khvjuhjlxe'
jjfezsyjwn_357821:
jjfezsyjwn_357823:$
eluvehoiqy_357827:	А$
eluvehoiqy_357829:	 А 
eluvehoiqy_357831:	А
eluvehoiqy_357833: 
eluvehoiqy_357835: 
eluvehoiqy_357837: $
tgargouhhw_357840:	 А$
tgargouhhw_357842:	 А 
tgargouhhw_357844:	А
tgargouhhw_357846: 
tgargouhhw_357848: 
tgargouhhw_357850: #
jhbguimgvq_357853: 
jhbguimgvq_357855:
identityИв"eluvehoiqy/StatefulPartitionedCallв"jhbguimgvq/StatefulPartitionedCallв"jjfezsyjwn/StatefulPartitionedCallв"tgargouhhw/StatefulPartitionedCallн
"jjfezsyjwn/StatefulPartitionedCallStatefulPartitionedCall
khvjuhjlxejjfezsyjwn_357821jjfezsyjwn_357823*
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
F__inference_jjfezsyjwn_layer_call_and_return_conditional_losses_3567532$
"jjfezsyjwn/StatefulPartitionedCallЖ
whckbkkggk/PartitionedCallPartitionedCall+jjfezsyjwn/StatefulPartitionedCall:output:0*
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
F__inference_whckbkkggk_layer_call_and_return_conditional_losses_3567722
whckbkkggk/PartitionedCallЦ
"eluvehoiqy/StatefulPartitionedCallStatefulPartitionedCall#whckbkkggk/PartitionedCall:output:0eluvehoiqy_357827eluvehoiqy_357829eluvehoiqy_357831eluvehoiqy_357833eluvehoiqy_357835eluvehoiqy_357837*
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
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_3569532$
"eluvehoiqy/StatefulPartitionedCallЪ
"tgargouhhw/StatefulPartitionedCallStatefulPartitionedCall+eluvehoiqy/StatefulPartitionedCall:output:0tgargouhhw_357840tgargouhhw_357842tgargouhhw_357844tgargouhhw_357846tgargouhhw_357848tgargouhhw_357850*
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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_3571462$
"tgargouhhw/StatefulPartitionedCall╞
"jhbguimgvq/StatefulPartitionedCallStatefulPartitionedCall+tgargouhhw/StatefulPartitionedCall:output:0jhbguimgvq_357853jhbguimgvq_357855*
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
F__inference_jhbguimgvq_layer_call_and_return_conditional_losses_3571702$
"jhbguimgvq/StatefulPartitionedCallУ
IdentityIdentity+jhbguimgvq/StatefulPartitionedCall:output:0#^eluvehoiqy/StatefulPartitionedCall#^jhbguimgvq/StatefulPartitionedCall#^jjfezsyjwn/StatefulPartitionedCall#^tgargouhhw/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"eluvehoiqy/StatefulPartitionedCall"eluvehoiqy/StatefulPartitionedCall2H
"jhbguimgvq/StatefulPartitionedCall"jhbguimgvq/StatefulPartitionedCall2H
"jjfezsyjwn/StatefulPartitionedCall"jjfezsyjwn/StatefulPartitionedCall2H
"tgargouhhw/StatefulPartitionedCall"tgargouhhw/StatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
khvjuhjlxe
гh
Д
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_357146

inputs<
)leklhosgal_matmul_readvariableop_resource:	 А>
+leklhosgal_matmul_1_readvariableop_resource:	 А9
*leklhosgal_biasadd_readvariableop_resource:	А0
"leklhosgal_readvariableop_resource: 2
$leklhosgal_readvariableop_1_resource: 2
$leklhosgal_readvariableop_2_resource: 
identityИв!leklhosgal/BiasAdd/ReadVariableOpв leklhosgal/MatMul/ReadVariableOpв"leklhosgal/MatMul_1/ReadVariableOpвleklhosgal/ReadVariableOpвleklhosgal/ReadVariableOp_1вleklhosgal/ReadVariableOp_2вwhileD
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
 leklhosgal/MatMul/ReadVariableOpReadVariableOp)leklhosgal_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 leklhosgal/MatMul/ReadVariableOpз
leklhosgal/MatMulMatMulstrided_slice_2:output:0(leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul╡
"leklhosgal/MatMul_1/ReadVariableOpReadVariableOp+leklhosgal_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"leklhosgal/MatMul_1/ReadVariableOpг
leklhosgal/MatMul_1MatMulzeros:output:0*leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul_1Ш
leklhosgal/addAddV2leklhosgal/MatMul:product:0leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
leklhosgal/addо
!leklhosgal/BiasAdd/ReadVariableOpReadVariableOp*leklhosgal_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!leklhosgal/BiasAdd/ReadVariableOpе
leklhosgal/BiasAddBiasAddleklhosgal/add:z:0)leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/BiasAddz
leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
leklhosgal/split/split_dimы
leklhosgal/splitSplit#leklhosgal/split/split_dim:output:0leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
leklhosgal/splitХ
leklhosgal/ReadVariableOpReadVariableOp"leklhosgal_readvariableop_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOpО
leklhosgal/mulMul!leklhosgal/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mulО
leklhosgal/add_1AddV2leklhosgal/split:output:0leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_1{
leklhosgal/SigmoidSigmoidleklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/SigmoidЫ
leklhosgal/ReadVariableOp_1ReadVariableOp$leklhosgal_readvariableop_1_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_1Ф
leklhosgal/mul_1Mul#leklhosgal/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_1Р
leklhosgal/add_2AddV2leklhosgal/split:output:1leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_2
leklhosgal/Sigmoid_1Sigmoidleklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_1Й
leklhosgal/mul_2Mulleklhosgal/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_2w
leklhosgal/TanhTanhleklhosgal/split:output:2*
T0*'
_output_shapes
:          2
leklhosgal/TanhК
leklhosgal/mul_3Mulleklhosgal/Sigmoid:y:0leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_3Л
leklhosgal/add_3AddV2leklhosgal/mul_2:z:0leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_3Ы
leklhosgal/ReadVariableOp_2ReadVariableOp$leklhosgal_readvariableop_2_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_2Ш
leklhosgal/mul_4Mul#leklhosgal/ReadVariableOp_2:value:0leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_4Р
leklhosgal/add_4AddV2leklhosgal/split:output:3leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_4
leklhosgal/Sigmoid_2Sigmoidleklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_2v
leklhosgal/Tanh_1Tanhleklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Tanh_1О
leklhosgal/mul_5Mulleklhosgal/Sigmoid_2:y:0leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)leklhosgal_matmul_readvariableop_resource+leklhosgal_matmul_1_readvariableop_resource*leklhosgal_biasadd_readvariableop_resource"leklhosgal_readvariableop_resource$leklhosgal_readvariableop_1_resource$leklhosgal_readvariableop_2_resource*
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
while_body_357045*
condR
while_cond_357044*Q
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
IdentityIdentitystrided_slice_3:output:0"^leklhosgal/BiasAdd/ReadVariableOp!^leklhosgal/MatMul/ReadVariableOp#^leklhosgal/MatMul_1/ReadVariableOp^leklhosgal/ReadVariableOp^leklhosgal/ReadVariableOp_1^leklhosgal/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!leklhosgal/BiasAdd/ReadVariableOp!leklhosgal/BiasAdd/ReadVariableOp2D
 leklhosgal/MatMul/ReadVariableOp leklhosgal/MatMul/ReadVariableOp2H
"leklhosgal/MatMul_1/ReadVariableOp"leklhosgal/MatMul_1/ReadVariableOp26
leklhosgal/ReadVariableOpleklhosgal/ReadVariableOp2:
leklhosgal/ReadVariableOp_1leklhosgal/ReadVariableOp_12:
leklhosgal/ReadVariableOp_2leklhosgal/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
░'
▓
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_355280

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
▀Y
Ж
while_body_359758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_leklhosgal_matmul_readvariableop_resource_0:	 АF
3while_leklhosgal_matmul_1_readvariableop_resource_0:	 АA
2while_leklhosgal_biasadd_readvariableop_resource_0:	А8
*while_leklhosgal_readvariableop_resource_0: :
,while_leklhosgal_readvariableop_1_resource_0: :
,while_leklhosgal_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_leklhosgal_matmul_readvariableop_resource:	 АD
1while_leklhosgal_matmul_1_readvariableop_resource:	 А?
0while_leklhosgal_biasadd_readvariableop_resource:	А6
(while_leklhosgal_readvariableop_resource: 8
*while_leklhosgal_readvariableop_1_resource: 8
*while_leklhosgal_readvariableop_2_resource: Ив'while/leklhosgal/BiasAdd/ReadVariableOpв&while/leklhosgal/MatMul/ReadVariableOpв(while/leklhosgal/MatMul_1/ReadVariableOpвwhile/leklhosgal/ReadVariableOpв!while/leklhosgal/ReadVariableOp_1в!while/leklhosgal/ReadVariableOp_2├
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
&while/leklhosgal/MatMul/ReadVariableOpReadVariableOp1while_leklhosgal_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/leklhosgal/MatMul/ReadVariableOp╤
while/leklhosgal/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul╔
(while/leklhosgal/MatMul_1/ReadVariableOpReadVariableOp3while_leklhosgal_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/leklhosgal/MatMul_1/ReadVariableOp║
while/leklhosgal/MatMul_1MatMulwhile_placeholder_20while/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul_1░
while/leklhosgal/addAddV2!while/leklhosgal/MatMul:product:0#while/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/add┬
'while/leklhosgal/BiasAdd/ReadVariableOpReadVariableOp2while_leklhosgal_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/leklhosgal/BiasAdd/ReadVariableOp╜
while/leklhosgal/BiasAddBiasAddwhile/leklhosgal/add:z:0/while/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/BiasAddЖ
 while/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/leklhosgal/split/split_dimГ
while/leklhosgal/splitSplit)while/leklhosgal/split/split_dim:output:0!while/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/leklhosgal/splitй
while/leklhosgal/ReadVariableOpReadVariableOp*while_leklhosgal_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/leklhosgal/ReadVariableOpг
while/leklhosgal/mulMul'while/leklhosgal/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mulж
while/leklhosgal/add_1AddV2while/leklhosgal/split:output:0while/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_1Н
while/leklhosgal/SigmoidSigmoidwhile/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoidп
!while/leklhosgal/ReadVariableOp_1ReadVariableOp,while_leklhosgal_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_1й
while/leklhosgal/mul_1Mul)while/leklhosgal/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_1и
while/leklhosgal/add_2AddV2while/leklhosgal/split:output:1while/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_2С
while/leklhosgal/Sigmoid_1Sigmoidwhile/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_1Ю
while/leklhosgal/mul_2Mulwhile/leklhosgal/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_2Й
while/leklhosgal/TanhTanhwhile/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanhв
while/leklhosgal/mul_3Mulwhile/leklhosgal/Sigmoid:y:0while/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_3г
while/leklhosgal/add_3AddV2while/leklhosgal/mul_2:z:0while/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_3п
!while/leklhosgal/ReadVariableOp_2ReadVariableOp,while_leklhosgal_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_2░
while/leklhosgal/mul_4Mul)while/leklhosgal/ReadVariableOp_2:value:0while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_4и
while/leklhosgal/add_4AddV2while/leklhosgal/split:output:3while/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_4С
while/leklhosgal/Sigmoid_2Sigmoidwhile/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_2И
while/leklhosgal/Tanh_1Tanhwhile/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanh_1ж
while/leklhosgal/mul_5Mulwhile/leklhosgal/Sigmoid_2:y:0while/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/leklhosgal/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/leklhosgal/mul_5:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/leklhosgal/add_3:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"f
0while_leklhosgal_biasadd_readvariableop_resource2while_leklhosgal_biasadd_readvariableop_resource_0"h
1while_leklhosgal_matmul_1_readvariableop_resource3while_leklhosgal_matmul_1_readvariableop_resource_0"d
/while_leklhosgal_matmul_readvariableop_resource1while_leklhosgal_matmul_readvariableop_resource_0"Z
*while_leklhosgal_readvariableop_1_resource,while_leklhosgal_readvariableop_1_resource_0"Z
*while_leklhosgal_readvariableop_2_resource,while_leklhosgal_readvariableop_2_resource_0"V
(while_leklhosgal_readvariableop_resource*while_leklhosgal_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/leklhosgal/BiasAdd/ReadVariableOp'while/leklhosgal/BiasAdd/ReadVariableOp2P
&while/leklhosgal/MatMul/ReadVariableOp&while/leklhosgal/MatMul/ReadVariableOp2T
(while/leklhosgal/MatMul_1/ReadVariableOp(while/leklhosgal/MatMul_1/ReadVariableOp2B
while/leklhosgal/ReadVariableOpwhile/leklhosgal/ReadVariableOp2F
!while/leklhosgal/ReadVariableOp_1!while/leklhosgal/ReadVariableOp_12F
!while/leklhosgal/ReadVariableOp_2!while/leklhosgal/ReadVariableOp_2: 
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
гh
Д
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_360219

inputs<
)leklhosgal_matmul_readvariableop_resource:	 А>
+leklhosgal_matmul_1_readvariableop_resource:	 А9
*leklhosgal_biasadd_readvariableop_resource:	А0
"leklhosgal_readvariableop_resource: 2
$leklhosgal_readvariableop_1_resource: 2
$leklhosgal_readvariableop_2_resource: 
identityИв!leklhosgal/BiasAdd/ReadVariableOpв leklhosgal/MatMul/ReadVariableOpв"leklhosgal/MatMul_1/ReadVariableOpвleklhosgal/ReadVariableOpвleklhosgal/ReadVariableOp_1вleklhosgal/ReadVariableOp_2вwhileD
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
 leklhosgal/MatMul/ReadVariableOpReadVariableOp)leklhosgal_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 leklhosgal/MatMul/ReadVariableOpз
leklhosgal/MatMulMatMulstrided_slice_2:output:0(leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul╡
"leklhosgal/MatMul_1/ReadVariableOpReadVariableOp+leklhosgal_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"leklhosgal/MatMul_1/ReadVariableOpг
leklhosgal/MatMul_1MatMulzeros:output:0*leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul_1Ш
leklhosgal/addAddV2leklhosgal/MatMul:product:0leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
leklhosgal/addо
!leklhosgal/BiasAdd/ReadVariableOpReadVariableOp*leklhosgal_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!leklhosgal/BiasAdd/ReadVariableOpе
leklhosgal/BiasAddBiasAddleklhosgal/add:z:0)leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/BiasAddz
leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
leklhosgal/split/split_dimы
leklhosgal/splitSplit#leklhosgal/split/split_dim:output:0leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
leklhosgal/splitХ
leklhosgal/ReadVariableOpReadVariableOp"leklhosgal_readvariableop_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOpО
leklhosgal/mulMul!leklhosgal/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mulО
leklhosgal/add_1AddV2leklhosgal/split:output:0leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_1{
leklhosgal/SigmoidSigmoidleklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/SigmoidЫ
leklhosgal/ReadVariableOp_1ReadVariableOp$leklhosgal_readvariableop_1_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_1Ф
leklhosgal/mul_1Mul#leklhosgal/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_1Р
leklhosgal/add_2AddV2leklhosgal/split:output:1leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_2
leklhosgal/Sigmoid_1Sigmoidleklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_1Й
leklhosgal/mul_2Mulleklhosgal/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_2w
leklhosgal/TanhTanhleklhosgal/split:output:2*
T0*'
_output_shapes
:          2
leklhosgal/TanhК
leklhosgal/mul_3Mulleklhosgal/Sigmoid:y:0leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_3Л
leklhosgal/add_3AddV2leklhosgal/mul_2:z:0leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_3Ы
leklhosgal/ReadVariableOp_2ReadVariableOp$leklhosgal_readvariableop_2_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_2Ш
leklhosgal/mul_4Mul#leklhosgal/ReadVariableOp_2:value:0leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_4Р
leklhosgal/add_4AddV2leklhosgal/split:output:3leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_4
leklhosgal/Sigmoid_2Sigmoidleklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_2v
leklhosgal/Tanh_1Tanhleklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Tanh_1О
leklhosgal/mul_5Mulleklhosgal/Sigmoid_2:y:0leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)leklhosgal_matmul_readvariableop_resource+leklhosgal_matmul_1_readvariableop_resource*leklhosgal_biasadd_readvariableop_resource"leklhosgal_readvariableop_resource$leklhosgal_readvariableop_1_resource$leklhosgal_readvariableop_2_resource*
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
while_body_360118*
condR
while_cond_360117*Q
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
IdentityIdentitystrided_slice_3:output:0"^leklhosgal/BiasAdd/ReadVariableOp!^leklhosgal/MatMul/ReadVariableOp#^leklhosgal/MatMul_1/ReadVariableOp^leklhosgal/ReadVariableOp^leklhosgal/ReadVariableOp_1^leklhosgal/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!leklhosgal/BiasAdd/ReadVariableOp!leklhosgal/BiasAdd/ReadVariableOp2D
 leklhosgal/MatMul/ReadVariableOp leklhosgal/MatMul/ReadVariableOp2H
"leklhosgal/MatMul_1/ReadVariableOp"leklhosgal/MatMul_1/ReadVariableOp26
leklhosgal/ReadVariableOpleklhosgal/ReadVariableOp2:
leklhosgal/ReadVariableOp_1leklhosgal/ReadVariableOp_12:
leklhosgal/ReadVariableOp_2leklhosgal/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
ЩF
у
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_356401

inputs$
leklhosgal_356302:	 А$
leklhosgal_356304:	 А 
leklhosgal_356306:	А
leklhosgal_356308: 
leklhosgal_356310: 
leklhosgal_356312: 
identityИв"leklhosgal/StatefulPartitionedCallвwhileD
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
"leklhosgal/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0leklhosgal_356302leklhosgal_356304leklhosgal_356306leklhosgal_356308leklhosgal_356310leklhosgal_356312*
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
F__inference_leklhosgal_layer_call_and_return_conditional_losses_3562252$
"leklhosgal/StatefulPartitionedCallП
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0leklhosgal_356302leklhosgal_356304leklhosgal_356306leklhosgal_356308leklhosgal_356310leklhosgal_356312*
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
while_body_356321*
condR
while_cond_356320*Q
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
IdentityIdentitystrided_slice_3:output:0#^leklhosgal/StatefulPartitionedCall^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2H
"leklhosgal/StatefulPartitionedCall"leklhosgal/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
▀Y
Ж
while_body_357534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gfpcpbbmvi_matmul_readvariableop_resource_0:	АF
3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0:	 АA
2while_gfpcpbbmvi_biasadd_readvariableop_resource_0:	А8
*while_gfpcpbbmvi_readvariableop_resource_0: :
,while_gfpcpbbmvi_readvariableop_1_resource_0: :
,while_gfpcpbbmvi_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gfpcpbbmvi_matmul_readvariableop_resource:	АD
1while_gfpcpbbmvi_matmul_1_readvariableop_resource:	 А?
0while_gfpcpbbmvi_biasadd_readvariableop_resource:	А6
(while_gfpcpbbmvi_readvariableop_resource: 8
*while_gfpcpbbmvi_readvariableop_1_resource: 8
*while_gfpcpbbmvi_readvariableop_2_resource: Ив'while/gfpcpbbmvi/BiasAdd/ReadVariableOpв&while/gfpcpbbmvi/MatMul/ReadVariableOpв(while/gfpcpbbmvi/MatMul_1/ReadVariableOpвwhile/gfpcpbbmvi/ReadVariableOpв!while/gfpcpbbmvi/ReadVariableOp_1в!while/gfpcpbbmvi/ReadVariableOp_2├
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
&while/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp1while_gfpcpbbmvi_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/gfpcpbbmvi/MatMul/ReadVariableOp╤
while/gfpcpbbmvi/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul╔
(while/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp║
while/gfpcpbbmvi/MatMul_1MatMulwhile_placeholder_20while/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul_1░
while/gfpcpbbmvi/addAddV2!while/gfpcpbbmvi/MatMul:product:0#while/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/add┬
'while/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp2while_gfpcpbbmvi_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp╜
while/gfpcpbbmvi/BiasAddBiasAddwhile/gfpcpbbmvi/add:z:0/while/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/BiasAddЖ
 while/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/gfpcpbbmvi/split/split_dimГ
while/gfpcpbbmvi/splitSplit)while/gfpcpbbmvi/split/split_dim:output:0!while/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/gfpcpbbmvi/splitй
while/gfpcpbbmvi/ReadVariableOpReadVariableOp*while_gfpcpbbmvi_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/gfpcpbbmvi/ReadVariableOpг
while/gfpcpbbmvi/mulMul'while/gfpcpbbmvi/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mulж
while/gfpcpbbmvi/add_1AddV2while/gfpcpbbmvi/split:output:0while/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_1Н
while/gfpcpbbmvi/SigmoidSigmoidwhile/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoidп
!while/gfpcpbbmvi/ReadVariableOp_1ReadVariableOp,while_gfpcpbbmvi_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_1й
while/gfpcpbbmvi/mul_1Mul)while/gfpcpbbmvi/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_1и
while/gfpcpbbmvi/add_2AddV2while/gfpcpbbmvi/split:output:1while/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_2С
while/gfpcpbbmvi/Sigmoid_1Sigmoidwhile/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_1Ю
while/gfpcpbbmvi/mul_2Mulwhile/gfpcpbbmvi/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_2Й
while/gfpcpbbmvi/TanhTanhwhile/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanhв
while/gfpcpbbmvi/mul_3Mulwhile/gfpcpbbmvi/Sigmoid:y:0while/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_3г
while/gfpcpbbmvi/add_3AddV2while/gfpcpbbmvi/mul_2:z:0while/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_3п
!while/gfpcpbbmvi/ReadVariableOp_2ReadVariableOp,while_gfpcpbbmvi_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_2░
while/gfpcpbbmvi/mul_4Mul)while/gfpcpbbmvi/ReadVariableOp_2:value:0while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_4и
while/gfpcpbbmvi/add_4AddV2while/gfpcpbbmvi/split:output:3while/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_4С
while/gfpcpbbmvi/Sigmoid_2Sigmoidwhile/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_2И
while/gfpcpbbmvi/Tanh_1Tanhwhile/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanh_1ж
while/gfpcpbbmvi/mul_5Mulwhile/gfpcpbbmvi/Sigmoid_2:y:0while/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gfpcpbbmvi/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/gfpcpbbmvi/mul_5:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/gfpcpbbmvi/add_3:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_gfpcpbbmvi_biasadd_readvariableop_resource2while_gfpcpbbmvi_biasadd_readvariableop_resource_0"h
1while_gfpcpbbmvi_matmul_1_readvariableop_resource3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0"d
/while_gfpcpbbmvi_matmul_readvariableop_resource1while_gfpcpbbmvi_matmul_readvariableop_resource_0"Z
*while_gfpcpbbmvi_readvariableop_1_resource,while_gfpcpbbmvi_readvariableop_1_resource_0"Z
*while_gfpcpbbmvi_readvariableop_2_resource,while_gfpcpbbmvi_readvariableop_2_resource_0"V
(while_gfpcpbbmvi_readvariableop_resource*while_gfpcpbbmvi_readvariableop_resource_0")
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
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp'while/gfpcpbbmvi/BiasAdd/ReadVariableOp2P
&while/gfpcpbbmvi/MatMul/ReadVariableOp&while/gfpcpbbmvi/MatMul/ReadVariableOp2T
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp(while/gfpcpbbmvi/MatMul_1/ReadVariableOp2B
while/gfpcpbbmvi/ReadVariableOpwhile/gfpcpbbmvi/ReadVariableOp2F
!while/gfpcpbbmvi/ReadVariableOp_1!while/gfpcpbbmvi/ReadVariableOp_12F
!while/gfpcpbbmvi/ReadVariableOp_2!while/gfpcpbbmvi/ReadVariableOp_2: 
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
while_body_359938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_leklhosgal_matmul_readvariableop_resource_0:	 АF
3while_leklhosgal_matmul_1_readvariableop_resource_0:	 АA
2while_leklhosgal_biasadd_readvariableop_resource_0:	А8
*while_leklhosgal_readvariableop_resource_0: :
,while_leklhosgal_readvariableop_1_resource_0: :
,while_leklhosgal_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_leklhosgal_matmul_readvariableop_resource:	 АD
1while_leklhosgal_matmul_1_readvariableop_resource:	 А?
0while_leklhosgal_biasadd_readvariableop_resource:	А6
(while_leklhosgal_readvariableop_resource: 8
*while_leklhosgal_readvariableop_1_resource: 8
*while_leklhosgal_readvariableop_2_resource: Ив'while/leklhosgal/BiasAdd/ReadVariableOpв&while/leklhosgal/MatMul/ReadVariableOpв(while/leklhosgal/MatMul_1/ReadVariableOpвwhile/leklhosgal/ReadVariableOpв!while/leklhosgal/ReadVariableOp_1в!while/leklhosgal/ReadVariableOp_2├
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
&while/leklhosgal/MatMul/ReadVariableOpReadVariableOp1while_leklhosgal_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/leklhosgal/MatMul/ReadVariableOp╤
while/leklhosgal/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul╔
(while/leklhosgal/MatMul_1/ReadVariableOpReadVariableOp3while_leklhosgal_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/leklhosgal/MatMul_1/ReadVariableOp║
while/leklhosgal/MatMul_1MatMulwhile_placeholder_20while/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul_1░
while/leklhosgal/addAddV2!while/leklhosgal/MatMul:product:0#while/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/add┬
'while/leklhosgal/BiasAdd/ReadVariableOpReadVariableOp2while_leklhosgal_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/leklhosgal/BiasAdd/ReadVariableOp╜
while/leklhosgal/BiasAddBiasAddwhile/leklhosgal/add:z:0/while/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/BiasAddЖ
 while/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/leklhosgal/split/split_dimГ
while/leklhosgal/splitSplit)while/leklhosgal/split/split_dim:output:0!while/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/leklhosgal/splitй
while/leklhosgal/ReadVariableOpReadVariableOp*while_leklhosgal_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/leklhosgal/ReadVariableOpг
while/leklhosgal/mulMul'while/leklhosgal/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mulж
while/leklhosgal/add_1AddV2while/leklhosgal/split:output:0while/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_1Н
while/leklhosgal/SigmoidSigmoidwhile/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoidп
!while/leklhosgal/ReadVariableOp_1ReadVariableOp,while_leklhosgal_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_1й
while/leklhosgal/mul_1Mul)while/leklhosgal/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_1и
while/leklhosgal/add_2AddV2while/leklhosgal/split:output:1while/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_2С
while/leklhosgal/Sigmoid_1Sigmoidwhile/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_1Ю
while/leklhosgal/mul_2Mulwhile/leklhosgal/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_2Й
while/leklhosgal/TanhTanhwhile/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanhв
while/leklhosgal/mul_3Mulwhile/leklhosgal/Sigmoid:y:0while/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_3г
while/leklhosgal/add_3AddV2while/leklhosgal/mul_2:z:0while/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_3п
!while/leklhosgal/ReadVariableOp_2ReadVariableOp,while_leklhosgal_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_2░
while/leklhosgal/mul_4Mul)while/leklhosgal/ReadVariableOp_2:value:0while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_4и
while/leklhosgal/add_4AddV2while/leklhosgal/split:output:3while/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_4С
while/leklhosgal/Sigmoid_2Sigmoidwhile/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_2И
while/leklhosgal/Tanh_1Tanhwhile/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanh_1ж
while/leklhosgal/mul_5Mulwhile/leklhosgal/Sigmoid_2:y:0while/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/leklhosgal/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/leklhosgal/mul_5:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/leklhosgal/add_3:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"f
0while_leklhosgal_biasadd_readvariableop_resource2while_leklhosgal_biasadd_readvariableop_resource_0"h
1while_leklhosgal_matmul_1_readvariableop_resource3while_leklhosgal_matmul_1_readvariableop_resource_0"d
/while_leklhosgal_matmul_readvariableop_resource1while_leklhosgal_matmul_readvariableop_resource_0"Z
*while_leklhosgal_readvariableop_1_resource,while_leklhosgal_readvariableop_1_resource_0"Z
*while_leklhosgal_readvariableop_2_resource,while_leklhosgal_readvariableop_2_resource_0"V
(while_leklhosgal_readvariableop_resource*while_leklhosgal_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/leklhosgal/BiasAdd/ReadVariableOp'while/leklhosgal/BiasAdd/ReadVariableOp2P
&while/leklhosgal/MatMul/ReadVariableOp&while/leklhosgal/MatMul/ReadVariableOp2T
(while/leklhosgal/MatMul_1/ReadVariableOp(while/leklhosgal/MatMul_1/ReadVariableOp2B
while/leklhosgal/ReadVariableOpwhile/leklhosgal/ReadVariableOp2F
!while/leklhosgal/ReadVariableOp_1!while/leklhosgal/ReadVariableOp_12F
!while/leklhosgal/ReadVariableOp_2!while/leklhosgal/ReadVariableOp_2: 
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
┘
Г
+__inference_eluvehoiqy_layer_call_fn_359662

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
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_3569532
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
Э
б	
'sequential_eluvehoiqy_while_cond_354909H
Dsequential_eluvehoiqy_while_sequential_eluvehoiqy_while_loop_counterN
Jsequential_eluvehoiqy_while_sequential_eluvehoiqy_while_maximum_iterations+
'sequential_eluvehoiqy_while_placeholder-
)sequential_eluvehoiqy_while_placeholder_1-
)sequential_eluvehoiqy_while_placeholder_2-
)sequential_eluvehoiqy_while_placeholder_3J
Fsequential_eluvehoiqy_while_less_sequential_eluvehoiqy_strided_slice_1`
\sequential_eluvehoiqy_while_sequential_eluvehoiqy_while_cond_354909___redundant_placeholder0`
\sequential_eluvehoiqy_while_sequential_eluvehoiqy_while_cond_354909___redundant_placeholder1`
\sequential_eluvehoiqy_while_sequential_eluvehoiqy_while_cond_354909___redundant_placeholder2`
\sequential_eluvehoiqy_while_sequential_eluvehoiqy_while_cond_354909___redundant_placeholder3`
\sequential_eluvehoiqy_while_sequential_eluvehoiqy_while_cond_354909___redundant_placeholder4`
\sequential_eluvehoiqy_while_sequential_eluvehoiqy_while_cond_354909___redundant_placeholder5`
\sequential_eluvehoiqy_while_sequential_eluvehoiqy_while_cond_354909___redundant_placeholder6(
$sequential_eluvehoiqy_while_identity
▐
 sequential/eluvehoiqy/while/LessLess'sequential_eluvehoiqy_while_placeholderFsequential_eluvehoiqy_while_less_sequential_eluvehoiqy_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/eluvehoiqy/while/LessЯ
$sequential/eluvehoiqy/while/IdentityIdentity$sequential/eluvehoiqy/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/eluvehoiqy/while/Identity"U
$sequential_eluvehoiqy_while_identity-sequential/eluvehoiqy/while/Identity:output:0*(
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
while_cond_360117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_360117___redundant_placeholder04
0while_while_cond_360117___redundant_placeholder14
0while_while_cond_360117___redundant_placeholder24
0while_while_cond_360117___redundant_placeholder34
0while_while_cond_360117___redundant_placeholder44
0while_while_cond_360117___redundant_placeholder54
0while_while_cond_360117___redundant_placeholder6
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
while_body_356852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gfpcpbbmvi_matmul_readvariableop_resource_0:	АF
3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0:	 АA
2while_gfpcpbbmvi_biasadd_readvariableop_resource_0:	А8
*while_gfpcpbbmvi_readvariableop_resource_0: :
,while_gfpcpbbmvi_readvariableop_1_resource_0: :
,while_gfpcpbbmvi_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gfpcpbbmvi_matmul_readvariableop_resource:	АD
1while_gfpcpbbmvi_matmul_1_readvariableop_resource:	 А?
0while_gfpcpbbmvi_biasadd_readvariableop_resource:	А6
(while_gfpcpbbmvi_readvariableop_resource: 8
*while_gfpcpbbmvi_readvariableop_1_resource: 8
*while_gfpcpbbmvi_readvariableop_2_resource: Ив'while/gfpcpbbmvi/BiasAdd/ReadVariableOpв&while/gfpcpbbmvi/MatMul/ReadVariableOpв(while/gfpcpbbmvi/MatMul_1/ReadVariableOpвwhile/gfpcpbbmvi/ReadVariableOpв!while/gfpcpbbmvi/ReadVariableOp_1в!while/gfpcpbbmvi/ReadVariableOp_2├
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
&while/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp1while_gfpcpbbmvi_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/gfpcpbbmvi/MatMul/ReadVariableOp╤
while/gfpcpbbmvi/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul╔
(while/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp║
while/gfpcpbbmvi/MatMul_1MatMulwhile_placeholder_20while/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul_1░
while/gfpcpbbmvi/addAddV2!while/gfpcpbbmvi/MatMul:product:0#while/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/add┬
'while/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp2while_gfpcpbbmvi_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp╜
while/gfpcpbbmvi/BiasAddBiasAddwhile/gfpcpbbmvi/add:z:0/while/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/BiasAddЖ
 while/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/gfpcpbbmvi/split/split_dimГ
while/gfpcpbbmvi/splitSplit)while/gfpcpbbmvi/split/split_dim:output:0!while/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/gfpcpbbmvi/splitй
while/gfpcpbbmvi/ReadVariableOpReadVariableOp*while_gfpcpbbmvi_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/gfpcpbbmvi/ReadVariableOpг
while/gfpcpbbmvi/mulMul'while/gfpcpbbmvi/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mulж
while/gfpcpbbmvi/add_1AddV2while/gfpcpbbmvi/split:output:0while/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_1Н
while/gfpcpbbmvi/SigmoidSigmoidwhile/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoidп
!while/gfpcpbbmvi/ReadVariableOp_1ReadVariableOp,while_gfpcpbbmvi_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_1й
while/gfpcpbbmvi/mul_1Mul)while/gfpcpbbmvi/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_1и
while/gfpcpbbmvi/add_2AddV2while/gfpcpbbmvi/split:output:1while/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_2С
while/gfpcpbbmvi/Sigmoid_1Sigmoidwhile/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_1Ю
while/gfpcpbbmvi/mul_2Mulwhile/gfpcpbbmvi/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_2Й
while/gfpcpbbmvi/TanhTanhwhile/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanhв
while/gfpcpbbmvi/mul_3Mulwhile/gfpcpbbmvi/Sigmoid:y:0while/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_3г
while/gfpcpbbmvi/add_3AddV2while/gfpcpbbmvi/mul_2:z:0while/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_3п
!while/gfpcpbbmvi/ReadVariableOp_2ReadVariableOp,while_gfpcpbbmvi_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_2░
while/gfpcpbbmvi/mul_4Mul)while/gfpcpbbmvi/ReadVariableOp_2:value:0while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_4и
while/gfpcpbbmvi/add_4AddV2while/gfpcpbbmvi/split:output:3while/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_4С
while/gfpcpbbmvi/Sigmoid_2Sigmoidwhile/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_2И
while/gfpcpbbmvi/Tanh_1Tanhwhile/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanh_1ж
while/gfpcpbbmvi/mul_5Mulwhile/gfpcpbbmvi/Sigmoid_2:y:0while/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gfpcpbbmvi/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/gfpcpbbmvi/mul_5:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/gfpcpbbmvi/add_3:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_gfpcpbbmvi_biasadd_readvariableop_resource2while_gfpcpbbmvi_biasadd_readvariableop_resource_0"h
1while_gfpcpbbmvi_matmul_1_readvariableop_resource3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0"d
/while_gfpcpbbmvi_matmul_readvariableop_resource1while_gfpcpbbmvi_matmul_readvariableop_resource_0"Z
*while_gfpcpbbmvi_readvariableop_1_resource,while_gfpcpbbmvi_readvariableop_1_resource_0"Z
*while_gfpcpbbmvi_readvariableop_2_resource,while_gfpcpbbmvi_readvariableop_2_resource_0"V
(while_gfpcpbbmvi_readvariableop_resource*while_gfpcpbbmvi_readvariableop_resource_0")
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
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp'while/gfpcpbbmvi/BiasAdd/ReadVariableOp2P
&while/gfpcpbbmvi/MatMul/ReadVariableOp&while/gfpcpbbmvi/MatMul/ReadVariableOp2T
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp(while/gfpcpbbmvi/MatMul_1/ReadVariableOp2B
while/gfpcpbbmvi/ReadVariableOpwhile/gfpcpbbmvi/ReadVariableOp2F
!while/gfpcpbbmvi/ReadVariableOp_1!while/gfpcpbbmvi/ReadVariableOp_12F
!while/gfpcpbbmvi/ReadVariableOp_2!while/gfpcpbbmvi/ReadVariableOp_2: 
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
Т
л
F__inference_sequential_layer_call_and_return_conditional_losses_357177

inputs'
jjfezsyjwn_356754:
jjfezsyjwn_356756:$
eluvehoiqy_356954:	А$
eluvehoiqy_356956:	 А 
eluvehoiqy_356958:	А
eluvehoiqy_356960: 
eluvehoiqy_356962: 
eluvehoiqy_356964: $
tgargouhhw_357147:	 А$
tgargouhhw_357149:	 А 
tgargouhhw_357151:	А
tgargouhhw_357153: 
tgargouhhw_357155: 
tgargouhhw_357157: #
jhbguimgvq_357171: 
jhbguimgvq_357173:
identityИв"eluvehoiqy/StatefulPartitionedCallв"jhbguimgvq/StatefulPartitionedCallв"jjfezsyjwn/StatefulPartitionedCallв"tgargouhhw/StatefulPartitionedCallй
"jjfezsyjwn/StatefulPartitionedCallStatefulPartitionedCallinputsjjfezsyjwn_356754jjfezsyjwn_356756*
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
F__inference_jjfezsyjwn_layer_call_and_return_conditional_losses_3567532$
"jjfezsyjwn/StatefulPartitionedCallЖ
whckbkkggk/PartitionedCallPartitionedCall+jjfezsyjwn/StatefulPartitionedCall:output:0*
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
F__inference_whckbkkggk_layer_call_and_return_conditional_losses_3567722
whckbkkggk/PartitionedCallЦ
"eluvehoiqy/StatefulPartitionedCallStatefulPartitionedCall#whckbkkggk/PartitionedCall:output:0eluvehoiqy_356954eluvehoiqy_356956eluvehoiqy_356958eluvehoiqy_356960eluvehoiqy_356962eluvehoiqy_356964*
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
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_3569532$
"eluvehoiqy/StatefulPartitionedCallЪ
"tgargouhhw/StatefulPartitionedCallStatefulPartitionedCall+eluvehoiqy/StatefulPartitionedCall:output:0tgargouhhw_357147tgargouhhw_357149tgargouhhw_357151tgargouhhw_357153tgargouhhw_357155tgargouhhw_357157*
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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_3571462$
"tgargouhhw/StatefulPartitionedCall╞
"jhbguimgvq/StatefulPartitionedCallStatefulPartitionedCall+tgargouhhw/StatefulPartitionedCall:output:0jhbguimgvq_357171jhbguimgvq_357173*
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
F__inference_jhbguimgvq_layer_call_and_return_conditional_losses_3571702$
"jhbguimgvq/StatefulPartitionedCallУ
IdentityIdentity+jhbguimgvq/StatefulPartitionedCall:output:0#^eluvehoiqy/StatefulPartitionedCall#^jhbguimgvq/StatefulPartitionedCall#^jjfezsyjwn/StatefulPartitionedCall#^tgargouhhw/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"eluvehoiqy/StatefulPartitionedCall"eluvehoiqy/StatefulPartitionedCall2H
"jhbguimgvq/StatefulPartitionedCall"jhbguimgvq/StatefulPartitionedCall2H
"jjfezsyjwn/StatefulPartitionedCall"jjfezsyjwn/StatefulPartitionedCall2H
"tgargouhhw/StatefulPartitionedCall"tgargouhhw/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Т
л
F__inference_sequential_layer_call_and_return_conditional_losses_357746

inputs'
jjfezsyjwn_357708:
jjfezsyjwn_357710:$
eluvehoiqy_357714:	А$
eluvehoiqy_357716:	 А 
eluvehoiqy_357718:	А
eluvehoiqy_357720: 
eluvehoiqy_357722: 
eluvehoiqy_357724: $
tgargouhhw_357727:	 А$
tgargouhhw_357729:	 А 
tgargouhhw_357731:	А
tgargouhhw_357733: 
tgargouhhw_357735: 
tgargouhhw_357737: #
jhbguimgvq_357740: 
jhbguimgvq_357742:
identityИв"eluvehoiqy/StatefulPartitionedCallв"jhbguimgvq/StatefulPartitionedCallв"jjfezsyjwn/StatefulPartitionedCallв"tgargouhhw/StatefulPartitionedCallй
"jjfezsyjwn/StatefulPartitionedCallStatefulPartitionedCallinputsjjfezsyjwn_357708jjfezsyjwn_357710*
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
F__inference_jjfezsyjwn_layer_call_and_return_conditional_losses_3567532$
"jjfezsyjwn/StatefulPartitionedCallЖ
whckbkkggk/PartitionedCallPartitionedCall+jjfezsyjwn/StatefulPartitionedCall:output:0*
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
F__inference_whckbkkggk_layer_call_and_return_conditional_losses_3567722
whckbkkggk/PartitionedCallЦ
"eluvehoiqy/StatefulPartitionedCallStatefulPartitionedCall#whckbkkggk/PartitionedCall:output:0eluvehoiqy_357714eluvehoiqy_357716eluvehoiqy_357718eluvehoiqy_357720eluvehoiqy_357722eluvehoiqy_357724*
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
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_3576352$
"eluvehoiqy/StatefulPartitionedCallЪ
"tgargouhhw/StatefulPartitionedCallStatefulPartitionedCall+eluvehoiqy/StatefulPartitionedCall:output:0tgargouhhw_357727tgargouhhw_357729tgargouhhw_357731tgargouhhw_357733tgargouhhw_357735tgargouhhw_357737*
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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_3574212$
"tgargouhhw/StatefulPartitionedCall╞
"jhbguimgvq/StatefulPartitionedCallStatefulPartitionedCall+tgargouhhw/StatefulPartitionedCall:output:0jhbguimgvq_357740jhbguimgvq_357742*
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
F__inference_jhbguimgvq_layer_call_and_return_conditional_losses_3571702$
"jhbguimgvq/StatefulPartitionedCallУ
IdentityIdentity+jhbguimgvq/StatefulPartitionedCall:output:0#^eluvehoiqy/StatefulPartitionedCall#^jhbguimgvq/StatefulPartitionedCall#^jjfezsyjwn/StatefulPartitionedCall#^tgargouhhw/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"eluvehoiqy/StatefulPartitionedCall"eluvehoiqy/StatefulPartitionedCall2H
"jhbguimgvq/StatefulPartitionedCall"jhbguimgvq/StatefulPartitionedCall2H
"jjfezsyjwn/StatefulPartitionedCall"jjfezsyjwn/StatefulPartitionedCall2H
"tgargouhhw/StatefulPartitionedCall"tgargouhhw/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
щ
Е
+__inference_tgargouhhw_layer_call_fn_360433
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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_3564012
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
░'
▓
F__inference_leklhosgal_layer_call_and_return_conditional_losses_356225

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
▀Y
Ж
while_body_357320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_leklhosgal_matmul_readvariableop_resource_0:	 АF
3while_leklhosgal_matmul_1_readvariableop_resource_0:	 АA
2while_leklhosgal_biasadd_readvariableop_resource_0:	А8
*while_leklhosgal_readvariableop_resource_0: :
,while_leklhosgal_readvariableop_1_resource_0: :
,while_leklhosgal_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_leklhosgal_matmul_readvariableop_resource:	 АD
1while_leklhosgal_matmul_1_readvariableop_resource:	 А?
0while_leklhosgal_biasadd_readvariableop_resource:	А6
(while_leklhosgal_readvariableop_resource: 8
*while_leklhosgal_readvariableop_1_resource: 8
*while_leklhosgal_readvariableop_2_resource: Ив'while/leklhosgal/BiasAdd/ReadVariableOpв&while/leklhosgal/MatMul/ReadVariableOpв(while/leklhosgal/MatMul_1/ReadVariableOpвwhile/leklhosgal/ReadVariableOpв!while/leklhosgal/ReadVariableOp_1в!while/leklhosgal/ReadVariableOp_2├
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
&while/leklhosgal/MatMul/ReadVariableOpReadVariableOp1while_leklhosgal_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/leklhosgal/MatMul/ReadVariableOp╤
while/leklhosgal/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul╔
(while/leklhosgal/MatMul_1/ReadVariableOpReadVariableOp3while_leklhosgal_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/leklhosgal/MatMul_1/ReadVariableOp║
while/leklhosgal/MatMul_1MatMulwhile_placeholder_20while/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul_1░
while/leklhosgal/addAddV2!while/leklhosgal/MatMul:product:0#while/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/add┬
'while/leklhosgal/BiasAdd/ReadVariableOpReadVariableOp2while_leklhosgal_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/leklhosgal/BiasAdd/ReadVariableOp╜
while/leklhosgal/BiasAddBiasAddwhile/leklhosgal/add:z:0/while/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/BiasAddЖ
 while/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/leklhosgal/split/split_dimГ
while/leklhosgal/splitSplit)while/leklhosgal/split/split_dim:output:0!while/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/leklhosgal/splitй
while/leklhosgal/ReadVariableOpReadVariableOp*while_leklhosgal_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/leklhosgal/ReadVariableOpг
while/leklhosgal/mulMul'while/leklhosgal/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mulж
while/leklhosgal/add_1AddV2while/leklhosgal/split:output:0while/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_1Н
while/leklhosgal/SigmoidSigmoidwhile/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoidп
!while/leklhosgal/ReadVariableOp_1ReadVariableOp,while_leklhosgal_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_1й
while/leklhosgal/mul_1Mul)while/leklhosgal/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_1и
while/leklhosgal/add_2AddV2while/leklhosgal/split:output:1while/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_2С
while/leklhosgal/Sigmoid_1Sigmoidwhile/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_1Ю
while/leklhosgal/mul_2Mulwhile/leklhosgal/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_2Й
while/leklhosgal/TanhTanhwhile/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanhв
while/leklhosgal/mul_3Mulwhile/leklhosgal/Sigmoid:y:0while/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_3г
while/leklhosgal/add_3AddV2while/leklhosgal/mul_2:z:0while/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_3п
!while/leklhosgal/ReadVariableOp_2ReadVariableOp,while_leklhosgal_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_2░
while/leklhosgal/mul_4Mul)while/leklhosgal/ReadVariableOp_2:value:0while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_4и
while/leklhosgal/add_4AddV2while/leklhosgal/split:output:3while/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_4С
while/leklhosgal/Sigmoid_2Sigmoidwhile/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_2И
while/leklhosgal/Tanh_1Tanhwhile/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanh_1ж
while/leklhosgal/mul_5Mulwhile/leklhosgal/Sigmoid_2:y:0while/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/leklhosgal/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/leklhosgal/mul_5:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/leklhosgal/add_3:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"f
0while_leklhosgal_biasadd_readvariableop_resource2while_leklhosgal_biasadd_readvariableop_resource_0"h
1while_leklhosgal_matmul_1_readvariableop_resource3while_leklhosgal_matmul_1_readvariableop_resource_0"d
/while_leklhosgal_matmul_readvariableop_resource1while_leklhosgal_matmul_readvariableop_resource_0"Z
*while_leklhosgal_readvariableop_1_resource,while_leklhosgal_readvariableop_1_resource_0"Z
*while_leklhosgal_readvariableop_2_resource,while_leklhosgal_readvariableop_2_resource_0"V
(while_leklhosgal_readvariableop_resource*while_leklhosgal_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/leklhosgal/BiasAdd/ReadVariableOp'while/leklhosgal/BiasAdd/ReadVariableOp2P
&while/leklhosgal/MatMul/ReadVariableOp&while/leklhosgal/MatMul/ReadVariableOp2T
(while/leklhosgal/MatMul_1/ReadVariableOp(while/leklhosgal/MatMul_1/ReadVariableOp2B
while/leklhosgal/ReadVariableOpwhile/leklhosgal/ReadVariableOp2F
!while/leklhosgal/ReadVariableOp_1!while/leklhosgal/ReadVariableOp_12F
!while/leklhosgal/ReadVariableOp_2!while/leklhosgal/ReadVariableOp_2: 
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
в
Ш
+__inference_jhbguimgvq_layer_call_fn_360486

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
F__inference_jhbguimgvq_layer_call_and_return_conditional_losses_3571702
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
Р
Г
tgargouhhw_while_cond_3582412
.tgargouhhw_while_tgargouhhw_while_loop_counter8
4tgargouhhw_while_tgargouhhw_while_maximum_iterations 
tgargouhhw_while_placeholder"
tgargouhhw_while_placeholder_1"
tgargouhhw_while_placeholder_2"
tgargouhhw_while_placeholder_34
0tgargouhhw_while_less_tgargouhhw_strided_slice_1J
Ftgargouhhw_while_tgargouhhw_while_cond_358241___redundant_placeholder0J
Ftgargouhhw_while_tgargouhhw_while_cond_358241___redundant_placeholder1J
Ftgargouhhw_while_tgargouhhw_while_cond_358241___redundant_placeholder2J
Ftgargouhhw_while_tgargouhhw_while_cond_358241___redundant_placeholder3J
Ftgargouhhw_while_tgargouhhw_while_cond_358241___redundant_placeholder4J
Ftgargouhhw_while_tgargouhhw_while_cond_358241___redundant_placeholder5J
Ftgargouhhw_while_tgargouhhw_while_cond_358241___redundant_placeholder6
tgargouhhw_while_identity
з
tgargouhhw/while/LessLesstgargouhhw_while_placeholder0tgargouhhw_while_less_tgargouhhw_strided_slice_1*
T0*
_output_shapes
: 2
tgargouhhw/while/Less~
tgargouhhw/while/IdentityIdentitytgargouhhw/while/Less:z:0*
T0
*
_output_shapes
: 2
tgargouhhw/while/Identity"?
tgargouhhw_while_identity"tgargouhhw/while/Identity:output:0*(
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
while_cond_357319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357319___redundant_placeholder04
0while_while_cond_357319___redundant_placeholder14
0while_while_cond_357319___redundant_placeholder24
0while_while_cond_357319___redundant_placeholder34
0while_while_cond_357319___redundant_placeholder44
0while_while_cond_357319___redundant_placeholder54
0while_while_cond_357319___redundant_placeholder6
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
while_cond_356320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356320___redundant_placeholder04
0while_while_cond_356320___redundant_placeholder14
0while_while_cond_356320___redundant_placeholder24
0while_while_cond_356320___redundant_placeholder34
0while_while_cond_356320___redundant_placeholder44
0while_while_cond_356320___redundant_placeholder54
0while_while_cond_356320___redundant_placeholder6
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
╥	
ў
F__inference_jhbguimgvq_layer_call_and_return_conditional_losses_360477

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
▀Y
Ж
while_body_359330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gfpcpbbmvi_matmul_readvariableop_resource_0:	АF
3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0:	 АA
2while_gfpcpbbmvi_biasadd_readvariableop_resource_0:	А8
*while_gfpcpbbmvi_readvariableop_resource_0: :
,while_gfpcpbbmvi_readvariableop_1_resource_0: :
,while_gfpcpbbmvi_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gfpcpbbmvi_matmul_readvariableop_resource:	АD
1while_gfpcpbbmvi_matmul_1_readvariableop_resource:	 А?
0while_gfpcpbbmvi_biasadd_readvariableop_resource:	А6
(while_gfpcpbbmvi_readvariableop_resource: 8
*while_gfpcpbbmvi_readvariableop_1_resource: 8
*while_gfpcpbbmvi_readvariableop_2_resource: Ив'while/gfpcpbbmvi/BiasAdd/ReadVariableOpв&while/gfpcpbbmvi/MatMul/ReadVariableOpв(while/gfpcpbbmvi/MatMul_1/ReadVariableOpвwhile/gfpcpbbmvi/ReadVariableOpв!while/gfpcpbbmvi/ReadVariableOp_1в!while/gfpcpbbmvi/ReadVariableOp_2├
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
&while/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp1while_gfpcpbbmvi_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/gfpcpbbmvi/MatMul/ReadVariableOp╤
while/gfpcpbbmvi/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul╔
(while/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp║
while/gfpcpbbmvi/MatMul_1MatMulwhile_placeholder_20while/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul_1░
while/gfpcpbbmvi/addAddV2!while/gfpcpbbmvi/MatMul:product:0#while/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/add┬
'while/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp2while_gfpcpbbmvi_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp╜
while/gfpcpbbmvi/BiasAddBiasAddwhile/gfpcpbbmvi/add:z:0/while/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/BiasAddЖ
 while/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/gfpcpbbmvi/split/split_dimГ
while/gfpcpbbmvi/splitSplit)while/gfpcpbbmvi/split/split_dim:output:0!while/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/gfpcpbbmvi/splitй
while/gfpcpbbmvi/ReadVariableOpReadVariableOp*while_gfpcpbbmvi_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/gfpcpbbmvi/ReadVariableOpг
while/gfpcpbbmvi/mulMul'while/gfpcpbbmvi/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mulж
while/gfpcpbbmvi/add_1AddV2while/gfpcpbbmvi/split:output:0while/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_1Н
while/gfpcpbbmvi/SigmoidSigmoidwhile/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoidп
!while/gfpcpbbmvi/ReadVariableOp_1ReadVariableOp,while_gfpcpbbmvi_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_1й
while/gfpcpbbmvi/mul_1Mul)while/gfpcpbbmvi/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_1и
while/gfpcpbbmvi/add_2AddV2while/gfpcpbbmvi/split:output:1while/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_2С
while/gfpcpbbmvi/Sigmoid_1Sigmoidwhile/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_1Ю
while/gfpcpbbmvi/mul_2Mulwhile/gfpcpbbmvi/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_2Й
while/gfpcpbbmvi/TanhTanhwhile/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanhв
while/gfpcpbbmvi/mul_3Mulwhile/gfpcpbbmvi/Sigmoid:y:0while/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_3г
while/gfpcpbbmvi/add_3AddV2while/gfpcpbbmvi/mul_2:z:0while/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_3п
!while/gfpcpbbmvi/ReadVariableOp_2ReadVariableOp,while_gfpcpbbmvi_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_2░
while/gfpcpbbmvi/mul_4Mul)while/gfpcpbbmvi/ReadVariableOp_2:value:0while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_4и
while/gfpcpbbmvi/add_4AddV2while/gfpcpbbmvi/split:output:3while/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_4С
while/gfpcpbbmvi/Sigmoid_2Sigmoidwhile/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_2И
while/gfpcpbbmvi/Tanh_1Tanhwhile/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanh_1ж
while/gfpcpbbmvi/mul_5Mulwhile/gfpcpbbmvi/Sigmoid_2:y:0while/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gfpcpbbmvi/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/gfpcpbbmvi/mul_5:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/gfpcpbbmvi/add_3:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_gfpcpbbmvi_biasadd_readvariableop_resource2while_gfpcpbbmvi_biasadd_readvariableop_resource_0"h
1while_gfpcpbbmvi_matmul_1_readvariableop_resource3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0"d
/while_gfpcpbbmvi_matmul_readvariableop_resource1while_gfpcpbbmvi_matmul_readvariableop_resource_0"Z
*while_gfpcpbbmvi_readvariableop_1_resource,while_gfpcpbbmvi_readvariableop_1_resource_0"Z
*while_gfpcpbbmvi_readvariableop_2_resource,while_gfpcpbbmvi_readvariableop_2_resource_0"V
(while_gfpcpbbmvi_readvariableop_resource*while_gfpcpbbmvi_readvariableop_resource_0")
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
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp'while/gfpcpbbmvi/BiasAdd/ReadVariableOp2P
&while/gfpcpbbmvi/MatMul/ReadVariableOp&while/gfpcpbbmvi/MatMul/ReadVariableOp2T
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp(while/gfpcpbbmvi/MatMul_1/ReadVariableOp2B
while/gfpcpbbmvi/ReadVariableOpwhile/gfpcpbbmvi/ReadVariableOp2F
!while/gfpcpbbmvi/ReadVariableOp_1!while/gfpcpbbmvi/ReadVariableOp_12F
!while/gfpcpbbmvi/ReadVariableOp_2!while/gfpcpbbmvi/ReadVariableOp_2: 
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
┘
Г
+__inference_eluvehoiqy_layer_call_fn_359679

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
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_3576352
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
╤
Г
+__inference_tgargouhhw_layer_call_fn_360450

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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_3571462
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
Г

х
while_cond_359757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_359757___redundant_placeholder04
0while_while_cond_359757___redundant_placeholder14
0while_while_cond_359757___redundant_placeholder24
0while_while_cond_359757___redundant_placeholder34
0while_while_cond_359757___redundant_placeholder44
0while_while_cond_359757___redundant_placeholder54
0while_while_cond_359757___redundant_placeholder6
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
Юh
Д
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359431

inputs<
)gfpcpbbmvi_matmul_readvariableop_resource:	А>
+gfpcpbbmvi_matmul_1_readvariableop_resource:	 А9
*gfpcpbbmvi_biasadd_readvariableop_resource:	А0
"gfpcpbbmvi_readvariableop_resource: 2
$gfpcpbbmvi_readvariableop_1_resource: 2
$gfpcpbbmvi_readvariableop_2_resource: 
identityИв!gfpcpbbmvi/BiasAdd/ReadVariableOpв gfpcpbbmvi/MatMul/ReadVariableOpв"gfpcpbbmvi/MatMul_1/ReadVariableOpвgfpcpbbmvi/ReadVariableOpвgfpcpbbmvi/ReadVariableOp_1вgfpcpbbmvi/ReadVariableOp_2вwhileD
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
 gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp)gfpcpbbmvi_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 gfpcpbbmvi/MatMul/ReadVariableOpз
gfpcpbbmvi/MatMulMatMulstrided_slice_2:output:0(gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul╡
"gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp+gfpcpbbmvi_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"gfpcpbbmvi/MatMul_1/ReadVariableOpг
gfpcpbbmvi/MatMul_1MatMulzeros:output:0*gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul_1Ш
gfpcpbbmvi/addAddV2gfpcpbbmvi/MatMul:product:0gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/addо
!gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp*gfpcpbbmvi_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!gfpcpbbmvi/BiasAdd/ReadVariableOpе
gfpcpbbmvi/BiasAddBiasAddgfpcpbbmvi/add:z:0)gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/BiasAddz
gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
gfpcpbbmvi/split/split_dimы
gfpcpbbmvi/splitSplit#gfpcpbbmvi/split/split_dim:output:0gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
gfpcpbbmvi/splitХ
gfpcpbbmvi/ReadVariableOpReadVariableOp"gfpcpbbmvi_readvariableop_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOpО
gfpcpbbmvi/mulMul!gfpcpbbmvi/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mulО
gfpcpbbmvi/add_1AddV2gfpcpbbmvi/split:output:0gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_1{
gfpcpbbmvi/SigmoidSigmoidgfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/SigmoidЫ
gfpcpbbmvi/ReadVariableOp_1ReadVariableOp$gfpcpbbmvi_readvariableop_1_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_1Ф
gfpcpbbmvi/mul_1Mul#gfpcpbbmvi/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_1Р
gfpcpbbmvi/add_2AddV2gfpcpbbmvi/split:output:1gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_2
gfpcpbbmvi/Sigmoid_1Sigmoidgfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_1Й
gfpcpbbmvi/mul_2Mulgfpcpbbmvi/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_2w
gfpcpbbmvi/TanhTanhgfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
gfpcpbbmvi/TanhК
gfpcpbbmvi/mul_3Mulgfpcpbbmvi/Sigmoid:y:0gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_3Л
gfpcpbbmvi/add_3AddV2gfpcpbbmvi/mul_2:z:0gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_3Ы
gfpcpbbmvi/ReadVariableOp_2ReadVariableOp$gfpcpbbmvi_readvariableop_2_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_2Ш
gfpcpbbmvi/mul_4Mul#gfpcpbbmvi/ReadVariableOp_2:value:0gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_4Р
gfpcpbbmvi/add_4AddV2gfpcpbbmvi/split:output:3gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_4
gfpcpbbmvi/Sigmoid_2Sigmoidgfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_2v
gfpcpbbmvi/Tanh_1Tanhgfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Tanh_1О
gfpcpbbmvi/mul_5Mulgfpcpbbmvi/Sigmoid_2:y:0gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gfpcpbbmvi_matmul_readvariableop_resource+gfpcpbbmvi_matmul_1_readvariableop_resource*gfpcpbbmvi_biasadd_readvariableop_resource"gfpcpbbmvi_readvariableop_resource$gfpcpbbmvi_readvariableop_1_resource$gfpcpbbmvi_readvariableop_2_resource*
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
while_body_359330*
condR
while_cond_359329*Q
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
IdentityIdentitytranspose_1:y:0"^gfpcpbbmvi/BiasAdd/ReadVariableOp!^gfpcpbbmvi/MatMul/ReadVariableOp#^gfpcpbbmvi/MatMul_1/ReadVariableOp^gfpcpbbmvi/ReadVariableOp^gfpcpbbmvi/ReadVariableOp_1^gfpcpbbmvi/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!gfpcpbbmvi/BiasAdd/ReadVariableOp!gfpcpbbmvi/BiasAdd/ReadVariableOp2D
 gfpcpbbmvi/MatMul/ReadVariableOp gfpcpbbmvi/MatMul/ReadVariableOp2H
"gfpcpbbmvi/MatMul_1/ReadVariableOp"gfpcpbbmvi/MatMul_1/ReadVariableOp26
gfpcpbbmvi/ReadVariableOpgfpcpbbmvi/ReadVariableOp2:
gfpcpbbmvi/ReadVariableOp_1gfpcpbbmvi/ReadVariableOp_12:
gfpcpbbmvi/ReadVariableOp_2gfpcpbbmvi/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ю
п
F__inference_sequential_layer_call_and_return_conditional_losses_357900

khvjuhjlxe'
jjfezsyjwn_357862:
jjfezsyjwn_357864:$
eluvehoiqy_357868:	А$
eluvehoiqy_357870:	 А 
eluvehoiqy_357872:	А
eluvehoiqy_357874: 
eluvehoiqy_357876: 
eluvehoiqy_357878: $
tgargouhhw_357881:	 А$
tgargouhhw_357883:	 А 
tgargouhhw_357885:	А
tgargouhhw_357887: 
tgargouhhw_357889: 
tgargouhhw_357891: #
jhbguimgvq_357894: 
jhbguimgvq_357896:
identityИв"eluvehoiqy/StatefulPartitionedCallв"jhbguimgvq/StatefulPartitionedCallв"jjfezsyjwn/StatefulPartitionedCallв"tgargouhhw/StatefulPartitionedCallн
"jjfezsyjwn/StatefulPartitionedCallStatefulPartitionedCall
khvjuhjlxejjfezsyjwn_357862jjfezsyjwn_357864*
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
F__inference_jjfezsyjwn_layer_call_and_return_conditional_losses_3567532$
"jjfezsyjwn/StatefulPartitionedCallЖ
whckbkkggk/PartitionedCallPartitionedCall+jjfezsyjwn/StatefulPartitionedCall:output:0*
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
F__inference_whckbkkggk_layer_call_and_return_conditional_losses_3567722
whckbkkggk/PartitionedCallЦ
"eluvehoiqy/StatefulPartitionedCallStatefulPartitionedCall#whckbkkggk/PartitionedCall:output:0eluvehoiqy_357868eluvehoiqy_357870eluvehoiqy_357872eluvehoiqy_357874eluvehoiqy_357876eluvehoiqy_357878*
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
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_3576352$
"eluvehoiqy/StatefulPartitionedCallЪ
"tgargouhhw/StatefulPartitionedCallStatefulPartitionedCall+eluvehoiqy/StatefulPartitionedCall:output:0tgargouhhw_357881tgargouhhw_357883tgargouhhw_357885tgargouhhw_357887tgargouhhw_357889tgargouhhw_357891*
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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_3574212$
"tgargouhhw/StatefulPartitionedCall╞
"jhbguimgvq/StatefulPartitionedCallStatefulPartitionedCall+tgargouhhw/StatefulPartitionedCall:output:0jhbguimgvq_357894jhbguimgvq_357896*
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
F__inference_jhbguimgvq_layer_call_and_return_conditional_losses_3571702$
"jhbguimgvq/StatefulPartitionedCallУ
IdentityIdentity+jhbguimgvq/StatefulPartitionedCall:output:0#^eluvehoiqy/StatefulPartitionedCall#^jhbguimgvq/StatefulPartitionedCall#^jjfezsyjwn/StatefulPartitionedCall#^tgargouhhw/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"eluvehoiqy/StatefulPartitionedCall"eluvehoiqy/StatefulPartitionedCall2H
"jhbguimgvq/StatefulPartitionedCall"jhbguimgvq/StatefulPartitionedCall2H
"jjfezsyjwn/StatefulPartitionedCall"jjfezsyjwn/StatefulPartitionedCall2H
"tgargouhhw/StatefulPartitionedCall"tgargouhhw/StatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
khvjuhjlxe
Г	
Е
+__inference_eluvehoiqy_layer_call_fn_359628
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
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_3553802
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
▀Y
Ж
while_body_359150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gfpcpbbmvi_matmul_readvariableop_resource_0:	АF
3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0:	 АA
2while_gfpcpbbmvi_biasadd_readvariableop_resource_0:	А8
*while_gfpcpbbmvi_readvariableop_resource_0: :
,while_gfpcpbbmvi_readvariableop_1_resource_0: :
,while_gfpcpbbmvi_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gfpcpbbmvi_matmul_readvariableop_resource:	АD
1while_gfpcpbbmvi_matmul_1_readvariableop_resource:	 А?
0while_gfpcpbbmvi_biasadd_readvariableop_resource:	А6
(while_gfpcpbbmvi_readvariableop_resource: 8
*while_gfpcpbbmvi_readvariableop_1_resource: 8
*while_gfpcpbbmvi_readvariableop_2_resource: Ив'while/gfpcpbbmvi/BiasAdd/ReadVariableOpв&while/gfpcpbbmvi/MatMul/ReadVariableOpв(while/gfpcpbbmvi/MatMul_1/ReadVariableOpвwhile/gfpcpbbmvi/ReadVariableOpв!while/gfpcpbbmvi/ReadVariableOp_1в!while/gfpcpbbmvi/ReadVariableOp_2├
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
&while/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp1while_gfpcpbbmvi_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/gfpcpbbmvi/MatMul/ReadVariableOp╤
while/gfpcpbbmvi/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul╔
(while/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp║
while/gfpcpbbmvi/MatMul_1MatMulwhile_placeholder_20while/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul_1░
while/gfpcpbbmvi/addAddV2!while/gfpcpbbmvi/MatMul:product:0#while/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/add┬
'while/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp2while_gfpcpbbmvi_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp╜
while/gfpcpbbmvi/BiasAddBiasAddwhile/gfpcpbbmvi/add:z:0/while/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/BiasAddЖ
 while/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/gfpcpbbmvi/split/split_dimГ
while/gfpcpbbmvi/splitSplit)while/gfpcpbbmvi/split/split_dim:output:0!while/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/gfpcpbbmvi/splitй
while/gfpcpbbmvi/ReadVariableOpReadVariableOp*while_gfpcpbbmvi_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/gfpcpbbmvi/ReadVariableOpг
while/gfpcpbbmvi/mulMul'while/gfpcpbbmvi/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mulж
while/gfpcpbbmvi/add_1AddV2while/gfpcpbbmvi/split:output:0while/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_1Н
while/gfpcpbbmvi/SigmoidSigmoidwhile/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoidп
!while/gfpcpbbmvi/ReadVariableOp_1ReadVariableOp,while_gfpcpbbmvi_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_1й
while/gfpcpbbmvi/mul_1Mul)while/gfpcpbbmvi/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_1и
while/gfpcpbbmvi/add_2AddV2while/gfpcpbbmvi/split:output:1while/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_2С
while/gfpcpbbmvi/Sigmoid_1Sigmoidwhile/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_1Ю
while/gfpcpbbmvi/mul_2Mulwhile/gfpcpbbmvi/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_2Й
while/gfpcpbbmvi/TanhTanhwhile/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanhв
while/gfpcpbbmvi/mul_3Mulwhile/gfpcpbbmvi/Sigmoid:y:0while/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_3г
while/gfpcpbbmvi/add_3AddV2while/gfpcpbbmvi/mul_2:z:0while/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_3п
!while/gfpcpbbmvi/ReadVariableOp_2ReadVariableOp,while_gfpcpbbmvi_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_2░
while/gfpcpbbmvi/mul_4Mul)while/gfpcpbbmvi/ReadVariableOp_2:value:0while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_4и
while/gfpcpbbmvi/add_4AddV2while/gfpcpbbmvi/split:output:3while/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_4С
while/gfpcpbbmvi/Sigmoid_2Sigmoidwhile/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_2И
while/gfpcpbbmvi/Tanh_1Tanhwhile/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanh_1ж
while/gfpcpbbmvi/mul_5Mulwhile/gfpcpbbmvi/Sigmoid_2:y:0while/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gfpcpbbmvi/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/gfpcpbbmvi/mul_5:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/gfpcpbbmvi/add_3:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_gfpcpbbmvi_biasadd_readvariableop_resource2while_gfpcpbbmvi_biasadd_readvariableop_resource_0"h
1while_gfpcpbbmvi_matmul_1_readvariableop_resource3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0"d
/while_gfpcpbbmvi_matmul_readvariableop_resource1while_gfpcpbbmvi_matmul_readvariableop_resource_0"Z
*while_gfpcpbbmvi_readvariableop_1_resource,while_gfpcpbbmvi_readvariableop_1_resource_0"Z
*while_gfpcpbbmvi_readvariableop_2_resource,while_gfpcpbbmvi_readvariableop_2_resource_0"V
(while_gfpcpbbmvi_readvariableop_resource*while_gfpcpbbmvi_readvariableop_resource_0")
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
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp'while/gfpcpbbmvi/BiasAdd/ReadVariableOp2P
&while/gfpcpbbmvi/MatMul/ReadVariableOp&while/gfpcpbbmvi/MatMul/ReadVariableOp2T
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp(while/gfpcpbbmvi/MatMul_1/ReadVariableOp2B
while/gfpcpbbmvi/ReadVariableOpwhile/gfpcpbbmvi/ReadVariableOp2F
!while/gfpcpbbmvi/ReadVariableOp_1!while/gfpcpbbmvi/ReadVariableOp_12F
!while/gfpcpbbmvi/ReadVariableOp_2!while/gfpcpbbmvi/ReadVariableOp_2: 
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
Шp
╔
tgargouhhw_while_body_3582422
.tgargouhhw_while_tgargouhhw_while_loop_counter8
4tgargouhhw_while_tgargouhhw_while_maximum_iterations 
tgargouhhw_while_placeholder"
tgargouhhw_while_placeholder_1"
tgargouhhw_while_placeholder_2"
tgargouhhw_while_placeholder_31
-tgargouhhw_while_tgargouhhw_strided_slice_1_0m
itgargouhhw_while_tensorarrayv2read_tensorlistgetitem_tgargouhhw_tensorarrayunstack_tensorlistfromtensor_0O
<tgargouhhw_while_leklhosgal_matmul_readvariableop_resource_0:	 АQ
>tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource_0:	 АL
=tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource_0:	АC
5tgargouhhw_while_leklhosgal_readvariableop_resource_0: E
7tgargouhhw_while_leklhosgal_readvariableop_1_resource_0: E
7tgargouhhw_while_leklhosgal_readvariableop_2_resource_0: 
tgargouhhw_while_identity
tgargouhhw_while_identity_1
tgargouhhw_while_identity_2
tgargouhhw_while_identity_3
tgargouhhw_while_identity_4
tgargouhhw_while_identity_5/
+tgargouhhw_while_tgargouhhw_strided_slice_1k
gtgargouhhw_while_tensorarrayv2read_tensorlistgetitem_tgargouhhw_tensorarrayunstack_tensorlistfromtensorM
:tgargouhhw_while_leklhosgal_matmul_readvariableop_resource:	 АO
<tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource:	 АJ
;tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource:	АA
3tgargouhhw_while_leklhosgal_readvariableop_resource: C
5tgargouhhw_while_leklhosgal_readvariableop_1_resource: C
5tgargouhhw_while_leklhosgal_readvariableop_2_resource: Ив2tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOpв1tgargouhhw/while/leklhosgal/MatMul/ReadVariableOpв3tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOpв*tgargouhhw/while/leklhosgal/ReadVariableOpв,tgargouhhw/while/leklhosgal/ReadVariableOp_1в,tgargouhhw/while/leklhosgal/ReadVariableOp_2┘
Btgargouhhw/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2D
Btgargouhhw/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4tgargouhhw/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemitgargouhhw_while_tensorarrayv2read_tensorlistgetitem_tgargouhhw_tensorarrayunstack_tensorlistfromtensor_0tgargouhhw_while_placeholderKtgargouhhw/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype026
4tgargouhhw/while/TensorArrayV2Read/TensorListGetItemф
1tgargouhhw/while/leklhosgal/MatMul/ReadVariableOpReadVariableOp<tgargouhhw_while_leklhosgal_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype023
1tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp¤
"tgargouhhw/while/leklhosgal/MatMulMatMul;tgargouhhw/while/TensorArrayV2Read/TensorListGetItem:item:09tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"tgargouhhw/while/leklhosgal/MatMulъ
3tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOpReadVariableOp>tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOpц
$tgargouhhw/while/leklhosgal/MatMul_1MatMultgargouhhw_while_placeholder_2;tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$tgargouhhw/while/leklhosgal/MatMul_1▄
tgargouhhw/while/leklhosgal/addAddV2,tgargouhhw/while/leklhosgal/MatMul:product:0.tgargouhhw/while/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
tgargouhhw/while/leklhosgal/addу
2tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOpReadVariableOp=tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOpщ
#tgargouhhw/while/leklhosgal/BiasAddBiasAdd#tgargouhhw/while/leklhosgal/add:z:0:tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#tgargouhhw/while/leklhosgal/BiasAddЬ
+tgargouhhw/while/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+tgargouhhw/while/leklhosgal/split/split_dimп
!tgargouhhw/while/leklhosgal/splitSplit4tgargouhhw/while/leklhosgal/split/split_dim:output:0,tgargouhhw/while/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!tgargouhhw/while/leklhosgal/split╩
*tgargouhhw/while/leklhosgal/ReadVariableOpReadVariableOp5tgargouhhw_while_leklhosgal_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*tgargouhhw/while/leklhosgal/ReadVariableOp╧
tgargouhhw/while/leklhosgal/mulMul2tgargouhhw/while/leklhosgal/ReadVariableOp:value:0tgargouhhw_while_placeholder_3*
T0*'
_output_shapes
:          2!
tgargouhhw/while/leklhosgal/mul╥
!tgargouhhw/while/leklhosgal/add_1AddV2*tgargouhhw/while/leklhosgal/split:output:0#tgargouhhw/while/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/add_1о
#tgargouhhw/while/leklhosgal/SigmoidSigmoid%tgargouhhw/while/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2%
#tgargouhhw/while/leklhosgal/Sigmoid╨
,tgargouhhw/while/leklhosgal/ReadVariableOp_1ReadVariableOp7tgargouhhw_while_leklhosgal_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,tgargouhhw/while/leklhosgal/ReadVariableOp_1╒
!tgargouhhw/while/leklhosgal/mul_1Mul4tgargouhhw/while/leklhosgal/ReadVariableOp_1:value:0tgargouhhw_while_placeholder_3*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/mul_1╘
!tgargouhhw/while/leklhosgal/add_2AddV2*tgargouhhw/while/leklhosgal/split:output:1%tgargouhhw/while/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/add_2▓
%tgargouhhw/while/leklhosgal/Sigmoid_1Sigmoid%tgargouhhw/while/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2'
%tgargouhhw/while/leklhosgal/Sigmoid_1╩
!tgargouhhw/while/leklhosgal/mul_2Mul)tgargouhhw/while/leklhosgal/Sigmoid_1:y:0tgargouhhw_while_placeholder_3*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/mul_2к
 tgargouhhw/while/leklhosgal/TanhTanh*tgargouhhw/while/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2"
 tgargouhhw/while/leklhosgal/Tanh╬
!tgargouhhw/while/leklhosgal/mul_3Mul'tgargouhhw/while/leklhosgal/Sigmoid:y:0$tgargouhhw/while/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/mul_3╧
!tgargouhhw/while/leklhosgal/add_3AddV2%tgargouhhw/while/leklhosgal/mul_2:z:0%tgargouhhw/while/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/add_3╨
,tgargouhhw/while/leklhosgal/ReadVariableOp_2ReadVariableOp7tgargouhhw_while_leklhosgal_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,tgargouhhw/while/leklhosgal/ReadVariableOp_2▄
!tgargouhhw/while/leklhosgal/mul_4Mul4tgargouhhw/while/leklhosgal/ReadVariableOp_2:value:0%tgargouhhw/while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/mul_4╘
!tgargouhhw/while/leklhosgal/add_4AddV2*tgargouhhw/while/leklhosgal/split:output:3%tgargouhhw/while/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/add_4▓
%tgargouhhw/while/leklhosgal/Sigmoid_2Sigmoid%tgargouhhw/while/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2'
%tgargouhhw/while/leklhosgal/Sigmoid_2й
"tgargouhhw/while/leklhosgal/Tanh_1Tanh%tgargouhhw/while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2$
"tgargouhhw/while/leklhosgal/Tanh_1╥
!tgargouhhw/while/leklhosgal/mul_5Mul)tgargouhhw/while/leklhosgal/Sigmoid_2:y:0&tgargouhhw/while/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!tgargouhhw/while/leklhosgal/mul_5Х
5tgargouhhw/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemtgargouhhw_while_placeholder_1tgargouhhw_while_placeholder%tgargouhhw/while/leklhosgal/mul_5:z:0*
_output_shapes
: *
element_dtype027
5tgargouhhw/while/TensorArrayV2Write/TensorListSetItemr
tgargouhhw/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
tgargouhhw/while/add/yХ
tgargouhhw/while/addAddV2tgargouhhw_while_placeholdertgargouhhw/while/add/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/while/addv
tgargouhhw/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
tgargouhhw/while/add_1/yн
tgargouhhw/while/add_1AddV2.tgargouhhw_while_tgargouhhw_while_loop_counter!tgargouhhw/while/add_1/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/while/add_1й
tgargouhhw/while/IdentityIdentitytgargouhhw/while/add_1:z:03^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
tgargouhhw/while/Identity╟
tgargouhhw/while/Identity_1Identity4tgargouhhw_while_tgargouhhw_while_maximum_iterations3^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
tgargouhhw/while/Identity_1л
tgargouhhw/while/Identity_2Identitytgargouhhw/while/add:z:03^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
tgargouhhw/while/Identity_2╪
tgargouhhw/while/Identity_3IdentityEtgargouhhw/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
tgargouhhw/while/Identity_3╔
tgargouhhw/while/Identity_4Identity%tgargouhhw/while/leklhosgal/mul_5:z:03^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
tgargouhhw/while/Identity_4╔
tgargouhhw/while/Identity_5Identity%tgargouhhw/while/leklhosgal/add_3:z:03^tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2^tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp4^tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp+^tgargouhhw/while/leklhosgal/ReadVariableOp-^tgargouhhw/while/leklhosgal/ReadVariableOp_1-^tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
tgargouhhw/while/Identity_5"?
tgargouhhw_while_identity"tgargouhhw/while/Identity:output:0"C
tgargouhhw_while_identity_1$tgargouhhw/while/Identity_1:output:0"C
tgargouhhw_while_identity_2$tgargouhhw/while/Identity_2:output:0"C
tgargouhhw_while_identity_3$tgargouhhw/while/Identity_3:output:0"C
tgargouhhw_while_identity_4$tgargouhhw/while/Identity_4:output:0"C
tgargouhhw_while_identity_5$tgargouhhw/while/Identity_5:output:0"|
;tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource=tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource_0"~
<tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource>tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource_0"z
:tgargouhhw_while_leklhosgal_matmul_readvariableop_resource<tgargouhhw_while_leklhosgal_matmul_readvariableop_resource_0"p
5tgargouhhw_while_leklhosgal_readvariableop_1_resource7tgargouhhw_while_leklhosgal_readvariableop_1_resource_0"p
5tgargouhhw_while_leklhosgal_readvariableop_2_resource7tgargouhhw_while_leklhosgal_readvariableop_2_resource_0"l
3tgargouhhw_while_leklhosgal_readvariableop_resource5tgargouhhw_while_leklhosgal_readvariableop_resource_0"╘
gtgargouhhw_while_tensorarrayv2read_tensorlistgetitem_tgargouhhw_tensorarrayunstack_tensorlistfromtensoritgargouhhw_while_tensorarrayv2read_tensorlistgetitem_tgargouhhw_tensorarrayunstack_tensorlistfromtensor_0"\
+tgargouhhw_while_tgargouhhw_strided_slice_1-tgargouhhw_while_tgargouhhw_strided_slice_1_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2f
1tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp1tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp2j
3tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp3tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp2X
*tgargouhhw/while/leklhosgal/ReadVariableOp*tgargouhhw/while/leklhosgal/ReadVariableOp2\
,tgargouhhw/while/leklhosgal/ReadVariableOp_1,tgargouhhw/while/leklhosgal/ReadVariableOp_12\
,tgargouhhw/while/leklhosgal/ReadVariableOp_2,tgargouhhw/while/leklhosgal/ReadVariableOp_2: 
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
+__inference_gfpcpbbmvi_layer_call_fn_360620

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
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_3554672
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
while_cond_359937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_359937___redundant_placeholder04
0while_while_cond_359937___redundant_placeholder14
0while_while_cond_359937___redundant_placeholder24
0while_while_cond_359937___redundant_placeholder34
0while_while_cond_359937___redundant_placeholder44
0while_while_cond_359937___redundant_placeholder54
0while_while_cond_359937___redundant_placeholder6
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
█Ж
О
'sequential_tgargouhhw_while_body_355086H
Dsequential_tgargouhhw_while_sequential_tgargouhhw_while_loop_counterN
Jsequential_tgargouhhw_while_sequential_tgargouhhw_while_maximum_iterations+
'sequential_tgargouhhw_while_placeholder-
)sequential_tgargouhhw_while_placeholder_1-
)sequential_tgargouhhw_while_placeholder_2-
)sequential_tgargouhhw_while_placeholder_3G
Csequential_tgargouhhw_while_sequential_tgargouhhw_strided_slice_1_0Г
sequential_tgargouhhw_while_tensorarrayv2read_tensorlistgetitem_sequential_tgargouhhw_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_tgargouhhw_while_leklhosgal_matmul_readvariableop_resource_0:	 А\
Isequential_tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource_0:	 АW
Hsequential_tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource_0:	АN
@sequential_tgargouhhw_while_leklhosgal_readvariableop_resource_0: P
Bsequential_tgargouhhw_while_leklhosgal_readvariableop_1_resource_0: P
Bsequential_tgargouhhw_while_leklhosgal_readvariableop_2_resource_0: (
$sequential_tgargouhhw_while_identity*
&sequential_tgargouhhw_while_identity_1*
&sequential_tgargouhhw_while_identity_2*
&sequential_tgargouhhw_while_identity_3*
&sequential_tgargouhhw_while_identity_4*
&sequential_tgargouhhw_while_identity_5E
Asequential_tgargouhhw_while_sequential_tgargouhhw_strided_slice_1Б
}sequential_tgargouhhw_while_tensorarrayv2read_tensorlistgetitem_sequential_tgargouhhw_tensorarrayunstack_tensorlistfromtensorX
Esequential_tgargouhhw_while_leklhosgal_matmul_readvariableop_resource:	 АZ
Gsequential_tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource:	 АU
Fsequential_tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource:	АL
>sequential_tgargouhhw_while_leklhosgal_readvariableop_resource: N
@sequential_tgargouhhw_while_leklhosgal_readvariableop_1_resource: N
@sequential_tgargouhhw_while_leklhosgal_readvariableop_2_resource: Ив=sequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOpв<sequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOpв>sequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOpв5sequential/tgargouhhw/while/leklhosgal/ReadVariableOpв7sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_1в7sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_2я
Msequential/tgargouhhw/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2O
Msequential/tgargouhhw/while/TensorArrayV2Read/TensorListGetItem/element_shape╫
?sequential/tgargouhhw/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_tgargouhhw_while_tensorarrayv2read_tensorlistgetitem_sequential_tgargouhhw_tensorarrayunstack_tensorlistfromtensor_0'sequential_tgargouhhw_while_placeholderVsequential/tgargouhhw/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype02A
?sequential/tgargouhhw/while/TensorArrayV2Read/TensorListGetItemЕ
<sequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOpReadVariableOpGsequential_tgargouhhw_while_leklhosgal_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02>
<sequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOpй
-sequential/tgargouhhw/while/leklhosgal/MatMulMatMulFsequential/tgargouhhw/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2/
-sequential/tgargouhhw/while/leklhosgal/MatMulЛ
>sequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOpReadVariableOpIsequential_tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02@
>sequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOpТ
/sequential/tgargouhhw/while/leklhosgal/MatMul_1MatMul)sequential_tgargouhhw_while_placeholder_2Fsequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А21
/sequential/tgargouhhw/while/leklhosgal/MatMul_1И
*sequential/tgargouhhw/while/leklhosgal/addAddV27sequential/tgargouhhw/while/leklhosgal/MatMul:product:09sequential/tgargouhhw/while/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2,
*sequential/tgargouhhw/while/leklhosgal/addД
=sequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOpReadVariableOpHsequential_tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOpХ
.sequential/tgargouhhw/while/leklhosgal/BiasAddBiasAdd.sequential/tgargouhhw/while/leklhosgal/add:z:0Esequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А20
.sequential/tgargouhhw/while/leklhosgal/BiasAdd▓
6sequential/tgargouhhw/while/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/tgargouhhw/while/leklhosgal/split/split_dim█
,sequential/tgargouhhw/while/leklhosgal/splitSplit?sequential/tgargouhhw/while/leklhosgal/split/split_dim:output:07sequential/tgargouhhw/while/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2.
,sequential/tgargouhhw/while/leklhosgal/splitы
5sequential/tgargouhhw/while/leklhosgal/ReadVariableOpReadVariableOp@sequential_tgargouhhw_while_leklhosgal_readvariableop_resource_0*
_output_shapes
: *
dtype027
5sequential/tgargouhhw/while/leklhosgal/ReadVariableOp√
*sequential/tgargouhhw/while/leklhosgal/mulMul=sequential/tgargouhhw/while/leklhosgal/ReadVariableOp:value:0)sequential_tgargouhhw_while_placeholder_3*
T0*'
_output_shapes
:          2,
*sequential/tgargouhhw/while/leklhosgal/mul■
,sequential/tgargouhhw/while/leklhosgal/add_1AddV25sequential/tgargouhhw/while/leklhosgal/split:output:0.sequential/tgargouhhw/while/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2.
,sequential/tgargouhhw/while/leklhosgal/add_1╧
.sequential/tgargouhhw/while/leklhosgal/SigmoidSigmoid0sequential/tgargouhhw/while/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          20
.sequential/tgargouhhw/while/leklhosgal/Sigmoidё
7sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_1ReadVariableOpBsequential_tgargouhhw_while_leklhosgal_readvariableop_1_resource_0*
_output_shapes
: *
dtype029
7sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_1Б
,sequential/tgargouhhw/while/leklhosgal/mul_1Mul?sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_1:value:0)sequential_tgargouhhw_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/tgargouhhw/while/leklhosgal/mul_1А
,sequential/tgargouhhw/while/leklhosgal/add_2AddV25sequential/tgargouhhw/while/leklhosgal/split:output:10sequential/tgargouhhw/while/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2.
,sequential/tgargouhhw/while/leklhosgal/add_2╙
0sequential/tgargouhhw/while/leklhosgal/Sigmoid_1Sigmoid0sequential/tgargouhhw/while/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          22
0sequential/tgargouhhw/while/leklhosgal/Sigmoid_1Ў
,sequential/tgargouhhw/while/leklhosgal/mul_2Mul4sequential/tgargouhhw/while/leklhosgal/Sigmoid_1:y:0)sequential_tgargouhhw_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/tgargouhhw/while/leklhosgal/mul_2╦
+sequential/tgargouhhw/while/leklhosgal/TanhTanh5sequential/tgargouhhw/while/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2-
+sequential/tgargouhhw/while/leklhosgal/Tanh·
,sequential/tgargouhhw/while/leklhosgal/mul_3Mul2sequential/tgargouhhw/while/leklhosgal/Sigmoid:y:0/sequential/tgargouhhw/while/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2.
,sequential/tgargouhhw/while/leklhosgal/mul_3√
,sequential/tgargouhhw/while/leklhosgal/add_3AddV20sequential/tgargouhhw/while/leklhosgal/mul_2:z:00sequential/tgargouhhw/while/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/tgargouhhw/while/leklhosgal/add_3ё
7sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_2ReadVariableOpBsequential_tgargouhhw_while_leklhosgal_readvariableop_2_resource_0*
_output_shapes
: *
dtype029
7sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_2И
,sequential/tgargouhhw/while/leklhosgal/mul_4Mul?sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_2:value:00sequential/tgargouhhw/while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/tgargouhhw/while/leklhosgal/mul_4А
,sequential/tgargouhhw/while/leklhosgal/add_4AddV25sequential/tgargouhhw/while/leklhosgal/split:output:30sequential/tgargouhhw/while/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2.
,sequential/tgargouhhw/while/leklhosgal/add_4╙
0sequential/tgargouhhw/while/leklhosgal/Sigmoid_2Sigmoid0sequential/tgargouhhw/while/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          22
0sequential/tgargouhhw/while/leklhosgal/Sigmoid_2╩
-sequential/tgargouhhw/while/leklhosgal/Tanh_1Tanh0sequential/tgargouhhw/while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2/
-sequential/tgargouhhw/while/leklhosgal/Tanh_1■
,sequential/tgargouhhw/while/leklhosgal/mul_5Mul4sequential/tgargouhhw/while/leklhosgal/Sigmoid_2:y:01sequential/tgargouhhw/while/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2.
,sequential/tgargouhhw/while/leklhosgal/mul_5╠
@sequential/tgargouhhw/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_tgargouhhw_while_placeholder_1'sequential_tgargouhhw_while_placeholder0sequential/tgargouhhw/while/leklhosgal/mul_5:z:0*
_output_shapes
: *
element_dtype02B
@sequential/tgargouhhw/while/TensorArrayV2Write/TensorListSetItemИ
!sequential/tgargouhhw/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/tgargouhhw/while/add/y┴
sequential/tgargouhhw/while/addAddV2'sequential_tgargouhhw_while_placeholder*sequential/tgargouhhw/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/tgargouhhw/while/addМ
#sequential/tgargouhhw/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/tgargouhhw/while/add_1/yф
!sequential/tgargouhhw/while/add_1AddV2Dsequential_tgargouhhw_while_sequential_tgargouhhw_while_loop_counter,sequential/tgargouhhw/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/tgargouhhw/while/add_1М
$sequential/tgargouhhw/while/IdentityIdentity%sequential/tgargouhhw/while/add_1:z:0>^sequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp=^sequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp?^sequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp6^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp8^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_18^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2&
$sequential/tgargouhhw/while/Identity╡
&sequential/tgargouhhw/while/Identity_1IdentityJsequential_tgargouhhw_while_sequential_tgargouhhw_while_maximum_iterations>^sequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp=^sequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp?^sequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp6^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp8^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_18^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/tgargouhhw/while/Identity_1О
&sequential/tgargouhhw/while/Identity_2Identity#sequential/tgargouhhw/while/add:z:0>^sequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp=^sequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp?^sequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp6^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp8^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_18^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/tgargouhhw/while/Identity_2╗
&sequential/tgargouhhw/while/Identity_3IdentityPsequential/tgargouhhw/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp=^sequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp?^sequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp6^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp8^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_18^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/tgargouhhw/while/Identity_3м
&sequential/tgargouhhw/while/Identity_4Identity0sequential/tgargouhhw/while/leklhosgal/mul_5:z:0>^sequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp=^sequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp?^sequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp6^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp8^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_18^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/tgargouhhw/while/Identity_4м
&sequential/tgargouhhw/while/Identity_5Identity0sequential/tgargouhhw/while/leklhosgal/add_3:z:0>^sequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp=^sequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp?^sequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp6^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp8^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_18^sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/tgargouhhw/while/Identity_5"U
$sequential_tgargouhhw_while_identity-sequential/tgargouhhw/while/Identity:output:0"Y
&sequential_tgargouhhw_while_identity_1/sequential/tgargouhhw/while/Identity_1:output:0"Y
&sequential_tgargouhhw_while_identity_2/sequential/tgargouhhw/while/Identity_2:output:0"Y
&sequential_tgargouhhw_while_identity_3/sequential/tgargouhhw/while/Identity_3:output:0"Y
&sequential_tgargouhhw_while_identity_4/sequential/tgargouhhw/while/Identity_4:output:0"Y
&sequential_tgargouhhw_while_identity_5/sequential/tgargouhhw/while/Identity_5:output:0"Т
Fsequential_tgargouhhw_while_leklhosgal_biasadd_readvariableop_resourceHsequential_tgargouhhw_while_leklhosgal_biasadd_readvariableop_resource_0"Ф
Gsequential_tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resourceIsequential_tgargouhhw_while_leklhosgal_matmul_1_readvariableop_resource_0"Р
Esequential_tgargouhhw_while_leklhosgal_matmul_readvariableop_resourceGsequential_tgargouhhw_while_leklhosgal_matmul_readvariableop_resource_0"Ж
@sequential_tgargouhhw_while_leklhosgal_readvariableop_1_resourceBsequential_tgargouhhw_while_leklhosgal_readvariableop_1_resource_0"Ж
@sequential_tgargouhhw_while_leklhosgal_readvariableop_2_resourceBsequential_tgargouhhw_while_leklhosgal_readvariableop_2_resource_0"В
>sequential_tgargouhhw_while_leklhosgal_readvariableop_resource@sequential_tgargouhhw_while_leklhosgal_readvariableop_resource_0"И
Asequential_tgargouhhw_while_sequential_tgargouhhw_strided_slice_1Csequential_tgargouhhw_while_sequential_tgargouhhw_strided_slice_1_0"А
}sequential_tgargouhhw_while_tensorarrayv2read_tensorlistgetitem_sequential_tgargouhhw_tensorarrayunstack_tensorlistfromtensorsequential_tgargouhhw_while_tensorarrayv2read_tensorlistgetitem_sequential_tgargouhhw_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2~
=sequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp=sequential/tgargouhhw/while/leklhosgal/BiasAdd/ReadVariableOp2|
<sequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp<sequential/tgargouhhw/while/leklhosgal/MatMul/ReadVariableOp2А
>sequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp>sequential/tgargouhhw/while/leklhosgal/MatMul_1/ReadVariableOp2n
5sequential/tgargouhhw/while/leklhosgal/ReadVariableOp5sequential/tgargouhhw/while/leklhosgal/ReadVariableOp2r
7sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_17sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_12r
7sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_27sequential/tgargouhhw/while/leklhosgal/ReadVariableOp_2: 
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
ЭF
у
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_355643

inputs$
gfpcpbbmvi_355544:	А$
gfpcpbbmvi_355546:	 А 
gfpcpbbmvi_355548:	А
gfpcpbbmvi_355550: 
gfpcpbbmvi_355552: 
gfpcpbbmvi_355554: 
identityИв"gfpcpbbmvi/StatefulPartitionedCallвwhileD
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
"gfpcpbbmvi/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0gfpcpbbmvi_355544gfpcpbbmvi_355546gfpcpbbmvi_355548gfpcpbbmvi_355550gfpcpbbmvi_355552gfpcpbbmvi_355554*
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
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_3554672$
"gfpcpbbmvi/StatefulPartitionedCallП
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gfpcpbbmvi_355544gfpcpbbmvi_355546gfpcpbbmvi_355548gfpcpbbmvi_355550gfpcpbbmvi_355552gfpcpbbmvi_355554*
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
while_body_355563*
condR
while_cond_355562*Q
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
IdentityIdentitytranspose_1:y:0#^gfpcpbbmvi/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2H
"gfpcpbbmvi/StatefulPartitionedCall"gfpcpbbmvi/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
 
┐
+__inference_gfpcpbbmvi_layer_call_fn_360597

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
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_3552802
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
while_cond_358969
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_358969___redundant_placeholder04
0while_while_cond_358969___redundant_placeholder14
0while_while_cond_358969___redundant_placeholder24
0while_while_cond_358969___redundant_placeholder34
0while_while_cond_358969___redundant_placeholder44
0while_while_cond_358969___redundant_placeholder54
0while_while_cond_358969___redundant_placeholder6
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
while_cond_360297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_360297___redundant_placeholder04
0while_while_cond_360297___redundant_placeholder14
0while_while_cond_360297___redundant_placeholder24
0while_while_cond_360297___redundant_placeholder34
0while_while_cond_360297___redundant_placeholder44
0while_while_cond_360297___redundant_placeholder54
0while_while_cond_360297___redundant_placeholder6
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
╟)
┼
while_body_355563
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_gfpcpbbmvi_355587_0:	А,
while_gfpcpbbmvi_355589_0:	 А(
while_gfpcpbbmvi_355591_0:	А'
while_gfpcpbbmvi_355593_0: '
while_gfpcpbbmvi_355595_0: '
while_gfpcpbbmvi_355597_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_gfpcpbbmvi_355587:	А*
while_gfpcpbbmvi_355589:	 А&
while_gfpcpbbmvi_355591:	А%
while_gfpcpbbmvi_355593: %
while_gfpcpbbmvi_355595: %
while_gfpcpbbmvi_355597: Ив(while/gfpcpbbmvi/StatefulPartitionedCall├
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
(while/gfpcpbbmvi/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_gfpcpbbmvi_355587_0while_gfpcpbbmvi_355589_0while_gfpcpbbmvi_355591_0while_gfpcpbbmvi_355593_0while_gfpcpbbmvi_355595_0while_gfpcpbbmvi_355597_0*
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
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_3554672*
(while/gfpcpbbmvi/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gfpcpbbmvi/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/gfpcpbbmvi/StatefulPartitionedCall:output:1)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/gfpcpbbmvi/StatefulPartitionedCall:output:2)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5"4
while_gfpcpbbmvi_355587while_gfpcpbbmvi_355587_0"4
while_gfpcpbbmvi_355589while_gfpcpbbmvi_355589_0"4
while_gfpcpbbmvi_355591while_gfpcpbbmvi_355591_0"4
while_gfpcpbbmvi_355593while_gfpcpbbmvi_355593_0"4
while_gfpcpbbmvi_355595while_gfpcpbbmvi_355595_0"4
while_gfpcpbbmvi_355597while_gfpcpbbmvi_355597_0")
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
(while/gfpcpbbmvi/StatefulPartitionedCall(while/gfpcpbbmvi/StatefulPartitionedCall: 
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
Ц
Э
+__inference_sequential_layer_call_fn_357818

khvjuhjlxe
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
khvjuhjlxeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
F__inference_sequential_layer_call_and_return_conditional_losses_3577462
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
khvjuhjlxe
гh
Д
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_360399

inputs<
)leklhosgal_matmul_readvariableop_resource:	 А>
+leklhosgal_matmul_1_readvariableop_resource:	 А9
*leklhosgal_biasadd_readvariableop_resource:	А0
"leklhosgal_readvariableop_resource: 2
$leklhosgal_readvariableop_1_resource: 2
$leklhosgal_readvariableop_2_resource: 
identityИв!leklhosgal/BiasAdd/ReadVariableOpв leklhosgal/MatMul/ReadVariableOpв"leklhosgal/MatMul_1/ReadVariableOpвleklhosgal/ReadVariableOpвleklhosgal/ReadVariableOp_1вleklhosgal/ReadVariableOp_2вwhileD
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
 leklhosgal/MatMul/ReadVariableOpReadVariableOp)leklhosgal_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 leklhosgal/MatMul/ReadVariableOpз
leklhosgal/MatMulMatMulstrided_slice_2:output:0(leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul╡
"leklhosgal/MatMul_1/ReadVariableOpReadVariableOp+leklhosgal_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"leklhosgal/MatMul_1/ReadVariableOpг
leklhosgal/MatMul_1MatMulzeros:output:0*leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul_1Ш
leklhosgal/addAddV2leklhosgal/MatMul:product:0leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
leklhosgal/addо
!leklhosgal/BiasAdd/ReadVariableOpReadVariableOp*leklhosgal_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!leklhosgal/BiasAdd/ReadVariableOpе
leklhosgal/BiasAddBiasAddleklhosgal/add:z:0)leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/BiasAddz
leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
leklhosgal/split/split_dimы
leklhosgal/splitSplit#leklhosgal/split/split_dim:output:0leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
leklhosgal/splitХ
leklhosgal/ReadVariableOpReadVariableOp"leklhosgal_readvariableop_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOpО
leklhosgal/mulMul!leklhosgal/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mulО
leklhosgal/add_1AddV2leklhosgal/split:output:0leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_1{
leklhosgal/SigmoidSigmoidleklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/SigmoidЫ
leklhosgal/ReadVariableOp_1ReadVariableOp$leklhosgal_readvariableop_1_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_1Ф
leklhosgal/mul_1Mul#leklhosgal/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_1Р
leklhosgal/add_2AddV2leklhosgal/split:output:1leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_2
leklhosgal/Sigmoid_1Sigmoidleklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_1Й
leklhosgal/mul_2Mulleklhosgal/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_2w
leklhosgal/TanhTanhleklhosgal/split:output:2*
T0*'
_output_shapes
:          2
leklhosgal/TanhК
leklhosgal/mul_3Mulleklhosgal/Sigmoid:y:0leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_3Л
leklhosgal/add_3AddV2leklhosgal/mul_2:z:0leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_3Ы
leklhosgal/ReadVariableOp_2ReadVariableOp$leklhosgal_readvariableop_2_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_2Ш
leklhosgal/mul_4Mul#leklhosgal/ReadVariableOp_2:value:0leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_4Р
leklhosgal/add_4AddV2leklhosgal/split:output:3leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_4
leklhosgal/Sigmoid_2Sigmoidleklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_2v
leklhosgal/Tanh_1Tanhleklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Tanh_1О
leklhosgal/mul_5Mulleklhosgal/Sigmoid_2:y:0leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)leklhosgal_matmul_readvariableop_resource+leklhosgal_matmul_1_readvariableop_resource*leklhosgal_biasadd_readvariableop_resource"leklhosgal_readvariableop_resource$leklhosgal_readvariableop_1_resource$leklhosgal_readvariableop_2_resource*
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
while_body_360298*
condR
while_cond_360297*Q
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
IdentityIdentitystrided_slice_3:output:0"^leklhosgal/BiasAdd/ReadVariableOp!^leklhosgal/MatMul/ReadVariableOp#^leklhosgal/MatMul_1/ReadVariableOp^leklhosgal/ReadVariableOp^leklhosgal/ReadVariableOp_1^leklhosgal/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!leklhosgal/BiasAdd/ReadVariableOp!leklhosgal/BiasAdd/ReadVariableOp2D
 leklhosgal/MatMul/ReadVariableOp leklhosgal/MatMul/ReadVariableOp2H
"leklhosgal/MatMul_1/ReadVariableOp"leklhosgal/MatMul_1/ReadVariableOp26
leklhosgal/ReadVariableOpleklhosgal/ReadVariableOp2:
leklhosgal/ReadVariableOp_1leklhosgal/ReadVariableOp_12:
leklhosgal/ReadVariableOp_2leklhosgal/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
Юh
Д
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_356953

inputs<
)gfpcpbbmvi_matmul_readvariableop_resource:	А>
+gfpcpbbmvi_matmul_1_readvariableop_resource:	 А9
*gfpcpbbmvi_biasadd_readvariableop_resource:	А0
"gfpcpbbmvi_readvariableop_resource: 2
$gfpcpbbmvi_readvariableop_1_resource: 2
$gfpcpbbmvi_readvariableop_2_resource: 
identityИв!gfpcpbbmvi/BiasAdd/ReadVariableOpв gfpcpbbmvi/MatMul/ReadVariableOpв"gfpcpbbmvi/MatMul_1/ReadVariableOpвgfpcpbbmvi/ReadVariableOpвgfpcpbbmvi/ReadVariableOp_1вgfpcpbbmvi/ReadVariableOp_2вwhileD
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
 gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp)gfpcpbbmvi_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 gfpcpbbmvi/MatMul/ReadVariableOpз
gfpcpbbmvi/MatMulMatMulstrided_slice_2:output:0(gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul╡
"gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp+gfpcpbbmvi_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"gfpcpbbmvi/MatMul_1/ReadVariableOpг
gfpcpbbmvi/MatMul_1MatMulzeros:output:0*gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul_1Ш
gfpcpbbmvi/addAddV2gfpcpbbmvi/MatMul:product:0gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/addо
!gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp*gfpcpbbmvi_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!gfpcpbbmvi/BiasAdd/ReadVariableOpе
gfpcpbbmvi/BiasAddBiasAddgfpcpbbmvi/add:z:0)gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/BiasAddz
gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
gfpcpbbmvi/split/split_dimы
gfpcpbbmvi/splitSplit#gfpcpbbmvi/split/split_dim:output:0gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
gfpcpbbmvi/splitХ
gfpcpbbmvi/ReadVariableOpReadVariableOp"gfpcpbbmvi_readvariableop_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOpО
gfpcpbbmvi/mulMul!gfpcpbbmvi/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mulО
gfpcpbbmvi/add_1AddV2gfpcpbbmvi/split:output:0gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_1{
gfpcpbbmvi/SigmoidSigmoidgfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/SigmoidЫ
gfpcpbbmvi/ReadVariableOp_1ReadVariableOp$gfpcpbbmvi_readvariableop_1_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_1Ф
gfpcpbbmvi/mul_1Mul#gfpcpbbmvi/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_1Р
gfpcpbbmvi/add_2AddV2gfpcpbbmvi/split:output:1gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_2
gfpcpbbmvi/Sigmoid_1Sigmoidgfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_1Й
gfpcpbbmvi/mul_2Mulgfpcpbbmvi/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_2w
gfpcpbbmvi/TanhTanhgfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
gfpcpbbmvi/TanhК
gfpcpbbmvi/mul_3Mulgfpcpbbmvi/Sigmoid:y:0gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_3Л
gfpcpbbmvi/add_3AddV2gfpcpbbmvi/mul_2:z:0gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_3Ы
gfpcpbbmvi/ReadVariableOp_2ReadVariableOp$gfpcpbbmvi_readvariableop_2_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_2Ш
gfpcpbbmvi/mul_4Mul#gfpcpbbmvi/ReadVariableOp_2:value:0gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_4Р
gfpcpbbmvi/add_4AddV2gfpcpbbmvi/split:output:3gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_4
gfpcpbbmvi/Sigmoid_2Sigmoidgfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_2v
gfpcpbbmvi/Tanh_1Tanhgfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Tanh_1О
gfpcpbbmvi/mul_5Mulgfpcpbbmvi/Sigmoid_2:y:0gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gfpcpbbmvi_matmul_readvariableop_resource+gfpcpbbmvi_matmul_1_readvariableop_resource*gfpcpbbmvi_biasadd_readvariableop_resource"gfpcpbbmvi_readvariableop_resource$gfpcpbbmvi_readvariableop_1_resource$gfpcpbbmvi_readvariableop_2_resource*
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
while_body_356852*
condR
while_cond_356851*Q
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
IdentityIdentitytranspose_1:y:0"^gfpcpbbmvi/BiasAdd/ReadVariableOp!^gfpcpbbmvi/MatMul/ReadVariableOp#^gfpcpbbmvi/MatMul_1/ReadVariableOp^gfpcpbbmvi/ReadVariableOp^gfpcpbbmvi/ReadVariableOp_1^gfpcpbbmvi/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!gfpcpbbmvi/BiasAdd/ReadVariableOp!gfpcpbbmvi/BiasAdd/ReadVariableOp2D
 gfpcpbbmvi/MatMul/ReadVariableOp gfpcpbbmvi/MatMul/ReadVariableOp2H
"gfpcpbbmvi/MatMul_1/ReadVariableOp"gfpcpbbmvi/MatMul_1/ReadVariableOp26
gfpcpbbmvi/ReadVariableOpgfpcpbbmvi/ReadVariableOp2:
gfpcpbbmvi/ReadVariableOp_1gfpcpbbmvi/ReadVariableOp_12:
gfpcpbbmvi/ReadVariableOp_2gfpcpbbmvi/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Р
Г
eluvehoiqy_while_cond_3580652
.eluvehoiqy_while_eluvehoiqy_while_loop_counter8
4eluvehoiqy_while_eluvehoiqy_while_maximum_iterations 
eluvehoiqy_while_placeholder"
eluvehoiqy_while_placeholder_1"
eluvehoiqy_while_placeholder_2"
eluvehoiqy_while_placeholder_34
0eluvehoiqy_while_less_eluvehoiqy_strided_slice_1J
Feluvehoiqy_while_eluvehoiqy_while_cond_358065___redundant_placeholder0J
Feluvehoiqy_while_eluvehoiqy_while_cond_358065___redundant_placeholder1J
Feluvehoiqy_while_eluvehoiqy_while_cond_358065___redundant_placeholder2J
Feluvehoiqy_while_eluvehoiqy_while_cond_358065___redundant_placeholder3J
Feluvehoiqy_while_eluvehoiqy_while_cond_358065___redundant_placeholder4J
Feluvehoiqy_while_eluvehoiqy_while_cond_358065___redundant_placeholder5J
Feluvehoiqy_while_eluvehoiqy_while_cond_358065___redundant_placeholder6
eluvehoiqy_while_identity
з
eluvehoiqy/while/LessLesseluvehoiqy_while_placeholder0eluvehoiqy_while_less_eluvehoiqy_strided_slice_1*
T0*
_output_shapes
: 2
eluvehoiqy/while/Less~
eluvehoiqy/while/IdentityIdentityeluvehoiqy/while/Less:z:0*
T0
*
_output_shapes
: 2
eluvehoiqy/while/Identity"?
eluvehoiqy_while_identity"eluvehoiqy/while/Identity:output:0*(
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
Ъп
Ж
"__inference__traced_restore_361021
file_prefix8
"assignvariableop_jjfezsyjwn_kernel:0
"assignvariableop_1_jjfezsyjwn_bias:6
$assignvariableop_2_jhbguimgvq_kernel: 0
"assignvariableop_3_jhbguimgvq_bias:)
assignvariableop_4_rmsprop_iter:	 *
 assignvariableop_5_rmsprop_decay: 2
(assignvariableop_6_rmsprop_learning_rate: -
#assignvariableop_7_rmsprop_momentum: (
assignvariableop_8_rmsprop_rho: B
/assignvariableop_9_eluvehoiqy_gfpcpbbmvi_kernel:	АM
:assignvariableop_10_eluvehoiqy_gfpcpbbmvi_recurrent_kernel:	 А=
.assignvariableop_11_eluvehoiqy_gfpcpbbmvi_bias:	АS
Eassignvariableop_12_eluvehoiqy_gfpcpbbmvi_input_gate_peephole_weights: T
Fassignvariableop_13_eluvehoiqy_gfpcpbbmvi_forget_gate_peephole_weights: T
Fassignvariableop_14_eluvehoiqy_gfpcpbbmvi_output_gate_peephole_weights: C
0assignvariableop_15_tgargouhhw_leklhosgal_kernel:	 АM
:assignvariableop_16_tgargouhhw_leklhosgal_recurrent_kernel:	 А=
.assignvariableop_17_tgargouhhw_leklhosgal_bias:	АS
Eassignvariableop_18_tgargouhhw_leklhosgal_input_gate_peephole_weights: T
Fassignvariableop_19_tgargouhhw_leklhosgal_forget_gate_peephole_weights: T
Fassignvariableop_20_tgargouhhw_leklhosgal_output_gate_peephole_weights: #
assignvariableop_21_total: #
assignvariableop_22_count: G
1assignvariableop_23_rmsprop_jjfezsyjwn_kernel_rms:=
/assignvariableop_24_rmsprop_jjfezsyjwn_bias_rms:C
1assignvariableop_25_rmsprop_jhbguimgvq_kernel_rms: =
/assignvariableop_26_rmsprop_jhbguimgvq_bias_rms:O
<assignvariableop_27_rmsprop_eluvehoiqy_gfpcpbbmvi_kernel_rms:	АY
Fassignvariableop_28_rmsprop_eluvehoiqy_gfpcpbbmvi_recurrent_kernel_rms:	 АI
:assignvariableop_29_rmsprop_eluvehoiqy_gfpcpbbmvi_bias_rms:	А_
Qassignvariableop_30_rmsprop_eluvehoiqy_gfpcpbbmvi_input_gate_peephole_weights_rms: `
Rassignvariableop_31_rmsprop_eluvehoiqy_gfpcpbbmvi_forget_gate_peephole_weights_rms: `
Rassignvariableop_32_rmsprop_eluvehoiqy_gfpcpbbmvi_output_gate_peephole_weights_rms: O
<assignvariableop_33_rmsprop_tgargouhhw_leklhosgal_kernel_rms:	 АY
Fassignvariableop_34_rmsprop_tgargouhhw_leklhosgal_recurrent_kernel_rms:	 АI
:assignvariableop_35_rmsprop_tgargouhhw_leklhosgal_bias_rms:	А_
Qassignvariableop_36_rmsprop_tgargouhhw_leklhosgal_input_gate_peephole_weights_rms: `
Rassignvariableop_37_rmsprop_tgargouhhw_leklhosgal_forget_gate_peephole_weights_rms: `
Rassignvariableop_38_rmsprop_tgargouhhw_leklhosgal_output_gate_peephole_weights_rms: 
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
AssignVariableOpAssignVariableOp"assignvariableop_jjfezsyjwn_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_jjfezsyjwn_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_jhbguimgvq_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_jhbguimgvq_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp/assignvariableop_9_eluvehoiqy_gfpcpbbmvi_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10┬
AssignVariableOp_10AssignVariableOp:assignvariableop_10_eluvehoiqy_gfpcpbbmvi_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11╢
AssignVariableOp_11AssignVariableOp.assignvariableop_11_eluvehoiqy_gfpcpbbmvi_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12═
AssignVariableOp_12AssignVariableOpEassignvariableop_12_eluvehoiqy_gfpcpbbmvi_input_gate_peephole_weightsIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13╬
AssignVariableOp_13AssignVariableOpFassignvariableop_13_eluvehoiqy_gfpcpbbmvi_forget_gate_peephole_weightsIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14╬
AssignVariableOp_14AssignVariableOpFassignvariableop_14_eluvehoiqy_gfpcpbbmvi_output_gate_peephole_weightsIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15╕
AssignVariableOp_15AssignVariableOp0assignvariableop_15_tgargouhhw_leklhosgal_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16┬
AssignVariableOp_16AssignVariableOp:assignvariableop_16_tgargouhhw_leklhosgal_recurrent_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17╢
AssignVariableOp_17AssignVariableOp.assignvariableop_17_tgargouhhw_leklhosgal_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18═
AssignVariableOp_18AssignVariableOpEassignvariableop_18_tgargouhhw_leklhosgal_input_gate_peephole_weightsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19╬
AssignVariableOp_19AssignVariableOpFassignvariableop_19_tgargouhhw_leklhosgal_forget_gate_peephole_weightsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╬
AssignVariableOp_20AssignVariableOpFassignvariableop_20_tgargouhhw_leklhosgal_output_gate_peephole_weightsIdentity_20:output:0"/device:CPU:0*
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
AssignVariableOp_23AssignVariableOp1assignvariableop_23_rmsprop_jjfezsyjwn_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24╖
AssignVariableOp_24AssignVariableOp/assignvariableop_24_rmsprop_jjfezsyjwn_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25╣
AssignVariableOp_25AssignVariableOp1assignvariableop_25_rmsprop_jhbguimgvq_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╖
AssignVariableOp_26AssignVariableOp/assignvariableop_26_rmsprop_jhbguimgvq_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27─
AssignVariableOp_27AssignVariableOp<assignvariableop_27_rmsprop_eluvehoiqy_gfpcpbbmvi_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28╬
AssignVariableOp_28AssignVariableOpFassignvariableop_28_rmsprop_eluvehoiqy_gfpcpbbmvi_recurrent_kernel_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29┬
AssignVariableOp_29AssignVariableOp:assignvariableop_29_rmsprop_eluvehoiqy_gfpcpbbmvi_bias_rmsIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30┘
AssignVariableOp_30AssignVariableOpQassignvariableop_30_rmsprop_eluvehoiqy_gfpcpbbmvi_input_gate_peephole_weights_rmsIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31┌
AssignVariableOp_31AssignVariableOpRassignvariableop_31_rmsprop_eluvehoiqy_gfpcpbbmvi_forget_gate_peephole_weights_rmsIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32┌
AssignVariableOp_32AssignVariableOpRassignvariableop_32_rmsprop_eluvehoiqy_gfpcpbbmvi_output_gate_peephole_weights_rmsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33─
AssignVariableOp_33AssignVariableOp<assignvariableop_33_rmsprop_tgargouhhw_leklhosgal_kernel_rmsIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34╬
AssignVariableOp_34AssignVariableOpFassignvariableop_34_rmsprop_tgargouhhw_leklhosgal_recurrent_kernel_rmsIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35┬
AssignVariableOp_35AssignVariableOp:assignvariableop_35_rmsprop_tgargouhhw_leklhosgal_bias_rmsIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36┘
AssignVariableOp_36AssignVariableOpQassignvariableop_36_rmsprop_tgargouhhw_leklhosgal_input_gate_peephole_weights_rmsIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37┌
AssignVariableOp_37AssignVariableOpRassignvariableop_37_rmsprop_tgargouhhw_leklhosgal_forget_gate_peephole_weights_rmsIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38┌
AssignVariableOp_38AssignVariableOpRassignvariableop_38_rmsprop_tgargouhhw_leklhosgal_output_gate_peephole_weights_rmsIdentity_38:output:0"/device:CPU:0*
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
▀Y
Ж
while_body_359510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gfpcpbbmvi_matmul_readvariableop_resource_0:	АF
3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0:	 АA
2while_gfpcpbbmvi_biasadd_readvariableop_resource_0:	А8
*while_gfpcpbbmvi_readvariableop_resource_0: :
,while_gfpcpbbmvi_readvariableop_1_resource_0: :
,while_gfpcpbbmvi_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gfpcpbbmvi_matmul_readvariableop_resource:	АD
1while_gfpcpbbmvi_matmul_1_readvariableop_resource:	 А?
0while_gfpcpbbmvi_biasadd_readvariableop_resource:	А6
(while_gfpcpbbmvi_readvariableop_resource: 8
*while_gfpcpbbmvi_readvariableop_1_resource: 8
*while_gfpcpbbmvi_readvariableop_2_resource: Ив'while/gfpcpbbmvi/BiasAdd/ReadVariableOpв&while/gfpcpbbmvi/MatMul/ReadVariableOpв(while/gfpcpbbmvi/MatMul_1/ReadVariableOpвwhile/gfpcpbbmvi/ReadVariableOpв!while/gfpcpbbmvi/ReadVariableOp_1в!while/gfpcpbbmvi/ReadVariableOp_2├
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
&while/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp1while_gfpcpbbmvi_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/gfpcpbbmvi/MatMul/ReadVariableOp╤
while/gfpcpbbmvi/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul╔
(while/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp║
while/gfpcpbbmvi/MatMul_1MatMulwhile_placeholder_20while/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/MatMul_1░
while/gfpcpbbmvi/addAddV2!while/gfpcpbbmvi/MatMul:product:0#while/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/add┬
'while/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp2while_gfpcpbbmvi_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp╜
while/gfpcpbbmvi/BiasAddBiasAddwhile/gfpcpbbmvi/add:z:0/while/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/gfpcpbbmvi/BiasAddЖ
 while/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/gfpcpbbmvi/split/split_dimГ
while/gfpcpbbmvi/splitSplit)while/gfpcpbbmvi/split/split_dim:output:0!while/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/gfpcpbbmvi/splitй
while/gfpcpbbmvi/ReadVariableOpReadVariableOp*while_gfpcpbbmvi_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/gfpcpbbmvi/ReadVariableOpг
while/gfpcpbbmvi/mulMul'while/gfpcpbbmvi/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mulж
while/gfpcpbbmvi/add_1AddV2while/gfpcpbbmvi/split:output:0while/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_1Н
while/gfpcpbbmvi/SigmoidSigmoidwhile/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoidп
!while/gfpcpbbmvi/ReadVariableOp_1ReadVariableOp,while_gfpcpbbmvi_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_1й
while/gfpcpbbmvi/mul_1Mul)while/gfpcpbbmvi/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_1и
while/gfpcpbbmvi/add_2AddV2while/gfpcpbbmvi/split:output:1while/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_2С
while/gfpcpbbmvi/Sigmoid_1Sigmoidwhile/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_1Ю
while/gfpcpbbmvi/mul_2Mulwhile/gfpcpbbmvi/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_2Й
while/gfpcpbbmvi/TanhTanhwhile/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanhв
while/gfpcpbbmvi/mul_3Mulwhile/gfpcpbbmvi/Sigmoid:y:0while/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_3г
while/gfpcpbbmvi/add_3AddV2while/gfpcpbbmvi/mul_2:z:0while/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_3п
!while/gfpcpbbmvi/ReadVariableOp_2ReadVariableOp,while_gfpcpbbmvi_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/gfpcpbbmvi/ReadVariableOp_2░
while/gfpcpbbmvi/mul_4Mul)while/gfpcpbbmvi/ReadVariableOp_2:value:0while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_4и
while/gfpcpbbmvi/add_4AddV2while/gfpcpbbmvi/split:output:3while/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/add_4С
while/gfpcpbbmvi/Sigmoid_2Sigmoidwhile/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Sigmoid_2И
while/gfpcpbbmvi/Tanh_1Tanhwhile/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/Tanh_1ж
while/gfpcpbbmvi/mul_5Mulwhile/gfpcpbbmvi/Sigmoid_2:y:0while/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/gfpcpbbmvi/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gfpcpbbmvi/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/gfpcpbbmvi/mul_5:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/gfpcpbbmvi/add_3:z:0(^while/gfpcpbbmvi/BiasAdd/ReadVariableOp'^while/gfpcpbbmvi/MatMul/ReadVariableOp)^while/gfpcpbbmvi/MatMul_1/ReadVariableOp ^while/gfpcpbbmvi/ReadVariableOp"^while/gfpcpbbmvi/ReadVariableOp_1"^while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_gfpcpbbmvi_biasadd_readvariableop_resource2while_gfpcpbbmvi_biasadd_readvariableop_resource_0"h
1while_gfpcpbbmvi_matmul_1_readvariableop_resource3while_gfpcpbbmvi_matmul_1_readvariableop_resource_0"d
/while_gfpcpbbmvi_matmul_readvariableop_resource1while_gfpcpbbmvi_matmul_readvariableop_resource_0"Z
*while_gfpcpbbmvi_readvariableop_1_resource,while_gfpcpbbmvi_readvariableop_1_resource_0"Z
*while_gfpcpbbmvi_readvariableop_2_resource,while_gfpcpbbmvi_readvariableop_2_resource_0"V
(while_gfpcpbbmvi_readvariableop_resource*while_gfpcpbbmvi_readvariableop_resource_0")
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
'while/gfpcpbbmvi/BiasAdd/ReadVariableOp'while/gfpcpbbmvi/BiasAdd/ReadVariableOp2P
&while/gfpcpbbmvi/MatMul/ReadVariableOp&while/gfpcpbbmvi/MatMul/ReadVariableOp2T
(while/gfpcpbbmvi/MatMul_1/ReadVariableOp(while/gfpcpbbmvi/MatMul_1/ReadVariableOp2B
while/gfpcpbbmvi/ReadVariableOpwhile/gfpcpbbmvi/ReadVariableOp2F
!while/gfpcpbbmvi/ReadVariableOp_1!while/gfpcpbbmvi/ReadVariableOp_12F
!while/gfpcpbbmvi/ReadVariableOp_2!while/gfpcpbbmvi/ReadVariableOp_2: 
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
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_355467

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
▀Y
Ж
while_body_360298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_leklhosgal_matmul_readvariableop_resource_0:	 АF
3while_leklhosgal_matmul_1_readvariableop_resource_0:	 АA
2while_leklhosgal_biasadd_readvariableop_resource_0:	А8
*while_leklhosgal_readvariableop_resource_0: :
,while_leklhosgal_readvariableop_1_resource_0: :
,while_leklhosgal_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_leklhosgal_matmul_readvariableop_resource:	 АD
1while_leklhosgal_matmul_1_readvariableop_resource:	 А?
0while_leklhosgal_biasadd_readvariableop_resource:	А6
(while_leklhosgal_readvariableop_resource: 8
*while_leklhosgal_readvariableop_1_resource: 8
*while_leklhosgal_readvariableop_2_resource: Ив'while/leklhosgal/BiasAdd/ReadVariableOpв&while/leklhosgal/MatMul/ReadVariableOpв(while/leklhosgal/MatMul_1/ReadVariableOpвwhile/leklhosgal/ReadVariableOpв!while/leklhosgal/ReadVariableOp_1в!while/leklhosgal/ReadVariableOp_2├
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
&while/leklhosgal/MatMul/ReadVariableOpReadVariableOp1while_leklhosgal_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/leklhosgal/MatMul/ReadVariableOp╤
while/leklhosgal/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul╔
(while/leklhosgal/MatMul_1/ReadVariableOpReadVariableOp3while_leklhosgal_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/leklhosgal/MatMul_1/ReadVariableOp║
while/leklhosgal/MatMul_1MatMulwhile_placeholder_20while/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul_1░
while/leklhosgal/addAddV2!while/leklhosgal/MatMul:product:0#while/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/add┬
'while/leklhosgal/BiasAdd/ReadVariableOpReadVariableOp2while_leklhosgal_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/leklhosgal/BiasAdd/ReadVariableOp╜
while/leklhosgal/BiasAddBiasAddwhile/leklhosgal/add:z:0/while/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/BiasAddЖ
 while/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/leklhosgal/split/split_dimГ
while/leklhosgal/splitSplit)while/leklhosgal/split/split_dim:output:0!while/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/leklhosgal/splitй
while/leklhosgal/ReadVariableOpReadVariableOp*while_leklhosgal_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/leklhosgal/ReadVariableOpг
while/leklhosgal/mulMul'while/leklhosgal/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mulж
while/leklhosgal/add_1AddV2while/leklhosgal/split:output:0while/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_1Н
while/leklhosgal/SigmoidSigmoidwhile/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoidп
!while/leklhosgal/ReadVariableOp_1ReadVariableOp,while_leklhosgal_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_1й
while/leklhosgal/mul_1Mul)while/leklhosgal/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_1и
while/leklhosgal/add_2AddV2while/leklhosgal/split:output:1while/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_2С
while/leklhosgal/Sigmoid_1Sigmoidwhile/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_1Ю
while/leklhosgal/mul_2Mulwhile/leklhosgal/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_2Й
while/leklhosgal/TanhTanhwhile/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanhв
while/leklhosgal/mul_3Mulwhile/leklhosgal/Sigmoid:y:0while/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_3г
while/leklhosgal/add_3AddV2while/leklhosgal/mul_2:z:0while/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_3п
!while/leklhosgal/ReadVariableOp_2ReadVariableOp,while_leklhosgal_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_2░
while/leklhosgal/mul_4Mul)while/leklhosgal/ReadVariableOp_2:value:0while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_4и
while/leklhosgal/add_4AddV2while/leklhosgal/split:output:3while/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_4С
while/leklhosgal/Sigmoid_2Sigmoidwhile/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_2И
while/leklhosgal/Tanh_1Tanhwhile/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanh_1ж
while/leklhosgal/mul_5Mulwhile/leklhosgal/Sigmoid_2:y:0while/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/leklhosgal/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/leklhosgal/mul_5:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/leklhosgal/add_3:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"f
0while_leklhosgal_biasadd_readvariableop_resource2while_leklhosgal_biasadd_readvariableop_resource_0"h
1while_leklhosgal_matmul_1_readvariableop_resource3while_leklhosgal_matmul_1_readvariableop_resource_0"d
/while_leklhosgal_matmul_readvariableop_resource1while_leklhosgal_matmul_readvariableop_resource_0"Z
*while_leklhosgal_readvariableop_1_resource,while_leklhosgal_readvariableop_1_resource_0"Z
*while_leklhosgal_readvariableop_2_resource,while_leklhosgal_readvariableop_2_resource_0"V
(while_leklhosgal_readvariableop_resource*while_leklhosgal_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/leklhosgal/BiasAdd/ReadVariableOp'while/leklhosgal/BiasAdd/ReadVariableOp2P
&while/leklhosgal/MatMul/ReadVariableOp&while/leklhosgal/MatMul/ReadVariableOp2T
(while/leklhosgal/MatMul_1/ReadVariableOp(while/leklhosgal/MatMul_1/ReadVariableOp2B
while/leklhosgal/ReadVariableOpwhile/leklhosgal/ReadVariableOp2F
!while/leklhosgal/ReadVariableOp_1!while/leklhosgal/ReadVariableOp_12F
!while/leklhosgal/ReadVariableOp_2!while/leklhosgal/ReadVariableOp_2: 
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
F__inference_sequential_layer_call_and_return_conditional_losses_358753

inputsL
6jjfezsyjwn_conv1d_expanddims_1_readvariableop_resource:K
=jjfezsyjwn_squeeze_batch_dims_biasadd_readvariableop_resource:G
4eluvehoiqy_gfpcpbbmvi_matmul_readvariableop_resource:	АI
6eluvehoiqy_gfpcpbbmvi_matmul_1_readvariableop_resource:	 АD
5eluvehoiqy_gfpcpbbmvi_biasadd_readvariableop_resource:	А;
-eluvehoiqy_gfpcpbbmvi_readvariableop_resource: =
/eluvehoiqy_gfpcpbbmvi_readvariableop_1_resource: =
/eluvehoiqy_gfpcpbbmvi_readvariableop_2_resource: G
4tgargouhhw_leklhosgal_matmul_readvariableop_resource:	 АI
6tgargouhhw_leklhosgal_matmul_1_readvariableop_resource:	 АD
5tgargouhhw_leklhosgal_biasadd_readvariableop_resource:	А;
-tgargouhhw_leklhosgal_readvariableop_resource: =
/tgargouhhw_leklhosgal_readvariableop_1_resource: =
/tgargouhhw_leklhosgal_readvariableop_2_resource: ;
)jhbguimgvq_matmul_readvariableop_resource: 8
*jhbguimgvq_biasadd_readvariableop_resource:
identityИв,eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOpв+eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOpв-eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOpв$eluvehoiqy/gfpcpbbmvi/ReadVariableOpв&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1в&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2вeluvehoiqy/whileв!jhbguimgvq/BiasAdd/ReadVariableOpв jhbguimgvq/MatMul/ReadVariableOpв-jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOpв4jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOpв,tgargouhhw/leklhosgal/BiasAdd/ReadVariableOpв+tgargouhhw/leklhosgal/MatMul/ReadVariableOpв-tgargouhhw/leklhosgal/MatMul_1/ReadVariableOpв$tgargouhhw/leklhosgal/ReadVariableOpв&tgargouhhw/leklhosgal/ReadVariableOp_1в&tgargouhhw/leklhosgal/ReadVariableOp_2вtgargouhhw/whileП
 jjfezsyjwn/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2"
 jjfezsyjwn/conv1d/ExpandDims/dim╗
jjfezsyjwn/conv1d/ExpandDims
ExpandDimsinputs)jjfezsyjwn/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:         2
jjfezsyjwn/conv1d/ExpandDims┘
-jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6jjfezsyjwn_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOpК
"jjfezsyjwn/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"jjfezsyjwn/conv1d/ExpandDims_1/dimу
jjfezsyjwn/conv1d/ExpandDims_1
ExpandDims5jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp:value:0+jjfezsyjwn/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
jjfezsyjwn/conv1d/ExpandDims_1З
jjfezsyjwn/conv1d/ShapeShape%jjfezsyjwn/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
jjfezsyjwn/conv1d/ShapeШ
%jjfezsyjwn/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%jjfezsyjwn/conv1d/strided_slice/stackе
'jjfezsyjwn/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¤        2)
'jjfezsyjwn/conv1d/strided_slice/stack_1Ь
'jjfezsyjwn/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'jjfezsyjwn/conv1d/strided_slice/stack_2╠
jjfezsyjwn/conv1d/strided_sliceStridedSlice jjfezsyjwn/conv1d/Shape:output:0.jjfezsyjwn/conv1d/strided_slice/stack:output:00jjfezsyjwn/conv1d/strided_slice/stack_1:output:00jjfezsyjwn/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
jjfezsyjwn/conv1d/strided_sliceЫ
jjfezsyjwn/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2!
jjfezsyjwn/conv1d/Reshape/shape╠
jjfezsyjwn/conv1d/ReshapeReshape%jjfezsyjwn/conv1d/ExpandDims:output:0(jjfezsyjwn/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
jjfezsyjwn/conv1d/Reshapeю
jjfezsyjwn/conv1d/Conv2DConv2D"jjfezsyjwn/conv1d/Reshape:output:0'jjfezsyjwn/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
jjfezsyjwn/conv1d/Conv2DЫ
!jjfezsyjwn/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!jjfezsyjwn/conv1d/concat/values_1Й
jjfezsyjwn/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2
jjfezsyjwn/conv1d/concat/axisь
jjfezsyjwn/conv1d/concatConcatV2(jjfezsyjwn/conv1d/strided_slice:output:0*jjfezsyjwn/conv1d/concat/values_1:output:0&jjfezsyjwn/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
jjfezsyjwn/conv1d/concat╔
jjfezsyjwn/conv1d/Reshape_1Reshape!jjfezsyjwn/conv1d/Conv2D:output:0!jjfezsyjwn/conv1d/concat:output:0*
T0*3
_output_shapes!
:         2
jjfezsyjwn/conv1d/Reshape_1┴
jjfezsyjwn/conv1d/SqueezeSqueeze$jjfezsyjwn/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:         *
squeeze_dims

¤        2
jjfezsyjwn/conv1d/SqueezeЬ
#jjfezsyjwn/squeeze_batch_dims/ShapeShape"jjfezsyjwn/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#jjfezsyjwn/squeeze_batch_dims/Shape░
1jjfezsyjwn/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1jjfezsyjwn/squeeze_batch_dims/strided_slice/stack╜
3jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        25
3jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_1┤
3jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_2Ф
+jjfezsyjwn/squeeze_batch_dims/strided_sliceStridedSlice,jjfezsyjwn/squeeze_batch_dims/Shape:output:0:jjfezsyjwn/squeeze_batch_dims/strided_slice/stack:output:0<jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_1:output:0<jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+jjfezsyjwn/squeeze_batch_dims/strided_sliceп
+jjfezsyjwn/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+jjfezsyjwn/squeeze_batch_dims/Reshape/shapeщ
%jjfezsyjwn/squeeze_batch_dims/ReshapeReshape"jjfezsyjwn/conv1d/Squeeze:output:04jjfezsyjwn/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:         2'
%jjfezsyjwn/squeeze_batch_dims/Reshapeц
4jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=jjfezsyjwn_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp¤
%jjfezsyjwn/squeeze_batch_dims/BiasAddBiasAdd.jjfezsyjwn/squeeze_batch_dims/Reshape:output:0<jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         2'
%jjfezsyjwn/squeeze_batch_dims/BiasAddп
-jjfezsyjwn/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-jjfezsyjwn/squeeze_batch_dims/concat/values_1б
)jjfezsyjwn/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2+
)jjfezsyjwn/squeeze_batch_dims/concat/axisи
$jjfezsyjwn/squeeze_batch_dims/concatConcatV24jjfezsyjwn/squeeze_batch_dims/strided_slice:output:06jjfezsyjwn/squeeze_batch_dims/concat/values_1:output:02jjfezsyjwn/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$jjfezsyjwn/squeeze_batch_dims/concatЎ
'jjfezsyjwn/squeeze_batch_dims/Reshape_1Reshape.jjfezsyjwn/squeeze_batch_dims/BiasAdd:output:0-jjfezsyjwn/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:         2)
'jjfezsyjwn/squeeze_batch_dims/Reshape_1Д
whckbkkggk/ShapeShape0jjfezsyjwn/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
whckbkkggk/ShapeК
whckbkkggk/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
whckbkkggk/strided_slice/stackО
 whckbkkggk/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 whckbkkggk/strided_slice/stack_1О
 whckbkkggk/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 whckbkkggk/strided_slice/stack_2д
whckbkkggk/strided_sliceStridedSlicewhckbkkggk/Shape:output:0'whckbkkggk/strided_slice/stack:output:0)whckbkkggk/strided_slice/stack_1:output:0)whckbkkggk/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
whckbkkggk/strided_slicez
whckbkkggk/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
whckbkkggk/Reshape/shape/1z
whckbkkggk/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
whckbkkggk/Reshape/shape/2╫
whckbkkggk/Reshape/shapePack!whckbkkggk/strided_slice:output:0#whckbkkggk/Reshape/shape/1:output:0#whckbkkggk/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
whckbkkggk/Reshape/shape╛
whckbkkggk/ReshapeReshape0jjfezsyjwn/squeeze_batch_dims/Reshape_1:output:0!whckbkkggk/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
whckbkkggk/Reshapeo
eluvehoiqy/ShapeShapewhckbkkggk/Reshape:output:0*
T0*
_output_shapes
:2
eluvehoiqy/ShapeК
eluvehoiqy/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
eluvehoiqy/strided_slice/stackО
 eluvehoiqy/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 eluvehoiqy/strided_slice/stack_1О
 eluvehoiqy/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 eluvehoiqy/strided_slice/stack_2д
eluvehoiqy/strided_sliceStridedSliceeluvehoiqy/Shape:output:0'eluvehoiqy/strided_slice/stack:output:0)eluvehoiqy/strided_slice/stack_1:output:0)eluvehoiqy/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
eluvehoiqy/strided_slicer
eluvehoiqy/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/zeros/mul/yШ
eluvehoiqy/zeros/mulMul!eluvehoiqy/strided_slice:output:0eluvehoiqy/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/zeros/mulu
eluvehoiqy/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
eluvehoiqy/zeros/Less/yУ
eluvehoiqy/zeros/LessLesseluvehoiqy/zeros/mul:z:0 eluvehoiqy/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/zeros/Lessx
eluvehoiqy/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/zeros/packed/1п
eluvehoiqy/zeros/packedPack!eluvehoiqy/strided_slice:output:0"eluvehoiqy/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
eluvehoiqy/zeros/packedu
eluvehoiqy/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
eluvehoiqy/zeros/Constб
eluvehoiqy/zerosFill eluvehoiqy/zeros/packed:output:0eluvehoiqy/zeros/Const:output:0*
T0*'
_output_shapes
:          2
eluvehoiqy/zerosv
eluvehoiqy/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/zeros_1/mul/yЮ
eluvehoiqy/zeros_1/mulMul!eluvehoiqy/strided_slice:output:0!eluvehoiqy/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/zeros_1/muly
eluvehoiqy/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
eluvehoiqy/zeros_1/Less/yЫ
eluvehoiqy/zeros_1/LessLesseluvehoiqy/zeros_1/mul:z:0"eluvehoiqy/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/zeros_1/Less|
eluvehoiqy/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/zeros_1/packed/1╡
eluvehoiqy/zeros_1/packedPack!eluvehoiqy/strided_slice:output:0$eluvehoiqy/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
eluvehoiqy/zeros_1/packedy
eluvehoiqy/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
eluvehoiqy/zeros_1/Constй
eluvehoiqy/zeros_1Fill"eluvehoiqy/zeros_1/packed:output:0!eluvehoiqy/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
eluvehoiqy/zeros_1Л
eluvehoiqy/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
eluvehoiqy/transpose/perm░
eluvehoiqy/transpose	Transposewhckbkkggk/Reshape:output:0"eluvehoiqy/transpose/perm:output:0*
T0*+
_output_shapes
:         2
eluvehoiqy/transposep
eluvehoiqy/Shape_1Shapeeluvehoiqy/transpose:y:0*
T0*
_output_shapes
:2
eluvehoiqy/Shape_1О
 eluvehoiqy/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 eluvehoiqy/strided_slice_1/stackТ
"eluvehoiqy/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"eluvehoiqy/strided_slice_1/stack_1Т
"eluvehoiqy/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"eluvehoiqy/strided_slice_1/stack_2░
eluvehoiqy/strided_slice_1StridedSliceeluvehoiqy/Shape_1:output:0)eluvehoiqy/strided_slice_1/stack:output:0+eluvehoiqy/strided_slice_1/stack_1:output:0+eluvehoiqy/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
eluvehoiqy/strided_slice_1Ы
&eluvehoiqy/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&eluvehoiqy/TensorArrayV2/element_shape▐
eluvehoiqy/TensorArrayV2TensorListReserve/eluvehoiqy/TensorArrayV2/element_shape:output:0#eluvehoiqy/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
eluvehoiqy/TensorArrayV2╒
@eluvehoiqy/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@eluvehoiqy/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2eluvehoiqy/TensorArrayUnstack/TensorListFromTensorTensorListFromTensoreluvehoiqy/transpose:y:0Ieluvehoiqy/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2eluvehoiqy/TensorArrayUnstack/TensorListFromTensorО
 eluvehoiqy/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 eluvehoiqy/strided_slice_2/stackТ
"eluvehoiqy/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"eluvehoiqy/strided_slice_2/stack_1Т
"eluvehoiqy/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"eluvehoiqy/strided_slice_2/stack_2╛
eluvehoiqy/strided_slice_2StridedSliceeluvehoiqy/transpose:y:0)eluvehoiqy/strided_slice_2/stack:output:0+eluvehoiqy/strided_slice_2/stack_1:output:0+eluvehoiqy/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
eluvehoiqy/strided_slice_2╨
+eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp4eluvehoiqy_gfpcpbbmvi_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02-
+eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp╙
eluvehoiqy/gfpcpbbmvi/MatMulMatMul#eluvehoiqy/strided_slice_2:output:03eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
eluvehoiqy/gfpcpbbmvi/MatMul╓
-eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp6eluvehoiqy_gfpcpbbmvi_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp╧
eluvehoiqy/gfpcpbbmvi/MatMul_1MatMuleluvehoiqy/zeros:output:05eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
eluvehoiqy/gfpcpbbmvi/MatMul_1─
eluvehoiqy/gfpcpbbmvi/addAddV2&eluvehoiqy/gfpcpbbmvi/MatMul:product:0(eluvehoiqy/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
eluvehoiqy/gfpcpbbmvi/add╧
,eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp5eluvehoiqy_gfpcpbbmvi_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp╤
eluvehoiqy/gfpcpbbmvi/BiasAddBiasAddeluvehoiqy/gfpcpbbmvi/add:z:04eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
eluvehoiqy/gfpcpbbmvi/BiasAddР
%eluvehoiqy/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%eluvehoiqy/gfpcpbbmvi/split/split_dimЧ
eluvehoiqy/gfpcpbbmvi/splitSplit.eluvehoiqy/gfpcpbbmvi/split/split_dim:output:0&eluvehoiqy/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
eluvehoiqy/gfpcpbbmvi/split╢
$eluvehoiqy/gfpcpbbmvi/ReadVariableOpReadVariableOp-eluvehoiqy_gfpcpbbmvi_readvariableop_resource*
_output_shapes
: *
dtype02&
$eluvehoiqy/gfpcpbbmvi/ReadVariableOp║
eluvehoiqy/gfpcpbbmvi/mulMul,eluvehoiqy/gfpcpbbmvi/ReadVariableOp:value:0eluvehoiqy/zeros_1:output:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul║
eluvehoiqy/gfpcpbbmvi/add_1AddV2$eluvehoiqy/gfpcpbbmvi/split:output:0eluvehoiqy/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/add_1Ь
eluvehoiqy/gfpcpbbmvi/SigmoidSigmoideluvehoiqy/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/Sigmoid╝
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1ReadVariableOp/eluvehoiqy_gfpcpbbmvi_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1└
eluvehoiqy/gfpcpbbmvi/mul_1Mul.eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1:value:0eluvehoiqy/zeros_1:output:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul_1╝
eluvehoiqy/gfpcpbbmvi/add_2AddV2$eluvehoiqy/gfpcpbbmvi/split:output:1eluvehoiqy/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/add_2а
eluvehoiqy/gfpcpbbmvi/Sigmoid_1Sigmoideluvehoiqy/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2!
eluvehoiqy/gfpcpbbmvi/Sigmoid_1╡
eluvehoiqy/gfpcpbbmvi/mul_2Mul#eluvehoiqy/gfpcpbbmvi/Sigmoid_1:y:0eluvehoiqy/zeros_1:output:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul_2Ш
eluvehoiqy/gfpcpbbmvi/TanhTanh$eluvehoiqy/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/Tanh╢
eluvehoiqy/gfpcpbbmvi/mul_3Mul!eluvehoiqy/gfpcpbbmvi/Sigmoid:y:0eluvehoiqy/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul_3╖
eluvehoiqy/gfpcpbbmvi/add_3AddV2eluvehoiqy/gfpcpbbmvi/mul_2:z:0eluvehoiqy/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/add_3╝
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2ReadVariableOp/eluvehoiqy_gfpcpbbmvi_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2─
eluvehoiqy/gfpcpbbmvi/mul_4Mul.eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2:value:0eluvehoiqy/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul_4╝
eluvehoiqy/gfpcpbbmvi/add_4AddV2$eluvehoiqy/gfpcpbbmvi/split:output:3eluvehoiqy/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/add_4а
eluvehoiqy/gfpcpbbmvi/Sigmoid_2Sigmoideluvehoiqy/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2!
eluvehoiqy/gfpcpbbmvi/Sigmoid_2Ч
eluvehoiqy/gfpcpbbmvi/Tanh_1Tanheluvehoiqy/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/Tanh_1║
eluvehoiqy/gfpcpbbmvi/mul_5Mul#eluvehoiqy/gfpcpbbmvi/Sigmoid_2:y:0 eluvehoiqy/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul_5е
(eluvehoiqy/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(eluvehoiqy/TensorArrayV2_1/element_shapeф
eluvehoiqy/TensorArrayV2_1TensorListReserve1eluvehoiqy/TensorArrayV2_1/element_shape:output:0#eluvehoiqy/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
eluvehoiqy/TensorArrayV2_1d
eluvehoiqy/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/timeХ
#eluvehoiqy/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#eluvehoiqy/while/maximum_iterationsА
eluvehoiqy/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/while/loop_counter░
eluvehoiqy/whileWhile&eluvehoiqy/while/loop_counter:output:0,eluvehoiqy/while/maximum_iterations:output:0eluvehoiqy/time:output:0#eluvehoiqy/TensorArrayV2_1:handle:0eluvehoiqy/zeros:output:0eluvehoiqy/zeros_1:output:0#eluvehoiqy/strided_slice_1:output:0Beluvehoiqy/TensorArrayUnstack/TensorListFromTensor:output_handle:04eluvehoiqy_gfpcpbbmvi_matmul_readvariableop_resource6eluvehoiqy_gfpcpbbmvi_matmul_1_readvariableop_resource5eluvehoiqy_gfpcpbbmvi_biasadd_readvariableop_resource-eluvehoiqy_gfpcpbbmvi_readvariableop_resource/eluvehoiqy_gfpcpbbmvi_readvariableop_1_resource/eluvehoiqy_gfpcpbbmvi_readvariableop_2_resource*
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
eluvehoiqy_while_body_358470*(
cond R
eluvehoiqy_while_cond_358469*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
eluvehoiqy/while╦
;eluvehoiqy/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;eluvehoiqy/TensorArrayV2Stack/TensorListStack/element_shapeФ
-eluvehoiqy/TensorArrayV2Stack/TensorListStackTensorListStackeluvehoiqy/while:output:3Deluvehoiqy/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-eluvehoiqy/TensorArrayV2Stack/TensorListStackЧ
 eluvehoiqy/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 eluvehoiqy/strided_slice_3/stackТ
"eluvehoiqy/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"eluvehoiqy/strided_slice_3/stack_1Т
"eluvehoiqy/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"eluvehoiqy/strided_slice_3/stack_2▄
eluvehoiqy/strided_slice_3StridedSlice6eluvehoiqy/TensorArrayV2Stack/TensorListStack:tensor:0)eluvehoiqy/strided_slice_3/stack:output:0+eluvehoiqy/strided_slice_3/stack_1:output:0+eluvehoiqy/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
eluvehoiqy/strided_slice_3П
eluvehoiqy/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
eluvehoiqy/transpose_1/perm╤
eluvehoiqy/transpose_1	Transpose6eluvehoiqy/TensorArrayV2Stack/TensorListStack:tensor:0$eluvehoiqy/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
eluvehoiqy/transpose_1n
tgargouhhw/ShapeShapeeluvehoiqy/transpose_1:y:0*
T0*
_output_shapes
:2
tgargouhhw/ShapeК
tgargouhhw/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
tgargouhhw/strided_slice/stackО
 tgargouhhw/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 tgargouhhw/strided_slice/stack_1О
 tgargouhhw/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 tgargouhhw/strided_slice/stack_2д
tgargouhhw/strided_sliceStridedSlicetgargouhhw/Shape:output:0'tgargouhhw/strided_slice/stack:output:0)tgargouhhw/strided_slice/stack_1:output:0)tgargouhhw/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
tgargouhhw/strided_slicer
tgargouhhw/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/zeros/mul/yШ
tgargouhhw/zeros/mulMul!tgargouhhw/strided_slice:output:0tgargouhhw/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/zeros/mulu
tgargouhhw/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
tgargouhhw/zeros/Less/yУ
tgargouhhw/zeros/LessLesstgargouhhw/zeros/mul:z:0 tgargouhhw/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/zeros/Lessx
tgargouhhw/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/zeros/packed/1п
tgargouhhw/zeros/packedPack!tgargouhhw/strided_slice:output:0"tgargouhhw/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
tgargouhhw/zeros/packedu
tgargouhhw/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tgargouhhw/zeros/Constб
tgargouhhw/zerosFill tgargouhhw/zeros/packed:output:0tgargouhhw/zeros/Const:output:0*
T0*'
_output_shapes
:          2
tgargouhhw/zerosv
tgargouhhw/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/zeros_1/mul/yЮ
tgargouhhw/zeros_1/mulMul!tgargouhhw/strided_slice:output:0!tgargouhhw/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/zeros_1/muly
tgargouhhw/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
tgargouhhw/zeros_1/Less/yЫ
tgargouhhw/zeros_1/LessLesstgargouhhw/zeros_1/mul:z:0"tgargouhhw/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/zeros_1/Less|
tgargouhhw/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/zeros_1/packed/1╡
tgargouhhw/zeros_1/packedPack!tgargouhhw/strided_slice:output:0$tgargouhhw/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
tgargouhhw/zeros_1/packedy
tgargouhhw/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tgargouhhw/zeros_1/Constй
tgargouhhw/zeros_1Fill"tgargouhhw/zeros_1/packed:output:0!tgargouhhw/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
tgargouhhw/zeros_1Л
tgargouhhw/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
tgargouhhw/transpose/permп
tgargouhhw/transpose	Transposeeluvehoiqy/transpose_1:y:0"tgargouhhw/transpose/perm:output:0*
T0*+
_output_shapes
:          2
tgargouhhw/transposep
tgargouhhw/Shape_1Shapetgargouhhw/transpose:y:0*
T0*
_output_shapes
:2
tgargouhhw/Shape_1О
 tgargouhhw/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 tgargouhhw/strided_slice_1/stackТ
"tgargouhhw/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"tgargouhhw/strided_slice_1/stack_1Т
"tgargouhhw/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"tgargouhhw/strided_slice_1/stack_2░
tgargouhhw/strided_slice_1StridedSlicetgargouhhw/Shape_1:output:0)tgargouhhw/strided_slice_1/stack:output:0+tgargouhhw/strided_slice_1/stack_1:output:0+tgargouhhw/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
tgargouhhw/strided_slice_1Ы
&tgargouhhw/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&tgargouhhw/TensorArrayV2/element_shape▐
tgargouhhw/TensorArrayV2TensorListReserve/tgargouhhw/TensorArrayV2/element_shape:output:0#tgargouhhw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
tgargouhhw/TensorArrayV2╒
@tgargouhhw/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2B
@tgargouhhw/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2tgargouhhw/TensorArrayUnstack/TensorListFromTensorTensorListFromTensortgargouhhw/transpose:y:0Itgargouhhw/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2tgargouhhw/TensorArrayUnstack/TensorListFromTensorО
 tgargouhhw/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 tgargouhhw/strided_slice_2/stackТ
"tgargouhhw/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"tgargouhhw/strided_slice_2/stack_1Т
"tgargouhhw/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"tgargouhhw/strided_slice_2/stack_2╛
tgargouhhw/strided_slice_2StridedSlicetgargouhhw/transpose:y:0)tgargouhhw/strided_slice_2/stack:output:0+tgargouhhw/strided_slice_2/stack_1:output:0+tgargouhhw/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
tgargouhhw/strided_slice_2╨
+tgargouhhw/leklhosgal/MatMul/ReadVariableOpReadVariableOp4tgargouhhw_leklhosgal_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02-
+tgargouhhw/leklhosgal/MatMul/ReadVariableOp╙
tgargouhhw/leklhosgal/MatMulMatMul#tgargouhhw/strided_slice_2:output:03tgargouhhw/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
tgargouhhw/leklhosgal/MatMul╓
-tgargouhhw/leklhosgal/MatMul_1/ReadVariableOpReadVariableOp6tgargouhhw_leklhosgal_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp╧
tgargouhhw/leklhosgal/MatMul_1MatMultgargouhhw/zeros:output:05tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
tgargouhhw/leklhosgal/MatMul_1─
tgargouhhw/leklhosgal/addAddV2&tgargouhhw/leklhosgal/MatMul:product:0(tgargouhhw/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
tgargouhhw/leklhosgal/add╧
,tgargouhhw/leklhosgal/BiasAdd/ReadVariableOpReadVariableOp5tgargouhhw_leklhosgal_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp╤
tgargouhhw/leklhosgal/BiasAddBiasAddtgargouhhw/leklhosgal/add:z:04tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
tgargouhhw/leklhosgal/BiasAddР
%tgargouhhw/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%tgargouhhw/leklhosgal/split/split_dimЧ
tgargouhhw/leklhosgal/splitSplit.tgargouhhw/leklhosgal/split/split_dim:output:0&tgargouhhw/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
tgargouhhw/leklhosgal/split╢
$tgargouhhw/leklhosgal/ReadVariableOpReadVariableOp-tgargouhhw_leklhosgal_readvariableop_resource*
_output_shapes
: *
dtype02&
$tgargouhhw/leklhosgal/ReadVariableOp║
tgargouhhw/leklhosgal/mulMul,tgargouhhw/leklhosgal/ReadVariableOp:value:0tgargouhhw/zeros_1:output:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul║
tgargouhhw/leklhosgal/add_1AddV2$tgargouhhw/leklhosgal/split:output:0tgargouhhw/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/add_1Ь
tgargouhhw/leklhosgal/SigmoidSigmoidtgargouhhw/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/Sigmoid╝
&tgargouhhw/leklhosgal/ReadVariableOp_1ReadVariableOp/tgargouhhw_leklhosgal_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&tgargouhhw/leklhosgal/ReadVariableOp_1└
tgargouhhw/leklhosgal/mul_1Mul.tgargouhhw/leklhosgal/ReadVariableOp_1:value:0tgargouhhw/zeros_1:output:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul_1╝
tgargouhhw/leklhosgal/add_2AddV2$tgargouhhw/leklhosgal/split:output:1tgargouhhw/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/add_2а
tgargouhhw/leklhosgal/Sigmoid_1Sigmoidtgargouhhw/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2!
tgargouhhw/leklhosgal/Sigmoid_1╡
tgargouhhw/leklhosgal/mul_2Mul#tgargouhhw/leklhosgal/Sigmoid_1:y:0tgargouhhw/zeros_1:output:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul_2Ш
tgargouhhw/leklhosgal/TanhTanh$tgargouhhw/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/Tanh╢
tgargouhhw/leklhosgal/mul_3Mul!tgargouhhw/leklhosgal/Sigmoid:y:0tgargouhhw/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul_3╖
tgargouhhw/leklhosgal/add_3AddV2tgargouhhw/leklhosgal/mul_2:z:0tgargouhhw/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/add_3╝
&tgargouhhw/leklhosgal/ReadVariableOp_2ReadVariableOp/tgargouhhw_leklhosgal_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&tgargouhhw/leklhosgal/ReadVariableOp_2─
tgargouhhw/leklhosgal/mul_4Mul.tgargouhhw/leklhosgal/ReadVariableOp_2:value:0tgargouhhw/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul_4╝
tgargouhhw/leklhosgal/add_4AddV2$tgargouhhw/leklhosgal/split:output:3tgargouhhw/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/add_4а
tgargouhhw/leklhosgal/Sigmoid_2Sigmoidtgargouhhw/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2!
tgargouhhw/leklhosgal/Sigmoid_2Ч
tgargouhhw/leklhosgal/Tanh_1Tanhtgargouhhw/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/Tanh_1║
tgargouhhw/leklhosgal/mul_5Mul#tgargouhhw/leklhosgal/Sigmoid_2:y:0 tgargouhhw/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul_5е
(tgargouhhw/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(tgargouhhw/TensorArrayV2_1/element_shapeф
tgargouhhw/TensorArrayV2_1TensorListReserve1tgargouhhw/TensorArrayV2_1/element_shape:output:0#tgargouhhw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
tgargouhhw/TensorArrayV2_1d
tgargouhhw/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/timeХ
#tgargouhhw/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#tgargouhhw/while/maximum_iterationsА
tgargouhhw/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/while/loop_counter░
tgargouhhw/whileWhile&tgargouhhw/while/loop_counter:output:0,tgargouhhw/while/maximum_iterations:output:0tgargouhhw/time:output:0#tgargouhhw/TensorArrayV2_1:handle:0tgargouhhw/zeros:output:0tgargouhhw/zeros_1:output:0#tgargouhhw/strided_slice_1:output:0Btgargouhhw/TensorArrayUnstack/TensorListFromTensor:output_handle:04tgargouhhw_leklhosgal_matmul_readvariableop_resource6tgargouhhw_leklhosgal_matmul_1_readvariableop_resource5tgargouhhw_leklhosgal_biasadd_readvariableop_resource-tgargouhhw_leklhosgal_readvariableop_resource/tgargouhhw_leklhosgal_readvariableop_1_resource/tgargouhhw_leklhosgal_readvariableop_2_resource*
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
tgargouhhw_while_body_358646*(
cond R
tgargouhhw_while_cond_358645*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
tgargouhhw/while╦
;tgargouhhw/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;tgargouhhw/TensorArrayV2Stack/TensorListStack/element_shapeФ
-tgargouhhw/TensorArrayV2Stack/TensorListStackTensorListStacktgargouhhw/while:output:3Dtgargouhhw/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-tgargouhhw/TensorArrayV2Stack/TensorListStackЧ
 tgargouhhw/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 tgargouhhw/strided_slice_3/stackТ
"tgargouhhw/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"tgargouhhw/strided_slice_3/stack_1Т
"tgargouhhw/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"tgargouhhw/strided_slice_3/stack_2▄
tgargouhhw/strided_slice_3StridedSlice6tgargouhhw/TensorArrayV2Stack/TensorListStack:tensor:0)tgargouhhw/strided_slice_3/stack:output:0+tgargouhhw/strided_slice_3/stack_1:output:0+tgargouhhw/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
tgargouhhw/strided_slice_3П
tgargouhhw/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
tgargouhhw/transpose_1/perm╤
tgargouhhw/transpose_1	Transpose6tgargouhhw/TensorArrayV2Stack/TensorListStack:tensor:0$tgargouhhw/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
tgargouhhw/transpose_1о
 jhbguimgvq/MatMul/ReadVariableOpReadVariableOp)jhbguimgvq_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 jhbguimgvq/MatMul/ReadVariableOp▒
jhbguimgvq/MatMulMatMul#tgargouhhw/strided_slice_3:output:0(jhbguimgvq/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
jhbguimgvq/MatMulн
!jhbguimgvq/BiasAdd/ReadVariableOpReadVariableOp*jhbguimgvq_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!jhbguimgvq/BiasAdd/ReadVariableOpн
jhbguimgvq/BiasAddBiasAddjhbguimgvq/MatMul:product:0)jhbguimgvq/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
jhbguimgvq/BiasAdd╧
IdentityIdentityjhbguimgvq/BiasAdd:output:0-^eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp,^eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp.^eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp%^eluvehoiqy/gfpcpbbmvi/ReadVariableOp'^eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1'^eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2^eluvehoiqy/while"^jhbguimgvq/BiasAdd/ReadVariableOp!^jhbguimgvq/MatMul/ReadVariableOp.^jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp5^jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp-^tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp,^tgargouhhw/leklhosgal/MatMul/ReadVariableOp.^tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp%^tgargouhhw/leklhosgal/ReadVariableOp'^tgargouhhw/leklhosgal/ReadVariableOp_1'^tgargouhhw/leklhosgal/ReadVariableOp_2^tgargouhhw/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2\
,eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp,eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp2Z
+eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp+eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp2^
-eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp-eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp2L
$eluvehoiqy/gfpcpbbmvi/ReadVariableOp$eluvehoiqy/gfpcpbbmvi/ReadVariableOp2P
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_12P
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_22$
eluvehoiqy/whileeluvehoiqy/while2F
!jhbguimgvq/BiasAdd/ReadVariableOp!jhbguimgvq/BiasAdd/ReadVariableOp2D
 jhbguimgvq/MatMul/ReadVariableOp jhbguimgvq/MatMul/ReadVariableOp2^
-jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp-jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp2l
4jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp4jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp2\
,tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp,tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp2Z
+tgargouhhw/leklhosgal/MatMul/ReadVariableOp+tgargouhhw/leklhosgal/MatMul/ReadVariableOp2^
-tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp-tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp2L
$tgargouhhw/leklhosgal/ReadVariableOp$tgargouhhw/leklhosgal/ReadVariableOp2P
&tgargouhhw/leklhosgal/ReadVariableOp_1&tgargouhhw/leklhosgal/ReadVariableOp_12P
&tgargouhhw/leklhosgal/ReadVariableOp_2&tgargouhhw/leklhosgal/ReadVariableOp_22$
tgargouhhw/whiletgargouhhw/while:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Щ
b
F__inference_whckbkkggk_layer_call_and_return_conditional_losses_358886

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
┘╩
Б
F__inference_sequential_layer_call_and_return_conditional_losses_358349

inputsL
6jjfezsyjwn_conv1d_expanddims_1_readvariableop_resource:K
=jjfezsyjwn_squeeze_batch_dims_biasadd_readvariableop_resource:G
4eluvehoiqy_gfpcpbbmvi_matmul_readvariableop_resource:	АI
6eluvehoiqy_gfpcpbbmvi_matmul_1_readvariableop_resource:	 АD
5eluvehoiqy_gfpcpbbmvi_biasadd_readvariableop_resource:	А;
-eluvehoiqy_gfpcpbbmvi_readvariableop_resource: =
/eluvehoiqy_gfpcpbbmvi_readvariableop_1_resource: =
/eluvehoiqy_gfpcpbbmvi_readvariableop_2_resource: G
4tgargouhhw_leklhosgal_matmul_readvariableop_resource:	 АI
6tgargouhhw_leklhosgal_matmul_1_readvariableop_resource:	 АD
5tgargouhhw_leklhosgal_biasadd_readvariableop_resource:	А;
-tgargouhhw_leklhosgal_readvariableop_resource: =
/tgargouhhw_leklhosgal_readvariableop_1_resource: =
/tgargouhhw_leklhosgal_readvariableop_2_resource: ;
)jhbguimgvq_matmul_readvariableop_resource: 8
*jhbguimgvq_biasadd_readvariableop_resource:
identityИв,eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOpв+eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOpв-eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOpв$eluvehoiqy/gfpcpbbmvi/ReadVariableOpв&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1в&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2вeluvehoiqy/whileв!jhbguimgvq/BiasAdd/ReadVariableOpв jhbguimgvq/MatMul/ReadVariableOpв-jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOpв4jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOpв,tgargouhhw/leklhosgal/BiasAdd/ReadVariableOpв+tgargouhhw/leklhosgal/MatMul/ReadVariableOpв-tgargouhhw/leklhosgal/MatMul_1/ReadVariableOpв$tgargouhhw/leklhosgal/ReadVariableOpв&tgargouhhw/leklhosgal/ReadVariableOp_1в&tgargouhhw/leklhosgal/ReadVariableOp_2вtgargouhhw/whileП
 jjfezsyjwn/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2"
 jjfezsyjwn/conv1d/ExpandDims/dim╗
jjfezsyjwn/conv1d/ExpandDims
ExpandDimsinputs)jjfezsyjwn/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:         2
jjfezsyjwn/conv1d/ExpandDims┘
-jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6jjfezsyjwn_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOpК
"jjfezsyjwn/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"jjfezsyjwn/conv1d/ExpandDims_1/dimу
jjfezsyjwn/conv1d/ExpandDims_1
ExpandDims5jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp:value:0+jjfezsyjwn/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
jjfezsyjwn/conv1d/ExpandDims_1З
jjfezsyjwn/conv1d/ShapeShape%jjfezsyjwn/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
jjfezsyjwn/conv1d/ShapeШ
%jjfezsyjwn/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%jjfezsyjwn/conv1d/strided_slice/stackе
'jjfezsyjwn/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¤        2)
'jjfezsyjwn/conv1d/strided_slice/stack_1Ь
'jjfezsyjwn/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'jjfezsyjwn/conv1d/strided_slice/stack_2╠
jjfezsyjwn/conv1d/strided_sliceStridedSlice jjfezsyjwn/conv1d/Shape:output:0.jjfezsyjwn/conv1d/strided_slice/stack:output:00jjfezsyjwn/conv1d/strided_slice/stack_1:output:00jjfezsyjwn/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
jjfezsyjwn/conv1d/strided_sliceЫ
jjfezsyjwn/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2!
jjfezsyjwn/conv1d/Reshape/shape╠
jjfezsyjwn/conv1d/ReshapeReshape%jjfezsyjwn/conv1d/ExpandDims:output:0(jjfezsyjwn/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
jjfezsyjwn/conv1d/Reshapeю
jjfezsyjwn/conv1d/Conv2DConv2D"jjfezsyjwn/conv1d/Reshape:output:0'jjfezsyjwn/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
jjfezsyjwn/conv1d/Conv2DЫ
!jjfezsyjwn/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!jjfezsyjwn/conv1d/concat/values_1Й
jjfezsyjwn/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2
jjfezsyjwn/conv1d/concat/axisь
jjfezsyjwn/conv1d/concatConcatV2(jjfezsyjwn/conv1d/strided_slice:output:0*jjfezsyjwn/conv1d/concat/values_1:output:0&jjfezsyjwn/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
jjfezsyjwn/conv1d/concat╔
jjfezsyjwn/conv1d/Reshape_1Reshape!jjfezsyjwn/conv1d/Conv2D:output:0!jjfezsyjwn/conv1d/concat:output:0*
T0*3
_output_shapes!
:         2
jjfezsyjwn/conv1d/Reshape_1┴
jjfezsyjwn/conv1d/SqueezeSqueeze$jjfezsyjwn/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:         *
squeeze_dims

¤        2
jjfezsyjwn/conv1d/SqueezeЬ
#jjfezsyjwn/squeeze_batch_dims/ShapeShape"jjfezsyjwn/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#jjfezsyjwn/squeeze_batch_dims/Shape░
1jjfezsyjwn/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1jjfezsyjwn/squeeze_batch_dims/strided_slice/stack╜
3jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        25
3jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_1┤
3jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_2Ф
+jjfezsyjwn/squeeze_batch_dims/strided_sliceStridedSlice,jjfezsyjwn/squeeze_batch_dims/Shape:output:0:jjfezsyjwn/squeeze_batch_dims/strided_slice/stack:output:0<jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_1:output:0<jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+jjfezsyjwn/squeeze_batch_dims/strided_sliceп
+jjfezsyjwn/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+jjfezsyjwn/squeeze_batch_dims/Reshape/shapeщ
%jjfezsyjwn/squeeze_batch_dims/ReshapeReshape"jjfezsyjwn/conv1d/Squeeze:output:04jjfezsyjwn/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:         2'
%jjfezsyjwn/squeeze_batch_dims/Reshapeц
4jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=jjfezsyjwn_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp¤
%jjfezsyjwn/squeeze_batch_dims/BiasAddBiasAdd.jjfezsyjwn/squeeze_batch_dims/Reshape:output:0<jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         2'
%jjfezsyjwn/squeeze_batch_dims/BiasAddп
-jjfezsyjwn/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-jjfezsyjwn/squeeze_batch_dims/concat/values_1б
)jjfezsyjwn/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2+
)jjfezsyjwn/squeeze_batch_dims/concat/axisи
$jjfezsyjwn/squeeze_batch_dims/concatConcatV24jjfezsyjwn/squeeze_batch_dims/strided_slice:output:06jjfezsyjwn/squeeze_batch_dims/concat/values_1:output:02jjfezsyjwn/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$jjfezsyjwn/squeeze_batch_dims/concatЎ
'jjfezsyjwn/squeeze_batch_dims/Reshape_1Reshape.jjfezsyjwn/squeeze_batch_dims/BiasAdd:output:0-jjfezsyjwn/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:         2)
'jjfezsyjwn/squeeze_batch_dims/Reshape_1Д
whckbkkggk/ShapeShape0jjfezsyjwn/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
whckbkkggk/ShapeК
whckbkkggk/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
whckbkkggk/strided_slice/stackО
 whckbkkggk/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 whckbkkggk/strided_slice/stack_1О
 whckbkkggk/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 whckbkkggk/strided_slice/stack_2д
whckbkkggk/strided_sliceStridedSlicewhckbkkggk/Shape:output:0'whckbkkggk/strided_slice/stack:output:0)whckbkkggk/strided_slice/stack_1:output:0)whckbkkggk/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
whckbkkggk/strided_slicez
whckbkkggk/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
whckbkkggk/Reshape/shape/1z
whckbkkggk/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
whckbkkggk/Reshape/shape/2╫
whckbkkggk/Reshape/shapePack!whckbkkggk/strided_slice:output:0#whckbkkggk/Reshape/shape/1:output:0#whckbkkggk/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
whckbkkggk/Reshape/shape╛
whckbkkggk/ReshapeReshape0jjfezsyjwn/squeeze_batch_dims/Reshape_1:output:0!whckbkkggk/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
whckbkkggk/Reshapeo
eluvehoiqy/ShapeShapewhckbkkggk/Reshape:output:0*
T0*
_output_shapes
:2
eluvehoiqy/ShapeК
eluvehoiqy/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
eluvehoiqy/strided_slice/stackО
 eluvehoiqy/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 eluvehoiqy/strided_slice/stack_1О
 eluvehoiqy/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 eluvehoiqy/strided_slice/stack_2д
eluvehoiqy/strided_sliceStridedSliceeluvehoiqy/Shape:output:0'eluvehoiqy/strided_slice/stack:output:0)eluvehoiqy/strided_slice/stack_1:output:0)eluvehoiqy/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
eluvehoiqy/strided_slicer
eluvehoiqy/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/zeros/mul/yШ
eluvehoiqy/zeros/mulMul!eluvehoiqy/strided_slice:output:0eluvehoiqy/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/zeros/mulu
eluvehoiqy/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
eluvehoiqy/zeros/Less/yУ
eluvehoiqy/zeros/LessLesseluvehoiqy/zeros/mul:z:0 eluvehoiqy/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/zeros/Lessx
eluvehoiqy/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/zeros/packed/1п
eluvehoiqy/zeros/packedPack!eluvehoiqy/strided_slice:output:0"eluvehoiqy/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
eluvehoiqy/zeros/packedu
eluvehoiqy/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
eluvehoiqy/zeros/Constб
eluvehoiqy/zerosFill eluvehoiqy/zeros/packed:output:0eluvehoiqy/zeros/Const:output:0*
T0*'
_output_shapes
:          2
eluvehoiqy/zerosv
eluvehoiqy/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/zeros_1/mul/yЮ
eluvehoiqy/zeros_1/mulMul!eluvehoiqy/strided_slice:output:0!eluvehoiqy/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/zeros_1/muly
eluvehoiqy/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
eluvehoiqy/zeros_1/Less/yЫ
eluvehoiqy/zeros_1/LessLesseluvehoiqy/zeros_1/mul:z:0"eluvehoiqy/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
eluvehoiqy/zeros_1/Less|
eluvehoiqy/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/zeros_1/packed/1╡
eluvehoiqy/zeros_1/packedPack!eluvehoiqy/strided_slice:output:0$eluvehoiqy/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
eluvehoiqy/zeros_1/packedy
eluvehoiqy/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
eluvehoiqy/zeros_1/Constй
eluvehoiqy/zeros_1Fill"eluvehoiqy/zeros_1/packed:output:0!eluvehoiqy/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
eluvehoiqy/zeros_1Л
eluvehoiqy/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
eluvehoiqy/transpose/perm░
eluvehoiqy/transpose	Transposewhckbkkggk/Reshape:output:0"eluvehoiqy/transpose/perm:output:0*
T0*+
_output_shapes
:         2
eluvehoiqy/transposep
eluvehoiqy/Shape_1Shapeeluvehoiqy/transpose:y:0*
T0*
_output_shapes
:2
eluvehoiqy/Shape_1О
 eluvehoiqy/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 eluvehoiqy/strided_slice_1/stackТ
"eluvehoiqy/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"eluvehoiqy/strided_slice_1/stack_1Т
"eluvehoiqy/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"eluvehoiqy/strided_slice_1/stack_2░
eluvehoiqy/strided_slice_1StridedSliceeluvehoiqy/Shape_1:output:0)eluvehoiqy/strided_slice_1/stack:output:0+eluvehoiqy/strided_slice_1/stack_1:output:0+eluvehoiqy/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
eluvehoiqy/strided_slice_1Ы
&eluvehoiqy/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&eluvehoiqy/TensorArrayV2/element_shape▐
eluvehoiqy/TensorArrayV2TensorListReserve/eluvehoiqy/TensorArrayV2/element_shape:output:0#eluvehoiqy/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
eluvehoiqy/TensorArrayV2╒
@eluvehoiqy/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@eluvehoiqy/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2eluvehoiqy/TensorArrayUnstack/TensorListFromTensorTensorListFromTensoreluvehoiqy/transpose:y:0Ieluvehoiqy/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2eluvehoiqy/TensorArrayUnstack/TensorListFromTensorО
 eluvehoiqy/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 eluvehoiqy/strided_slice_2/stackТ
"eluvehoiqy/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"eluvehoiqy/strided_slice_2/stack_1Т
"eluvehoiqy/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"eluvehoiqy/strided_slice_2/stack_2╛
eluvehoiqy/strided_slice_2StridedSliceeluvehoiqy/transpose:y:0)eluvehoiqy/strided_slice_2/stack:output:0+eluvehoiqy/strided_slice_2/stack_1:output:0+eluvehoiqy/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
eluvehoiqy/strided_slice_2╨
+eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp4eluvehoiqy_gfpcpbbmvi_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02-
+eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp╙
eluvehoiqy/gfpcpbbmvi/MatMulMatMul#eluvehoiqy/strided_slice_2:output:03eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
eluvehoiqy/gfpcpbbmvi/MatMul╓
-eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp6eluvehoiqy_gfpcpbbmvi_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp╧
eluvehoiqy/gfpcpbbmvi/MatMul_1MatMuleluvehoiqy/zeros:output:05eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
eluvehoiqy/gfpcpbbmvi/MatMul_1─
eluvehoiqy/gfpcpbbmvi/addAddV2&eluvehoiqy/gfpcpbbmvi/MatMul:product:0(eluvehoiqy/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
eluvehoiqy/gfpcpbbmvi/add╧
,eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp5eluvehoiqy_gfpcpbbmvi_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp╤
eluvehoiqy/gfpcpbbmvi/BiasAddBiasAddeluvehoiqy/gfpcpbbmvi/add:z:04eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
eluvehoiqy/gfpcpbbmvi/BiasAddР
%eluvehoiqy/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%eluvehoiqy/gfpcpbbmvi/split/split_dimЧ
eluvehoiqy/gfpcpbbmvi/splitSplit.eluvehoiqy/gfpcpbbmvi/split/split_dim:output:0&eluvehoiqy/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
eluvehoiqy/gfpcpbbmvi/split╢
$eluvehoiqy/gfpcpbbmvi/ReadVariableOpReadVariableOp-eluvehoiqy_gfpcpbbmvi_readvariableop_resource*
_output_shapes
: *
dtype02&
$eluvehoiqy/gfpcpbbmvi/ReadVariableOp║
eluvehoiqy/gfpcpbbmvi/mulMul,eluvehoiqy/gfpcpbbmvi/ReadVariableOp:value:0eluvehoiqy/zeros_1:output:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul║
eluvehoiqy/gfpcpbbmvi/add_1AddV2$eluvehoiqy/gfpcpbbmvi/split:output:0eluvehoiqy/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/add_1Ь
eluvehoiqy/gfpcpbbmvi/SigmoidSigmoideluvehoiqy/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/Sigmoid╝
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1ReadVariableOp/eluvehoiqy_gfpcpbbmvi_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1└
eluvehoiqy/gfpcpbbmvi/mul_1Mul.eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1:value:0eluvehoiqy/zeros_1:output:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul_1╝
eluvehoiqy/gfpcpbbmvi/add_2AddV2$eluvehoiqy/gfpcpbbmvi/split:output:1eluvehoiqy/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/add_2а
eluvehoiqy/gfpcpbbmvi/Sigmoid_1Sigmoideluvehoiqy/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2!
eluvehoiqy/gfpcpbbmvi/Sigmoid_1╡
eluvehoiqy/gfpcpbbmvi/mul_2Mul#eluvehoiqy/gfpcpbbmvi/Sigmoid_1:y:0eluvehoiqy/zeros_1:output:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul_2Ш
eluvehoiqy/gfpcpbbmvi/TanhTanh$eluvehoiqy/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/Tanh╢
eluvehoiqy/gfpcpbbmvi/mul_3Mul!eluvehoiqy/gfpcpbbmvi/Sigmoid:y:0eluvehoiqy/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul_3╖
eluvehoiqy/gfpcpbbmvi/add_3AddV2eluvehoiqy/gfpcpbbmvi/mul_2:z:0eluvehoiqy/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/add_3╝
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2ReadVariableOp/eluvehoiqy_gfpcpbbmvi_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2─
eluvehoiqy/gfpcpbbmvi/mul_4Mul.eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2:value:0eluvehoiqy/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul_4╝
eluvehoiqy/gfpcpbbmvi/add_4AddV2$eluvehoiqy/gfpcpbbmvi/split:output:3eluvehoiqy/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/add_4а
eluvehoiqy/gfpcpbbmvi/Sigmoid_2Sigmoideluvehoiqy/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2!
eluvehoiqy/gfpcpbbmvi/Sigmoid_2Ч
eluvehoiqy/gfpcpbbmvi/Tanh_1Tanheluvehoiqy/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/Tanh_1║
eluvehoiqy/gfpcpbbmvi/mul_5Mul#eluvehoiqy/gfpcpbbmvi/Sigmoid_2:y:0 eluvehoiqy/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
eluvehoiqy/gfpcpbbmvi/mul_5е
(eluvehoiqy/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(eluvehoiqy/TensorArrayV2_1/element_shapeф
eluvehoiqy/TensorArrayV2_1TensorListReserve1eluvehoiqy/TensorArrayV2_1/element_shape:output:0#eluvehoiqy/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
eluvehoiqy/TensorArrayV2_1d
eluvehoiqy/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/timeХ
#eluvehoiqy/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#eluvehoiqy/while/maximum_iterationsА
eluvehoiqy/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
eluvehoiqy/while/loop_counter░
eluvehoiqy/whileWhile&eluvehoiqy/while/loop_counter:output:0,eluvehoiqy/while/maximum_iterations:output:0eluvehoiqy/time:output:0#eluvehoiqy/TensorArrayV2_1:handle:0eluvehoiqy/zeros:output:0eluvehoiqy/zeros_1:output:0#eluvehoiqy/strided_slice_1:output:0Beluvehoiqy/TensorArrayUnstack/TensorListFromTensor:output_handle:04eluvehoiqy_gfpcpbbmvi_matmul_readvariableop_resource6eluvehoiqy_gfpcpbbmvi_matmul_1_readvariableop_resource5eluvehoiqy_gfpcpbbmvi_biasadd_readvariableop_resource-eluvehoiqy_gfpcpbbmvi_readvariableop_resource/eluvehoiqy_gfpcpbbmvi_readvariableop_1_resource/eluvehoiqy_gfpcpbbmvi_readvariableop_2_resource*
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
eluvehoiqy_while_body_358066*(
cond R
eluvehoiqy_while_cond_358065*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
eluvehoiqy/while╦
;eluvehoiqy/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;eluvehoiqy/TensorArrayV2Stack/TensorListStack/element_shapeФ
-eluvehoiqy/TensorArrayV2Stack/TensorListStackTensorListStackeluvehoiqy/while:output:3Deluvehoiqy/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-eluvehoiqy/TensorArrayV2Stack/TensorListStackЧ
 eluvehoiqy/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 eluvehoiqy/strided_slice_3/stackТ
"eluvehoiqy/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"eluvehoiqy/strided_slice_3/stack_1Т
"eluvehoiqy/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"eluvehoiqy/strided_slice_3/stack_2▄
eluvehoiqy/strided_slice_3StridedSlice6eluvehoiqy/TensorArrayV2Stack/TensorListStack:tensor:0)eluvehoiqy/strided_slice_3/stack:output:0+eluvehoiqy/strided_slice_3/stack_1:output:0+eluvehoiqy/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
eluvehoiqy/strided_slice_3П
eluvehoiqy/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
eluvehoiqy/transpose_1/perm╤
eluvehoiqy/transpose_1	Transpose6eluvehoiqy/TensorArrayV2Stack/TensorListStack:tensor:0$eluvehoiqy/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
eluvehoiqy/transpose_1n
tgargouhhw/ShapeShapeeluvehoiqy/transpose_1:y:0*
T0*
_output_shapes
:2
tgargouhhw/ShapeК
tgargouhhw/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
tgargouhhw/strided_slice/stackО
 tgargouhhw/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 tgargouhhw/strided_slice/stack_1О
 tgargouhhw/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 tgargouhhw/strided_slice/stack_2д
tgargouhhw/strided_sliceStridedSlicetgargouhhw/Shape:output:0'tgargouhhw/strided_slice/stack:output:0)tgargouhhw/strided_slice/stack_1:output:0)tgargouhhw/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
tgargouhhw/strided_slicer
tgargouhhw/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/zeros/mul/yШ
tgargouhhw/zeros/mulMul!tgargouhhw/strided_slice:output:0tgargouhhw/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/zeros/mulu
tgargouhhw/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
tgargouhhw/zeros/Less/yУ
tgargouhhw/zeros/LessLesstgargouhhw/zeros/mul:z:0 tgargouhhw/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/zeros/Lessx
tgargouhhw/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/zeros/packed/1п
tgargouhhw/zeros/packedPack!tgargouhhw/strided_slice:output:0"tgargouhhw/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
tgargouhhw/zeros/packedu
tgargouhhw/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tgargouhhw/zeros/Constб
tgargouhhw/zerosFill tgargouhhw/zeros/packed:output:0tgargouhhw/zeros/Const:output:0*
T0*'
_output_shapes
:          2
tgargouhhw/zerosv
tgargouhhw/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/zeros_1/mul/yЮ
tgargouhhw/zeros_1/mulMul!tgargouhhw/strided_slice:output:0!tgargouhhw/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/zeros_1/muly
tgargouhhw/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
tgargouhhw/zeros_1/Less/yЫ
tgargouhhw/zeros_1/LessLesstgargouhhw/zeros_1/mul:z:0"tgargouhhw/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
tgargouhhw/zeros_1/Less|
tgargouhhw/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/zeros_1/packed/1╡
tgargouhhw/zeros_1/packedPack!tgargouhhw/strided_slice:output:0$tgargouhhw/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
tgargouhhw/zeros_1/packedy
tgargouhhw/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tgargouhhw/zeros_1/Constй
tgargouhhw/zeros_1Fill"tgargouhhw/zeros_1/packed:output:0!tgargouhhw/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
tgargouhhw/zeros_1Л
tgargouhhw/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
tgargouhhw/transpose/permп
tgargouhhw/transpose	Transposeeluvehoiqy/transpose_1:y:0"tgargouhhw/transpose/perm:output:0*
T0*+
_output_shapes
:          2
tgargouhhw/transposep
tgargouhhw/Shape_1Shapetgargouhhw/transpose:y:0*
T0*
_output_shapes
:2
tgargouhhw/Shape_1О
 tgargouhhw/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 tgargouhhw/strided_slice_1/stackТ
"tgargouhhw/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"tgargouhhw/strided_slice_1/stack_1Т
"tgargouhhw/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"tgargouhhw/strided_slice_1/stack_2░
tgargouhhw/strided_slice_1StridedSlicetgargouhhw/Shape_1:output:0)tgargouhhw/strided_slice_1/stack:output:0+tgargouhhw/strided_slice_1/stack_1:output:0+tgargouhhw/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
tgargouhhw/strided_slice_1Ы
&tgargouhhw/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&tgargouhhw/TensorArrayV2/element_shape▐
tgargouhhw/TensorArrayV2TensorListReserve/tgargouhhw/TensorArrayV2/element_shape:output:0#tgargouhhw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
tgargouhhw/TensorArrayV2╒
@tgargouhhw/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2B
@tgargouhhw/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2tgargouhhw/TensorArrayUnstack/TensorListFromTensorTensorListFromTensortgargouhhw/transpose:y:0Itgargouhhw/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2tgargouhhw/TensorArrayUnstack/TensorListFromTensorО
 tgargouhhw/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 tgargouhhw/strided_slice_2/stackТ
"tgargouhhw/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"tgargouhhw/strided_slice_2/stack_1Т
"tgargouhhw/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"tgargouhhw/strided_slice_2/stack_2╛
tgargouhhw/strided_slice_2StridedSlicetgargouhhw/transpose:y:0)tgargouhhw/strided_slice_2/stack:output:0+tgargouhhw/strided_slice_2/stack_1:output:0+tgargouhhw/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
tgargouhhw/strided_slice_2╨
+tgargouhhw/leklhosgal/MatMul/ReadVariableOpReadVariableOp4tgargouhhw_leklhosgal_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02-
+tgargouhhw/leklhosgal/MatMul/ReadVariableOp╙
tgargouhhw/leklhosgal/MatMulMatMul#tgargouhhw/strided_slice_2:output:03tgargouhhw/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
tgargouhhw/leklhosgal/MatMul╓
-tgargouhhw/leklhosgal/MatMul_1/ReadVariableOpReadVariableOp6tgargouhhw_leklhosgal_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp╧
tgargouhhw/leklhosgal/MatMul_1MatMultgargouhhw/zeros:output:05tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
tgargouhhw/leklhosgal/MatMul_1─
tgargouhhw/leklhosgal/addAddV2&tgargouhhw/leklhosgal/MatMul:product:0(tgargouhhw/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
tgargouhhw/leklhosgal/add╧
,tgargouhhw/leklhosgal/BiasAdd/ReadVariableOpReadVariableOp5tgargouhhw_leklhosgal_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp╤
tgargouhhw/leklhosgal/BiasAddBiasAddtgargouhhw/leklhosgal/add:z:04tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
tgargouhhw/leklhosgal/BiasAddР
%tgargouhhw/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%tgargouhhw/leklhosgal/split/split_dimЧ
tgargouhhw/leklhosgal/splitSplit.tgargouhhw/leklhosgal/split/split_dim:output:0&tgargouhhw/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
tgargouhhw/leklhosgal/split╢
$tgargouhhw/leklhosgal/ReadVariableOpReadVariableOp-tgargouhhw_leklhosgal_readvariableop_resource*
_output_shapes
: *
dtype02&
$tgargouhhw/leklhosgal/ReadVariableOp║
tgargouhhw/leklhosgal/mulMul,tgargouhhw/leklhosgal/ReadVariableOp:value:0tgargouhhw/zeros_1:output:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul║
tgargouhhw/leklhosgal/add_1AddV2$tgargouhhw/leklhosgal/split:output:0tgargouhhw/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/add_1Ь
tgargouhhw/leklhosgal/SigmoidSigmoidtgargouhhw/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/Sigmoid╝
&tgargouhhw/leklhosgal/ReadVariableOp_1ReadVariableOp/tgargouhhw_leklhosgal_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&tgargouhhw/leklhosgal/ReadVariableOp_1└
tgargouhhw/leklhosgal/mul_1Mul.tgargouhhw/leklhosgal/ReadVariableOp_1:value:0tgargouhhw/zeros_1:output:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul_1╝
tgargouhhw/leklhosgal/add_2AddV2$tgargouhhw/leklhosgal/split:output:1tgargouhhw/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/add_2а
tgargouhhw/leklhosgal/Sigmoid_1Sigmoidtgargouhhw/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2!
tgargouhhw/leklhosgal/Sigmoid_1╡
tgargouhhw/leklhosgal/mul_2Mul#tgargouhhw/leklhosgal/Sigmoid_1:y:0tgargouhhw/zeros_1:output:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul_2Ш
tgargouhhw/leklhosgal/TanhTanh$tgargouhhw/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/Tanh╢
tgargouhhw/leklhosgal/mul_3Mul!tgargouhhw/leklhosgal/Sigmoid:y:0tgargouhhw/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul_3╖
tgargouhhw/leklhosgal/add_3AddV2tgargouhhw/leklhosgal/mul_2:z:0tgargouhhw/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/add_3╝
&tgargouhhw/leklhosgal/ReadVariableOp_2ReadVariableOp/tgargouhhw_leklhosgal_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&tgargouhhw/leklhosgal/ReadVariableOp_2─
tgargouhhw/leklhosgal/mul_4Mul.tgargouhhw/leklhosgal/ReadVariableOp_2:value:0tgargouhhw/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul_4╝
tgargouhhw/leklhosgal/add_4AddV2$tgargouhhw/leklhosgal/split:output:3tgargouhhw/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/add_4а
tgargouhhw/leklhosgal/Sigmoid_2Sigmoidtgargouhhw/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2!
tgargouhhw/leklhosgal/Sigmoid_2Ч
tgargouhhw/leklhosgal/Tanh_1Tanhtgargouhhw/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/Tanh_1║
tgargouhhw/leklhosgal/mul_5Mul#tgargouhhw/leklhosgal/Sigmoid_2:y:0 tgargouhhw/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
tgargouhhw/leklhosgal/mul_5е
(tgargouhhw/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(tgargouhhw/TensorArrayV2_1/element_shapeф
tgargouhhw/TensorArrayV2_1TensorListReserve1tgargouhhw/TensorArrayV2_1/element_shape:output:0#tgargouhhw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
tgargouhhw/TensorArrayV2_1d
tgargouhhw/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/timeХ
#tgargouhhw/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#tgargouhhw/while/maximum_iterationsА
tgargouhhw/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
tgargouhhw/while/loop_counter░
tgargouhhw/whileWhile&tgargouhhw/while/loop_counter:output:0,tgargouhhw/while/maximum_iterations:output:0tgargouhhw/time:output:0#tgargouhhw/TensorArrayV2_1:handle:0tgargouhhw/zeros:output:0tgargouhhw/zeros_1:output:0#tgargouhhw/strided_slice_1:output:0Btgargouhhw/TensorArrayUnstack/TensorListFromTensor:output_handle:04tgargouhhw_leklhosgal_matmul_readvariableop_resource6tgargouhhw_leklhosgal_matmul_1_readvariableop_resource5tgargouhhw_leklhosgal_biasadd_readvariableop_resource-tgargouhhw_leklhosgal_readvariableop_resource/tgargouhhw_leklhosgal_readvariableop_1_resource/tgargouhhw_leklhosgal_readvariableop_2_resource*
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
tgargouhhw_while_body_358242*(
cond R
tgargouhhw_while_cond_358241*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
tgargouhhw/while╦
;tgargouhhw/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;tgargouhhw/TensorArrayV2Stack/TensorListStack/element_shapeФ
-tgargouhhw/TensorArrayV2Stack/TensorListStackTensorListStacktgargouhhw/while:output:3Dtgargouhhw/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-tgargouhhw/TensorArrayV2Stack/TensorListStackЧ
 tgargouhhw/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 tgargouhhw/strided_slice_3/stackТ
"tgargouhhw/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"tgargouhhw/strided_slice_3/stack_1Т
"tgargouhhw/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"tgargouhhw/strided_slice_3/stack_2▄
tgargouhhw/strided_slice_3StridedSlice6tgargouhhw/TensorArrayV2Stack/TensorListStack:tensor:0)tgargouhhw/strided_slice_3/stack:output:0+tgargouhhw/strided_slice_3/stack_1:output:0+tgargouhhw/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
tgargouhhw/strided_slice_3П
tgargouhhw/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
tgargouhhw/transpose_1/perm╤
tgargouhhw/transpose_1	Transpose6tgargouhhw/TensorArrayV2Stack/TensorListStack:tensor:0$tgargouhhw/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
tgargouhhw/transpose_1о
 jhbguimgvq/MatMul/ReadVariableOpReadVariableOp)jhbguimgvq_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 jhbguimgvq/MatMul/ReadVariableOp▒
jhbguimgvq/MatMulMatMul#tgargouhhw/strided_slice_3:output:0(jhbguimgvq/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
jhbguimgvq/MatMulн
!jhbguimgvq/BiasAdd/ReadVariableOpReadVariableOp*jhbguimgvq_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!jhbguimgvq/BiasAdd/ReadVariableOpн
jhbguimgvq/BiasAddBiasAddjhbguimgvq/MatMul:product:0)jhbguimgvq/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
jhbguimgvq/BiasAdd╧
IdentityIdentityjhbguimgvq/BiasAdd:output:0-^eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp,^eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp.^eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp%^eluvehoiqy/gfpcpbbmvi/ReadVariableOp'^eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1'^eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2^eluvehoiqy/while"^jhbguimgvq/BiasAdd/ReadVariableOp!^jhbguimgvq/MatMul/ReadVariableOp.^jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp5^jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp-^tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp,^tgargouhhw/leklhosgal/MatMul/ReadVariableOp.^tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp%^tgargouhhw/leklhosgal/ReadVariableOp'^tgargouhhw/leklhosgal/ReadVariableOp_1'^tgargouhhw/leklhosgal/ReadVariableOp_2^tgargouhhw/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2\
,eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp,eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp2Z
+eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp+eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp2^
-eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp-eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp2L
$eluvehoiqy/gfpcpbbmvi/ReadVariableOp$eluvehoiqy/gfpcpbbmvi/ReadVariableOp2P
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_12P
&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2&eluvehoiqy/gfpcpbbmvi/ReadVariableOp_22$
eluvehoiqy/whileeluvehoiqy/while2F
!jhbguimgvq/BiasAdd/ReadVariableOp!jhbguimgvq/BiasAdd/ReadVariableOp2D
 jhbguimgvq/MatMul/ReadVariableOp jhbguimgvq/MatMul/ReadVariableOp2^
-jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp-jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp2l
4jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp4jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp2\
,tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp,tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp2Z
+tgargouhhw/leklhosgal/MatMul/ReadVariableOp+tgargouhhw/leklhosgal/MatMul/ReadVariableOp2^
-tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp-tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp2L
$tgargouhhw/leklhosgal/ReadVariableOp$tgargouhhw/leklhosgal/ReadVariableOp2P
&tgargouhhw/leklhosgal/ReadVariableOp_1&tgargouhhw/leklhosgal/ReadVariableOp_12P
&tgargouhhw/leklhosgal/ReadVariableOp_2&tgargouhhw/leklhosgal/ReadVariableOp_22$
tgargouhhw/whiletgargouhhw/while:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
┘h
Ж
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_359859
inputs_0<
)leklhosgal_matmul_readvariableop_resource:	 А>
+leklhosgal_matmul_1_readvariableop_resource:	 А9
*leklhosgal_biasadd_readvariableop_resource:	А0
"leklhosgal_readvariableop_resource: 2
$leklhosgal_readvariableop_1_resource: 2
$leklhosgal_readvariableop_2_resource: 
identityИв!leklhosgal/BiasAdd/ReadVariableOpв leklhosgal/MatMul/ReadVariableOpв"leklhosgal/MatMul_1/ReadVariableOpвleklhosgal/ReadVariableOpвleklhosgal/ReadVariableOp_1вleklhosgal/ReadVariableOp_2вwhileF
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
 leklhosgal/MatMul/ReadVariableOpReadVariableOp)leklhosgal_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 leklhosgal/MatMul/ReadVariableOpз
leklhosgal/MatMulMatMulstrided_slice_2:output:0(leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul╡
"leklhosgal/MatMul_1/ReadVariableOpReadVariableOp+leklhosgal_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"leklhosgal/MatMul_1/ReadVariableOpг
leklhosgal/MatMul_1MatMulzeros:output:0*leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul_1Ш
leklhosgal/addAddV2leklhosgal/MatMul:product:0leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
leklhosgal/addо
!leklhosgal/BiasAdd/ReadVariableOpReadVariableOp*leklhosgal_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!leklhosgal/BiasAdd/ReadVariableOpе
leklhosgal/BiasAddBiasAddleklhosgal/add:z:0)leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/BiasAddz
leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
leklhosgal/split/split_dimы
leklhosgal/splitSplit#leklhosgal/split/split_dim:output:0leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
leklhosgal/splitХ
leklhosgal/ReadVariableOpReadVariableOp"leklhosgal_readvariableop_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOpО
leklhosgal/mulMul!leklhosgal/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mulО
leklhosgal/add_1AddV2leklhosgal/split:output:0leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_1{
leklhosgal/SigmoidSigmoidleklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/SigmoidЫ
leklhosgal/ReadVariableOp_1ReadVariableOp$leklhosgal_readvariableop_1_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_1Ф
leklhosgal/mul_1Mul#leklhosgal/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_1Р
leklhosgal/add_2AddV2leklhosgal/split:output:1leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_2
leklhosgal/Sigmoid_1Sigmoidleklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_1Й
leklhosgal/mul_2Mulleklhosgal/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_2w
leklhosgal/TanhTanhleklhosgal/split:output:2*
T0*'
_output_shapes
:          2
leklhosgal/TanhК
leklhosgal/mul_3Mulleklhosgal/Sigmoid:y:0leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_3Л
leklhosgal/add_3AddV2leklhosgal/mul_2:z:0leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_3Ы
leklhosgal/ReadVariableOp_2ReadVariableOp$leklhosgal_readvariableop_2_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_2Ш
leklhosgal/mul_4Mul#leklhosgal/ReadVariableOp_2:value:0leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_4Р
leklhosgal/add_4AddV2leklhosgal/split:output:3leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_4
leklhosgal/Sigmoid_2Sigmoidleklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_2v
leklhosgal/Tanh_1Tanhleklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Tanh_1О
leklhosgal/mul_5Mulleklhosgal/Sigmoid_2:y:0leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)leklhosgal_matmul_readvariableop_resource+leklhosgal_matmul_1_readvariableop_resource*leklhosgal_biasadd_readvariableop_resource"leklhosgal_readvariableop_resource$leklhosgal_readvariableop_1_resource$leklhosgal_readvariableop_2_resource*
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
while_body_359758*
condR
while_cond_359757*Q
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
IdentityIdentitystrided_slice_3:output:0"^leklhosgal/BiasAdd/ReadVariableOp!^leklhosgal/MatMul/ReadVariableOp#^leklhosgal/MatMul_1/ReadVariableOp^leklhosgal/ReadVariableOp^leklhosgal/ReadVariableOp_1^leklhosgal/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2F
!leklhosgal/BiasAdd/ReadVariableOp!leklhosgal/BiasAdd/ReadVariableOp2D
 leklhosgal/MatMul/ReadVariableOp leklhosgal/MatMul/ReadVariableOp2H
"leklhosgal/MatMul_1/ReadVariableOp"leklhosgal/MatMul_1/ReadVariableOp26
leklhosgal/ReadVariableOpleklhosgal/ReadVariableOp2:
leklhosgal/ReadVariableOp_1leklhosgal/ReadVariableOp_12:
leklhosgal/ReadVariableOp_2leklhosgal/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
Г

х
while_cond_356057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356057___redundant_placeholder04
0while_while_cond_356057___redundant_placeholder14
0while_while_cond_356057___redundant_placeholder24
0while_while_cond_356057___redundant_placeholder34
0while_while_cond_356057___redundant_placeholder44
0while_while_cond_356057___redundant_placeholder54
0while_while_cond_356057___redundant_placeholder6
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
ЩF
у
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_356138

inputs$
leklhosgal_356039:	 А$
leklhosgal_356041:	 А 
leklhosgal_356043:	А
leklhosgal_356045: 
leklhosgal_356047: 
leklhosgal_356049: 
identityИв"leklhosgal/StatefulPartitionedCallвwhileD
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
"leklhosgal/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0leklhosgal_356039leklhosgal_356041leklhosgal_356043leklhosgal_356045leklhosgal_356047leklhosgal_356049*
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
F__inference_leklhosgal_layer_call_and_return_conditional_losses_3560382$
"leklhosgal/StatefulPartitionedCallП
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0leklhosgal_356039leklhosgal_356041leklhosgal_356043leklhosgal_356045leklhosgal_356047leklhosgal_356049*
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
while_body_356058*
condR
while_cond_356057*Q
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
IdentityIdentitystrided_slice_3:output:0#^leklhosgal/StatefulPartitionedCall^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2H
"leklhosgal/StatefulPartitionedCall"leklhosgal/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
Юh
Д
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_357635

inputs<
)gfpcpbbmvi_matmul_readvariableop_resource:	А>
+gfpcpbbmvi_matmul_1_readvariableop_resource:	 А9
*gfpcpbbmvi_biasadd_readvariableop_resource:	А0
"gfpcpbbmvi_readvariableop_resource: 2
$gfpcpbbmvi_readvariableop_1_resource: 2
$gfpcpbbmvi_readvariableop_2_resource: 
identityИв!gfpcpbbmvi/BiasAdd/ReadVariableOpв gfpcpbbmvi/MatMul/ReadVariableOpв"gfpcpbbmvi/MatMul_1/ReadVariableOpвgfpcpbbmvi/ReadVariableOpвgfpcpbbmvi/ReadVariableOp_1вgfpcpbbmvi/ReadVariableOp_2вwhileD
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
 gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp)gfpcpbbmvi_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 gfpcpbbmvi/MatMul/ReadVariableOpз
gfpcpbbmvi/MatMulMatMulstrided_slice_2:output:0(gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul╡
"gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOp+gfpcpbbmvi_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"gfpcpbbmvi/MatMul_1/ReadVariableOpг
gfpcpbbmvi/MatMul_1MatMulzeros:output:0*gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/MatMul_1Ш
gfpcpbbmvi/addAddV2gfpcpbbmvi/MatMul:product:0gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/addо
!gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp*gfpcpbbmvi_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!gfpcpbbmvi/BiasAdd/ReadVariableOpе
gfpcpbbmvi/BiasAddBiasAddgfpcpbbmvi/add:z:0)gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
gfpcpbbmvi/BiasAddz
gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
gfpcpbbmvi/split/split_dimы
gfpcpbbmvi/splitSplit#gfpcpbbmvi/split/split_dim:output:0gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
gfpcpbbmvi/splitХ
gfpcpbbmvi/ReadVariableOpReadVariableOp"gfpcpbbmvi_readvariableop_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOpО
gfpcpbbmvi/mulMul!gfpcpbbmvi/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mulО
gfpcpbbmvi/add_1AddV2gfpcpbbmvi/split:output:0gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_1{
gfpcpbbmvi/SigmoidSigmoidgfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/SigmoidЫ
gfpcpbbmvi/ReadVariableOp_1ReadVariableOp$gfpcpbbmvi_readvariableop_1_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_1Ф
gfpcpbbmvi/mul_1Mul#gfpcpbbmvi/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_1Р
gfpcpbbmvi/add_2AddV2gfpcpbbmvi/split:output:1gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_2
gfpcpbbmvi/Sigmoid_1Sigmoidgfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_1Й
gfpcpbbmvi/mul_2Mulgfpcpbbmvi/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_2w
gfpcpbbmvi/TanhTanhgfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2
gfpcpbbmvi/TanhК
gfpcpbbmvi/mul_3Mulgfpcpbbmvi/Sigmoid:y:0gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_3Л
gfpcpbbmvi/add_3AddV2gfpcpbbmvi/mul_2:z:0gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_3Ы
gfpcpbbmvi/ReadVariableOp_2ReadVariableOp$gfpcpbbmvi_readvariableop_2_resource*
_output_shapes
: *
dtype02
gfpcpbbmvi/ReadVariableOp_2Ш
gfpcpbbmvi/mul_4Mul#gfpcpbbmvi/ReadVariableOp_2:value:0gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_4Р
gfpcpbbmvi/add_4AddV2gfpcpbbmvi/split:output:3gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/add_4
gfpcpbbmvi/Sigmoid_2Sigmoidgfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Sigmoid_2v
gfpcpbbmvi/Tanh_1Tanhgfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/Tanh_1О
gfpcpbbmvi/mul_5Mulgfpcpbbmvi/Sigmoid_2:y:0gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2
gfpcpbbmvi/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gfpcpbbmvi_matmul_readvariableop_resource+gfpcpbbmvi_matmul_1_readvariableop_resource*gfpcpbbmvi_biasadd_readvariableop_resource"gfpcpbbmvi_readvariableop_resource$gfpcpbbmvi_readvariableop_1_resource$gfpcpbbmvi_readvariableop_2_resource*
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
while_body_357534*
condR
while_cond_357533*Q
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
IdentityIdentitytranspose_1:y:0"^gfpcpbbmvi/BiasAdd/ReadVariableOp!^gfpcpbbmvi/MatMul/ReadVariableOp#^gfpcpbbmvi/MatMul_1/ReadVariableOp^gfpcpbbmvi/ReadVariableOp^gfpcpbbmvi/ReadVariableOp_1^gfpcpbbmvi/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!gfpcpbbmvi/BiasAdd/ReadVariableOp!gfpcpbbmvi/BiasAdd/ReadVariableOp2D
 gfpcpbbmvi/MatMul/ReadVariableOp gfpcpbbmvi/MatMul/ReadVariableOp2H
"gfpcpbbmvi/MatMul_1/ReadVariableOp"gfpcpbbmvi/MatMul_1/ReadVariableOp26
gfpcpbbmvi/ReadVariableOpgfpcpbbmvi/ReadVariableOp2:
gfpcpbbmvi/ReadVariableOp_1gfpcpbbmvi/ReadVariableOp_12:
gfpcpbbmvi/ReadVariableOp_2gfpcpbbmvi/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╤
Г
+__inference_tgargouhhw_layer_call_fn_360467

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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_3574212
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
Р
Г
tgargouhhw_while_cond_3586452
.tgargouhhw_while_tgargouhhw_while_loop_counter8
4tgargouhhw_while_tgargouhhw_while_maximum_iterations 
tgargouhhw_while_placeholder"
tgargouhhw_while_placeholder_1"
tgargouhhw_while_placeholder_2"
tgargouhhw_while_placeholder_34
0tgargouhhw_while_less_tgargouhhw_strided_slice_1J
Ftgargouhhw_while_tgargouhhw_while_cond_358645___redundant_placeholder0J
Ftgargouhhw_while_tgargouhhw_while_cond_358645___redundant_placeholder1J
Ftgargouhhw_while_tgargouhhw_while_cond_358645___redundant_placeholder2J
Ftgargouhhw_while_tgargouhhw_while_cond_358645___redundant_placeholder3J
Ftgargouhhw_while_tgargouhhw_while_cond_358645___redundant_placeholder4J
Ftgargouhhw_while_tgargouhhw_while_cond_358645___redundant_placeholder5J
Ftgargouhhw_while_tgargouhhw_while_cond_358645___redundant_placeholder6
tgargouhhw_while_identity
з
tgargouhhw/while/LessLesstgargouhhw_while_placeholder0tgargouhhw_while_less_tgargouhhw_strided_slice_1*
T0*
_output_shapes
: 2
tgargouhhw/while/Less~
tgargouhhw/while/IdentityIdentitytgargouhhw/while/Less:z:0*
T0
*
_output_shapes
: 2
tgargouhhw/while/Identity"?
tgargouhhw_while_identity"tgargouhhw/while/Identity:output:0*(
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
while_cond_357044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357044___redundant_placeholder04
0while_while_cond_357044___redundant_placeholder14
0while_while_cond_357044___redundant_placeholder24
0while_while_cond_357044___redundant_placeholder34
0while_while_cond_357044___redundant_placeholder44
0while_while_cond_357044___redundant_placeholder54
0while_while_cond_357044___redundant_placeholder6
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
█Ж
О
'sequential_eluvehoiqy_while_body_354910H
Dsequential_eluvehoiqy_while_sequential_eluvehoiqy_while_loop_counterN
Jsequential_eluvehoiqy_while_sequential_eluvehoiqy_while_maximum_iterations+
'sequential_eluvehoiqy_while_placeholder-
)sequential_eluvehoiqy_while_placeholder_1-
)sequential_eluvehoiqy_while_placeholder_2-
)sequential_eluvehoiqy_while_placeholder_3G
Csequential_eluvehoiqy_while_sequential_eluvehoiqy_strided_slice_1_0Г
sequential_eluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_sequential_eluvehoiqy_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource_0:	А\
Isequential_eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource_0:	 АW
Hsequential_eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource_0:	АN
@sequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource_0: P
Bsequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource_0: P
Bsequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource_0: (
$sequential_eluvehoiqy_while_identity*
&sequential_eluvehoiqy_while_identity_1*
&sequential_eluvehoiqy_while_identity_2*
&sequential_eluvehoiqy_while_identity_3*
&sequential_eluvehoiqy_while_identity_4*
&sequential_eluvehoiqy_while_identity_5E
Asequential_eluvehoiqy_while_sequential_eluvehoiqy_strided_slice_1Б
}sequential_eluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_sequential_eluvehoiqy_tensorarrayunstack_tensorlistfromtensorX
Esequential_eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource:	АZ
Gsequential_eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource:	 АU
Fsequential_eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource:	АL
>sequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource: N
@sequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource: N
@sequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource: Ив=sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOpв<sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOpв>sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOpв5sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOpв7sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1в7sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2я
Msequential/eluvehoiqy/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2O
Msequential/eluvehoiqy/while/TensorArrayV2Read/TensorListGetItem/element_shape╫
?sequential/eluvehoiqy/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_eluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_sequential_eluvehoiqy_tensorarrayunstack_tensorlistfromtensor_0'sequential_eluvehoiqy_while_placeholderVsequential/eluvehoiqy/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02A
?sequential/eluvehoiqy/while/TensorArrayV2Read/TensorListGetItemЕ
<sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOpGsequential_eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02>
<sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOpй
-sequential/eluvehoiqy/while/gfpcpbbmvi/MatMulMatMulFsequential/eluvehoiqy/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2/
-sequential/eluvehoiqy/while/gfpcpbbmvi/MatMulЛ
>sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOpIsequential_eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02@
>sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOpТ
/sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1MatMul)sequential_eluvehoiqy_while_placeholder_2Fsequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А21
/sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1И
*sequential/eluvehoiqy/while/gfpcpbbmvi/addAddV27sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul:product:09sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2,
*sequential/eluvehoiqy/while/gfpcpbbmvi/addД
=sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOpHsequential_eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOpХ
.sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAddBiasAdd.sequential/eluvehoiqy/while/gfpcpbbmvi/add:z:0Esequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А20
.sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd▓
6sequential/eluvehoiqy/while/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/eluvehoiqy/while/gfpcpbbmvi/split/split_dim█
,sequential/eluvehoiqy/while/gfpcpbbmvi/splitSplit?sequential/eluvehoiqy/while/gfpcpbbmvi/split/split_dim:output:07sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2.
,sequential/eluvehoiqy/while/gfpcpbbmvi/splitы
5sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOpReadVariableOp@sequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource_0*
_output_shapes
: *
dtype027
5sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp√
*sequential/eluvehoiqy/while/gfpcpbbmvi/mulMul=sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp:value:0)sequential_eluvehoiqy_while_placeholder_3*
T0*'
_output_shapes
:          2,
*sequential/eluvehoiqy/while/gfpcpbbmvi/mul■
,sequential/eluvehoiqy/while/gfpcpbbmvi/add_1AddV25sequential/eluvehoiqy/while/gfpcpbbmvi/split:output:0.sequential/eluvehoiqy/while/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2.
,sequential/eluvehoiqy/while/gfpcpbbmvi/add_1╧
.sequential/eluvehoiqy/while/gfpcpbbmvi/SigmoidSigmoid0sequential/eluvehoiqy/while/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          20
.sequential/eluvehoiqy/while/gfpcpbbmvi/Sigmoidё
7sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1ReadVariableOpBsequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource_0*
_output_shapes
: *
dtype029
7sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1Б
,sequential/eluvehoiqy/while/gfpcpbbmvi/mul_1Mul?sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_1:value:0)sequential_eluvehoiqy_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/eluvehoiqy/while/gfpcpbbmvi/mul_1А
,sequential/eluvehoiqy/while/gfpcpbbmvi/add_2AddV25sequential/eluvehoiqy/while/gfpcpbbmvi/split:output:10sequential/eluvehoiqy/while/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2.
,sequential/eluvehoiqy/while/gfpcpbbmvi/add_2╙
0sequential/eluvehoiqy/while/gfpcpbbmvi/Sigmoid_1Sigmoid0sequential/eluvehoiqy/while/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          22
0sequential/eluvehoiqy/while/gfpcpbbmvi/Sigmoid_1Ў
,sequential/eluvehoiqy/while/gfpcpbbmvi/mul_2Mul4sequential/eluvehoiqy/while/gfpcpbbmvi/Sigmoid_1:y:0)sequential_eluvehoiqy_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/eluvehoiqy/while/gfpcpbbmvi/mul_2╦
+sequential/eluvehoiqy/while/gfpcpbbmvi/TanhTanh5sequential/eluvehoiqy/while/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2-
+sequential/eluvehoiqy/while/gfpcpbbmvi/Tanh·
,sequential/eluvehoiqy/while/gfpcpbbmvi/mul_3Mul2sequential/eluvehoiqy/while/gfpcpbbmvi/Sigmoid:y:0/sequential/eluvehoiqy/while/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2.
,sequential/eluvehoiqy/while/gfpcpbbmvi/mul_3√
,sequential/eluvehoiqy/while/gfpcpbbmvi/add_3AddV20sequential/eluvehoiqy/while/gfpcpbbmvi/mul_2:z:00sequential/eluvehoiqy/while/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/eluvehoiqy/while/gfpcpbbmvi/add_3ё
7sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2ReadVariableOpBsequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource_0*
_output_shapes
: *
dtype029
7sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2И
,sequential/eluvehoiqy/while/gfpcpbbmvi/mul_4Mul?sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2:value:00sequential/eluvehoiqy/while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/eluvehoiqy/while/gfpcpbbmvi/mul_4А
,sequential/eluvehoiqy/while/gfpcpbbmvi/add_4AddV25sequential/eluvehoiqy/while/gfpcpbbmvi/split:output:30sequential/eluvehoiqy/while/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2.
,sequential/eluvehoiqy/while/gfpcpbbmvi/add_4╙
0sequential/eluvehoiqy/while/gfpcpbbmvi/Sigmoid_2Sigmoid0sequential/eluvehoiqy/while/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          22
0sequential/eluvehoiqy/while/gfpcpbbmvi/Sigmoid_2╩
-sequential/eluvehoiqy/while/gfpcpbbmvi/Tanh_1Tanh0sequential/eluvehoiqy/while/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2/
-sequential/eluvehoiqy/while/gfpcpbbmvi/Tanh_1■
,sequential/eluvehoiqy/while/gfpcpbbmvi/mul_5Mul4sequential/eluvehoiqy/while/gfpcpbbmvi/Sigmoid_2:y:01sequential/eluvehoiqy/while/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2.
,sequential/eluvehoiqy/while/gfpcpbbmvi/mul_5╠
@sequential/eluvehoiqy/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_eluvehoiqy_while_placeholder_1'sequential_eluvehoiqy_while_placeholder0sequential/eluvehoiqy/while/gfpcpbbmvi/mul_5:z:0*
_output_shapes
: *
element_dtype02B
@sequential/eluvehoiqy/while/TensorArrayV2Write/TensorListSetItemИ
!sequential/eluvehoiqy/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/eluvehoiqy/while/add/y┴
sequential/eluvehoiqy/while/addAddV2'sequential_eluvehoiqy_while_placeholder*sequential/eluvehoiqy/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/eluvehoiqy/while/addМ
#sequential/eluvehoiqy/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/eluvehoiqy/while/add_1/yф
!sequential/eluvehoiqy/while/add_1AddV2Dsequential_eluvehoiqy_while_sequential_eluvehoiqy_while_loop_counter,sequential/eluvehoiqy/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/eluvehoiqy/while/add_1М
$sequential/eluvehoiqy/while/IdentityIdentity%sequential/eluvehoiqy/while/add_1:z:0>^sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp=^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp?^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp6^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp8^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_18^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2&
$sequential/eluvehoiqy/while/Identity╡
&sequential/eluvehoiqy/while/Identity_1IdentityJsequential_eluvehoiqy_while_sequential_eluvehoiqy_while_maximum_iterations>^sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp=^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp?^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp6^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp8^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_18^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/eluvehoiqy/while/Identity_1О
&sequential/eluvehoiqy/while/Identity_2Identity#sequential/eluvehoiqy/while/add:z:0>^sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp=^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp?^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp6^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp8^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_18^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/eluvehoiqy/while/Identity_2╗
&sequential/eluvehoiqy/while/Identity_3IdentityPsequential/eluvehoiqy/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp=^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp?^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp6^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp8^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_18^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/eluvehoiqy/while/Identity_3м
&sequential/eluvehoiqy/while/Identity_4Identity0sequential/eluvehoiqy/while/gfpcpbbmvi/mul_5:z:0>^sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp=^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp?^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp6^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp8^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_18^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/eluvehoiqy/while/Identity_4м
&sequential/eluvehoiqy/while/Identity_5Identity0sequential/eluvehoiqy/while/gfpcpbbmvi/add_3:z:0>^sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp=^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp?^sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp6^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp8^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_18^sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/eluvehoiqy/while/Identity_5"Т
Fsequential_eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resourceHsequential_eluvehoiqy_while_gfpcpbbmvi_biasadd_readvariableop_resource_0"Ф
Gsequential_eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resourceIsequential_eluvehoiqy_while_gfpcpbbmvi_matmul_1_readvariableop_resource_0"Р
Esequential_eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resourceGsequential_eluvehoiqy_while_gfpcpbbmvi_matmul_readvariableop_resource_0"Ж
@sequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resourceBsequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_1_resource_0"Ж
@sequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resourceBsequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_2_resource_0"В
>sequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource@sequential_eluvehoiqy_while_gfpcpbbmvi_readvariableop_resource_0"U
$sequential_eluvehoiqy_while_identity-sequential/eluvehoiqy/while/Identity:output:0"Y
&sequential_eluvehoiqy_while_identity_1/sequential/eluvehoiqy/while/Identity_1:output:0"Y
&sequential_eluvehoiqy_while_identity_2/sequential/eluvehoiqy/while/Identity_2:output:0"Y
&sequential_eluvehoiqy_while_identity_3/sequential/eluvehoiqy/while/Identity_3:output:0"Y
&sequential_eluvehoiqy_while_identity_4/sequential/eluvehoiqy/while/Identity_4:output:0"Y
&sequential_eluvehoiqy_while_identity_5/sequential/eluvehoiqy/while/Identity_5:output:0"И
Asequential_eluvehoiqy_while_sequential_eluvehoiqy_strided_slice_1Csequential_eluvehoiqy_while_sequential_eluvehoiqy_strided_slice_1_0"А
}sequential_eluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_sequential_eluvehoiqy_tensorarrayunstack_tensorlistfromtensorsequential_eluvehoiqy_while_tensorarrayv2read_tensorlistgetitem_sequential_eluvehoiqy_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2~
=sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp=sequential/eluvehoiqy/while/gfpcpbbmvi/BiasAdd/ReadVariableOp2|
<sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp<sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul/ReadVariableOp2А
>sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp>sequential/eluvehoiqy/while/gfpcpbbmvi/MatMul_1/ReadVariableOp2n
5sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp5sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp2r
7sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_17sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_12r
7sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_27sequential/eluvehoiqy/while/gfpcpbbmvi/ReadVariableOp_2: 
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
while_body_356321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_leklhosgal_356345_0:	 А,
while_leklhosgal_356347_0:	 А(
while_leklhosgal_356349_0:	А'
while_leklhosgal_356351_0: '
while_leklhosgal_356353_0: '
while_leklhosgal_356355_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_leklhosgal_356345:	 А*
while_leklhosgal_356347:	 А&
while_leklhosgal_356349:	А%
while_leklhosgal_356351: %
while_leklhosgal_356353: %
while_leklhosgal_356355: Ив(while/leklhosgal/StatefulPartitionedCall├
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
(while/leklhosgal/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_leklhosgal_356345_0while_leklhosgal_356347_0while_leklhosgal_356349_0while_leklhosgal_356351_0while_leklhosgal_356353_0while_leklhosgal_356355_0*
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
F__inference_leklhosgal_layer_call_and_return_conditional_losses_3562252*
(while/leklhosgal/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/leklhosgal/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/leklhosgal/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/leklhosgal/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/leklhosgal/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/leklhosgal/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/leklhosgal/StatefulPartitionedCall:output:1)^while/leklhosgal/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/leklhosgal/StatefulPartitionedCall:output:2)^while/leklhosgal/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_leklhosgal_356345while_leklhosgal_356345_0"4
while_leklhosgal_356347while_leklhosgal_356347_0"4
while_leklhosgal_356349while_leklhosgal_356349_0"4
while_leklhosgal_356351while_leklhosgal_356351_0"4
while_leklhosgal_356353while_leklhosgal_356353_0"4
while_leklhosgal_356355while_leklhosgal_356355_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2T
(while/leklhosgal/StatefulPartitionedCall(while/leklhosgal/StatefulPartitionedCall: 
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
F__inference_jjfezsyjwn_layer_call_and_return_conditional_losses_356753

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
▀Y
Ж
while_body_360118
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_leklhosgal_matmul_readvariableop_resource_0:	 АF
3while_leklhosgal_matmul_1_readvariableop_resource_0:	 АA
2while_leklhosgal_biasadd_readvariableop_resource_0:	А8
*while_leklhosgal_readvariableop_resource_0: :
,while_leklhosgal_readvariableop_1_resource_0: :
,while_leklhosgal_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_leklhosgal_matmul_readvariableop_resource:	 АD
1while_leklhosgal_matmul_1_readvariableop_resource:	 А?
0while_leklhosgal_biasadd_readvariableop_resource:	А6
(while_leklhosgal_readvariableop_resource: 8
*while_leklhosgal_readvariableop_1_resource: 8
*while_leklhosgal_readvariableop_2_resource: Ив'while/leklhosgal/BiasAdd/ReadVariableOpв&while/leklhosgal/MatMul/ReadVariableOpв(while/leklhosgal/MatMul_1/ReadVariableOpвwhile/leklhosgal/ReadVariableOpв!while/leklhosgal/ReadVariableOp_1в!while/leklhosgal/ReadVariableOp_2├
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
&while/leklhosgal/MatMul/ReadVariableOpReadVariableOp1while_leklhosgal_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/leklhosgal/MatMul/ReadVariableOp╤
while/leklhosgal/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul╔
(while/leklhosgal/MatMul_1/ReadVariableOpReadVariableOp3while_leklhosgal_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/leklhosgal/MatMul_1/ReadVariableOp║
while/leklhosgal/MatMul_1MatMulwhile_placeholder_20while/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/MatMul_1░
while/leklhosgal/addAddV2!while/leklhosgal/MatMul:product:0#while/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/add┬
'while/leklhosgal/BiasAdd/ReadVariableOpReadVariableOp2while_leklhosgal_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/leklhosgal/BiasAdd/ReadVariableOp╜
while/leklhosgal/BiasAddBiasAddwhile/leklhosgal/add:z:0/while/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/leklhosgal/BiasAddЖ
 while/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/leklhosgal/split/split_dimГ
while/leklhosgal/splitSplit)while/leklhosgal/split/split_dim:output:0!while/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/leklhosgal/splitй
while/leklhosgal/ReadVariableOpReadVariableOp*while_leklhosgal_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/leklhosgal/ReadVariableOpг
while/leklhosgal/mulMul'while/leklhosgal/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mulж
while/leklhosgal/add_1AddV2while/leklhosgal/split:output:0while/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_1Н
while/leklhosgal/SigmoidSigmoidwhile/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoidп
!while/leklhosgal/ReadVariableOp_1ReadVariableOp,while_leklhosgal_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_1й
while/leklhosgal/mul_1Mul)while/leklhosgal/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_1и
while/leklhosgal/add_2AddV2while/leklhosgal/split:output:1while/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_2С
while/leklhosgal/Sigmoid_1Sigmoidwhile/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_1Ю
while/leklhosgal/mul_2Mulwhile/leklhosgal/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_2Й
while/leklhosgal/TanhTanhwhile/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanhв
while/leklhosgal/mul_3Mulwhile/leklhosgal/Sigmoid:y:0while/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_3г
while/leklhosgal/add_3AddV2while/leklhosgal/mul_2:z:0while/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_3п
!while/leklhosgal/ReadVariableOp_2ReadVariableOp,while_leklhosgal_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/leklhosgal/ReadVariableOp_2░
while/leklhosgal/mul_4Mul)while/leklhosgal/ReadVariableOp_2:value:0while/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_4и
while/leklhosgal/add_4AddV2while/leklhosgal/split:output:3while/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/add_4С
while/leklhosgal/Sigmoid_2Sigmoidwhile/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Sigmoid_2И
while/leklhosgal/Tanh_1Tanhwhile/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
while/leklhosgal/Tanh_1ж
while/leklhosgal/mul_5Mulwhile/leklhosgal/Sigmoid_2:y:0while/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/leklhosgal/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/leklhosgal/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/leklhosgal/mul_5:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/leklhosgal/add_3:z:0(^while/leklhosgal/BiasAdd/ReadVariableOp'^while/leklhosgal/MatMul/ReadVariableOp)^while/leklhosgal/MatMul_1/ReadVariableOp ^while/leklhosgal/ReadVariableOp"^while/leklhosgal/ReadVariableOp_1"^while/leklhosgal/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"f
0while_leklhosgal_biasadd_readvariableop_resource2while_leklhosgal_biasadd_readvariableop_resource_0"h
1while_leklhosgal_matmul_1_readvariableop_resource3while_leklhosgal_matmul_1_readvariableop_resource_0"d
/while_leklhosgal_matmul_readvariableop_resource1while_leklhosgal_matmul_readvariableop_resource_0"Z
*while_leklhosgal_readvariableop_1_resource,while_leklhosgal_readvariableop_1_resource_0"Z
*while_leklhosgal_readvariableop_2_resource,while_leklhosgal_readvariableop_2_resource_0"V
(while_leklhosgal_readvariableop_resource*while_leklhosgal_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/leklhosgal/BiasAdd/ReadVariableOp'while/leklhosgal/BiasAdd/ReadVariableOp2P
&while/leklhosgal/MatMul/ReadVariableOp&while/leklhosgal/MatMul/ReadVariableOp2T
(while/leklhosgal/MatMul_1/ReadVariableOp(while/leklhosgal/MatMul_1/ReadVariableOp2B
while/leklhosgal/ReadVariableOpwhile/leklhosgal/ReadVariableOp2F
!while/leklhosgal/ReadVariableOp_1!while/leklhosgal/ReadVariableOp_12F
!while/leklhosgal/ReadVariableOp_2!while/leklhosgal/ReadVariableOp_2: 
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
while_body_356058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_leklhosgal_356082_0:	 А,
while_leklhosgal_356084_0:	 А(
while_leklhosgal_356086_0:	А'
while_leklhosgal_356088_0: '
while_leklhosgal_356090_0: '
while_leklhosgal_356092_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_leklhosgal_356082:	 А*
while_leklhosgal_356084:	 А&
while_leklhosgal_356086:	А%
while_leklhosgal_356088: %
while_leklhosgal_356090: %
while_leklhosgal_356092: Ив(while/leklhosgal/StatefulPartitionedCall├
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
(while/leklhosgal/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_leklhosgal_356082_0while_leklhosgal_356084_0while_leklhosgal_356086_0while_leklhosgal_356088_0while_leklhosgal_356090_0while_leklhosgal_356092_0*
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
F__inference_leklhosgal_layer_call_and_return_conditional_losses_3560382*
(while/leklhosgal/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/leklhosgal/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/leklhosgal/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/leklhosgal/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/leklhosgal/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/leklhosgal/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/leklhosgal/StatefulPartitionedCall:output:1)^while/leklhosgal/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/leklhosgal/StatefulPartitionedCall:output:2)^while/leklhosgal/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_leklhosgal_356082while_leklhosgal_356082_0"4
while_leklhosgal_356084while_leklhosgal_356084_0"4
while_leklhosgal_356086while_leklhosgal_356086_0"4
while_leklhosgal_356088while_leklhosgal_356088_0"4
while_leklhosgal_356090while_leklhosgal_356090_0"4
while_leklhosgal_356092while_leklhosgal_356092_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2T
(while/leklhosgal/StatefulPartitionedCall(while/leklhosgal/StatefulPartitionedCall: 
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
┘h
Ж
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_360039
inputs_0<
)leklhosgal_matmul_readvariableop_resource:	 А>
+leklhosgal_matmul_1_readvariableop_resource:	 А9
*leklhosgal_biasadd_readvariableop_resource:	А0
"leklhosgal_readvariableop_resource: 2
$leklhosgal_readvariableop_1_resource: 2
$leklhosgal_readvariableop_2_resource: 
identityИв!leklhosgal/BiasAdd/ReadVariableOpв leklhosgal/MatMul/ReadVariableOpв"leklhosgal/MatMul_1/ReadVariableOpвleklhosgal/ReadVariableOpвleklhosgal/ReadVariableOp_1вleklhosgal/ReadVariableOp_2вwhileF
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
 leklhosgal/MatMul/ReadVariableOpReadVariableOp)leklhosgal_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 leklhosgal/MatMul/ReadVariableOpз
leklhosgal/MatMulMatMulstrided_slice_2:output:0(leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul╡
"leklhosgal/MatMul_1/ReadVariableOpReadVariableOp+leklhosgal_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"leklhosgal/MatMul_1/ReadVariableOpг
leklhosgal/MatMul_1MatMulzeros:output:0*leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/MatMul_1Ш
leklhosgal/addAddV2leklhosgal/MatMul:product:0leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
leklhosgal/addо
!leklhosgal/BiasAdd/ReadVariableOpReadVariableOp*leklhosgal_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!leklhosgal/BiasAdd/ReadVariableOpе
leklhosgal/BiasAddBiasAddleklhosgal/add:z:0)leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
leklhosgal/BiasAddz
leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
leklhosgal/split/split_dimы
leklhosgal/splitSplit#leklhosgal/split/split_dim:output:0leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
leklhosgal/splitХ
leklhosgal/ReadVariableOpReadVariableOp"leklhosgal_readvariableop_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOpО
leklhosgal/mulMul!leklhosgal/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mulО
leklhosgal/add_1AddV2leklhosgal/split:output:0leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_1{
leklhosgal/SigmoidSigmoidleklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/SigmoidЫ
leklhosgal/ReadVariableOp_1ReadVariableOp$leklhosgal_readvariableop_1_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_1Ф
leklhosgal/mul_1Mul#leklhosgal/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_1Р
leklhosgal/add_2AddV2leklhosgal/split:output:1leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_2
leklhosgal/Sigmoid_1Sigmoidleklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_1Й
leklhosgal/mul_2Mulleklhosgal/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_2w
leklhosgal/TanhTanhleklhosgal/split:output:2*
T0*'
_output_shapes
:          2
leklhosgal/TanhК
leklhosgal/mul_3Mulleklhosgal/Sigmoid:y:0leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_3Л
leklhosgal/add_3AddV2leklhosgal/mul_2:z:0leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_3Ы
leklhosgal/ReadVariableOp_2ReadVariableOp$leklhosgal_readvariableop_2_resource*
_output_shapes
: *
dtype02
leklhosgal/ReadVariableOp_2Ш
leklhosgal/mul_4Mul#leklhosgal/ReadVariableOp_2:value:0leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_4Р
leklhosgal/add_4AddV2leklhosgal/split:output:3leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/add_4
leklhosgal/Sigmoid_2Sigmoidleklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Sigmoid_2v
leklhosgal/Tanh_1Tanhleklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2
leklhosgal/Tanh_1О
leklhosgal/mul_5Mulleklhosgal/Sigmoid_2:y:0leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2
leklhosgal/mul_5П
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)leklhosgal_matmul_readvariableop_resource+leklhosgal_matmul_1_readvariableop_resource*leklhosgal_biasadd_readvariableop_resource"leklhosgal_readvariableop_resource$leklhosgal_readvariableop_1_resource$leklhosgal_readvariableop_2_resource*
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
while_body_359938*
condR
while_cond_359937*Q
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
IdentityIdentitystrided_slice_3:output:0"^leklhosgal/BiasAdd/ReadVariableOp!^leklhosgal/MatMul/ReadVariableOp#^leklhosgal/MatMul_1/ReadVariableOp^leklhosgal/ReadVariableOp^leklhosgal/ReadVariableOp_1^leklhosgal/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2F
!leklhosgal/BiasAdd/ReadVariableOp!leklhosgal/BiasAdd/ReadVariableOp2D
 leklhosgal/MatMul/ReadVariableOp leklhosgal/MatMul/ReadVariableOp2H
"leklhosgal/MatMul_1/ReadVariableOp"leklhosgal/MatMul_1/ReadVariableOp26
leklhosgal/ReadVariableOpleklhosgal/ReadVariableOp2:
leklhosgal/ReadVariableOp_1leklhosgal/ReadVariableOp_12:
leklhosgal/ReadVariableOp_2leklhosgal/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
Г

х
while_cond_355562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_355562___redundant_placeholder04
0while_while_cond_355562___redundant_placeholder14
0while_while_cond_355562___redundant_placeholder24
0while_while_cond_355562___redundant_placeholder34
0while_while_cond_355562___redundant_placeholder44
0while_while_cond_355562___redundant_placeholder54
0while_while_cond_355562___redundant_placeholder6
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
╟)
┼
while_body_355300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_gfpcpbbmvi_355324_0:	А,
while_gfpcpbbmvi_355326_0:	 А(
while_gfpcpbbmvi_355328_0:	А'
while_gfpcpbbmvi_355330_0: '
while_gfpcpbbmvi_355332_0: '
while_gfpcpbbmvi_355334_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_gfpcpbbmvi_355324:	А*
while_gfpcpbbmvi_355326:	 А&
while_gfpcpbbmvi_355328:	А%
while_gfpcpbbmvi_355330: %
while_gfpcpbbmvi_355332: %
while_gfpcpbbmvi_355334: Ив(while/gfpcpbbmvi/StatefulPartitionedCall├
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
(while/gfpcpbbmvi/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_gfpcpbbmvi_355324_0while_gfpcpbbmvi_355326_0while_gfpcpbbmvi_355328_0while_gfpcpbbmvi_355330_0while_gfpcpbbmvi_355332_0while_gfpcpbbmvi_355334_0*
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
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_3552802*
(while/gfpcpbbmvi/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gfpcpbbmvi/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/gfpcpbbmvi/StatefulPartitionedCall:output:1)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/gfpcpbbmvi/StatefulPartitionedCall:output:2)^while/gfpcpbbmvi/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5"4
while_gfpcpbbmvi_355324while_gfpcpbbmvi_355324_0"4
while_gfpcpbbmvi_355326while_gfpcpbbmvi_355326_0"4
while_gfpcpbbmvi_355328while_gfpcpbbmvi_355328_0"4
while_gfpcpbbmvi_355330while_gfpcpbbmvi_355330_0"4
while_gfpcpbbmvi_355332while_gfpcpbbmvi_355332_0"4
while_gfpcpbbmvi_355334while_gfpcpbbmvi_355334_0")
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
(while/gfpcpbbmvi/StatefulPartitionedCall(while/gfpcpbbmvi/StatefulPartitionedCall: 
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
!__inference__wrapped_model_355193

khvjuhjlxeW
Asequential_jjfezsyjwn_conv1d_expanddims_1_readvariableop_resource:V
Hsequential_jjfezsyjwn_squeeze_batch_dims_biasadd_readvariableop_resource:R
?sequential_eluvehoiqy_gfpcpbbmvi_matmul_readvariableop_resource:	АT
Asequential_eluvehoiqy_gfpcpbbmvi_matmul_1_readvariableop_resource:	 АO
@sequential_eluvehoiqy_gfpcpbbmvi_biasadd_readvariableop_resource:	АF
8sequential_eluvehoiqy_gfpcpbbmvi_readvariableop_resource: H
:sequential_eluvehoiqy_gfpcpbbmvi_readvariableop_1_resource: H
:sequential_eluvehoiqy_gfpcpbbmvi_readvariableop_2_resource: R
?sequential_tgargouhhw_leklhosgal_matmul_readvariableop_resource:	 АT
Asequential_tgargouhhw_leklhosgal_matmul_1_readvariableop_resource:	 АO
@sequential_tgargouhhw_leklhosgal_biasadd_readvariableop_resource:	АF
8sequential_tgargouhhw_leklhosgal_readvariableop_resource: H
:sequential_tgargouhhw_leklhosgal_readvariableop_1_resource: H
:sequential_tgargouhhw_leklhosgal_readvariableop_2_resource: F
4sequential_jhbguimgvq_matmul_readvariableop_resource: C
5sequential_jhbguimgvq_biasadd_readvariableop_resource:
identityИв7sequential/eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOpв6sequential/eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOpв8sequential/eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOpв/sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOpв1sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1в1sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2вsequential/eluvehoiqy/whileв,sequential/jhbguimgvq/BiasAdd/ReadVariableOpв+sequential/jhbguimgvq/MatMul/ReadVariableOpв8sequential/jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOpв?sequential/jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOpв7sequential/tgargouhhw/leklhosgal/BiasAdd/ReadVariableOpв6sequential/tgargouhhw/leklhosgal/MatMul/ReadVariableOpв8sequential/tgargouhhw/leklhosgal/MatMul_1/ReadVariableOpв/sequential/tgargouhhw/leklhosgal/ReadVariableOpв1sequential/tgargouhhw/leklhosgal/ReadVariableOp_1в1sequential/tgargouhhw/leklhosgal/ReadVariableOp_2вsequential/tgargouhhw/whileе
+sequential/jjfezsyjwn/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2-
+sequential/jjfezsyjwn/conv1d/ExpandDims/dimр
'sequential/jjfezsyjwn/conv1d/ExpandDims
ExpandDims
khvjuhjlxe4sequential/jjfezsyjwn/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:         2)
'sequential/jjfezsyjwn/conv1d/ExpandDims·
8sequential/jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_jjfezsyjwn_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02:
8sequential/jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOpа
-sequential/jjfezsyjwn/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential/jjfezsyjwn/conv1d/ExpandDims_1/dimП
)sequential/jjfezsyjwn/conv1d/ExpandDims_1
ExpandDims@sequential/jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential/jjfezsyjwn/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2+
)sequential/jjfezsyjwn/conv1d/ExpandDims_1и
"sequential/jjfezsyjwn/conv1d/ShapeShape0sequential/jjfezsyjwn/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2$
"sequential/jjfezsyjwn/conv1d/Shapeо
0sequential/jjfezsyjwn/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential/jjfezsyjwn/conv1d/strided_slice/stack╗
2sequential/jjfezsyjwn/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¤        24
2sequential/jjfezsyjwn/conv1d/strided_slice/stack_1▓
2sequential/jjfezsyjwn/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/jjfezsyjwn/conv1d/strided_slice/stack_2О
*sequential/jjfezsyjwn/conv1d/strided_sliceStridedSlice+sequential/jjfezsyjwn/conv1d/Shape:output:09sequential/jjfezsyjwn/conv1d/strided_slice/stack:output:0;sequential/jjfezsyjwn/conv1d/strided_slice/stack_1:output:0;sequential/jjfezsyjwn/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2,
*sequential/jjfezsyjwn/conv1d/strided_slice▒
*sequential/jjfezsyjwn/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*sequential/jjfezsyjwn/conv1d/Reshape/shape°
$sequential/jjfezsyjwn/conv1d/ReshapeReshape0sequential/jjfezsyjwn/conv1d/ExpandDims:output:03sequential/jjfezsyjwn/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:         2&
$sequential/jjfezsyjwn/conv1d/ReshapeЪ
#sequential/jjfezsyjwn/conv1d/Conv2DConv2D-sequential/jjfezsyjwn/conv1d/Reshape:output:02sequential/jjfezsyjwn/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2%
#sequential/jjfezsyjwn/conv1d/Conv2D▒
,sequential/jjfezsyjwn/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2.
,sequential/jjfezsyjwn/conv1d/concat/values_1Я
(sequential/jjfezsyjwn/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2*
(sequential/jjfezsyjwn/conv1d/concat/axisг
#sequential/jjfezsyjwn/conv1d/concatConcatV23sequential/jjfezsyjwn/conv1d/strided_slice:output:05sequential/jjfezsyjwn/conv1d/concat/values_1:output:01sequential/jjfezsyjwn/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/jjfezsyjwn/conv1d/concatї
&sequential/jjfezsyjwn/conv1d/Reshape_1Reshape,sequential/jjfezsyjwn/conv1d/Conv2D:output:0,sequential/jjfezsyjwn/conv1d/concat:output:0*
T0*3
_output_shapes!
:         2(
&sequential/jjfezsyjwn/conv1d/Reshape_1т
$sequential/jjfezsyjwn/conv1d/SqueezeSqueeze/sequential/jjfezsyjwn/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:         *
squeeze_dims

¤        2&
$sequential/jjfezsyjwn/conv1d/Squeeze╜
.sequential/jjfezsyjwn/squeeze_batch_dims/ShapeShape-sequential/jjfezsyjwn/conv1d/Squeeze:output:0*
T0*
_output_shapes
:20
.sequential/jjfezsyjwn/squeeze_batch_dims/Shape╞
<sequential/jjfezsyjwn/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential/jjfezsyjwn/squeeze_batch_dims/strided_slice/stack╙
>sequential/jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        2@
>sequential/jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_1╩
>sequential/jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential/jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_2╓
6sequential/jjfezsyjwn/squeeze_batch_dims/strided_sliceStridedSlice7sequential/jjfezsyjwn/squeeze_batch_dims/Shape:output:0Esequential/jjfezsyjwn/squeeze_batch_dims/strided_slice/stack:output:0Gsequential/jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_1:output:0Gsequential/jjfezsyjwn/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask28
6sequential/jjfezsyjwn/squeeze_batch_dims/strided_slice┼
6sequential/jjfezsyjwn/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          28
6sequential/jjfezsyjwn/squeeze_batch_dims/Reshape/shapeХ
0sequential/jjfezsyjwn/squeeze_batch_dims/ReshapeReshape-sequential/jjfezsyjwn/conv1d/Squeeze:output:0?sequential/jjfezsyjwn/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:         22
0sequential/jjfezsyjwn/squeeze_batch_dims/ReshapeЗ
?sequential/jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOpHsequential_jjfezsyjwn_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02A
?sequential/jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOpй
0sequential/jjfezsyjwn/squeeze_batch_dims/BiasAddBiasAdd9sequential/jjfezsyjwn/squeeze_batch_dims/Reshape:output:0Gsequential/jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         22
0sequential/jjfezsyjwn/squeeze_batch_dims/BiasAdd┼
8sequential/jjfezsyjwn/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential/jjfezsyjwn/squeeze_batch_dims/concat/values_1╖
4sequential/jjfezsyjwn/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         26
4sequential/jjfezsyjwn/squeeze_batch_dims/concat/axis▀
/sequential/jjfezsyjwn/squeeze_batch_dims/concatConcatV2?sequential/jjfezsyjwn/squeeze_batch_dims/strided_slice:output:0Asequential/jjfezsyjwn/squeeze_batch_dims/concat/values_1:output:0=sequential/jjfezsyjwn/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:21
/sequential/jjfezsyjwn/squeeze_batch_dims/concatв
2sequential/jjfezsyjwn/squeeze_batch_dims/Reshape_1Reshape9sequential/jjfezsyjwn/squeeze_batch_dims/BiasAdd:output:08sequential/jjfezsyjwn/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:         24
2sequential/jjfezsyjwn/squeeze_batch_dims/Reshape_1е
sequential/whckbkkggk/ShapeShape;sequential/jjfezsyjwn/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
sequential/whckbkkggk/Shapeа
)sequential/whckbkkggk/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/whckbkkggk/strided_slice/stackд
+sequential/whckbkkggk/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/whckbkkggk/strided_slice/stack_1д
+sequential/whckbkkggk/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/whckbkkggk/strided_slice/stack_2ц
#sequential/whckbkkggk/strided_sliceStridedSlice$sequential/whckbkkggk/Shape:output:02sequential/whckbkkggk/strided_slice/stack:output:04sequential/whckbkkggk/strided_slice/stack_1:output:04sequential/whckbkkggk/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/whckbkkggk/strided_sliceР
%sequential/whckbkkggk/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/whckbkkggk/Reshape/shape/1Р
%sequential/whckbkkggk/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/whckbkkggk/Reshape/shape/2О
#sequential/whckbkkggk/Reshape/shapePack,sequential/whckbkkggk/strided_slice:output:0.sequential/whckbkkggk/Reshape/shape/1:output:0.sequential/whckbkkggk/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2%
#sequential/whckbkkggk/Reshape/shapeъ
sequential/whckbkkggk/ReshapeReshape;sequential/jjfezsyjwn/squeeze_batch_dims/Reshape_1:output:0,sequential/whckbkkggk/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
sequential/whckbkkggk/ReshapeР
sequential/eluvehoiqy/ShapeShape&sequential/whckbkkggk/Reshape:output:0*
T0*
_output_shapes
:2
sequential/eluvehoiqy/Shapeа
)sequential/eluvehoiqy/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/eluvehoiqy/strided_slice/stackд
+sequential/eluvehoiqy/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/eluvehoiqy/strided_slice/stack_1д
+sequential/eluvehoiqy/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/eluvehoiqy/strided_slice/stack_2ц
#sequential/eluvehoiqy/strided_sliceStridedSlice$sequential/eluvehoiqy/Shape:output:02sequential/eluvehoiqy/strided_slice/stack:output:04sequential/eluvehoiqy/strided_slice/stack_1:output:04sequential/eluvehoiqy/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/eluvehoiqy/strided_sliceИ
!sequential/eluvehoiqy/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential/eluvehoiqy/zeros/mul/y─
sequential/eluvehoiqy/zeros/mulMul,sequential/eluvehoiqy/strided_slice:output:0*sequential/eluvehoiqy/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/eluvehoiqy/zeros/mulЛ
"sequential/eluvehoiqy/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential/eluvehoiqy/zeros/Less/y┐
 sequential/eluvehoiqy/zeros/LessLess#sequential/eluvehoiqy/zeros/mul:z:0+sequential/eluvehoiqy/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/eluvehoiqy/zeros/LessО
$sequential/eluvehoiqy/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential/eluvehoiqy/zeros/packed/1█
"sequential/eluvehoiqy/zeros/packedPack,sequential/eluvehoiqy/strided_slice:output:0-sequential/eluvehoiqy/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/eluvehoiqy/zeros/packedЛ
!sequential/eluvehoiqy/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/eluvehoiqy/zeros/Const═
sequential/eluvehoiqy/zerosFill+sequential/eluvehoiqy/zeros/packed:output:0*sequential/eluvehoiqy/zeros/Const:output:0*
T0*'
_output_shapes
:          2
sequential/eluvehoiqy/zerosМ
#sequential/eluvehoiqy/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential/eluvehoiqy/zeros_1/mul/y╩
!sequential/eluvehoiqy/zeros_1/mulMul,sequential/eluvehoiqy/strided_slice:output:0,sequential/eluvehoiqy/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/eluvehoiqy/zeros_1/mulП
$sequential/eluvehoiqy/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2&
$sequential/eluvehoiqy/zeros_1/Less/y╟
"sequential/eluvehoiqy/zeros_1/LessLess%sequential/eluvehoiqy/zeros_1/mul:z:0-sequential/eluvehoiqy/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/eluvehoiqy/zeros_1/LessТ
&sequential/eluvehoiqy/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/eluvehoiqy/zeros_1/packed/1с
$sequential/eluvehoiqy/zeros_1/packedPack,sequential/eluvehoiqy/strided_slice:output:0/sequential/eluvehoiqy/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/eluvehoiqy/zeros_1/packedП
#sequential/eluvehoiqy/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/eluvehoiqy/zeros_1/Const╒
sequential/eluvehoiqy/zeros_1Fill-sequential/eluvehoiqy/zeros_1/packed:output:0,sequential/eluvehoiqy/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
sequential/eluvehoiqy/zeros_1б
$sequential/eluvehoiqy/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/eluvehoiqy/transpose/perm▄
sequential/eluvehoiqy/transpose	Transpose&sequential/whckbkkggk/Reshape:output:0-sequential/eluvehoiqy/transpose/perm:output:0*
T0*+
_output_shapes
:         2!
sequential/eluvehoiqy/transposeС
sequential/eluvehoiqy/Shape_1Shape#sequential/eluvehoiqy/transpose:y:0*
T0*
_output_shapes
:2
sequential/eluvehoiqy/Shape_1д
+sequential/eluvehoiqy/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/eluvehoiqy/strided_slice_1/stackи
-sequential/eluvehoiqy/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/eluvehoiqy/strided_slice_1/stack_1и
-sequential/eluvehoiqy/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/eluvehoiqy/strided_slice_1/stack_2Є
%sequential/eluvehoiqy/strided_slice_1StridedSlice&sequential/eluvehoiqy/Shape_1:output:04sequential/eluvehoiqy/strided_slice_1/stack:output:06sequential/eluvehoiqy/strided_slice_1/stack_1:output:06sequential/eluvehoiqy/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/eluvehoiqy/strided_slice_1▒
1sequential/eluvehoiqy/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         23
1sequential/eluvehoiqy/TensorArrayV2/element_shapeК
#sequential/eluvehoiqy/TensorArrayV2TensorListReserve:sequential/eluvehoiqy/TensorArrayV2/element_shape:output:0.sequential/eluvehoiqy/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/eluvehoiqy/TensorArrayV2ы
Ksequential/eluvehoiqy/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2M
Ksequential/eluvehoiqy/TensorArrayUnstack/TensorListFromTensor/element_shape╨
=sequential/eluvehoiqy/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/eluvehoiqy/transpose:y:0Tsequential/eluvehoiqy/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/eluvehoiqy/TensorArrayUnstack/TensorListFromTensorд
+sequential/eluvehoiqy/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/eluvehoiqy/strided_slice_2/stackи
-sequential/eluvehoiqy/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/eluvehoiqy/strided_slice_2/stack_1и
-sequential/eluvehoiqy/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/eluvehoiqy/strided_slice_2/stack_2А
%sequential/eluvehoiqy/strided_slice_2StridedSlice#sequential/eluvehoiqy/transpose:y:04sequential/eluvehoiqy/strided_slice_2/stack:output:06sequential/eluvehoiqy/strided_slice_2/stack_1:output:06sequential/eluvehoiqy/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2'
%sequential/eluvehoiqy/strided_slice_2ё
6sequential/eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOpReadVariableOp?sequential_eluvehoiqy_gfpcpbbmvi_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype028
6sequential/eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp 
'sequential/eluvehoiqy/gfpcpbbmvi/MatMulMatMul.sequential/eluvehoiqy/strided_slice_2:output:0>sequential/eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2)
'sequential/eluvehoiqy/gfpcpbbmvi/MatMulў
8sequential/eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOpReadVariableOpAsequential_eluvehoiqy_gfpcpbbmvi_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02:
8sequential/eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp√
)sequential/eluvehoiqy/gfpcpbbmvi/MatMul_1MatMul$sequential/eluvehoiqy/zeros:output:0@sequential/eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2+
)sequential/eluvehoiqy/gfpcpbbmvi/MatMul_1Ё
$sequential/eluvehoiqy/gfpcpbbmvi/addAddV21sequential/eluvehoiqy/gfpcpbbmvi/MatMul:product:03sequential/eluvehoiqy/gfpcpbbmvi/MatMul_1:product:0*
T0*(
_output_shapes
:         А2&
$sequential/eluvehoiqy/gfpcpbbmvi/addЁ
7sequential/eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOpReadVariableOp@sequential_eluvehoiqy_gfpcpbbmvi_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential/eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp¤
(sequential/eluvehoiqy/gfpcpbbmvi/BiasAddBiasAdd(sequential/eluvehoiqy/gfpcpbbmvi/add:z:0?sequential/eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2*
(sequential/eluvehoiqy/gfpcpbbmvi/BiasAddж
0sequential/eluvehoiqy/gfpcpbbmvi/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential/eluvehoiqy/gfpcpbbmvi/split/split_dim├
&sequential/eluvehoiqy/gfpcpbbmvi/splitSplit9sequential/eluvehoiqy/gfpcpbbmvi/split/split_dim:output:01sequential/eluvehoiqy/gfpcpbbmvi/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2(
&sequential/eluvehoiqy/gfpcpbbmvi/split╫
/sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOpReadVariableOp8sequential_eluvehoiqy_gfpcpbbmvi_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOpц
$sequential/eluvehoiqy/gfpcpbbmvi/mulMul7sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp:value:0&sequential/eluvehoiqy/zeros_1:output:0*
T0*'
_output_shapes
:          2&
$sequential/eluvehoiqy/gfpcpbbmvi/mulц
&sequential/eluvehoiqy/gfpcpbbmvi/add_1AddV2/sequential/eluvehoiqy/gfpcpbbmvi/split:output:0(sequential/eluvehoiqy/gfpcpbbmvi/mul:z:0*
T0*'
_output_shapes
:          2(
&sequential/eluvehoiqy/gfpcpbbmvi/add_1╜
(sequential/eluvehoiqy/gfpcpbbmvi/SigmoidSigmoid*sequential/eluvehoiqy/gfpcpbbmvi/add_1:z:0*
T0*'
_output_shapes
:          2*
(sequential/eluvehoiqy/gfpcpbbmvi/Sigmoid▌
1sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1ReadVariableOp:sequential_eluvehoiqy_gfpcpbbmvi_readvariableop_1_resource*
_output_shapes
: *
dtype023
1sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1ь
&sequential/eluvehoiqy/gfpcpbbmvi/mul_1Mul9sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_1:value:0&sequential/eluvehoiqy/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/eluvehoiqy/gfpcpbbmvi/mul_1ш
&sequential/eluvehoiqy/gfpcpbbmvi/add_2AddV2/sequential/eluvehoiqy/gfpcpbbmvi/split:output:1*sequential/eluvehoiqy/gfpcpbbmvi/mul_1:z:0*
T0*'
_output_shapes
:          2(
&sequential/eluvehoiqy/gfpcpbbmvi/add_2┴
*sequential/eluvehoiqy/gfpcpbbmvi/Sigmoid_1Sigmoid*sequential/eluvehoiqy/gfpcpbbmvi/add_2:z:0*
T0*'
_output_shapes
:          2,
*sequential/eluvehoiqy/gfpcpbbmvi/Sigmoid_1с
&sequential/eluvehoiqy/gfpcpbbmvi/mul_2Mul.sequential/eluvehoiqy/gfpcpbbmvi/Sigmoid_1:y:0&sequential/eluvehoiqy/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/eluvehoiqy/gfpcpbbmvi/mul_2╣
%sequential/eluvehoiqy/gfpcpbbmvi/TanhTanh/sequential/eluvehoiqy/gfpcpbbmvi/split:output:2*
T0*'
_output_shapes
:          2'
%sequential/eluvehoiqy/gfpcpbbmvi/Tanhт
&sequential/eluvehoiqy/gfpcpbbmvi/mul_3Mul,sequential/eluvehoiqy/gfpcpbbmvi/Sigmoid:y:0)sequential/eluvehoiqy/gfpcpbbmvi/Tanh:y:0*
T0*'
_output_shapes
:          2(
&sequential/eluvehoiqy/gfpcpbbmvi/mul_3у
&sequential/eluvehoiqy/gfpcpbbmvi/add_3AddV2*sequential/eluvehoiqy/gfpcpbbmvi/mul_2:z:0*sequential/eluvehoiqy/gfpcpbbmvi/mul_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/eluvehoiqy/gfpcpbbmvi/add_3▌
1sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2ReadVariableOp:sequential_eluvehoiqy_gfpcpbbmvi_readvariableop_2_resource*
_output_shapes
: *
dtype023
1sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2Ё
&sequential/eluvehoiqy/gfpcpbbmvi/mul_4Mul9sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2:value:0*sequential/eluvehoiqy/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/eluvehoiqy/gfpcpbbmvi/mul_4ш
&sequential/eluvehoiqy/gfpcpbbmvi/add_4AddV2/sequential/eluvehoiqy/gfpcpbbmvi/split:output:3*sequential/eluvehoiqy/gfpcpbbmvi/mul_4:z:0*
T0*'
_output_shapes
:          2(
&sequential/eluvehoiqy/gfpcpbbmvi/add_4┴
*sequential/eluvehoiqy/gfpcpbbmvi/Sigmoid_2Sigmoid*sequential/eluvehoiqy/gfpcpbbmvi/add_4:z:0*
T0*'
_output_shapes
:          2,
*sequential/eluvehoiqy/gfpcpbbmvi/Sigmoid_2╕
'sequential/eluvehoiqy/gfpcpbbmvi/Tanh_1Tanh*sequential/eluvehoiqy/gfpcpbbmvi/add_3:z:0*
T0*'
_output_shapes
:          2)
'sequential/eluvehoiqy/gfpcpbbmvi/Tanh_1ц
&sequential/eluvehoiqy/gfpcpbbmvi/mul_5Mul.sequential/eluvehoiqy/gfpcpbbmvi/Sigmoid_2:y:0+sequential/eluvehoiqy/gfpcpbbmvi/Tanh_1:y:0*
T0*'
_output_shapes
:          2(
&sequential/eluvehoiqy/gfpcpbbmvi/mul_5╗
3sequential/eluvehoiqy/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential/eluvehoiqy/TensorArrayV2_1/element_shapeР
%sequential/eluvehoiqy/TensorArrayV2_1TensorListReserve<sequential/eluvehoiqy/TensorArrayV2_1/element_shape:output:0.sequential/eluvehoiqy/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/eluvehoiqy/TensorArrayV2_1z
sequential/eluvehoiqy/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/eluvehoiqy/timeл
.sequential/eluvehoiqy/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         20
.sequential/eluvehoiqy/while/maximum_iterationsЦ
(sequential/eluvehoiqy/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/eluvehoiqy/while/loop_counterЎ	
sequential/eluvehoiqy/whileWhile1sequential/eluvehoiqy/while/loop_counter:output:07sequential/eluvehoiqy/while/maximum_iterations:output:0#sequential/eluvehoiqy/time:output:0.sequential/eluvehoiqy/TensorArrayV2_1:handle:0$sequential/eluvehoiqy/zeros:output:0&sequential/eluvehoiqy/zeros_1:output:0.sequential/eluvehoiqy/strided_slice_1:output:0Msequential/eluvehoiqy/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_eluvehoiqy_gfpcpbbmvi_matmul_readvariableop_resourceAsequential_eluvehoiqy_gfpcpbbmvi_matmul_1_readvariableop_resource@sequential_eluvehoiqy_gfpcpbbmvi_biasadd_readvariableop_resource8sequential_eluvehoiqy_gfpcpbbmvi_readvariableop_resource:sequential_eluvehoiqy_gfpcpbbmvi_readvariableop_1_resource:sequential_eluvehoiqy_gfpcpbbmvi_readvariableop_2_resource*
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
'sequential_eluvehoiqy_while_body_354910*3
cond+R)
'sequential_eluvehoiqy_while_cond_354909*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
sequential/eluvehoiqy/whileс
Fsequential/eluvehoiqy/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential/eluvehoiqy/TensorArrayV2Stack/TensorListStack/element_shape└
8sequential/eluvehoiqy/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/eluvehoiqy/while:output:3Osequential/eluvehoiqy/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02:
8sequential/eluvehoiqy/TensorArrayV2Stack/TensorListStackн
+sequential/eluvehoiqy/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2-
+sequential/eluvehoiqy/strided_slice_3/stackи
-sequential/eluvehoiqy/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/eluvehoiqy/strided_slice_3/stack_1и
-sequential/eluvehoiqy/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/eluvehoiqy/strided_slice_3/stack_2Ю
%sequential/eluvehoiqy/strided_slice_3StridedSliceAsequential/eluvehoiqy/TensorArrayV2Stack/TensorListStack:tensor:04sequential/eluvehoiqy/strided_slice_3/stack:output:06sequential/eluvehoiqy/strided_slice_3/stack_1:output:06sequential/eluvehoiqy/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2'
%sequential/eluvehoiqy/strided_slice_3е
&sequential/eluvehoiqy/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/eluvehoiqy/transpose_1/perm¤
!sequential/eluvehoiqy/transpose_1	TransposeAsequential/eluvehoiqy/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/eluvehoiqy/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2#
!sequential/eluvehoiqy/transpose_1П
sequential/tgargouhhw/ShapeShape%sequential/eluvehoiqy/transpose_1:y:0*
T0*
_output_shapes
:2
sequential/tgargouhhw/Shapeа
)sequential/tgargouhhw/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/tgargouhhw/strided_slice/stackд
+sequential/tgargouhhw/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/tgargouhhw/strided_slice/stack_1д
+sequential/tgargouhhw/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/tgargouhhw/strided_slice/stack_2ц
#sequential/tgargouhhw/strided_sliceStridedSlice$sequential/tgargouhhw/Shape:output:02sequential/tgargouhhw/strided_slice/stack:output:04sequential/tgargouhhw/strided_slice/stack_1:output:04sequential/tgargouhhw/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/tgargouhhw/strided_sliceИ
!sequential/tgargouhhw/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential/tgargouhhw/zeros/mul/y─
sequential/tgargouhhw/zeros/mulMul,sequential/tgargouhhw/strided_slice:output:0*sequential/tgargouhhw/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/tgargouhhw/zeros/mulЛ
"sequential/tgargouhhw/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential/tgargouhhw/zeros/Less/y┐
 sequential/tgargouhhw/zeros/LessLess#sequential/tgargouhhw/zeros/mul:z:0+sequential/tgargouhhw/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/tgargouhhw/zeros/LessО
$sequential/tgargouhhw/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential/tgargouhhw/zeros/packed/1█
"sequential/tgargouhhw/zeros/packedPack,sequential/tgargouhhw/strided_slice:output:0-sequential/tgargouhhw/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/tgargouhhw/zeros/packedЛ
!sequential/tgargouhhw/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/tgargouhhw/zeros/Const═
sequential/tgargouhhw/zerosFill+sequential/tgargouhhw/zeros/packed:output:0*sequential/tgargouhhw/zeros/Const:output:0*
T0*'
_output_shapes
:          2
sequential/tgargouhhw/zerosМ
#sequential/tgargouhhw/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential/tgargouhhw/zeros_1/mul/y╩
!sequential/tgargouhhw/zeros_1/mulMul,sequential/tgargouhhw/strided_slice:output:0,sequential/tgargouhhw/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/tgargouhhw/zeros_1/mulП
$sequential/tgargouhhw/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2&
$sequential/tgargouhhw/zeros_1/Less/y╟
"sequential/tgargouhhw/zeros_1/LessLess%sequential/tgargouhhw/zeros_1/mul:z:0-sequential/tgargouhhw/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/tgargouhhw/zeros_1/LessТ
&sequential/tgargouhhw/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/tgargouhhw/zeros_1/packed/1с
$sequential/tgargouhhw/zeros_1/packedPack,sequential/tgargouhhw/strided_slice:output:0/sequential/tgargouhhw/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/tgargouhhw/zeros_1/packedП
#sequential/tgargouhhw/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/tgargouhhw/zeros_1/Const╒
sequential/tgargouhhw/zeros_1Fill-sequential/tgargouhhw/zeros_1/packed:output:0,sequential/tgargouhhw/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
sequential/tgargouhhw/zeros_1б
$sequential/tgargouhhw/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/tgargouhhw/transpose/perm█
sequential/tgargouhhw/transpose	Transpose%sequential/eluvehoiqy/transpose_1:y:0-sequential/tgargouhhw/transpose/perm:output:0*
T0*+
_output_shapes
:          2!
sequential/tgargouhhw/transposeС
sequential/tgargouhhw/Shape_1Shape#sequential/tgargouhhw/transpose:y:0*
T0*
_output_shapes
:2
sequential/tgargouhhw/Shape_1д
+sequential/tgargouhhw/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/tgargouhhw/strided_slice_1/stackи
-sequential/tgargouhhw/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/tgargouhhw/strided_slice_1/stack_1и
-sequential/tgargouhhw/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/tgargouhhw/strided_slice_1/stack_2Є
%sequential/tgargouhhw/strided_slice_1StridedSlice&sequential/tgargouhhw/Shape_1:output:04sequential/tgargouhhw/strided_slice_1/stack:output:06sequential/tgargouhhw/strided_slice_1/stack_1:output:06sequential/tgargouhhw/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/tgargouhhw/strided_slice_1▒
1sequential/tgargouhhw/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         23
1sequential/tgargouhhw/TensorArrayV2/element_shapeК
#sequential/tgargouhhw/TensorArrayV2TensorListReserve:sequential/tgargouhhw/TensorArrayV2/element_shape:output:0.sequential/tgargouhhw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/tgargouhhw/TensorArrayV2ы
Ksequential/tgargouhhw/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2M
Ksequential/tgargouhhw/TensorArrayUnstack/TensorListFromTensor/element_shape╨
=sequential/tgargouhhw/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/tgargouhhw/transpose:y:0Tsequential/tgargouhhw/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/tgargouhhw/TensorArrayUnstack/TensorListFromTensorд
+sequential/tgargouhhw/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/tgargouhhw/strided_slice_2/stackи
-sequential/tgargouhhw/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/tgargouhhw/strided_slice_2/stack_1и
-sequential/tgargouhhw/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/tgargouhhw/strided_slice_2/stack_2А
%sequential/tgargouhhw/strided_slice_2StridedSlice#sequential/tgargouhhw/transpose:y:04sequential/tgargouhhw/strided_slice_2/stack:output:06sequential/tgargouhhw/strided_slice_2/stack_1:output:06sequential/tgargouhhw/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2'
%sequential/tgargouhhw/strided_slice_2ё
6sequential/tgargouhhw/leklhosgal/MatMul/ReadVariableOpReadVariableOp?sequential_tgargouhhw_leklhosgal_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype028
6sequential/tgargouhhw/leklhosgal/MatMul/ReadVariableOp 
'sequential/tgargouhhw/leklhosgal/MatMulMatMul.sequential/tgargouhhw/strided_slice_2:output:0>sequential/tgargouhhw/leklhosgal/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2)
'sequential/tgargouhhw/leklhosgal/MatMulў
8sequential/tgargouhhw/leklhosgal/MatMul_1/ReadVariableOpReadVariableOpAsequential_tgargouhhw_leklhosgal_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02:
8sequential/tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp√
)sequential/tgargouhhw/leklhosgal/MatMul_1MatMul$sequential/tgargouhhw/zeros:output:0@sequential/tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2+
)sequential/tgargouhhw/leklhosgal/MatMul_1Ё
$sequential/tgargouhhw/leklhosgal/addAddV21sequential/tgargouhhw/leklhosgal/MatMul:product:03sequential/tgargouhhw/leklhosgal/MatMul_1:product:0*
T0*(
_output_shapes
:         А2&
$sequential/tgargouhhw/leklhosgal/addЁ
7sequential/tgargouhhw/leklhosgal/BiasAdd/ReadVariableOpReadVariableOp@sequential_tgargouhhw_leklhosgal_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential/tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp¤
(sequential/tgargouhhw/leklhosgal/BiasAddBiasAdd(sequential/tgargouhhw/leklhosgal/add:z:0?sequential/tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2*
(sequential/tgargouhhw/leklhosgal/BiasAddж
0sequential/tgargouhhw/leklhosgal/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential/tgargouhhw/leklhosgal/split/split_dim├
&sequential/tgargouhhw/leklhosgal/splitSplit9sequential/tgargouhhw/leklhosgal/split/split_dim:output:01sequential/tgargouhhw/leklhosgal/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2(
&sequential/tgargouhhw/leklhosgal/split╫
/sequential/tgargouhhw/leklhosgal/ReadVariableOpReadVariableOp8sequential_tgargouhhw_leklhosgal_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential/tgargouhhw/leklhosgal/ReadVariableOpц
$sequential/tgargouhhw/leklhosgal/mulMul7sequential/tgargouhhw/leklhosgal/ReadVariableOp:value:0&sequential/tgargouhhw/zeros_1:output:0*
T0*'
_output_shapes
:          2&
$sequential/tgargouhhw/leklhosgal/mulц
&sequential/tgargouhhw/leklhosgal/add_1AddV2/sequential/tgargouhhw/leklhosgal/split:output:0(sequential/tgargouhhw/leklhosgal/mul:z:0*
T0*'
_output_shapes
:          2(
&sequential/tgargouhhw/leklhosgal/add_1╜
(sequential/tgargouhhw/leklhosgal/SigmoidSigmoid*sequential/tgargouhhw/leklhosgal/add_1:z:0*
T0*'
_output_shapes
:          2*
(sequential/tgargouhhw/leklhosgal/Sigmoid▌
1sequential/tgargouhhw/leklhosgal/ReadVariableOp_1ReadVariableOp:sequential_tgargouhhw_leklhosgal_readvariableop_1_resource*
_output_shapes
: *
dtype023
1sequential/tgargouhhw/leklhosgal/ReadVariableOp_1ь
&sequential/tgargouhhw/leklhosgal/mul_1Mul9sequential/tgargouhhw/leklhosgal/ReadVariableOp_1:value:0&sequential/tgargouhhw/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/tgargouhhw/leklhosgal/mul_1ш
&sequential/tgargouhhw/leklhosgal/add_2AddV2/sequential/tgargouhhw/leklhosgal/split:output:1*sequential/tgargouhhw/leklhosgal/mul_1:z:0*
T0*'
_output_shapes
:          2(
&sequential/tgargouhhw/leklhosgal/add_2┴
*sequential/tgargouhhw/leklhosgal/Sigmoid_1Sigmoid*sequential/tgargouhhw/leklhosgal/add_2:z:0*
T0*'
_output_shapes
:          2,
*sequential/tgargouhhw/leklhosgal/Sigmoid_1с
&sequential/tgargouhhw/leklhosgal/mul_2Mul.sequential/tgargouhhw/leklhosgal/Sigmoid_1:y:0&sequential/tgargouhhw/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/tgargouhhw/leklhosgal/mul_2╣
%sequential/tgargouhhw/leklhosgal/TanhTanh/sequential/tgargouhhw/leklhosgal/split:output:2*
T0*'
_output_shapes
:          2'
%sequential/tgargouhhw/leklhosgal/Tanhт
&sequential/tgargouhhw/leklhosgal/mul_3Mul,sequential/tgargouhhw/leklhosgal/Sigmoid:y:0)sequential/tgargouhhw/leklhosgal/Tanh:y:0*
T0*'
_output_shapes
:          2(
&sequential/tgargouhhw/leklhosgal/mul_3у
&sequential/tgargouhhw/leklhosgal/add_3AddV2*sequential/tgargouhhw/leklhosgal/mul_2:z:0*sequential/tgargouhhw/leklhosgal/mul_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/tgargouhhw/leklhosgal/add_3▌
1sequential/tgargouhhw/leklhosgal/ReadVariableOp_2ReadVariableOp:sequential_tgargouhhw_leklhosgal_readvariableop_2_resource*
_output_shapes
: *
dtype023
1sequential/tgargouhhw/leklhosgal/ReadVariableOp_2Ё
&sequential/tgargouhhw/leklhosgal/mul_4Mul9sequential/tgargouhhw/leklhosgal/ReadVariableOp_2:value:0*sequential/tgargouhhw/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/tgargouhhw/leklhosgal/mul_4ш
&sequential/tgargouhhw/leklhosgal/add_4AddV2/sequential/tgargouhhw/leklhosgal/split:output:3*sequential/tgargouhhw/leklhosgal/mul_4:z:0*
T0*'
_output_shapes
:          2(
&sequential/tgargouhhw/leklhosgal/add_4┴
*sequential/tgargouhhw/leklhosgal/Sigmoid_2Sigmoid*sequential/tgargouhhw/leklhosgal/add_4:z:0*
T0*'
_output_shapes
:          2,
*sequential/tgargouhhw/leklhosgal/Sigmoid_2╕
'sequential/tgargouhhw/leklhosgal/Tanh_1Tanh*sequential/tgargouhhw/leklhosgal/add_3:z:0*
T0*'
_output_shapes
:          2)
'sequential/tgargouhhw/leklhosgal/Tanh_1ц
&sequential/tgargouhhw/leklhosgal/mul_5Mul.sequential/tgargouhhw/leklhosgal/Sigmoid_2:y:0+sequential/tgargouhhw/leklhosgal/Tanh_1:y:0*
T0*'
_output_shapes
:          2(
&sequential/tgargouhhw/leklhosgal/mul_5╗
3sequential/tgargouhhw/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential/tgargouhhw/TensorArrayV2_1/element_shapeР
%sequential/tgargouhhw/TensorArrayV2_1TensorListReserve<sequential/tgargouhhw/TensorArrayV2_1/element_shape:output:0.sequential/tgargouhhw/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/tgargouhhw/TensorArrayV2_1z
sequential/tgargouhhw/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/tgargouhhw/timeл
.sequential/tgargouhhw/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         20
.sequential/tgargouhhw/while/maximum_iterationsЦ
(sequential/tgargouhhw/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/tgargouhhw/while/loop_counterЎ	
sequential/tgargouhhw/whileWhile1sequential/tgargouhhw/while/loop_counter:output:07sequential/tgargouhhw/while/maximum_iterations:output:0#sequential/tgargouhhw/time:output:0.sequential/tgargouhhw/TensorArrayV2_1:handle:0$sequential/tgargouhhw/zeros:output:0&sequential/tgargouhhw/zeros_1:output:0.sequential/tgargouhhw/strided_slice_1:output:0Msequential/tgargouhhw/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_tgargouhhw_leklhosgal_matmul_readvariableop_resourceAsequential_tgargouhhw_leklhosgal_matmul_1_readvariableop_resource@sequential_tgargouhhw_leklhosgal_biasadd_readvariableop_resource8sequential_tgargouhhw_leklhosgal_readvariableop_resource:sequential_tgargouhhw_leklhosgal_readvariableop_1_resource:sequential_tgargouhhw_leklhosgal_readvariableop_2_resource*
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
'sequential_tgargouhhw_while_body_355086*3
cond+R)
'sequential_tgargouhhw_while_cond_355085*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
sequential/tgargouhhw/whileс
Fsequential/tgargouhhw/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential/tgargouhhw/TensorArrayV2Stack/TensorListStack/element_shape└
8sequential/tgargouhhw/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/tgargouhhw/while:output:3Osequential/tgargouhhw/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02:
8sequential/tgargouhhw/TensorArrayV2Stack/TensorListStackн
+sequential/tgargouhhw/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2-
+sequential/tgargouhhw/strided_slice_3/stackи
-sequential/tgargouhhw/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/tgargouhhw/strided_slice_3/stack_1и
-sequential/tgargouhhw/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/tgargouhhw/strided_slice_3/stack_2Ю
%sequential/tgargouhhw/strided_slice_3StridedSliceAsequential/tgargouhhw/TensorArrayV2Stack/TensorListStack:tensor:04sequential/tgargouhhw/strided_slice_3/stack:output:06sequential/tgargouhhw/strided_slice_3/stack_1:output:06sequential/tgargouhhw/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2'
%sequential/tgargouhhw/strided_slice_3е
&sequential/tgargouhhw/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/tgargouhhw/transpose_1/perm¤
!sequential/tgargouhhw/transpose_1	TransposeAsequential/tgargouhhw/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/tgargouhhw/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2#
!sequential/tgargouhhw/transpose_1╧
+sequential/jhbguimgvq/MatMul/ReadVariableOpReadVariableOp4sequential_jhbguimgvq_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential/jhbguimgvq/MatMul/ReadVariableOp▌
sequential/jhbguimgvq/MatMulMatMul.sequential/tgargouhhw/strided_slice_3:output:03sequential/jhbguimgvq/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/jhbguimgvq/MatMul╬
,sequential/jhbguimgvq/BiasAdd/ReadVariableOpReadVariableOp5sequential_jhbguimgvq_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential/jhbguimgvq/BiasAdd/ReadVariableOp┘
sequential/jhbguimgvq/BiasAddBiasAdd&sequential/jhbguimgvq/MatMul:product:04sequential/jhbguimgvq/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/jhbguimgvq/BiasAddа
IdentityIdentity&sequential/jhbguimgvq/BiasAdd:output:08^sequential/eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp7^sequential/eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp9^sequential/eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp0^sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp2^sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_12^sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_2^sequential/eluvehoiqy/while-^sequential/jhbguimgvq/BiasAdd/ReadVariableOp,^sequential/jhbguimgvq/MatMul/ReadVariableOp9^sequential/jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp@^sequential/jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp8^sequential/tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp7^sequential/tgargouhhw/leklhosgal/MatMul/ReadVariableOp9^sequential/tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp0^sequential/tgargouhhw/leklhosgal/ReadVariableOp2^sequential/tgargouhhw/leklhosgal/ReadVariableOp_12^sequential/tgargouhhw/leklhosgal/ReadVariableOp_2^sequential/tgargouhhw/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2r
7sequential/eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp7sequential/eluvehoiqy/gfpcpbbmvi/BiasAdd/ReadVariableOp2p
6sequential/eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp6sequential/eluvehoiqy/gfpcpbbmvi/MatMul/ReadVariableOp2t
8sequential/eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp8sequential/eluvehoiqy/gfpcpbbmvi/MatMul_1/ReadVariableOp2b
/sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp/sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp2f
1sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_11sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_12f
1sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_21sequential/eluvehoiqy/gfpcpbbmvi/ReadVariableOp_22:
sequential/eluvehoiqy/whilesequential/eluvehoiqy/while2\
,sequential/jhbguimgvq/BiasAdd/ReadVariableOp,sequential/jhbguimgvq/BiasAdd/ReadVariableOp2Z
+sequential/jhbguimgvq/MatMul/ReadVariableOp+sequential/jhbguimgvq/MatMul/ReadVariableOp2t
8sequential/jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp8sequential/jjfezsyjwn/conv1d/ExpandDims_1/ReadVariableOp2В
?sequential/jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp?sequential/jjfezsyjwn/squeeze_batch_dims/BiasAdd/ReadVariableOp2r
7sequential/tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp7sequential/tgargouhhw/leklhosgal/BiasAdd/ReadVariableOp2p
6sequential/tgargouhhw/leklhosgal/MatMul/ReadVariableOp6sequential/tgargouhhw/leklhosgal/MatMul/ReadVariableOp2t
8sequential/tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp8sequential/tgargouhhw/leklhosgal/MatMul_1/ReadVariableOp2b
/sequential/tgargouhhw/leklhosgal/ReadVariableOp/sequential/tgargouhhw/leklhosgal/ReadVariableOp2f
1sequential/tgargouhhw/leklhosgal/ReadVariableOp_11sequential/tgargouhhw/leklhosgal/ReadVariableOp_12f
1sequential/tgargouhhw/leklhosgal/ReadVariableOp_21sequential/tgargouhhw/leklhosgal/ReadVariableOp_22:
sequential/tgargouhhw/whilesequential/tgargouhhw/while:[ W
/
_output_shapes
:         
$
_user_specified_name
khvjuhjlxe"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultз
I

khvjuhjlxe;
serving_default_khvjuhjlxe:0         >

jhbguimgvq0
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
trainable_variables
	regularization_losses

	keras_api

signatures
+В&call_and_return_all_conditional_losses
Г_default_save_signature
Д__call__"┬A
_tf_keras_sequentialгA{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "khvjuhjlxe"}}, {"class_name": "Conv1D", "config": {"name": "jjfezsyjwn", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "whckbkkggk", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}}, {"class_name": "RNN", "config": {"name": "eluvehoiqy", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "gfpcpbbmvi", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}}, {"class_name": "RNN", "config": {"name": "tgargouhhw", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "leklhosgal", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}}, {"class_name": "Dense", "config": {"name": "jhbguimgvq", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 13}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 5, 13]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 3, 5, 13]}, "float32", "khvjuhjlxe"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "khvjuhjlxe"}, "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "jjfezsyjwn", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Reshape", "config": {"name": "whckbkkggk", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}, "shared_object_id": 4}, {"class_name": "RNN", "config": {"name": "eluvehoiqy", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "gfpcpbbmvi", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}}, "shared_object_id": 9}, {"class_name": "RNN", "config": {"name": "tgargouhhw", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "leklhosgal", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "jhbguimgvq", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
╠

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+Е&call_and_return_all_conditional_losses
Ж__call__"е

_tf_keras_layerЛ
{"name": "jjfezsyjwn", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "jjfezsyjwn", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 13}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 5, 13]}}
Р
	variables
trainable_variables
regularization_losses
	keras_api
+З&call_and_return_all_conditional_losses
И__call__" 
_tf_keras_layerх{"name": "whckbkkggk", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "whckbkkggk", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}, "shared_object_id": 4}
н
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
+Й&call_and_return_all_conditional_losses
К__call__"В
_tf_keras_rnn_layerф{"name": "eluvehoiqy", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RNN", "config": {"name": "eluvehoiqy", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "gfpcpbbmvi", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}}, "shared_object_id": 9, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 20]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 20]}}
│
cell

state_spec
	variables
trainable_variables
 regularization_losses
!	keras_api
+Л&call_and_return_all_conditional_losses
М__call__"И
_tf_keras_rnn_layerъ{"name": "tgargouhhw", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RNN", "config": {"name": "tgargouhhw", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "leklhosgal", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}}, "shared_object_id": 14, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 21}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 32]}}
┘

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
+Н&call_and_return_all_conditional_losses
О__call__"▓
_tf_keras_layerШ{"name": "jhbguimgvq", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "jhbguimgvq", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
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
╬

9layers
:non_trainable_variables
	variables
trainable_variables
;layer_regularization_losses
<metrics
	regularization_losses
=layer_metrics
Д__call__
Г_default_save_signature
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
-
Пserving_default"
signature_map
':%2jjfezsyjwn/kernel
:2jjfezsyjwn/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
░

>layers
?non_trainable_variables
	variables
trainable_variables
@layer_regularization_losses
Ametrics
regularization_losses
Blayer_metrics
Ж__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

Clayers
Dnon_trainable_variables
	variables
trainable_variables
Elayer_regularization_losses
Fmetrics
regularization_losses
Glayer_metrics
И__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
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
Jtrainable_variables
Kregularization_losses
L	keras_api
+Р&call_and_return_all_conditional_losses
С__call__"╓
_tf_keras_layer╝{"name": "gfpcpbbmvi", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Addons>PeepholeLSTMCell", "config": {"name": "gfpcpbbmvi", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}
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
╝

Mlayers
Nnon_trainable_variables
	variables
trainable_variables
Olayer_regularization_losses

Pstates
Qmetrics
regularization_losses
Rlayer_metrics
К__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
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
Utrainable_variables
Vregularization_losses
W	keras_api
+Т&call_and_return_all_conditional_losses
У__call__"┌
_tf_keras_layer└{"name": "leklhosgal", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Addons>PeepholeLSTMCell", "config": {"name": "leklhosgal", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}
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
╝

Xlayers
Ynon_trainable_variables
	variables
trainable_variables
Zlayer_regularization_losses

[states
\metrics
 regularization_losses
]layer_metrics
М__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
#:! 2jhbguimgvq/kernel
:2jhbguimgvq/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
░

^layers
_non_trainable_variables
$	variables
%trainable_variables
`layer_regularization_losses
ametrics
&regularization_losses
blayer_metrics
О__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
/:-	А2eluvehoiqy/gfpcpbbmvi/kernel
9:7	 А2&eluvehoiqy/gfpcpbbmvi/recurrent_kernel
):'А2eluvehoiqy/gfpcpbbmvi/bias
?:= 21eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights
@:> 22eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights
@:> 22eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights
/:-	 А2tgargouhhw/leklhosgal/kernel
9:7	 А2&tgargouhhw/leklhosgal/recurrent_kernel
):'А2tgargouhhw/leklhosgal/bias
?:= 21tgargouhhw/leklhosgal/input_gate_peephole_weights
@:> 22tgargouhhw/leklhosgal/forget_gate_peephole_weights
@:> 22tgargouhhw/leklhosgal/output_gate_peephole_weights
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
'
c0"
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
J
-0
.1
/2
03
14
25"
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
░

dlayers
enon_trainable_variables
I	variables
Jtrainable_variables
flayer_regularization_losses
gmetrics
Kregularization_losses
hlayer_metrics
С__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
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
J
30
41
52
63
74
85"
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
░

ilayers
jnon_trainable_variables
T	variables
Utrainable_variables
klayer_regularization_losses
lmetrics
Vregularization_losses
mlayer_metrics
У__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
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
:  (2total
:  (2count
.
n0
o1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
1:/2RMSprop/jjfezsyjwn/kernel/rms
':%2RMSprop/jjfezsyjwn/bias/rms
-:+ 2RMSprop/jhbguimgvq/kernel/rms
':%2RMSprop/jhbguimgvq/bias/rms
9:7	А2(RMSprop/eluvehoiqy/gfpcpbbmvi/kernel/rms
C:A	 А22RMSprop/eluvehoiqy/gfpcpbbmvi/recurrent_kernel/rms
3:1А2&RMSprop/eluvehoiqy/gfpcpbbmvi/bias/rms
I:G 2=RMSprop/eluvehoiqy/gfpcpbbmvi/input_gate_peephole_weights/rms
J:H 2>RMSprop/eluvehoiqy/gfpcpbbmvi/forget_gate_peephole_weights/rms
J:H 2>RMSprop/eluvehoiqy/gfpcpbbmvi/output_gate_peephole_weights/rms
9:7	 А2(RMSprop/tgargouhhw/leklhosgal/kernel/rms
C:A	 А22RMSprop/tgargouhhw/leklhosgal/recurrent_kernel/rms
3:1А2&RMSprop/tgargouhhw/leklhosgal/bias/rms
I:G 2=RMSprop/tgargouhhw/leklhosgal/input_gate_peephole_weights/rms
J:H 2>RMSprop/tgargouhhw/leklhosgal/forget_gate_peephole_weights/rms
J:H 2>RMSprop/tgargouhhw/leklhosgal/output_gate_peephole_weights/rms
ц2у
F__inference_sequential_layer_call_and_return_conditional_losses_358349
F__inference_sequential_layer_call_and_return_conditional_losses_358753
F__inference_sequential_layer_call_and_return_conditional_losses_357859
F__inference_sequential_layer_call_and_return_conditional_losses_357900└
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
ъ2ч
!__inference__wrapped_model_355193┴
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

khvjuhjlxe         
·2ў
+__inference_sequential_layer_call_fn_357212
+__inference_sequential_layer_call_fn_358790
+__inference_sequential_layer_call_fn_358827
+__inference_sequential_layer_call_fn_357818└
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
Ё2э
F__inference_jjfezsyjwn_layer_call_and_return_conditional_losses_358864в
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
+__inference_jjfezsyjwn_layer_call_fn_358873в
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
F__inference_whckbkkggk_layer_call_and_return_conditional_losses_358886в
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
+__inference_whckbkkggk_layer_call_fn_358891в
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
М2Й
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359071
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359251
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359431
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359611ц
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
+__inference_eluvehoiqy_layer_call_fn_359628
+__inference_eluvehoiqy_layer_call_fn_359645
+__inference_eluvehoiqy_layer_call_fn_359662
+__inference_eluvehoiqy_layer_call_fn_359679ц
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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_359859
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_360039
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_360219
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_360399ц
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
+__inference_tgargouhhw_layer_call_fn_360416
+__inference_tgargouhhw_layer_call_fn_360433
+__inference_tgargouhhw_layer_call_fn_360450
+__inference_tgargouhhw_layer_call_fn_360467ц
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
Ё2э
F__inference_jhbguimgvq_layer_call_and_return_conditional_losses_360477в
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
+__inference_jhbguimgvq_layer_call_fn_360486в
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
$__inference_signature_wrapper_357945
khvjuhjlxe"Ф
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
╘2╤
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_360530
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_360574╛
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
+__inference_gfpcpbbmvi_layer_call_fn_360597
+__inference_gfpcpbbmvi_layer_call_fn_360620╛
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
F__inference_leklhosgal_layer_call_and_return_conditional_losses_360664
F__inference_leklhosgal_layer_call_and_return_conditional_losses_360708╛
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
+__inference_leklhosgal_layer_call_fn_360731
+__inference_leklhosgal_layer_call_fn_360754╛
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
!__inference__wrapped_model_355193И-./012345678"#;в8
1в.
,К)

khvjuhjlxe         
к "7к4
2

jhbguimgvq$К!

jhbguimgvq         ▄
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359071С-./012SвP
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
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359251С-./012SвP
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
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359431x-./012Cв@
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
F__inference_eluvehoiqy_layer_call_and_return_conditional_losses_359611x-./012Cв@
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
+__inference_eluvehoiqy_layer_call_fn_359628Д-./012SвP
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
+__inference_eluvehoiqy_layer_call_fn_359645Д-./012SвP
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
+__inference_eluvehoiqy_layer_call_fn_359662k-./012Cв@
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
+__inference_eluvehoiqy_layer_call_fn_359679k-./012Cв@
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
к "К          ╦
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_360530А-./012Ав}
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
F__inference_gfpcpbbmvi_layer_call_and_return_conditional_losses_360574А-./012Ав}
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
+__inference_gfpcpbbmvi_layer_call_fn_360597Ё-./012Ав}
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
+__inference_gfpcpbbmvi_layer_call_fn_360620Ё-./012Ав}
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
1/1          ж
F__inference_jhbguimgvq_layer_call_and_return_conditional_losses_360477\"#/в,
%в"
 К
inputs          
к "%в"
К
0         
Ъ ~
+__inference_jhbguimgvq_layer_call_fn_360486O"#/в,
%в"
 К
inputs          
к "К         ╢
F__inference_jjfezsyjwn_layer_call_and_return_conditional_losses_358864l7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ О
+__inference_jjfezsyjwn_layer_call_fn_358873_7в4
-в*
(К%
inputs         
к " К         ╦
F__inference_leklhosgal_layer_call_and_return_conditional_losses_360664А345678Ав}
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
F__inference_leklhosgal_layer_call_and_return_conditional_losses_360708А345678Ав}
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
+__inference_leklhosgal_layer_call_fn_360731Ё345678Ав}
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
+__inference_leklhosgal_layer_call_fn_360754Ё345678Ав}
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
1/1          ╚
F__inference_sequential_layer_call_and_return_conditional_losses_357859~-./012345678"#Cв@
9в6
,К)

khvjuhjlxe         
p 

 
к "%в"
К
0         
Ъ ╚
F__inference_sequential_layer_call_and_return_conditional_losses_357900~-./012345678"#Cв@
9в6
,К)

khvjuhjlxe         
p

 
к "%в"
К
0         
Ъ ─
F__inference_sequential_layer_call_and_return_conditional_losses_358349z-./012345678"#?в<
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
F__inference_sequential_layer_call_and_return_conditional_losses_358753z-./012345678"#?в<
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
+__inference_sequential_layer_call_fn_357212q-./012345678"#Cв@
9в6
,К)

khvjuhjlxe         
p 

 
к "К         а
+__inference_sequential_layer_call_fn_357818q-./012345678"#Cв@
9в6
,К)

khvjuhjlxe         
p

 
к "К         Ь
+__inference_sequential_layer_call_fn_358790m-./012345678"#?в<
5в2
(К%
inputs         
p 

 
к "К         Ь
+__inference_sequential_layer_call_fn_358827m-./012345678"#?в<
5в2
(К%
inputs         
p

 
к "К         ┐
$__inference_signature_wrapper_357945Ц-./012345678"#IвF
в 
?к<
:

khvjuhjlxe,К)

khvjuhjlxe         "7к4
2

jhbguimgvq$К!

jhbguimgvq         ╧
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_359859Д345678SвP
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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_360039Д345678SвP
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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_360219t345678Cв@
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
F__inference_tgargouhhw_layer_call_and_return_conditional_losses_360399t345678Cв@
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
+__inference_tgargouhhw_layer_call_fn_360416w345678SвP
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
+__inference_tgargouhhw_layer_call_fn_360433w345678SвP
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
+__inference_tgargouhhw_layer_call_fn_360450g345678Cв@
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
+__inference_tgargouhhw_layer_call_fn_360467g345678Cв@
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
F__inference_whckbkkggk_layer_call_and_return_conditional_losses_358886d7в4
-в*
(К%
inputs         
к ")в&
К
0         
Ъ Ж
+__inference_whckbkkggk_layer_call_fn_358891W7в4
-в*
(К%
inputs         
к "К         