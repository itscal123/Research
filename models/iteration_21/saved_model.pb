¤И2
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
И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Во/
В
gtjikcltwy/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namegtjikcltwy/kernel
{
%gtjikcltwy/kernel/Read/ReadVariableOpReadVariableOpgtjikcltwy/kernel*"
_output_shapes
:*
dtype0
v
gtjikcltwy/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namegtjikcltwy/bias
o
#gtjikcltwy/bias/Read/ReadVariableOpReadVariableOpgtjikcltwy/bias*
_output_shapes
:*
dtype0
~
chsgvefspq/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_namechsgvefspq/kernel
w
%chsgvefspq/kernel/Read/ReadVariableOpReadVariableOpchsgvefspq/kernel*
_output_shapes

: *
dtype0
v
chsgvefspq/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namechsgvefspq/bias
o
#chsgvefspq/bias/Read/ReadVariableOpReadVariableOpchsgvefspq/bias*
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
dnzlhpjizj/hswofenhiy/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*-
shared_namednzlhpjizj/hswofenhiy/kernel
О
0dnzlhpjizj/hswofenhiy/kernel/Read/ReadVariableOpReadVariableOpdnzlhpjizj/hswofenhiy/kernel*
_output_shapes
:	А*
dtype0
й
&dnzlhpjizj/hswofenhiy/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&dnzlhpjizj/hswofenhiy/recurrent_kernel
в
:dnzlhpjizj/hswofenhiy/recurrent_kernel/Read/ReadVariableOpReadVariableOp&dnzlhpjizj/hswofenhiy/recurrent_kernel*
_output_shapes
:	 А*
dtype0
Н
dnzlhpjizj/hswofenhiy/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namednzlhpjizj/hswofenhiy/bias
Ж
.dnzlhpjizj/hswofenhiy/bias/Read/ReadVariableOpReadVariableOpdnzlhpjizj/hswofenhiy/bias*
_output_shapes	
:А*
dtype0
║
1dnzlhpjizj/hswofenhiy/input_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31dnzlhpjizj/hswofenhiy/input_gate_peephole_weights
│
Ednzlhpjizj/hswofenhiy/input_gate_peephole_weights/Read/ReadVariableOpReadVariableOp1dnzlhpjizj/hswofenhiy/input_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2dnzlhpjizj/hswofenhiy/forget_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights
╡
Fdnzlhpjizj/hswofenhiy/forget_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2dnzlhpjizj/hswofenhiy/output_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42dnzlhpjizj/hswofenhiy/output_gate_peephole_weights
╡
Fdnzlhpjizj/hswofenhiy/output_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2dnzlhpjizj/hswofenhiy/output_gate_peephole_weights*
_output_shapes
: *
dtype0
Х
nyosplwtfa/lwptfvtmlx/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*-
shared_namenyosplwtfa/lwptfvtmlx/kernel
О
0nyosplwtfa/lwptfvtmlx/kernel/Read/ReadVariableOpReadVariableOpnyosplwtfa/lwptfvtmlx/kernel*
_output_shapes
:	 А*
dtype0
й
&nyosplwtfa/lwptfvtmlx/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&nyosplwtfa/lwptfvtmlx/recurrent_kernel
в
:nyosplwtfa/lwptfvtmlx/recurrent_kernel/Read/ReadVariableOpReadVariableOp&nyosplwtfa/lwptfvtmlx/recurrent_kernel*
_output_shapes
:	 А*
dtype0
Н
nyosplwtfa/lwptfvtmlx/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namenyosplwtfa/lwptfvtmlx/bias
Ж
.nyosplwtfa/lwptfvtmlx/bias/Read/ReadVariableOpReadVariableOpnyosplwtfa/lwptfvtmlx/bias*
_output_shapes	
:А*
dtype0
║
1nyosplwtfa/lwptfvtmlx/input_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights
│
Enyosplwtfa/lwptfvtmlx/input_gate_peephole_weights/Read/ReadVariableOpReadVariableOp1nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights
╡
Fnyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights*
_output_shapes
: *
dtype0
╝
2nyosplwtfa/lwptfvtmlx/output_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights
╡
Fnyosplwtfa/lwptfvtmlx/output_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights*
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
RMSprop/gtjikcltwy/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/gtjikcltwy/kernel/rms
У
1RMSprop/gtjikcltwy/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/gtjikcltwy/kernel/rms*"
_output_shapes
:*
dtype0
О
RMSprop/gtjikcltwy/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/gtjikcltwy/bias/rms
З
/RMSprop/gtjikcltwy/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/gtjikcltwy/bias/rms*
_output_shapes
:*
dtype0
Ц
RMSprop/chsgvefspq/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *.
shared_nameRMSprop/chsgvefspq/kernel/rms
П
1RMSprop/chsgvefspq/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/chsgvefspq/kernel/rms*
_output_shapes

: *
dtype0
О
RMSprop/chsgvefspq/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/chsgvefspq/bias/rms
З
/RMSprop/chsgvefspq/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/chsgvefspq/bias/rms*
_output_shapes
:*
dtype0
н
(RMSprop/dnzlhpjizj/hswofenhiy/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*9
shared_name*(RMSprop/dnzlhpjizj/hswofenhiy/kernel/rms
ж
<RMSprop/dnzlhpjizj/hswofenhiy/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/dnzlhpjizj/hswofenhiy/kernel/rms*
_output_shapes
:	А*
dtype0
┴
2RMSprop/dnzlhpjizj/hswofenhiy/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*C
shared_name42RMSprop/dnzlhpjizj/hswofenhiy/recurrent_kernel/rms
║
FRMSprop/dnzlhpjizj/hswofenhiy/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp2RMSprop/dnzlhpjizj/hswofenhiy/recurrent_kernel/rms*
_output_shapes
:	 А*
dtype0
е
&RMSprop/dnzlhpjizj/hswofenhiy/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&RMSprop/dnzlhpjizj/hswofenhiy/bias/rms
Ю
:RMSprop/dnzlhpjizj/hswofenhiy/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/dnzlhpjizj/hswofenhiy/bias/rms*
_output_shapes	
:А*
dtype0
╥
=RMSprop/dnzlhpjizj/hswofenhiy/input_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=RMSprop/dnzlhpjizj/hswofenhiy/input_gate_peephole_weights/rms
╦
QRMSprop/dnzlhpjizj/hswofenhiy/input_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp=RMSprop/dnzlhpjizj/hswofenhiy/input_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights/rms
═
RRMSprop/dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/dnzlhpjizj/hswofenhiy/output_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/dnzlhpjizj/hswofenhiy/output_gate_peephole_weights/rms
═
RRMSprop/dnzlhpjizj/hswofenhiy/output_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/dnzlhpjizj/hswofenhiy/output_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
н
(RMSprop/nyosplwtfa/lwptfvtmlx/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*9
shared_name*(RMSprop/nyosplwtfa/lwptfvtmlx/kernel/rms
ж
<RMSprop/nyosplwtfa/lwptfvtmlx/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/nyosplwtfa/lwptfvtmlx/kernel/rms*
_output_shapes
:	 А*
dtype0
┴
2RMSprop/nyosplwtfa/lwptfvtmlx/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*C
shared_name42RMSprop/nyosplwtfa/lwptfvtmlx/recurrent_kernel/rms
║
FRMSprop/nyosplwtfa/lwptfvtmlx/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp2RMSprop/nyosplwtfa/lwptfvtmlx/recurrent_kernel/rms*
_output_shapes
:	 А*
dtype0
е
&RMSprop/nyosplwtfa/lwptfvtmlx/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&RMSprop/nyosplwtfa/lwptfvtmlx/bias/rms
Ю
:RMSprop/nyosplwtfa/lwptfvtmlx/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/nyosplwtfa/lwptfvtmlx/bias/rms*
_output_shapes	
:А*
dtype0
╥
=RMSprop/nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=RMSprop/nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights/rms
╦
QRMSprop/nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp=RMSprop/nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights/rms
═
RRMSprop/nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
╘
>RMSprop/nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights/rms
═
RRMSprop/nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights/rms*
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
9non_trainable_variables
	variables

:layers
regularization_losses
;layer_metrics
<metrics
=layer_regularization_losses
	trainable_variables
 
][
VARIABLE_VALUEgtjikcltwy/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEgtjikcltwy/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
>non_trainable_variables
?layer_metrics

@layers
	variables
regularization_losses
Ametrics
Blayer_regularization_losses
trainable_variables
 
 
 
н
Cnon_trainable_variables
Dlayer_metrics

Elayers
	variables
regularization_losses
Fmetrics
Glayer_regularization_losses
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
Mnon_trainable_variables
	variables

Nlayers
Olayer_metrics
regularization_losses

Pstates
Qmetrics
Rlayer_regularization_losses
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
Xnon_trainable_variables
	variables

Ylayers
Zlayer_metrics
regularization_losses

[states
\metrics
]layer_regularization_losses
 trainable_variables
][
VARIABLE_VALUEchsgvefspq/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEchsgvefspq/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1
 

"0
#1
н
^non_trainable_variables
_layer_metrics

`layers
$	variables
%regularization_losses
ametrics
blayer_regularization_losses
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
VARIABLE_VALUEdnzlhpjizj/hswofenhiy/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE&dnzlhpjizj/hswofenhiy/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdnzlhpjizj/hswofenhiy/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1dnzlhpjizj/hswofenhiy/input_gate_peephole_weights&variables/5/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE2dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights&variables/6/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE2dnzlhpjizj/hswofenhiy/output_gate_peephole_weights&variables/7/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEnyosplwtfa/lwptfvtmlx/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE&nyosplwtfa/lwptfvtmlx/recurrent_kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEnyosplwtfa/lwptfvtmlx/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE1nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights'variables/11/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE2nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights'variables/12/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE2nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights'variables/13/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4
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
 
*
-0
.1
/2
03
14
25
н
dnon_trainable_variables
elayer_metrics

flayers
I	variables
Jregularization_losses
gmetrics
hlayer_regularization_losses
Ktrainable_variables
 

0
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
 
*
30
41
52
63
74
85
н
inon_trainable_variables
jlayer_metrics

klayers
T	variables
Uregularization_losses
lmetrics
mlayer_regularization_losses
Vtrainable_variables
 
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
VARIABLE_VALUERMSprop/gtjikcltwy/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/gtjikcltwy/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUERMSprop/chsgvefspq/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUERMSprop/chsgvefspq/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE(RMSprop/dnzlhpjizj/hswofenhiy/kernel/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE2RMSprop/dnzlhpjizj/hswofenhiy/recurrent_kernel/rmsDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUE&RMSprop/dnzlhpjizj/hswofenhiy/bias/rmsDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE=RMSprop/dnzlhpjizj/hswofenhiy/input_gate_peephole_weights/rmsDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE>RMSprop/dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights/rmsDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE>RMSprop/dnzlhpjizj/hswofenhiy/output_gate_peephole_weights/rmsDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE(RMSprop/nyosplwtfa/lwptfvtmlx/kernel/rmsDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
НК
VARIABLE_VALUE2RMSprop/nyosplwtfa/lwptfvtmlx/recurrent_kernel/rmsDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUE&RMSprop/nyosplwtfa/lwptfvtmlx/bias/rmsEvariables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE=RMSprop/nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights/rmsEvariables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE>RMSprop/nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights/rmsEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE>RMSprop/nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights/rmsEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Н
serving_default_bdeyofgzkqPlaceholder*/
_output_shapes
:         *
dtype0*$
shape:         
Ы
StatefulPartitionedCallStatefulPartitionedCallserving_default_bdeyofgzkqgtjikcltwy/kernelgtjikcltwy/biasdnzlhpjizj/hswofenhiy/kernel&dnzlhpjizj/hswofenhiy/recurrent_kerneldnzlhpjizj/hswofenhiy/bias1dnzlhpjizj/hswofenhiy/input_gate_peephole_weights2dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights2dnzlhpjizj/hswofenhiy/output_gate_peephole_weightsnyosplwtfa/lwptfvtmlx/kernel&nyosplwtfa/lwptfvtmlx/recurrent_kernelnyosplwtfa/lwptfvtmlx/bias1nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights2nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights2nyosplwtfa/lwptfvtmlx/output_gate_peephole_weightschsgvefspq/kernelchsgvefspq/bias*
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
GPU2*0J 8В *.
f)R'
%__inference_signature_wrapper_2596439
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ў
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%gtjikcltwy/kernel/Read/ReadVariableOp#gtjikcltwy/bias/Read/ReadVariableOp%chsgvefspq/kernel/Read/ReadVariableOp#chsgvefspq/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp0dnzlhpjizj/hswofenhiy/kernel/Read/ReadVariableOp:dnzlhpjizj/hswofenhiy/recurrent_kernel/Read/ReadVariableOp.dnzlhpjizj/hswofenhiy/bias/Read/ReadVariableOpEdnzlhpjizj/hswofenhiy/input_gate_peephole_weights/Read/ReadVariableOpFdnzlhpjizj/hswofenhiy/forget_gate_peephole_weights/Read/ReadVariableOpFdnzlhpjizj/hswofenhiy/output_gate_peephole_weights/Read/ReadVariableOp0nyosplwtfa/lwptfvtmlx/kernel/Read/ReadVariableOp:nyosplwtfa/lwptfvtmlx/recurrent_kernel/Read/ReadVariableOp.nyosplwtfa/lwptfvtmlx/bias/Read/ReadVariableOpEnyosplwtfa/lwptfvtmlx/input_gate_peephole_weights/Read/ReadVariableOpFnyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights/Read/ReadVariableOpFnyosplwtfa/lwptfvtmlx/output_gate_peephole_weights/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp1RMSprop/gtjikcltwy/kernel/rms/Read/ReadVariableOp/RMSprop/gtjikcltwy/bias/rms/Read/ReadVariableOp1RMSprop/chsgvefspq/kernel/rms/Read/ReadVariableOp/RMSprop/chsgvefspq/bias/rms/Read/ReadVariableOp<RMSprop/dnzlhpjizj/hswofenhiy/kernel/rms/Read/ReadVariableOpFRMSprop/dnzlhpjizj/hswofenhiy/recurrent_kernel/rms/Read/ReadVariableOp:RMSprop/dnzlhpjizj/hswofenhiy/bias/rms/Read/ReadVariableOpQRMSprop/dnzlhpjizj/hswofenhiy/input_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/dnzlhpjizj/hswofenhiy/output_gate_peephole_weights/rms/Read/ReadVariableOp<RMSprop/nyosplwtfa/lwptfvtmlx/kernel/rms/Read/ReadVariableOpFRMSprop/nyosplwtfa/lwptfvtmlx/recurrent_kernel/rms/Read/ReadVariableOp:RMSprop/nyosplwtfa/lwptfvtmlx/bias/rms/Read/ReadVariableOpQRMSprop/nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights/rms/Read/ReadVariableOpConst*4
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
GPU2*0J 8В *)
f$R"
 __inference__traced_save_2599388
ц
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamegtjikcltwy/kernelgtjikcltwy/biaschsgvefspq/kernelchsgvefspq/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhodnzlhpjizj/hswofenhiy/kernel&dnzlhpjizj/hswofenhiy/recurrent_kerneldnzlhpjizj/hswofenhiy/bias1dnzlhpjizj/hswofenhiy/input_gate_peephole_weights2dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights2dnzlhpjizj/hswofenhiy/output_gate_peephole_weightsnyosplwtfa/lwptfvtmlx/kernel&nyosplwtfa/lwptfvtmlx/recurrent_kernelnyosplwtfa/lwptfvtmlx/bias1nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights2nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights2nyosplwtfa/lwptfvtmlx/output_gate_peephole_weightstotalcountRMSprop/gtjikcltwy/kernel/rmsRMSprop/gtjikcltwy/bias/rmsRMSprop/chsgvefspq/kernel/rmsRMSprop/chsgvefspq/bias/rms(RMSprop/dnzlhpjizj/hswofenhiy/kernel/rms2RMSprop/dnzlhpjizj/hswofenhiy/recurrent_kernel/rms&RMSprop/dnzlhpjizj/hswofenhiy/bias/rms=RMSprop/dnzlhpjizj/hswofenhiy/input_gate_peephole_weights/rms>RMSprop/dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights/rms>RMSprop/dnzlhpjizj/hswofenhiy/output_gate_peephole_weights/rms(RMSprop/nyosplwtfa/lwptfvtmlx/kernel/rms2RMSprop/nyosplwtfa/lwptfvtmlx/recurrent_kernel/rms&RMSprop/nyosplwtfa/lwptfvtmlx/bias/rms=RMSprop/nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights/rms>RMSprop/nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights/rms>RMSprop/nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights/rms*3
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
GPU2*0J 8В *,
f'R%
#__inference__traced_restore_2599515┬р-
▐╩
В
G__inference_sequential_layer_call_and_return_conditional_losses_2596843

inputsL
6gtjikcltwy_conv1d_expanddims_1_readvariableop_resource:K
=gtjikcltwy_squeeze_batch_dims_biasadd_readvariableop_resource:G
4dnzlhpjizj_hswofenhiy_matmul_readvariableop_resource:	АI
6dnzlhpjizj_hswofenhiy_matmul_1_readvariableop_resource:	 АD
5dnzlhpjizj_hswofenhiy_biasadd_readvariableop_resource:	А;
-dnzlhpjizj_hswofenhiy_readvariableop_resource: =
/dnzlhpjizj_hswofenhiy_readvariableop_1_resource: =
/dnzlhpjizj_hswofenhiy_readvariableop_2_resource: G
4nyosplwtfa_lwptfvtmlx_matmul_readvariableop_resource:	 АI
6nyosplwtfa_lwptfvtmlx_matmul_1_readvariableop_resource:	 АD
5nyosplwtfa_lwptfvtmlx_biasadd_readvariableop_resource:	А;
-nyosplwtfa_lwptfvtmlx_readvariableop_resource: =
/nyosplwtfa_lwptfvtmlx_readvariableop_1_resource: =
/nyosplwtfa_lwptfvtmlx_readvariableop_2_resource: ;
)chsgvefspq_matmul_readvariableop_resource: 8
*chsgvefspq_biasadd_readvariableop_resource:
identityИв!chsgvefspq/BiasAdd/ReadVariableOpв chsgvefspq/MatMul/ReadVariableOpв,dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOpв+dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOpв-dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOpв$dnzlhpjizj/hswofenhiy/ReadVariableOpв&dnzlhpjizj/hswofenhiy/ReadVariableOp_1в&dnzlhpjizj/hswofenhiy/ReadVariableOp_2вdnzlhpjizj/whileв-gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOpв4gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOpв,nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOpв+nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOpв-nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOpв$nyosplwtfa/lwptfvtmlx/ReadVariableOpв&nyosplwtfa/lwptfvtmlx/ReadVariableOp_1в&nyosplwtfa/lwptfvtmlx/ReadVariableOp_2вnyosplwtfa/whileП
 gtjikcltwy/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2"
 gtjikcltwy/conv1d/ExpandDims/dim╗
gtjikcltwy/conv1d/ExpandDims
ExpandDimsinputs)gtjikcltwy/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:         2
gtjikcltwy/conv1d/ExpandDims┘
-gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6gtjikcltwy_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOpК
"gtjikcltwy/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"gtjikcltwy/conv1d/ExpandDims_1/dimу
gtjikcltwy/conv1d/ExpandDims_1
ExpandDims5gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp:value:0+gtjikcltwy/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
gtjikcltwy/conv1d/ExpandDims_1З
gtjikcltwy/conv1d/ShapeShape%gtjikcltwy/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
gtjikcltwy/conv1d/ShapeШ
%gtjikcltwy/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%gtjikcltwy/conv1d/strided_slice/stackе
'gtjikcltwy/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¤        2)
'gtjikcltwy/conv1d/strided_slice/stack_1Ь
'gtjikcltwy/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'gtjikcltwy/conv1d/strided_slice/stack_2╠
gtjikcltwy/conv1d/strided_sliceStridedSlice gtjikcltwy/conv1d/Shape:output:0.gtjikcltwy/conv1d/strided_slice/stack:output:00gtjikcltwy/conv1d/strided_slice/stack_1:output:00gtjikcltwy/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
gtjikcltwy/conv1d/strided_sliceЫ
gtjikcltwy/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2!
gtjikcltwy/conv1d/Reshape/shape╠
gtjikcltwy/conv1d/ReshapeReshape%gtjikcltwy/conv1d/ExpandDims:output:0(gtjikcltwy/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
gtjikcltwy/conv1d/Reshapeю
gtjikcltwy/conv1d/Conv2DConv2D"gtjikcltwy/conv1d/Reshape:output:0'gtjikcltwy/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
gtjikcltwy/conv1d/Conv2DЫ
!gtjikcltwy/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!gtjikcltwy/conv1d/concat/values_1Й
gtjikcltwy/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2
gtjikcltwy/conv1d/concat/axisь
gtjikcltwy/conv1d/concatConcatV2(gtjikcltwy/conv1d/strided_slice:output:0*gtjikcltwy/conv1d/concat/values_1:output:0&gtjikcltwy/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gtjikcltwy/conv1d/concat╔
gtjikcltwy/conv1d/Reshape_1Reshape!gtjikcltwy/conv1d/Conv2D:output:0!gtjikcltwy/conv1d/concat:output:0*
T0*3
_output_shapes!
:         2
gtjikcltwy/conv1d/Reshape_1┴
gtjikcltwy/conv1d/SqueezeSqueeze$gtjikcltwy/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:         *
squeeze_dims

¤        2
gtjikcltwy/conv1d/SqueezeЬ
#gtjikcltwy/squeeze_batch_dims/ShapeShape"gtjikcltwy/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#gtjikcltwy/squeeze_batch_dims/Shape░
1gtjikcltwy/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1gtjikcltwy/squeeze_batch_dims/strided_slice/stack╜
3gtjikcltwy/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        25
3gtjikcltwy/squeeze_batch_dims/strided_slice/stack_1┤
3gtjikcltwy/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3gtjikcltwy/squeeze_batch_dims/strided_slice/stack_2Ф
+gtjikcltwy/squeeze_batch_dims/strided_sliceStridedSlice,gtjikcltwy/squeeze_batch_dims/Shape:output:0:gtjikcltwy/squeeze_batch_dims/strided_slice/stack:output:0<gtjikcltwy/squeeze_batch_dims/strided_slice/stack_1:output:0<gtjikcltwy/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+gtjikcltwy/squeeze_batch_dims/strided_sliceп
+gtjikcltwy/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+gtjikcltwy/squeeze_batch_dims/Reshape/shapeщ
%gtjikcltwy/squeeze_batch_dims/ReshapeReshape"gtjikcltwy/conv1d/Squeeze:output:04gtjikcltwy/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:         2'
%gtjikcltwy/squeeze_batch_dims/Reshapeц
4gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=gtjikcltwy_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp¤
%gtjikcltwy/squeeze_batch_dims/BiasAddBiasAdd.gtjikcltwy/squeeze_batch_dims/Reshape:output:0<gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         2'
%gtjikcltwy/squeeze_batch_dims/BiasAddп
-gtjikcltwy/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-gtjikcltwy/squeeze_batch_dims/concat/values_1б
)gtjikcltwy/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2+
)gtjikcltwy/squeeze_batch_dims/concat/axisи
$gtjikcltwy/squeeze_batch_dims/concatConcatV24gtjikcltwy/squeeze_batch_dims/strided_slice:output:06gtjikcltwy/squeeze_batch_dims/concat/values_1:output:02gtjikcltwy/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$gtjikcltwy/squeeze_batch_dims/concatЎ
'gtjikcltwy/squeeze_batch_dims/Reshape_1Reshape.gtjikcltwy/squeeze_batch_dims/BiasAdd:output:0-gtjikcltwy/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:         2)
'gtjikcltwy/squeeze_batch_dims/Reshape_1Д
ezubtmdnwx/ShapeShape0gtjikcltwy/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
ezubtmdnwx/ShapeК
ezubtmdnwx/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
ezubtmdnwx/strided_slice/stackО
 ezubtmdnwx/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 ezubtmdnwx/strided_slice/stack_1О
 ezubtmdnwx/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 ezubtmdnwx/strided_slice/stack_2д
ezubtmdnwx/strided_sliceStridedSliceezubtmdnwx/Shape:output:0'ezubtmdnwx/strided_slice/stack:output:0)ezubtmdnwx/strided_slice/stack_1:output:0)ezubtmdnwx/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ezubtmdnwx/strided_slicez
ezubtmdnwx/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
ezubtmdnwx/Reshape/shape/1z
ezubtmdnwx/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ezubtmdnwx/Reshape/shape/2╫
ezubtmdnwx/Reshape/shapePack!ezubtmdnwx/strided_slice:output:0#ezubtmdnwx/Reshape/shape/1:output:0#ezubtmdnwx/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ezubtmdnwx/Reshape/shape╛
ezubtmdnwx/ReshapeReshape0gtjikcltwy/squeeze_batch_dims/Reshape_1:output:0!ezubtmdnwx/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
ezubtmdnwx/Reshapeo
dnzlhpjizj/ShapeShapeezubtmdnwx/Reshape:output:0*
T0*
_output_shapes
:2
dnzlhpjizj/ShapeК
dnzlhpjizj/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
dnzlhpjizj/strided_slice/stackО
 dnzlhpjizj/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 dnzlhpjizj/strided_slice/stack_1О
 dnzlhpjizj/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 dnzlhpjizj/strided_slice/stack_2д
dnzlhpjizj/strided_sliceStridedSlicednzlhpjizj/Shape:output:0'dnzlhpjizj/strided_slice/stack:output:0)dnzlhpjizj/strided_slice/stack_1:output:0)dnzlhpjizj/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
dnzlhpjizj/strided_slicer
dnzlhpjizj/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/zeros/mul/yШ
dnzlhpjizj/zeros/mulMul!dnzlhpjizj/strided_slice:output:0dnzlhpjizj/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/zeros/mulu
dnzlhpjizj/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
dnzlhpjizj/zeros/Less/yУ
dnzlhpjizj/zeros/LessLessdnzlhpjizj/zeros/mul:z:0 dnzlhpjizj/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/zeros/Lessx
dnzlhpjizj/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/zeros/packed/1п
dnzlhpjizj/zeros/packedPack!dnzlhpjizj/strided_slice:output:0"dnzlhpjizj/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
dnzlhpjizj/zeros/packedu
dnzlhpjizj/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
dnzlhpjizj/zeros/Constб
dnzlhpjizj/zerosFill dnzlhpjizj/zeros/packed:output:0dnzlhpjizj/zeros/Const:output:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/zerosv
dnzlhpjizj/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/zeros_1/mul/yЮ
dnzlhpjizj/zeros_1/mulMul!dnzlhpjizj/strided_slice:output:0!dnzlhpjizj/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/zeros_1/muly
dnzlhpjizj/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
dnzlhpjizj/zeros_1/Less/yЫ
dnzlhpjizj/zeros_1/LessLessdnzlhpjizj/zeros_1/mul:z:0"dnzlhpjizj/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/zeros_1/Less|
dnzlhpjizj/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/zeros_1/packed/1╡
dnzlhpjizj/zeros_1/packedPack!dnzlhpjizj/strided_slice:output:0$dnzlhpjizj/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
dnzlhpjizj/zeros_1/packedy
dnzlhpjizj/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
dnzlhpjizj/zeros_1/Constй
dnzlhpjizj/zeros_1Fill"dnzlhpjizj/zeros_1/packed:output:0!dnzlhpjizj/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/zeros_1Л
dnzlhpjizj/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
dnzlhpjizj/transpose/perm░
dnzlhpjizj/transpose	Transposeezubtmdnwx/Reshape:output:0"dnzlhpjizj/transpose/perm:output:0*
T0*+
_output_shapes
:         2
dnzlhpjizj/transposep
dnzlhpjizj/Shape_1Shapednzlhpjizj/transpose:y:0*
T0*
_output_shapes
:2
dnzlhpjizj/Shape_1О
 dnzlhpjizj/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dnzlhpjizj/strided_slice_1/stackТ
"dnzlhpjizj/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"dnzlhpjizj/strided_slice_1/stack_1Т
"dnzlhpjizj/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"dnzlhpjizj/strided_slice_1/stack_2░
dnzlhpjizj/strided_slice_1StridedSlicednzlhpjizj/Shape_1:output:0)dnzlhpjizj/strided_slice_1/stack:output:0+dnzlhpjizj/strided_slice_1/stack_1:output:0+dnzlhpjizj/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
dnzlhpjizj/strided_slice_1Ы
&dnzlhpjizj/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&dnzlhpjizj/TensorArrayV2/element_shape▐
dnzlhpjizj/TensorArrayV2TensorListReserve/dnzlhpjizj/TensorArrayV2/element_shape:output:0#dnzlhpjizj/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
dnzlhpjizj/TensorArrayV2╒
@dnzlhpjizj/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@dnzlhpjizj/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2dnzlhpjizj/TensorArrayUnstack/TensorListFromTensorTensorListFromTensordnzlhpjizj/transpose:y:0Idnzlhpjizj/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2dnzlhpjizj/TensorArrayUnstack/TensorListFromTensorО
 dnzlhpjizj/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dnzlhpjizj/strided_slice_2/stackТ
"dnzlhpjizj/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"dnzlhpjizj/strided_slice_2/stack_1Т
"dnzlhpjizj/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"dnzlhpjizj/strided_slice_2/stack_2╛
dnzlhpjizj/strided_slice_2StridedSlicednzlhpjizj/transpose:y:0)dnzlhpjizj/strided_slice_2/stack:output:0+dnzlhpjizj/strided_slice_2/stack_1:output:0+dnzlhpjizj/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
dnzlhpjizj/strided_slice_2╨
+dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOpReadVariableOp4dnzlhpjizj_hswofenhiy_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02-
+dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp╙
dnzlhpjizj/hswofenhiy/MatMulMatMul#dnzlhpjizj/strided_slice_2:output:03dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dnzlhpjizj/hswofenhiy/MatMul╓
-dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp6dnzlhpjizj_hswofenhiy_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp╧
dnzlhpjizj/hswofenhiy/MatMul_1MatMuldnzlhpjizj/zeros:output:05dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
dnzlhpjizj/hswofenhiy/MatMul_1─
dnzlhpjizj/hswofenhiy/addAddV2&dnzlhpjizj/hswofenhiy/MatMul:product:0(dnzlhpjizj/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
dnzlhpjizj/hswofenhiy/add╧
,dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp5dnzlhpjizj_hswofenhiy_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp╤
dnzlhpjizj/hswofenhiy/BiasAddBiasAdddnzlhpjizj/hswofenhiy/add:z:04dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dnzlhpjizj/hswofenhiy/BiasAddР
%dnzlhpjizj/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%dnzlhpjizj/hswofenhiy/split/split_dimЧ
dnzlhpjizj/hswofenhiy/splitSplit.dnzlhpjizj/hswofenhiy/split/split_dim:output:0&dnzlhpjizj/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
dnzlhpjizj/hswofenhiy/split╢
$dnzlhpjizj/hswofenhiy/ReadVariableOpReadVariableOp-dnzlhpjizj_hswofenhiy_readvariableop_resource*
_output_shapes
: *
dtype02&
$dnzlhpjizj/hswofenhiy/ReadVariableOp║
dnzlhpjizj/hswofenhiy/mulMul,dnzlhpjizj/hswofenhiy/ReadVariableOp:value:0dnzlhpjizj/zeros_1:output:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul║
dnzlhpjizj/hswofenhiy/add_1AddV2$dnzlhpjizj/hswofenhiy/split:output:0dnzlhpjizj/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/add_1Ь
dnzlhpjizj/hswofenhiy/SigmoidSigmoiddnzlhpjizj/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/Sigmoid╝
&dnzlhpjizj/hswofenhiy/ReadVariableOp_1ReadVariableOp/dnzlhpjizj_hswofenhiy_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&dnzlhpjizj/hswofenhiy/ReadVariableOp_1└
dnzlhpjizj/hswofenhiy/mul_1Mul.dnzlhpjizj/hswofenhiy/ReadVariableOp_1:value:0dnzlhpjizj/zeros_1:output:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul_1╝
dnzlhpjizj/hswofenhiy/add_2AddV2$dnzlhpjizj/hswofenhiy/split:output:1dnzlhpjizj/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/add_2а
dnzlhpjizj/hswofenhiy/Sigmoid_1Sigmoiddnzlhpjizj/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2!
dnzlhpjizj/hswofenhiy/Sigmoid_1╡
dnzlhpjizj/hswofenhiy/mul_2Mul#dnzlhpjizj/hswofenhiy/Sigmoid_1:y:0dnzlhpjizj/zeros_1:output:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul_2Ш
dnzlhpjizj/hswofenhiy/TanhTanh$dnzlhpjizj/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/Tanh╢
dnzlhpjizj/hswofenhiy/mul_3Mul!dnzlhpjizj/hswofenhiy/Sigmoid:y:0dnzlhpjizj/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul_3╖
dnzlhpjizj/hswofenhiy/add_3AddV2dnzlhpjizj/hswofenhiy/mul_2:z:0dnzlhpjizj/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/add_3╝
&dnzlhpjizj/hswofenhiy/ReadVariableOp_2ReadVariableOp/dnzlhpjizj_hswofenhiy_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&dnzlhpjizj/hswofenhiy/ReadVariableOp_2─
dnzlhpjizj/hswofenhiy/mul_4Mul.dnzlhpjizj/hswofenhiy/ReadVariableOp_2:value:0dnzlhpjizj/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul_4╝
dnzlhpjizj/hswofenhiy/add_4AddV2$dnzlhpjizj/hswofenhiy/split:output:3dnzlhpjizj/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/add_4а
dnzlhpjizj/hswofenhiy/Sigmoid_2Sigmoiddnzlhpjizj/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2!
dnzlhpjizj/hswofenhiy/Sigmoid_2Ч
dnzlhpjizj/hswofenhiy/Tanh_1Tanhdnzlhpjizj/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/Tanh_1║
dnzlhpjizj/hswofenhiy/mul_5Mul#dnzlhpjizj/hswofenhiy/Sigmoid_2:y:0 dnzlhpjizj/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul_5е
(dnzlhpjizj/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(dnzlhpjizj/TensorArrayV2_1/element_shapeф
dnzlhpjizj/TensorArrayV2_1TensorListReserve1dnzlhpjizj/TensorArrayV2_1/element_shape:output:0#dnzlhpjizj/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
dnzlhpjizj/TensorArrayV2_1d
dnzlhpjizj/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/timeХ
#dnzlhpjizj/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#dnzlhpjizj/while/maximum_iterationsА
dnzlhpjizj/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/while/loop_counter▓
dnzlhpjizj/whileWhile&dnzlhpjizj/while/loop_counter:output:0,dnzlhpjizj/while/maximum_iterations:output:0dnzlhpjizj/time:output:0#dnzlhpjizj/TensorArrayV2_1:handle:0dnzlhpjizj/zeros:output:0dnzlhpjizj/zeros_1:output:0#dnzlhpjizj/strided_slice_1:output:0Bdnzlhpjizj/TensorArrayUnstack/TensorListFromTensor:output_handle:04dnzlhpjizj_hswofenhiy_matmul_readvariableop_resource6dnzlhpjizj_hswofenhiy_matmul_1_readvariableop_resource5dnzlhpjizj_hswofenhiy_biasadd_readvariableop_resource-dnzlhpjizj_hswofenhiy_readvariableop_resource/dnzlhpjizj_hswofenhiy_readvariableop_1_resource/dnzlhpjizj_hswofenhiy_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*)
body!R
dnzlhpjizj_while_body_2596560*)
cond!R
dnzlhpjizj_while_cond_2596559*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
dnzlhpjizj/while╦
;dnzlhpjizj/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;dnzlhpjizj/TensorArrayV2Stack/TensorListStack/element_shapeФ
-dnzlhpjizj/TensorArrayV2Stack/TensorListStackTensorListStackdnzlhpjizj/while:output:3Ddnzlhpjizj/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-dnzlhpjizj/TensorArrayV2Stack/TensorListStackЧ
 dnzlhpjizj/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 dnzlhpjizj/strided_slice_3/stackТ
"dnzlhpjizj/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"dnzlhpjizj/strided_slice_3/stack_1Т
"dnzlhpjizj/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"dnzlhpjizj/strided_slice_3/stack_2▄
dnzlhpjizj/strided_slice_3StridedSlice6dnzlhpjizj/TensorArrayV2Stack/TensorListStack:tensor:0)dnzlhpjizj/strided_slice_3/stack:output:0+dnzlhpjizj/strided_slice_3/stack_1:output:0+dnzlhpjizj/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
dnzlhpjizj/strided_slice_3П
dnzlhpjizj/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
dnzlhpjizj/transpose_1/perm╤
dnzlhpjizj/transpose_1	Transpose6dnzlhpjizj/TensorArrayV2Stack/TensorListStack:tensor:0$dnzlhpjizj/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
dnzlhpjizj/transpose_1n
nyosplwtfa/ShapeShapednzlhpjizj/transpose_1:y:0*
T0*
_output_shapes
:2
nyosplwtfa/ShapeК
nyosplwtfa/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
nyosplwtfa/strided_slice/stackО
 nyosplwtfa/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 nyosplwtfa/strided_slice/stack_1О
 nyosplwtfa/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 nyosplwtfa/strided_slice/stack_2д
nyosplwtfa/strided_sliceStridedSlicenyosplwtfa/Shape:output:0'nyosplwtfa/strided_slice/stack:output:0)nyosplwtfa/strided_slice/stack_1:output:0)nyosplwtfa/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
nyosplwtfa/strided_slicer
nyosplwtfa/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/zeros/mul/yШ
nyosplwtfa/zeros/mulMul!nyosplwtfa/strided_slice:output:0nyosplwtfa/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/zeros/mulu
nyosplwtfa/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
nyosplwtfa/zeros/Less/yУ
nyosplwtfa/zeros/LessLessnyosplwtfa/zeros/mul:z:0 nyosplwtfa/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/zeros/Lessx
nyosplwtfa/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/zeros/packed/1п
nyosplwtfa/zeros/packedPack!nyosplwtfa/strided_slice:output:0"nyosplwtfa/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
nyosplwtfa/zeros/packedu
nyosplwtfa/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
nyosplwtfa/zeros/Constб
nyosplwtfa/zerosFill nyosplwtfa/zeros/packed:output:0nyosplwtfa/zeros/Const:output:0*
T0*'
_output_shapes
:          2
nyosplwtfa/zerosv
nyosplwtfa/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/zeros_1/mul/yЮ
nyosplwtfa/zeros_1/mulMul!nyosplwtfa/strided_slice:output:0!nyosplwtfa/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/zeros_1/muly
nyosplwtfa/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
nyosplwtfa/zeros_1/Less/yЫ
nyosplwtfa/zeros_1/LessLessnyosplwtfa/zeros_1/mul:z:0"nyosplwtfa/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/zeros_1/Less|
nyosplwtfa/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/zeros_1/packed/1╡
nyosplwtfa/zeros_1/packedPack!nyosplwtfa/strided_slice:output:0$nyosplwtfa/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
nyosplwtfa/zeros_1/packedy
nyosplwtfa/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
nyosplwtfa/zeros_1/Constй
nyosplwtfa/zeros_1Fill"nyosplwtfa/zeros_1/packed:output:0!nyosplwtfa/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
nyosplwtfa/zeros_1Л
nyosplwtfa/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
nyosplwtfa/transpose/permп
nyosplwtfa/transpose	Transposednzlhpjizj/transpose_1:y:0"nyosplwtfa/transpose/perm:output:0*
T0*+
_output_shapes
:          2
nyosplwtfa/transposep
nyosplwtfa/Shape_1Shapenyosplwtfa/transpose:y:0*
T0*
_output_shapes
:2
nyosplwtfa/Shape_1О
 nyosplwtfa/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 nyosplwtfa/strided_slice_1/stackТ
"nyosplwtfa/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"nyosplwtfa/strided_slice_1/stack_1Т
"nyosplwtfa/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"nyosplwtfa/strided_slice_1/stack_2░
nyosplwtfa/strided_slice_1StridedSlicenyosplwtfa/Shape_1:output:0)nyosplwtfa/strided_slice_1/stack:output:0+nyosplwtfa/strided_slice_1/stack_1:output:0+nyosplwtfa/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
nyosplwtfa/strided_slice_1Ы
&nyosplwtfa/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&nyosplwtfa/TensorArrayV2/element_shape▐
nyosplwtfa/TensorArrayV2TensorListReserve/nyosplwtfa/TensorArrayV2/element_shape:output:0#nyosplwtfa/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
nyosplwtfa/TensorArrayV2╒
@nyosplwtfa/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2B
@nyosplwtfa/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2nyosplwtfa/TensorArrayUnstack/TensorListFromTensorTensorListFromTensornyosplwtfa/transpose:y:0Inyosplwtfa/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2nyosplwtfa/TensorArrayUnstack/TensorListFromTensorО
 nyosplwtfa/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 nyosplwtfa/strided_slice_2/stackТ
"nyosplwtfa/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"nyosplwtfa/strided_slice_2/stack_1Т
"nyosplwtfa/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"nyosplwtfa/strided_slice_2/stack_2╛
nyosplwtfa/strided_slice_2StridedSlicenyosplwtfa/transpose:y:0)nyosplwtfa/strided_slice_2/stack:output:0+nyosplwtfa/strided_slice_2/stack_1:output:0+nyosplwtfa/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
nyosplwtfa/strided_slice_2╨
+nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp4nyosplwtfa_lwptfvtmlx_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02-
+nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp╙
nyosplwtfa/lwptfvtmlx/MatMulMatMul#nyosplwtfa/strided_slice_2:output:03nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
nyosplwtfa/lwptfvtmlx/MatMul╓
-nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp6nyosplwtfa_lwptfvtmlx_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp╧
nyosplwtfa/lwptfvtmlx/MatMul_1MatMulnyosplwtfa/zeros:output:05nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
nyosplwtfa/lwptfvtmlx/MatMul_1─
nyosplwtfa/lwptfvtmlx/addAddV2&nyosplwtfa/lwptfvtmlx/MatMul:product:0(nyosplwtfa/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
nyosplwtfa/lwptfvtmlx/add╧
,nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp5nyosplwtfa_lwptfvtmlx_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp╤
nyosplwtfa/lwptfvtmlx/BiasAddBiasAddnyosplwtfa/lwptfvtmlx/add:z:04nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
nyosplwtfa/lwptfvtmlx/BiasAddР
%nyosplwtfa/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%nyosplwtfa/lwptfvtmlx/split/split_dimЧ
nyosplwtfa/lwptfvtmlx/splitSplit.nyosplwtfa/lwptfvtmlx/split/split_dim:output:0&nyosplwtfa/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
nyosplwtfa/lwptfvtmlx/split╢
$nyosplwtfa/lwptfvtmlx/ReadVariableOpReadVariableOp-nyosplwtfa_lwptfvtmlx_readvariableop_resource*
_output_shapes
: *
dtype02&
$nyosplwtfa/lwptfvtmlx/ReadVariableOp║
nyosplwtfa/lwptfvtmlx/mulMul,nyosplwtfa/lwptfvtmlx/ReadVariableOp:value:0nyosplwtfa/zeros_1:output:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul║
nyosplwtfa/lwptfvtmlx/add_1AddV2$nyosplwtfa/lwptfvtmlx/split:output:0nyosplwtfa/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/add_1Ь
nyosplwtfa/lwptfvtmlx/SigmoidSigmoidnyosplwtfa/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/Sigmoid╝
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_1ReadVariableOp/nyosplwtfa_lwptfvtmlx_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_1└
nyosplwtfa/lwptfvtmlx/mul_1Mul.nyosplwtfa/lwptfvtmlx/ReadVariableOp_1:value:0nyosplwtfa/zeros_1:output:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul_1╝
nyosplwtfa/lwptfvtmlx/add_2AddV2$nyosplwtfa/lwptfvtmlx/split:output:1nyosplwtfa/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/add_2а
nyosplwtfa/lwptfvtmlx/Sigmoid_1Sigmoidnyosplwtfa/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2!
nyosplwtfa/lwptfvtmlx/Sigmoid_1╡
nyosplwtfa/lwptfvtmlx/mul_2Mul#nyosplwtfa/lwptfvtmlx/Sigmoid_1:y:0nyosplwtfa/zeros_1:output:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul_2Ш
nyosplwtfa/lwptfvtmlx/TanhTanh$nyosplwtfa/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/Tanh╢
nyosplwtfa/lwptfvtmlx/mul_3Mul!nyosplwtfa/lwptfvtmlx/Sigmoid:y:0nyosplwtfa/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul_3╖
nyosplwtfa/lwptfvtmlx/add_3AddV2nyosplwtfa/lwptfvtmlx/mul_2:z:0nyosplwtfa/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/add_3╝
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_2ReadVariableOp/nyosplwtfa_lwptfvtmlx_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_2─
nyosplwtfa/lwptfvtmlx/mul_4Mul.nyosplwtfa/lwptfvtmlx/ReadVariableOp_2:value:0nyosplwtfa/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul_4╝
nyosplwtfa/lwptfvtmlx/add_4AddV2$nyosplwtfa/lwptfvtmlx/split:output:3nyosplwtfa/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/add_4а
nyosplwtfa/lwptfvtmlx/Sigmoid_2Sigmoidnyosplwtfa/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2!
nyosplwtfa/lwptfvtmlx/Sigmoid_2Ч
nyosplwtfa/lwptfvtmlx/Tanh_1Tanhnyosplwtfa/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/Tanh_1║
nyosplwtfa/lwptfvtmlx/mul_5Mul#nyosplwtfa/lwptfvtmlx/Sigmoid_2:y:0 nyosplwtfa/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul_5е
(nyosplwtfa/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(nyosplwtfa/TensorArrayV2_1/element_shapeф
nyosplwtfa/TensorArrayV2_1TensorListReserve1nyosplwtfa/TensorArrayV2_1/element_shape:output:0#nyosplwtfa/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
nyosplwtfa/TensorArrayV2_1d
nyosplwtfa/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/timeХ
#nyosplwtfa/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#nyosplwtfa/while/maximum_iterationsА
nyosplwtfa/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/while/loop_counter▓
nyosplwtfa/whileWhile&nyosplwtfa/while/loop_counter:output:0,nyosplwtfa/while/maximum_iterations:output:0nyosplwtfa/time:output:0#nyosplwtfa/TensorArrayV2_1:handle:0nyosplwtfa/zeros:output:0nyosplwtfa/zeros_1:output:0#nyosplwtfa/strided_slice_1:output:0Bnyosplwtfa/TensorArrayUnstack/TensorListFromTensor:output_handle:04nyosplwtfa_lwptfvtmlx_matmul_readvariableop_resource6nyosplwtfa_lwptfvtmlx_matmul_1_readvariableop_resource5nyosplwtfa_lwptfvtmlx_biasadd_readvariableop_resource-nyosplwtfa_lwptfvtmlx_readvariableop_resource/nyosplwtfa_lwptfvtmlx_readvariableop_1_resource/nyosplwtfa_lwptfvtmlx_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*)
body!R
nyosplwtfa_while_body_2596736*)
cond!R
nyosplwtfa_while_cond_2596735*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
nyosplwtfa/while╦
;nyosplwtfa/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;nyosplwtfa/TensorArrayV2Stack/TensorListStack/element_shapeФ
-nyosplwtfa/TensorArrayV2Stack/TensorListStackTensorListStacknyosplwtfa/while:output:3Dnyosplwtfa/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-nyosplwtfa/TensorArrayV2Stack/TensorListStackЧ
 nyosplwtfa/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 nyosplwtfa/strided_slice_3/stackТ
"nyosplwtfa/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"nyosplwtfa/strided_slice_3/stack_1Т
"nyosplwtfa/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"nyosplwtfa/strided_slice_3/stack_2▄
nyosplwtfa/strided_slice_3StridedSlice6nyosplwtfa/TensorArrayV2Stack/TensorListStack:tensor:0)nyosplwtfa/strided_slice_3/stack:output:0+nyosplwtfa/strided_slice_3/stack_1:output:0+nyosplwtfa/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
nyosplwtfa/strided_slice_3П
nyosplwtfa/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
nyosplwtfa/transpose_1/perm╤
nyosplwtfa/transpose_1	Transpose6nyosplwtfa/TensorArrayV2Stack/TensorListStack:tensor:0$nyosplwtfa/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
nyosplwtfa/transpose_1о
 chsgvefspq/MatMul/ReadVariableOpReadVariableOp)chsgvefspq_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 chsgvefspq/MatMul/ReadVariableOp▒
chsgvefspq/MatMulMatMul#nyosplwtfa/strided_slice_3:output:0(chsgvefspq/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
chsgvefspq/MatMulн
!chsgvefspq/BiasAdd/ReadVariableOpReadVariableOp*chsgvefspq_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!chsgvefspq/BiasAdd/ReadVariableOpн
chsgvefspq/BiasAddBiasAddchsgvefspq/MatMul:product:0)chsgvefspq/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
chsgvefspq/BiasAdd╧
IdentityIdentitychsgvefspq/BiasAdd:output:0"^chsgvefspq/BiasAdd/ReadVariableOp!^chsgvefspq/MatMul/ReadVariableOp-^dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp,^dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp.^dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp%^dnzlhpjizj/hswofenhiy/ReadVariableOp'^dnzlhpjizj/hswofenhiy/ReadVariableOp_1'^dnzlhpjizj/hswofenhiy/ReadVariableOp_2^dnzlhpjizj/while.^gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp5^gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp-^nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp,^nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp.^nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp%^nyosplwtfa/lwptfvtmlx/ReadVariableOp'^nyosplwtfa/lwptfvtmlx/ReadVariableOp_1'^nyosplwtfa/lwptfvtmlx/ReadVariableOp_2^nyosplwtfa/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2F
!chsgvefspq/BiasAdd/ReadVariableOp!chsgvefspq/BiasAdd/ReadVariableOp2D
 chsgvefspq/MatMul/ReadVariableOp chsgvefspq/MatMul/ReadVariableOp2\
,dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp,dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp2Z
+dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp+dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp2^
-dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp-dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp2L
$dnzlhpjizj/hswofenhiy/ReadVariableOp$dnzlhpjizj/hswofenhiy/ReadVariableOp2P
&dnzlhpjizj/hswofenhiy/ReadVariableOp_1&dnzlhpjizj/hswofenhiy/ReadVariableOp_12P
&dnzlhpjizj/hswofenhiy/ReadVariableOp_2&dnzlhpjizj/hswofenhiy/ReadVariableOp_22$
dnzlhpjizj/whilednzlhpjizj/while2^
-gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp-gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp2l
4gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp4gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp2\
,nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp,nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp2Z
+nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp+nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp2^
-nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp-nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp2L
$nyosplwtfa/lwptfvtmlx/ReadVariableOp$nyosplwtfa/lwptfvtmlx/ReadVariableOp2P
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_1&nyosplwtfa/lwptfvtmlx/ReadVariableOp_12P
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_2&nyosplwtfa/lwptfvtmlx/ReadVariableOp_22$
nyosplwtfa/whilenyosplwtfa/while:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Л

э
while_cond_2598431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2598431___redundant_placeholder05
1while_while_cond_2598431___redundant_placeholder15
1while_while_cond_2598431___redundant_placeholder25
1while_while_cond_2598431___redundant_placeholder35
1while_while_cond_2598431___redundant_placeholder45
1while_while_cond_2598431___redundant_placeholder55
1while_while_cond_2598431___redundant_placeholder6
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
Ш
Ю
,__inference_sequential_layer_call_fn_2596312

bdeyofgzkq
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
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCall
bdeyofgzkqunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_25962402
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
bdeyofgzkq
рY
З
while_body_2595539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lwptfvtmlx_matmul_readvariableop_resource_0:	 АF
3while_lwptfvtmlx_matmul_1_readvariableop_resource_0:	 АA
2while_lwptfvtmlx_biasadd_readvariableop_resource_0:	А8
*while_lwptfvtmlx_readvariableop_resource_0: :
,while_lwptfvtmlx_readvariableop_1_resource_0: :
,while_lwptfvtmlx_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lwptfvtmlx_matmul_readvariableop_resource:	 АD
1while_lwptfvtmlx_matmul_1_readvariableop_resource:	 А?
0while_lwptfvtmlx_biasadd_readvariableop_resource:	А6
(while_lwptfvtmlx_readvariableop_resource: 8
*while_lwptfvtmlx_readvariableop_1_resource: 8
*while_lwptfvtmlx_readvariableop_2_resource: Ив'while/lwptfvtmlx/BiasAdd/ReadVariableOpв&while/lwptfvtmlx/MatMul/ReadVariableOpв(while/lwptfvtmlx/MatMul_1/ReadVariableOpвwhile/lwptfvtmlx/ReadVariableOpв!while/lwptfvtmlx/ReadVariableOp_1в!while/lwptfvtmlx/ReadVariableOp_2├
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
&while/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp1while_lwptfvtmlx_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/lwptfvtmlx/MatMul/ReadVariableOp╤
while/lwptfvtmlx/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul╔
(while/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp3while_lwptfvtmlx_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/lwptfvtmlx/MatMul_1/ReadVariableOp║
while/lwptfvtmlx/MatMul_1MatMulwhile_placeholder_20while/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul_1░
while/lwptfvtmlx/addAddV2!while/lwptfvtmlx/MatMul:product:0#while/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/add┬
'while/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp2while_lwptfvtmlx_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/lwptfvtmlx/BiasAdd/ReadVariableOp╜
while/lwptfvtmlx/BiasAddBiasAddwhile/lwptfvtmlx/add:z:0/while/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/BiasAddЖ
 while/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/lwptfvtmlx/split/split_dimГ
while/lwptfvtmlx/splitSplit)while/lwptfvtmlx/split/split_dim:output:0!while/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lwptfvtmlx/splitй
while/lwptfvtmlx/ReadVariableOpReadVariableOp*while_lwptfvtmlx_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/lwptfvtmlx/ReadVariableOpг
while/lwptfvtmlx/mulMul'while/lwptfvtmlx/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mulж
while/lwptfvtmlx/add_1AddV2while/lwptfvtmlx/split:output:0while/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_1Н
while/lwptfvtmlx/SigmoidSigmoidwhile/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoidп
!while/lwptfvtmlx/ReadVariableOp_1ReadVariableOp,while_lwptfvtmlx_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_1й
while/lwptfvtmlx/mul_1Mul)while/lwptfvtmlx/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_1и
while/lwptfvtmlx/add_2AddV2while/lwptfvtmlx/split:output:1while/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_2С
while/lwptfvtmlx/Sigmoid_1Sigmoidwhile/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_1Ю
while/lwptfvtmlx/mul_2Mulwhile/lwptfvtmlx/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_2Й
while/lwptfvtmlx/TanhTanhwhile/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanhв
while/lwptfvtmlx/mul_3Mulwhile/lwptfvtmlx/Sigmoid:y:0while/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_3г
while/lwptfvtmlx/add_3AddV2while/lwptfvtmlx/mul_2:z:0while/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_3п
!while/lwptfvtmlx/ReadVariableOp_2ReadVariableOp,while_lwptfvtmlx_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_2░
while/lwptfvtmlx/mul_4Mul)while/lwptfvtmlx/ReadVariableOp_2:value:0while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_4и
while/lwptfvtmlx/add_4AddV2while/lwptfvtmlx/split:output:3while/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_4С
while/lwptfvtmlx/Sigmoid_2Sigmoidwhile/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_2И
while/lwptfvtmlx/Tanh_1Tanhwhile/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanh_1ж
while/lwptfvtmlx/mul_5Mulwhile/lwptfvtmlx/Sigmoid_2:y:0while/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lwptfvtmlx/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/lwptfvtmlx/mul_5:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/lwptfvtmlx/add_3:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
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
0while_lwptfvtmlx_biasadd_readvariableop_resource2while_lwptfvtmlx_biasadd_readvariableop_resource_0"h
1while_lwptfvtmlx_matmul_1_readvariableop_resource3while_lwptfvtmlx_matmul_1_readvariableop_resource_0"d
/while_lwptfvtmlx_matmul_readvariableop_resource1while_lwptfvtmlx_matmul_readvariableop_resource_0"Z
*while_lwptfvtmlx_readvariableop_1_resource,while_lwptfvtmlx_readvariableop_1_resource_0"Z
*while_lwptfvtmlx_readvariableop_2_resource,while_lwptfvtmlx_readvariableop_2_resource_0"V
(while_lwptfvtmlx_readvariableop_resource*while_lwptfvtmlx_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/lwptfvtmlx/BiasAdd/ReadVariableOp'while/lwptfvtmlx/BiasAdd/ReadVariableOp2P
&while/lwptfvtmlx/MatMul/ReadVariableOp&while/lwptfvtmlx/MatMul/ReadVariableOp2T
(while/lwptfvtmlx/MatMul_1/ReadVariableOp(while/lwptfvtmlx/MatMul_1/ReadVariableOp2B
while/lwptfvtmlx/ReadVariableOpwhile/lwptfvtmlx/ReadVariableOp2F
!while/lwptfvtmlx/ReadVariableOp_1!while/lwptfvtmlx/ReadVariableOp_12F
!while/lwptfvtmlx/ReadVariableOp_2!while/lwptfvtmlx/ReadVariableOp_2: 
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
Л

э
while_cond_2595345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2595345___redundant_placeholder05
1while_while_cond_2595345___redundant_placeholder15
1while_while_cond_2595345___redundant_placeholder25
1while_while_cond_2595345___redundant_placeholder35
1while_while_cond_2595345___redundant_placeholder45
1while_while_cond_2595345___redundant_placeholder55
1while_while_cond_2595345___redundant_placeholder6
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
д
Щ
,__inference_chsgvefspq_layer_call_fn_2598980

inputs
unknown: 
	unknown_0:
identityИвStatefulPartitionedCall·
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
GPU2*0J 8В *P
fKRI
G__inference_chsgvefspq_layer_call_and_return_conditional_losses_25956642
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
й0
╝
G__inference_gtjikcltwy_layer_call_and_return_conditional_losses_2595247

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
▄h
З
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598353
inputs_0<
)lwptfvtmlx_matmul_readvariableop_resource:	 А>
+lwptfvtmlx_matmul_1_readvariableop_resource:	 А9
*lwptfvtmlx_biasadd_readvariableop_resource:	А0
"lwptfvtmlx_readvariableop_resource: 2
$lwptfvtmlx_readvariableop_1_resource: 2
$lwptfvtmlx_readvariableop_2_resource: 
identityИв!lwptfvtmlx/BiasAdd/ReadVariableOpв lwptfvtmlx/MatMul/ReadVariableOpв"lwptfvtmlx/MatMul_1/ReadVariableOpвlwptfvtmlx/ReadVariableOpвlwptfvtmlx/ReadVariableOp_1вlwptfvtmlx/ReadVariableOp_2вwhileF
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
 lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp)lwptfvtmlx_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 lwptfvtmlx/MatMul/ReadVariableOpз
lwptfvtmlx/MatMulMatMulstrided_slice_2:output:0(lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul╡
"lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp+lwptfvtmlx_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"lwptfvtmlx/MatMul_1/ReadVariableOpг
lwptfvtmlx/MatMul_1MatMulzeros:output:0*lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul_1Ш
lwptfvtmlx/addAddV2lwptfvtmlx/MatMul:product:0lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/addо
!lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp*lwptfvtmlx_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!lwptfvtmlx/BiasAdd/ReadVariableOpе
lwptfvtmlx/BiasAddBiasAddlwptfvtmlx/add:z:0)lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/BiasAddz
lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lwptfvtmlx/split/split_dimы
lwptfvtmlx/splitSplit#lwptfvtmlx/split/split_dim:output:0lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lwptfvtmlx/splitХ
lwptfvtmlx/ReadVariableOpReadVariableOp"lwptfvtmlx_readvariableop_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOpО
lwptfvtmlx/mulMul!lwptfvtmlx/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mulО
lwptfvtmlx/add_1AddV2lwptfvtmlx/split:output:0lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_1{
lwptfvtmlx/SigmoidSigmoidlwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/SigmoidЫ
lwptfvtmlx/ReadVariableOp_1ReadVariableOp$lwptfvtmlx_readvariableop_1_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_1Ф
lwptfvtmlx/mul_1Mul#lwptfvtmlx/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_1Р
lwptfvtmlx/add_2AddV2lwptfvtmlx/split:output:1lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_2
lwptfvtmlx/Sigmoid_1Sigmoidlwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_1Й
lwptfvtmlx/mul_2Mullwptfvtmlx/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_2w
lwptfvtmlx/TanhTanhlwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
lwptfvtmlx/TanhК
lwptfvtmlx/mul_3Mullwptfvtmlx/Sigmoid:y:0lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_3Л
lwptfvtmlx/add_3AddV2lwptfvtmlx/mul_2:z:0lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_3Ы
lwptfvtmlx/ReadVariableOp_2ReadVariableOp$lwptfvtmlx_readvariableop_2_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_2Ш
lwptfvtmlx/mul_4Mul#lwptfvtmlx/ReadVariableOp_2:value:0lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_4Р
lwptfvtmlx/add_4AddV2lwptfvtmlx/split:output:3lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_4
lwptfvtmlx/Sigmoid_2Sigmoidlwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_2v
lwptfvtmlx/Tanh_1Tanhlwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Tanh_1О
lwptfvtmlx/mul_5Mullwptfvtmlx/Sigmoid_2:y:0lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lwptfvtmlx_matmul_readvariableop_resource+lwptfvtmlx_matmul_1_readvariableop_resource*lwptfvtmlx_biasadd_readvariableop_resource"lwptfvtmlx_readvariableop_resource$lwptfvtmlx_readvariableop_1_resource$lwptfvtmlx_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2598252*
condR
while_cond_2598251*Q
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
IdentityIdentitystrided_slice_3:output:0"^lwptfvtmlx/BiasAdd/ReadVariableOp!^lwptfvtmlx/MatMul/ReadVariableOp#^lwptfvtmlx/MatMul_1/ReadVariableOp^lwptfvtmlx/ReadVariableOp^lwptfvtmlx/ReadVariableOp_1^lwptfvtmlx/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2F
!lwptfvtmlx/BiasAdd/ReadVariableOp!lwptfvtmlx/BiasAdd/ReadVariableOp2D
 lwptfvtmlx/MatMul/ReadVariableOp lwptfvtmlx/MatMul/ReadVariableOp2H
"lwptfvtmlx/MatMul_1/ReadVariableOp"lwptfvtmlx/MatMul_1/ReadVariableOp26
lwptfvtmlx/ReadVariableOplwptfvtmlx/ReadVariableOp2:
lwptfvtmlx/ReadVariableOp_1lwptfvtmlx/ReadVariableOp_12:
lwptfvtmlx/ReadVariableOp_2lwptfvtmlx/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
Ш
Л
dnzlhpjizj_while_cond_25965592
.dnzlhpjizj_while_dnzlhpjizj_while_loop_counter8
4dnzlhpjizj_while_dnzlhpjizj_while_maximum_iterations 
dnzlhpjizj_while_placeholder"
dnzlhpjizj_while_placeholder_1"
dnzlhpjizj_while_placeholder_2"
dnzlhpjizj_while_placeholder_34
0dnzlhpjizj_while_less_dnzlhpjizj_strided_slice_1K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596559___redundant_placeholder0K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596559___redundant_placeholder1K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596559___redundant_placeholder2K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596559___redundant_placeholder3K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596559___redundant_placeholder4K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596559___redundant_placeholder5K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596559___redundant_placeholder6
dnzlhpjizj_while_identity
з
dnzlhpjizj/while/LessLessdnzlhpjizj_while_placeholder0dnzlhpjizj_while_less_dnzlhpjizj_strided_slice_1*
T0*
_output_shapes
: 2
dnzlhpjizj/while/Less~
dnzlhpjizj/while/IdentityIdentitydnzlhpjizj/while/Less:z:0*
T0
*
_output_shapes
: 2
dnzlhpjizj/while/Identity"?
dnzlhpjizj_while_identity"dnzlhpjizj/while/Identity:output:0*(
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
╕
╝
G__inference_sequential_layer_call_and_return_conditional_losses_2595671

inputs(
gtjikcltwy_2595248: 
gtjikcltwy_2595250:%
dnzlhpjizj_2595448:	А%
dnzlhpjizj_2595450:	 А!
dnzlhpjizj_2595452:	А 
dnzlhpjizj_2595454:  
dnzlhpjizj_2595456:  
dnzlhpjizj_2595458: %
nyosplwtfa_2595641:	 А%
nyosplwtfa_2595643:	 А!
nyosplwtfa_2595645:	А 
nyosplwtfa_2595647:  
nyosplwtfa_2595649:  
nyosplwtfa_2595651: $
chsgvefspq_2595665:  
chsgvefspq_2595667:
identityИв"chsgvefspq/StatefulPartitionedCallв"dnzlhpjizj/StatefulPartitionedCallв"gtjikcltwy/StatefulPartitionedCallв"nyosplwtfa/StatefulPartitionedCallм
"gtjikcltwy/StatefulPartitionedCallStatefulPartitionedCallinputsgtjikcltwy_2595248gtjikcltwy_2595250*
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
GPU2*0J 8В *P
fKRI
G__inference_gtjikcltwy_layer_call_and_return_conditional_losses_25952472$
"gtjikcltwy/StatefulPartitionedCallЗ
ezubtmdnwx/PartitionedCallPartitionedCall+gtjikcltwy/StatefulPartitionedCall:output:0*
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
GPU2*0J 8В *P
fKRI
G__inference_ezubtmdnwx_layer_call_and_return_conditional_losses_25952662
ezubtmdnwx/PartitionedCallЭ
"dnzlhpjizj/StatefulPartitionedCallStatefulPartitionedCall#ezubtmdnwx/PartitionedCall:output:0dnzlhpjizj_2595448dnzlhpjizj_2595450dnzlhpjizj_2595452dnzlhpjizj_2595454dnzlhpjizj_2595456dnzlhpjizj_2595458*
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
GPU2*0J 8В *P
fKRI
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_25954472$
"dnzlhpjizj/StatefulPartitionedCallб
"nyosplwtfa/StatefulPartitionedCallStatefulPartitionedCall+dnzlhpjizj/StatefulPartitionedCall:output:0nyosplwtfa_2595641nyosplwtfa_2595643nyosplwtfa_2595645nyosplwtfa_2595647nyosplwtfa_2595649nyosplwtfa_2595651*
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
GPU2*0J 8В *P
fKRI
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_25956402$
"nyosplwtfa/StatefulPartitionedCall╔
"chsgvefspq/StatefulPartitionedCallStatefulPartitionedCall+nyosplwtfa/StatefulPartitionedCall:output:0chsgvefspq_2595665chsgvefspq_2595667*
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
GPU2*0J 8В *P
fKRI
G__inference_chsgvefspq_layer_call_and_return_conditional_losses_25956642$
"chsgvefspq/StatefulPartitionedCallУ
IdentityIdentity+chsgvefspq/StatefulPartitionedCall:output:0#^chsgvefspq/StatefulPartitionedCall#^dnzlhpjizj/StatefulPartitionedCall#^gtjikcltwy/StatefulPartitionedCall#^nyosplwtfa/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"chsgvefspq/StatefulPartitionedCall"chsgvefspq/StatefulPartitionedCall2H
"dnzlhpjizj/StatefulPartitionedCall"dnzlhpjizj/StatefulPartitionedCall2H
"gtjikcltwy/StatefulPartitionedCall"gtjikcltwy/StatefulPartitionedCall2H
"nyosplwtfa/StatefulPartitionedCall"nyosplwtfa/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ч)
╥
while_body_2594815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lwptfvtmlx_2594839_0:	 А-
while_lwptfvtmlx_2594841_0:	 А)
while_lwptfvtmlx_2594843_0:	А(
while_lwptfvtmlx_2594845_0: (
while_lwptfvtmlx_2594847_0: (
while_lwptfvtmlx_2594849_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lwptfvtmlx_2594839:	 А+
while_lwptfvtmlx_2594841:	 А'
while_lwptfvtmlx_2594843:	А&
while_lwptfvtmlx_2594845: &
while_lwptfvtmlx_2594847: &
while_lwptfvtmlx_2594849: Ив(while/lwptfvtmlx/StatefulPartitionedCall├
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
)while/TensorArrayV2Read/TensorListGetItem╢
(while/lwptfvtmlx/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lwptfvtmlx_2594839_0while_lwptfvtmlx_2594841_0while_lwptfvtmlx_2594843_0while_lwptfvtmlx_2594845_0while_lwptfvtmlx_2594847_0while_lwptfvtmlx_2594849_0*
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
GPU2*0J 8В *P
fKRI
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_25947192*
(while/lwptfvtmlx/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/lwptfvtmlx/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/lwptfvtmlx/StatefulPartitionedCall:output:1)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/lwptfvtmlx/StatefulPartitionedCall:output:2)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lwptfvtmlx_2594839while_lwptfvtmlx_2594839_0"6
while_lwptfvtmlx_2594841while_lwptfvtmlx_2594841_0"6
while_lwptfvtmlx_2594843while_lwptfvtmlx_2594843_0"6
while_lwptfvtmlx_2594845while_lwptfvtmlx_2594845_0"6
while_lwptfvtmlx_2594847while_lwptfvtmlx_2594847_0"6
while_lwptfvtmlx_2594849while_lwptfvtmlx_2594849_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2T
(while/lwptfvtmlx/StatefulPartitionedCall(while/lwptfvtmlx/StatefulPartitionedCall: 
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
Щp
╩
dnzlhpjizj_while_body_25969642
.dnzlhpjizj_while_dnzlhpjizj_while_loop_counter8
4dnzlhpjizj_while_dnzlhpjizj_while_maximum_iterations 
dnzlhpjizj_while_placeholder"
dnzlhpjizj_while_placeholder_1"
dnzlhpjizj_while_placeholder_2"
dnzlhpjizj_while_placeholder_31
-dnzlhpjizj_while_dnzlhpjizj_strided_slice_1_0m
idnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensor_0O
<dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource_0:	АQ
>dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource_0:	 АL
=dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource_0:	АC
5dnzlhpjizj_while_hswofenhiy_readvariableop_resource_0: E
7dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource_0: E
7dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource_0: 
dnzlhpjizj_while_identity
dnzlhpjizj_while_identity_1
dnzlhpjizj_while_identity_2
dnzlhpjizj_while_identity_3
dnzlhpjizj_while_identity_4
dnzlhpjizj_while_identity_5/
+dnzlhpjizj_while_dnzlhpjizj_strided_slice_1k
gdnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensorM
:dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource:	АO
<dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource:	 АJ
;dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource:	АA
3dnzlhpjizj_while_hswofenhiy_readvariableop_resource: C
5dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource: C
5dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource: Ив2dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOpв1dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOpв3dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOpв*dnzlhpjizj/while/hswofenhiy/ReadVariableOpв,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1в,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2┘
Bdnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2D
Bdnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemidnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensor_0dnzlhpjizj_while_placeholderKdnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype026
4dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItemф
1dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOpReadVariableOp<dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype023
1dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp¤
"dnzlhpjizj/while/hswofenhiy/MatMulMatMul;dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem:item:09dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"dnzlhpjizj/while/hswofenhiy/MatMulъ
3dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp>dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOpц
$dnzlhpjizj/while/hswofenhiy/MatMul_1MatMuldnzlhpjizj_while_placeholder_2;dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$dnzlhpjizj/while/hswofenhiy/MatMul_1▄
dnzlhpjizj/while/hswofenhiy/addAddV2,dnzlhpjizj/while/hswofenhiy/MatMul:product:0.dnzlhpjizj/while/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
dnzlhpjizj/while/hswofenhiy/addу
2dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp=dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOpщ
#dnzlhpjizj/while/hswofenhiy/BiasAddBiasAdd#dnzlhpjizj/while/hswofenhiy/add:z:0:dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#dnzlhpjizj/while/hswofenhiy/BiasAddЬ
+dnzlhpjizj/while/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+dnzlhpjizj/while/hswofenhiy/split/split_dimп
!dnzlhpjizj/while/hswofenhiy/splitSplit4dnzlhpjizj/while/hswofenhiy/split/split_dim:output:0,dnzlhpjizj/while/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!dnzlhpjizj/while/hswofenhiy/split╩
*dnzlhpjizj/while/hswofenhiy/ReadVariableOpReadVariableOp5dnzlhpjizj_while_hswofenhiy_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*dnzlhpjizj/while/hswofenhiy/ReadVariableOp╧
dnzlhpjizj/while/hswofenhiy/mulMul2dnzlhpjizj/while/hswofenhiy/ReadVariableOp:value:0dnzlhpjizj_while_placeholder_3*
T0*'
_output_shapes
:          2!
dnzlhpjizj/while/hswofenhiy/mul╥
!dnzlhpjizj/while/hswofenhiy/add_1AddV2*dnzlhpjizj/while/hswofenhiy/split:output:0#dnzlhpjizj/while/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/add_1о
#dnzlhpjizj/while/hswofenhiy/SigmoidSigmoid%dnzlhpjizj/while/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2%
#dnzlhpjizj/while/hswofenhiy/Sigmoid╨
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1ReadVariableOp7dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1╒
!dnzlhpjizj/while/hswofenhiy/mul_1Mul4dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1:value:0dnzlhpjizj_while_placeholder_3*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/mul_1╘
!dnzlhpjizj/while/hswofenhiy/add_2AddV2*dnzlhpjizj/while/hswofenhiy/split:output:1%dnzlhpjizj/while/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/add_2▓
%dnzlhpjizj/while/hswofenhiy/Sigmoid_1Sigmoid%dnzlhpjizj/while/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2'
%dnzlhpjizj/while/hswofenhiy/Sigmoid_1╩
!dnzlhpjizj/while/hswofenhiy/mul_2Mul)dnzlhpjizj/while/hswofenhiy/Sigmoid_1:y:0dnzlhpjizj_while_placeholder_3*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/mul_2к
 dnzlhpjizj/while/hswofenhiy/TanhTanh*dnzlhpjizj/while/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2"
 dnzlhpjizj/while/hswofenhiy/Tanh╬
!dnzlhpjizj/while/hswofenhiy/mul_3Mul'dnzlhpjizj/while/hswofenhiy/Sigmoid:y:0$dnzlhpjizj/while/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/mul_3╧
!dnzlhpjizj/while/hswofenhiy/add_3AddV2%dnzlhpjizj/while/hswofenhiy/mul_2:z:0%dnzlhpjizj/while/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/add_3╨
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2ReadVariableOp7dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2▄
!dnzlhpjizj/while/hswofenhiy/mul_4Mul4dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2:value:0%dnzlhpjizj/while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/mul_4╘
!dnzlhpjizj/while/hswofenhiy/add_4AddV2*dnzlhpjizj/while/hswofenhiy/split:output:3%dnzlhpjizj/while/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/add_4▓
%dnzlhpjizj/while/hswofenhiy/Sigmoid_2Sigmoid%dnzlhpjizj/while/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2'
%dnzlhpjizj/while/hswofenhiy/Sigmoid_2й
"dnzlhpjizj/while/hswofenhiy/Tanh_1Tanh%dnzlhpjizj/while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2$
"dnzlhpjizj/while/hswofenhiy/Tanh_1╥
!dnzlhpjizj/while/hswofenhiy/mul_5Mul)dnzlhpjizj/while/hswofenhiy/Sigmoid_2:y:0&dnzlhpjizj/while/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/mul_5Х
5dnzlhpjizj/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemdnzlhpjizj_while_placeholder_1dnzlhpjizj_while_placeholder%dnzlhpjizj/while/hswofenhiy/mul_5:z:0*
_output_shapes
: *
element_dtype027
5dnzlhpjizj/while/TensorArrayV2Write/TensorListSetItemr
dnzlhpjizj/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
dnzlhpjizj/while/add/yХ
dnzlhpjizj/while/addAddV2dnzlhpjizj_while_placeholderdnzlhpjizj/while/add/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/while/addv
dnzlhpjizj/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
dnzlhpjizj/while/add_1/yн
dnzlhpjizj/while/add_1AddV2.dnzlhpjizj_while_dnzlhpjizj_while_loop_counter!dnzlhpjizj/while/add_1/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/while/add_1й
dnzlhpjizj/while/IdentityIdentitydnzlhpjizj/while/add_1:z:03^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
dnzlhpjizj/while/Identity╟
dnzlhpjizj/while/Identity_1Identity4dnzlhpjizj_while_dnzlhpjizj_while_maximum_iterations3^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
dnzlhpjizj/while/Identity_1л
dnzlhpjizj/while/Identity_2Identitydnzlhpjizj/while/add:z:03^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
dnzlhpjizj/while/Identity_2╪
dnzlhpjizj/while/Identity_3IdentityEdnzlhpjizj/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
dnzlhpjizj/while/Identity_3╔
dnzlhpjizj/while/Identity_4Identity%dnzlhpjizj/while/hswofenhiy/mul_5:z:03^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
dnzlhpjizj/while/Identity_4╔
dnzlhpjizj/while/Identity_5Identity%dnzlhpjizj/while/hswofenhiy/add_3:z:03^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
dnzlhpjizj/while/Identity_5"\
+dnzlhpjizj_while_dnzlhpjizj_strided_slice_1-dnzlhpjizj_while_dnzlhpjizj_strided_slice_1_0"|
;dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource=dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource_0"~
<dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource>dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource_0"z
:dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource<dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource_0"p
5dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource7dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource_0"p
5dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource7dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource_0"l
3dnzlhpjizj_while_hswofenhiy_readvariableop_resource5dnzlhpjizj_while_hswofenhiy_readvariableop_resource_0"?
dnzlhpjizj_while_identity"dnzlhpjizj/while/Identity:output:0"C
dnzlhpjizj_while_identity_1$dnzlhpjizj/while/Identity_1:output:0"C
dnzlhpjizj_while_identity_2$dnzlhpjizj/while/Identity_2:output:0"C
dnzlhpjizj_while_identity_3$dnzlhpjizj/while/Identity_3:output:0"C
dnzlhpjizj_while_identity_4$dnzlhpjizj/while/Identity_4:output:0"C
dnzlhpjizj_while_identity_5$dnzlhpjizj/while/Identity_5:output:0"╘
gdnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensoridnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2f
1dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp1dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp2j
3dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp3dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp2X
*dnzlhpjizj/while/hswofenhiy/ReadVariableOp*dnzlhpjizj/while/hswofenhiy/ReadVariableOp2\
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_12\
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2: 
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
жh
Е
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598893

inputs<
)lwptfvtmlx_matmul_readvariableop_resource:	 А>
+lwptfvtmlx_matmul_1_readvariableop_resource:	 А9
*lwptfvtmlx_biasadd_readvariableop_resource:	А0
"lwptfvtmlx_readvariableop_resource: 2
$lwptfvtmlx_readvariableop_1_resource: 2
$lwptfvtmlx_readvariableop_2_resource: 
identityИв!lwptfvtmlx/BiasAdd/ReadVariableOpв lwptfvtmlx/MatMul/ReadVariableOpв"lwptfvtmlx/MatMul_1/ReadVariableOpвlwptfvtmlx/ReadVariableOpвlwptfvtmlx/ReadVariableOp_1вlwptfvtmlx/ReadVariableOp_2вwhileD
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
 lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp)lwptfvtmlx_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 lwptfvtmlx/MatMul/ReadVariableOpз
lwptfvtmlx/MatMulMatMulstrided_slice_2:output:0(lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul╡
"lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp+lwptfvtmlx_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"lwptfvtmlx/MatMul_1/ReadVariableOpг
lwptfvtmlx/MatMul_1MatMulzeros:output:0*lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul_1Ш
lwptfvtmlx/addAddV2lwptfvtmlx/MatMul:product:0lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/addо
!lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp*lwptfvtmlx_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!lwptfvtmlx/BiasAdd/ReadVariableOpе
lwptfvtmlx/BiasAddBiasAddlwptfvtmlx/add:z:0)lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/BiasAddz
lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lwptfvtmlx/split/split_dimы
lwptfvtmlx/splitSplit#lwptfvtmlx/split/split_dim:output:0lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lwptfvtmlx/splitХ
lwptfvtmlx/ReadVariableOpReadVariableOp"lwptfvtmlx_readvariableop_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOpО
lwptfvtmlx/mulMul!lwptfvtmlx/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mulО
lwptfvtmlx/add_1AddV2lwptfvtmlx/split:output:0lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_1{
lwptfvtmlx/SigmoidSigmoidlwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/SigmoidЫ
lwptfvtmlx/ReadVariableOp_1ReadVariableOp$lwptfvtmlx_readvariableop_1_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_1Ф
lwptfvtmlx/mul_1Mul#lwptfvtmlx/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_1Р
lwptfvtmlx/add_2AddV2lwptfvtmlx/split:output:1lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_2
lwptfvtmlx/Sigmoid_1Sigmoidlwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_1Й
lwptfvtmlx/mul_2Mullwptfvtmlx/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_2w
lwptfvtmlx/TanhTanhlwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
lwptfvtmlx/TanhК
lwptfvtmlx/mul_3Mullwptfvtmlx/Sigmoid:y:0lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_3Л
lwptfvtmlx/add_3AddV2lwptfvtmlx/mul_2:z:0lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_3Ы
lwptfvtmlx/ReadVariableOp_2ReadVariableOp$lwptfvtmlx_readvariableop_2_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_2Ш
lwptfvtmlx/mul_4Mul#lwptfvtmlx/ReadVariableOp_2:value:0lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_4Р
lwptfvtmlx/add_4AddV2lwptfvtmlx/split:output:3lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_4
lwptfvtmlx/Sigmoid_2Sigmoidlwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_2v
lwptfvtmlx/Tanh_1Tanhlwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Tanh_1О
lwptfvtmlx/mul_5Mullwptfvtmlx/Sigmoid_2:y:0lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lwptfvtmlx_matmul_readvariableop_resource+lwptfvtmlx_matmul_1_readvariableop_resource*lwptfvtmlx_biasadd_readvariableop_resource"lwptfvtmlx_readvariableop_resource$lwptfvtmlx_readvariableop_1_resource$lwptfvtmlx_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2598792*
condR
while_cond_2598791*Q
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
IdentityIdentitystrided_slice_3:output:0"^lwptfvtmlx/BiasAdd/ReadVariableOp!^lwptfvtmlx/MatMul/ReadVariableOp#^lwptfvtmlx/MatMul_1/ReadVariableOp^lwptfvtmlx/ReadVariableOp^lwptfvtmlx/ReadVariableOp_1^lwptfvtmlx/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!lwptfvtmlx/BiasAdd/ReadVariableOp!lwptfvtmlx/BiasAdd/ReadVariableOp2D
 lwptfvtmlx/MatMul/ReadVariableOp lwptfvtmlx/MatMul/ReadVariableOp2H
"lwptfvtmlx/MatMul_1/ReadVariableOp"lwptfvtmlx/MatMul_1/ReadVariableOp26
lwptfvtmlx/ReadVariableOplwptfvtmlx/ReadVariableOp2:
lwptfvtmlx/ReadVariableOp_1lwptfvtmlx/ReadVariableOp_12:
lwptfvtmlx/ReadVariableOp_2lwptfvtmlx/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
ч)
╥
while_body_2594552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lwptfvtmlx_2594576_0:	 А-
while_lwptfvtmlx_2594578_0:	 А)
while_lwptfvtmlx_2594580_0:	А(
while_lwptfvtmlx_2594582_0: (
while_lwptfvtmlx_2594584_0: (
while_lwptfvtmlx_2594586_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lwptfvtmlx_2594576:	 А+
while_lwptfvtmlx_2594578:	 А'
while_lwptfvtmlx_2594580:	А&
while_lwptfvtmlx_2594582: &
while_lwptfvtmlx_2594584: &
while_lwptfvtmlx_2594586: Ив(while/lwptfvtmlx/StatefulPartitionedCall├
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
)while/TensorArrayV2Read/TensorListGetItem╢
(while/lwptfvtmlx/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lwptfvtmlx_2594576_0while_lwptfvtmlx_2594578_0while_lwptfvtmlx_2594580_0while_lwptfvtmlx_2594582_0while_lwptfvtmlx_2594584_0while_lwptfvtmlx_2594586_0*
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
GPU2*0J 8В *P
fKRI
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_25945322*
(while/lwptfvtmlx/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/lwptfvtmlx/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/lwptfvtmlx/StatefulPartitionedCall:output:1)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/lwptfvtmlx/StatefulPartitionedCall:output:2)^while/lwptfvtmlx/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lwptfvtmlx_2594576while_lwptfvtmlx_2594576_0"6
while_lwptfvtmlx_2594578while_lwptfvtmlx_2594578_0"6
while_lwptfvtmlx_2594580while_lwptfvtmlx_2594580_0"6
while_lwptfvtmlx_2594582while_lwptfvtmlx_2594582_0"6
while_lwptfvtmlx_2594584while_lwptfvtmlx_2594584_0"6
while_lwptfvtmlx_2594586while_lwptfvtmlx_2594586_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2T
(while/lwptfvtmlx/StatefulPartitionedCall(while/lwptfvtmlx/StatefulPartitionedCall: 
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
│К
╫
"__inference__wrapped_model_2593687

bdeyofgzkqW
Asequential_gtjikcltwy_conv1d_expanddims_1_readvariableop_resource:V
Hsequential_gtjikcltwy_squeeze_batch_dims_biasadd_readvariableop_resource:R
?sequential_dnzlhpjizj_hswofenhiy_matmul_readvariableop_resource:	АT
Asequential_dnzlhpjizj_hswofenhiy_matmul_1_readvariableop_resource:	 АO
@sequential_dnzlhpjizj_hswofenhiy_biasadd_readvariableop_resource:	АF
8sequential_dnzlhpjizj_hswofenhiy_readvariableop_resource: H
:sequential_dnzlhpjizj_hswofenhiy_readvariableop_1_resource: H
:sequential_dnzlhpjizj_hswofenhiy_readvariableop_2_resource: R
?sequential_nyosplwtfa_lwptfvtmlx_matmul_readvariableop_resource:	 АT
Asequential_nyosplwtfa_lwptfvtmlx_matmul_1_readvariableop_resource:	 АO
@sequential_nyosplwtfa_lwptfvtmlx_biasadd_readvariableop_resource:	АF
8sequential_nyosplwtfa_lwptfvtmlx_readvariableop_resource: H
:sequential_nyosplwtfa_lwptfvtmlx_readvariableop_1_resource: H
:sequential_nyosplwtfa_lwptfvtmlx_readvariableop_2_resource: F
4sequential_chsgvefspq_matmul_readvariableop_resource: C
5sequential_chsgvefspq_biasadd_readvariableop_resource:
identityИв,sequential/chsgvefspq/BiasAdd/ReadVariableOpв+sequential/chsgvefspq/MatMul/ReadVariableOpв7sequential/dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOpв6sequential/dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOpв8sequential/dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOpв/sequential/dnzlhpjizj/hswofenhiy/ReadVariableOpв1sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_1в1sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_2вsequential/dnzlhpjizj/whileв8sequential/gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOpв?sequential/gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOpв7sequential/nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOpв6sequential/nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOpв8sequential/nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOpв/sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOpв1sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_1в1sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_2вsequential/nyosplwtfa/whileе
+sequential/gtjikcltwy/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2-
+sequential/gtjikcltwy/conv1d/ExpandDims/dimр
'sequential/gtjikcltwy/conv1d/ExpandDims
ExpandDims
bdeyofgzkq4sequential/gtjikcltwy/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:         2)
'sequential/gtjikcltwy/conv1d/ExpandDims·
8sequential/gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_gtjikcltwy_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02:
8sequential/gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOpа
-sequential/gtjikcltwy/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential/gtjikcltwy/conv1d/ExpandDims_1/dimП
)sequential/gtjikcltwy/conv1d/ExpandDims_1
ExpandDims@sequential/gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential/gtjikcltwy/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2+
)sequential/gtjikcltwy/conv1d/ExpandDims_1и
"sequential/gtjikcltwy/conv1d/ShapeShape0sequential/gtjikcltwy/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2$
"sequential/gtjikcltwy/conv1d/Shapeо
0sequential/gtjikcltwy/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential/gtjikcltwy/conv1d/strided_slice/stack╗
2sequential/gtjikcltwy/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¤        24
2sequential/gtjikcltwy/conv1d/strided_slice/stack_1▓
2sequential/gtjikcltwy/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/gtjikcltwy/conv1d/strided_slice/stack_2О
*sequential/gtjikcltwy/conv1d/strided_sliceStridedSlice+sequential/gtjikcltwy/conv1d/Shape:output:09sequential/gtjikcltwy/conv1d/strided_slice/stack:output:0;sequential/gtjikcltwy/conv1d/strided_slice/stack_1:output:0;sequential/gtjikcltwy/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2,
*sequential/gtjikcltwy/conv1d/strided_slice▒
*sequential/gtjikcltwy/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*sequential/gtjikcltwy/conv1d/Reshape/shape°
$sequential/gtjikcltwy/conv1d/ReshapeReshape0sequential/gtjikcltwy/conv1d/ExpandDims:output:03sequential/gtjikcltwy/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:         2&
$sequential/gtjikcltwy/conv1d/ReshapeЪ
#sequential/gtjikcltwy/conv1d/Conv2DConv2D-sequential/gtjikcltwy/conv1d/Reshape:output:02sequential/gtjikcltwy/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2%
#sequential/gtjikcltwy/conv1d/Conv2D▒
,sequential/gtjikcltwy/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2.
,sequential/gtjikcltwy/conv1d/concat/values_1Я
(sequential/gtjikcltwy/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2*
(sequential/gtjikcltwy/conv1d/concat/axisг
#sequential/gtjikcltwy/conv1d/concatConcatV23sequential/gtjikcltwy/conv1d/strided_slice:output:05sequential/gtjikcltwy/conv1d/concat/values_1:output:01sequential/gtjikcltwy/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/gtjikcltwy/conv1d/concatї
&sequential/gtjikcltwy/conv1d/Reshape_1Reshape,sequential/gtjikcltwy/conv1d/Conv2D:output:0,sequential/gtjikcltwy/conv1d/concat:output:0*
T0*3
_output_shapes!
:         2(
&sequential/gtjikcltwy/conv1d/Reshape_1т
$sequential/gtjikcltwy/conv1d/SqueezeSqueeze/sequential/gtjikcltwy/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:         *
squeeze_dims

¤        2&
$sequential/gtjikcltwy/conv1d/Squeeze╜
.sequential/gtjikcltwy/squeeze_batch_dims/ShapeShape-sequential/gtjikcltwy/conv1d/Squeeze:output:0*
T0*
_output_shapes
:20
.sequential/gtjikcltwy/squeeze_batch_dims/Shape╞
<sequential/gtjikcltwy/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential/gtjikcltwy/squeeze_batch_dims/strided_slice/stack╙
>sequential/gtjikcltwy/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        2@
>sequential/gtjikcltwy/squeeze_batch_dims/strided_slice/stack_1╩
>sequential/gtjikcltwy/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential/gtjikcltwy/squeeze_batch_dims/strided_slice/stack_2╓
6sequential/gtjikcltwy/squeeze_batch_dims/strided_sliceStridedSlice7sequential/gtjikcltwy/squeeze_batch_dims/Shape:output:0Esequential/gtjikcltwy/squeeze_batch_dims/strided_slice/stack:output:0Gsequential/gtjikcltwy/squeeze_batch_dims/strided_slice/stack_1:output:0Gsequential/gtjikcltwy/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask28
6sequential/gtjikcltwy/squeeze_batch_dims/strided_slice┼
6sequential/gtjikcltwy/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          28
6sequential/gtjikcltwy/squeeze_batch_dims/Reshape/shapeХ
0sequential/gtjikcltwy/squeeze_batch_dims/ReshapeReshape-sequential/gtjikcltwy/conv1d/Squeeze:output:0?sequential/gtjikcltwy/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:         22
0sequential/gtjikcltwy/squeeze_batch_dims/ReshapeЗ
?sequential/gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOpHsequential_gtjikcltwy_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02A
?sequential/gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOpй
0sequential/gtjikcltwy/squeeze_batch_dims/BiasAddBiasAdd9sequential/gtjikcltwy/squeeze_batch_dims/Reshape:output:0Gsequential/gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         22
0sequential/gtjikcltwy/squeeze_batch_dims/BiasAdd┼
8sequential/gtjikcltwy/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential/gtjikcltwy/squeeze_batch_dims/concat/values_1╖
4sequential/gtjikcltwy/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         26
4sequential/gtjikcltwy/squeeze_batch_dims/concat/axis▀
/sequential/gtjikcltwy/squeeze_batch_dims/concatConcatV2?sequential/gtjikcltwy/squeeze_batch_dims/strided_slice:output:0Asequential/gtjikcltwy/squeeze_batch_dims/concat/values_1:output:0=sequential/gtjikcltwy/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:21
/sequential/gtjikcltwy/squeeze_batch_dims/concatв
2sequential/gtjikcltwy/squeeze_batch_dims/Reshape_1Reshape9sequential/gtjikcltwy/squeeze_batch_dims/BiasAdd:output:08sequential/gtjikcltwy/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:         24
2sequential/gtjikcltwy/squeeze_batch_dims/Reshape_1е
sequential/ezubtmdnwx/ShapeShape;sequential/gtjikcltwy/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
sequential/ezubtmdnwx/Shapeа
)sequential/ezubtmdnwx/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/ezubtmdnwx/strided_slice/stackд
+sequential/ezubtmdnwx/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/ezubtmdnwx/strided_slice/stack_1д
+sequential/ezubtmdnwx/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/ezubtmdnwx/strided_slice/stack_2ц
#sequential/ezubtmdnwx/strided_sliceStridedSlice$sequential/ezubtmdnwx/Shape:output:02sequential/ezubtmdnwx/strided_slice/stack:output:04sequential/ezubtmdnwx/strided_slice/stack_1:output:04sequential/ezubtmdnwx/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/ezubtmdnwx/strided_sliceР
%sequential/ezubtmdnwx/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/ezubtmdnwx/Reshape/shape/1Р
%sequential/ezubtmdnwx/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/ezubtmdnwx/Reshape/shape/2О
#sequential/ezubtmdnwx/Reshape/shapePack,sequential/ezubtmdnwx/strided_slice:output:0.sequential/ezubtmdnwx/Reshape/shape/1:output:0.sequential/ezubtmdnwx/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2%
#sequential/ezubtmdnwx/Reshape/shapeъ
sequential/ezubtmdnwx/ReshapeReshape;sequential/gtjikcltwy/squeeze_batch_dims/Reshape_1:output:0,sequential/ezubtmdnwx/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
sequential/ezubtmdnwx/ReshapeР
sequential/dnzlhpjizj/ShapeShape&sequential/ezubtmdnwx/Reshape:output:0*
T0*
_output_shapes
:2
sequential/dnzlhpjizj/Shapeа
)sequential/dnzlhpjizj/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/dnzlhpjizj/strided_slice/stackд
+sequential/dnzlhpjizj/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/dnzlhpjizj/strided_slice/stack_1д
+sequential/dnzlhpjizj/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/dnzlhpjizj/strided_slice/stack_2ц
#sequential/dnzlhpjizj/strided_sliceStridedSlice$sequential/dnzlhpjizj/Shape:output:02sequential/dnzlhpjizj/strided_slice/stack:output:04sequential/dnzlhpjizj/strided_slice/stack_1:output:04sequential/dnzlhpjizj/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/dnzlhpjizj/strided_sliceИ
!sequential/dnzlhpjizj/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential/dnzlhpjizj/zeros/mul/y─
sequential/dnzlhpjizj/zeros/mulMul,sequential/dnzlhpjizj/strided_slice:output:0*sequential/dnzlhpjizj/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/dnzlhpjizj/zeros/mulЛ
"sequential/dnzlhpjizj/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential/dnzlhpjizj/zeros/Less/y┐
 sequential/dnzlhpjizj/zeros/LessLess#sequential/dnzlhpjizj/zeros/mul:z:0+sequential/dnzlhpjizj/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/dnzlhpjizj/zeros/LessО
$sequential/dnzlhpjizj/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential/dnzlhpjizj/zeros/packed/1█
"sequential/dnzlhpjizj/zeros/packedPack,sequential/dnzlhpjizj/strided_slice:output:0-sequential/dnzlhpjizj/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/dnzlhpjizj/zeros/packedЛ
!sequential/dnzlhpjizj/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/dnzlhpjizj/zeros/Const═
sequential/dnzlhpjizj/zerosFill+sequential/dnzlhpjizj/zeros/packed:output:0*sequential/dnzlhpjizj/zeros/Const:output:0*
T0*'
_output_shapes
:          2
sequential/dnzlhpjizj/zerosМ
#sequential/dnzlhpjizj/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential/dnzlhpjizj/zeros_1/mul/y╩
!sequential/dnzlhpjizj/zeros_1/mulMul,sequential/dnzlhpjizj/strided_slice:output:0,sequential/dnzlhpjizj/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/dnzlhpjizj/zeros_1/mulП
$sequential/dnzlhpjizj/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2&
$sequential/dnzlhpjizj/zeros_1/Less/y╟
"sequential/dnzlhpjizj/zeros_1/LessLess%sequential/dnzlhpjizj/zeros_1/mul:z:0-sequential/dnzlhpjizj/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/dnzlhpjizj/zeros_1/LessТ
&sequential/dnzlhpjizj/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/dnzlhpjizj/zeros_1/packed/1с
$sequential/dnzlhpjizj/zeros_1/packedPack,sequential/dnzlhpjizj/strided_slice:output:0/sequential/dnzlhpjizj/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/dnzlhpjizj/zeros_1/packedП
#sequential/dnzlhpjizj/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/dnzlhpjizj/zeros_1/Const╒
sequential/dnzlhpjizj/zeros_1Fill-sequential/dnzlhpjizj/zeros_1/packed:output:0,sequential/dnzlhpjizj/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
sequential/dnzlhpjizj/zeros_1б
$sequential/dnzlhpjizj/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/dnzlhpjizj/transpose/perm▄
sequential/dnzlhpjizj/transpose	Transpose&sequential/ezubtmdnwx/Reshape:output:0-sequential/dnzlhpjizj/transpose/perm:output:0*
T0*+
_output_shapes
:         2!
sequential/dnzlhpjizj/transposeС
sequential/dnzlhpjizj/Shape_1Shape#sequential/dnzlhpjizj/transpose:y:0*
T0*
_output_shapes
:2
sequential/dnzlhpjizj/Shape_1д
+sequential/dnzlhpjizj/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/dnzlhpjizj/strided_slice_1/stackи
-sequential/dnzlhpjizj/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/dnzlhpjizj/strided_slice_1/stack_1и
-sequential/dnzlhpjizj/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/dnzlhpjizj/strided_slice_1/stack_2Є
%sequential/dnzlhpjizj/strided_slice_1StridedSlice&sequential/dnzlhpjizj/Shape_1:output:04sequential/dnzlhpjizj/strided_slice_1/stack:output:06sequential/dnzlhpjizj/strided_slice_1/stack_1:output:06sequential/dnzlhpjizj/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/dnzlhpjizj/strided_slice_1▒
1sequential/dnzlhpjizj/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         23
1sequential/dnzlhpjizj/TensorArrayV2/element_shapeК
#sequential/dnzlhpjizj/TensorArrayV2TensorListReserve:sequential/dnzlhpjizj/TensorArrayV2/element_shape:output:0.sequential/dnzlhpjizj/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/dnzlhpjizj/TensorArrayV2ы
Ksequential/dnzlhpjizj/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2M
Ksequential/dnzlhpjizj/TensorArrayUnstack/TensorListFromTensor/element_shape╨
=sequential/dnzlhpjizj/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/dnzlhpjizj/transpose:y:0Tsequential/dnzlhpjizj/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/dnzlhpjizj/TensorArrayUnstack/TensorListFromTensorд
+sequential/dnzlhpjizj/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/dnzlhpjizj/strided_slice_2/stackи
-sequential/dnzlhpjizj/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/dnzlhpjizj/strided_slice_2/stack_1и
-sequential/dnzlhpjizj/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/dnzlhpjizj/strided_slice_2/stack_2А
%sequential/dnzlhpjizj/strided_slice_2StridedSlice#sequential/dnzlhpjizj/transpose:y:04sequential/dnzlhpjizj/strided_slice_2/stack:output:06sequential/dnzlhpjizj/strided_slice_2/stack_1:output:06sequential/dnzlhpjizj/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2'
%sequential/dnzlhpjizj/strided_slice_2ё
6sequential/dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOpReadVariableOp?sequential_dnzlhpjizj_hswofenhiy_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype028
6sequential/dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp 
'sequential/dnzlhpjizj/hswofenhiy/MatMulMatMul.sequential/dnzlhpjizj/strided_slice_2:output:0>sequential/dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2)
'sequential/dnzlhpjizj/hswofenhiy/MatMulў
8sequential/dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOpAsequential_dnzlhpjizj_hswofenhiy_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02:
8sequential/dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp√
)sequential/dnzlhpjizj/hswofenhiy/MatMul_1MatMul$sequential/dnzlhpjizj/zeros:output:0@sequential/dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2+
)sequential/dnzlhpjizj/hswofenhiy/MatMul_1Ё
$sequential/dnzlhpjizj/hswofenhiy/addAddV21sequential/dnzlhpjizj/hswofenhiy/MatMul:product:03sequential/dnzlhpjizj/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2&
$sequential/dnzlhpjizj/hswofenhiy/addЁ
7sequential/dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp@sequential_dnzlhpjizj_hswofenhiy_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential/dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp¤
(sequential/dnzlhpjizj/hswofenhiy/BiasAddBiasAdd(sequential/dnzlhpjizj/hswofenhiy/add:z:0?sequential/dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2*
(sequential/dnzlhpjizj/hswofenhiy/BiasAddж
0sequential/dnzlhpjizj/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential/dnzlhpjizj/hswofenhiy/split/split_dim├
&sequential/dnzlhpjizj/hswofenhiy/splitSplit9sequential/dnzlhpjizj/hswofenhiy/split/split_dim:output:01sequential/dnzlhpjizj/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2(
&sequential/dnzlhpjizj/hswofenhiy/split╫
/sequential/dnzlhpjizj/hswofenhiy/ReadVariableOpReadVariableOp8sequential_dnzlhpjizj_hswofenhiy_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential/dnzlhpjizj/hswofenhiy/ReadVariableOpц
$sequential/dnzlhpjizj/hswofenhiy/mulMul7sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp:value:0&sequential/dnzlhpjizj/zeros_1:output:0*
T0*'
_output_shapes
:          2&
$sequential/dnzlhpjizj/hswofenhiy/mulц
&sequential/dnzlhpjizj/hswofenhiy/add_1AddV2/sequential/dnzlhpjizj/hswofenhiy/split:output:0(sequential/dnzlhpjizj/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2(
&sequential/dnzlhpjizj/hswofenhiy/add_1╜
(sequential/dnzlhpjizj/hswofenhiy/SigmoidSigmoid*sequential/dnzlhpjizj/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2*
(sequential/dnzlhpjizj/hswofenhiy/Sigmoid▌
1sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_1ReadVariableOp:sequential_dnzlhpjizj_hswofenhiy_readvariableop_1_resource*
_output_shapes
: *
dtype023
1sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_1ь
&sequential/dnzlhpjizj/hswofenhiy/mul_1Mul9sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_1:value:0&sequential/dnzlhpjizj/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/dnzlhpjizj/hswofenhiy/mul_1ш
&sequential/dnzlhpjizj/hswofenhiy/add_2AddV2/sequential/dnzlhpjizj/hswofenhiy/split:output:1*sequential/dnzlhpjizj/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2(
&sequential/dnzlhpjizj/hswofenhiy/add_2┴
*sequential/dnzlhpjizj/hswofenhiy/Sigmoid_1Sigmoid*sequential/dnzlhpjizj/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2,
*sequential/dnzlhpjizj/hswofenhiy/Sigmoid_1с
&sequential/dnzlhpjizj/hswofenhiy/mul_2Mul.sequential/dnzlhpjizj/hswofenhiy/Sigmoid_1:y:0&sequential/dnzlhpjizj/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/dnzlhpjizj/hswofenhiy/mul_2╣
%sequential/dnzlhpjizj/hswofenhiy/TanhTanh/sequential/dnzlhpjizj/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2'
%sequential/dnzlhpjizj/hswofenhiy/Tanhт
&sequential/dnzlhpjizj/hswofenhiy/mul_3Mul,sequential/dnzlhpjizj/hswofenhiy/Sigmoid:y:0)sequential/dnzlhpjizj/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2(
&sequential/dnzlhpjizj/hswofenhiy/mul_3у
&sequential/dnzlhpjizj/hswofenhiy/add_3AddV2*sequential/dnzlhpjizj/hswofenhiy/mul_2:z:0*sequential/dnzlhpjizj/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/dnzlhpjizj/hswofenhiy/add_3▌
1sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_2ReadVariableOp:sequential_dnzlhpjizj_hswofenhiy_readvariableop_2_resource*
_output_shapes
: *
dtype023
1sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_2Ё
&sequential/dnzlhpjizj/hswofenhiy/mul_4Mul9sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_2:value:0*sequential/dnzlhpjizj/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/dnzlhpjizj/hswofenhiy/mul_4ш
&sequential/dnzlhpjizj/hswofenhiy/add_4AddV2/sequential/dnzlhpjizj/hswofenhiy/split:output:3*sequential/dnzlhpjizj/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2(
&sequential/dnzlhpjizj/hswofenhiy/add_4┴
*sequential/dnzlhpjizj/hswofenhiy/Sigmoid_2Sigmoid*sequential/dnzlhpjizj/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2,
*sequential/dnzlhpjizj/hswofenhiy/Sigmoid_2╕
'sequential/dnzlhpjizj/hswofenhiy/Tanh_1Tanh*sequential/dnzlhpjizj/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2)
'sequential/dnzlhpjizj/hswofenhiy/Tanh_1ц
&sequential/dnzlhpjizj/hswofenhiy/mul_5Mul.sequential/dnzlhpjizj/hswofenhiy/Sigmoid_2:y:0+sequential/dnzlhpjizj/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2(
&sequential/dnzlhpjizj/hswofenhiy/mul_5╗
3sequential/dnzlhpjizj/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential/dnzlhpjizj/TensorArrayV2_1/element_shapeР
%sequential/dnzlhpjizj/TensorArrayV2_1TensorListReserve<sequential/dnzlhpjizj/TensorArrayV2_1/element_shape:output:0.sequential/dnzlhpjizj/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/dnzlhpjizj/TensorArrayV2_1z
sequential/dnzlhpjizj/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/dnzlhpjizj/timeл
.sequential/dnzlhpjizj/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         20
.sequential/dnzlhpjizj/while/maximum_iterationsЦ
(sequential/dnzlhpjizj/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dnzlhpjizj/while/loop_counter°	
sequential/dnzlhpjizj/whileWhile1sequential/dnzlhpjizj/while/loop_counter:output:07sequential/dnzlhpjizj/while/maximum_iterations:output:0#sequential/dnzlhpjizj/time:output:0.sequential/dnzlhpjizj/TensorArrayV2_1:handle:0$sequential/dnzlhpjizj/zeros:output:0&sequential/dnzlhpjizj/zeros_1:output:0.sequential/dnzlhpjizj/strided_slice_1:output:0Msequential/dnzlhpjizj/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_dnzlhpjizj_hswofenhiy_matmul_readvariableop_resourceAsequential_dnzlhpjizj_hswofenhiy_matmul_1_readvariableop_resource@sequential_dnzlhpjizj_hswofenhiy_biasadd_readvariableop_resource8sequential_dnzlhpjizj_hswofenhiy_readvariableop_resource:sequential_dnzlhpjizj_hswofenhiy_readvariableop_1_resource:sequential_dnzlhpjizj_hswofenhiy_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*4
body,R*
(sequential_dnzlhpjizj_while_body_2593404*4
cond,R*
(sequential_dnzlhpjizj_while_cond_2593403*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
sequential/dnzlhpjizj/whileс
Fsequential/dnzlhpjizj/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential/dnzlhpjizj/TensorArrayV2Stack/TensorListStack/element_shape└
8sequential/dnzlhpjizj/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/dnzlhpjizj/while:output:3Osequential/dnzlhpjizj/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02:
8sequential/dnzlhpjizj/TensorArrayV2Stack/TensorListStackн
+sequential/dnzlhpjizj/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2-
+sequential/dnzlhpjizj/strided_slice_3/stackи
-sequential/dnzlhpjizj/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/dnzlhpjizj/strided_slice_3/stack_1и
-sequential/dnzlhpjizj/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/dnzlhpjizj/strided_slice_3/stack_2Ю
%sequential/dnzlhpjizj/strided_slice_3StridedSliceAsequential/dnzlhpjizj/TensorArrayV2Stack/TensorListStack:tensor:04sequential/dnzlhpjizj/strided_slice_3/stack:output:06sequential/dnzlhpjizj/strided_slice_3/stack_1:output:06sequential/dnzlhpjizj/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2'
%sequential/dnzlhpjizj/strided_slice_3е
&sequential/dnzlhpjizj/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/dnzlhpjizj/transpose_1/perm¤
!sequential/dnzlhpjizj/transpose_1	TransposeAsequential/dnzlhpjizj/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/dnzlhpjizj/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2#
!sequential/dnzlhpjizj/transpose_1П
sequential/nyosplwtfa/ShapeShape%sequential/dnzlhpjizj/transpose_1:y:0*
T0*
_output_shapes
:2
sequential/nyosplwtfa/Shapeа
)sequential/nyosplwtfa/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/nyosplwtfa/strided_slice/stackд
+sequential/nyosplwtfa/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/nyosplwtfa/strided_slice/stack_1д
+sequential/nyosplwtfa/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/nyosplwtfa/strided_slice/stack_2ц
#sequential/nyosplwtfa/strided_sliceStridedSlice$sequential/nyosplwtfa/Shape:output:02sequential/nyosplwtfa/strided_slice/stack:output:04sequential/nyosplwtfa/strided_slice/stack_1:output:04sequential/nyosplwtfa/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/nyosplwtfa/strided_sliceИ
!sequential/nyosplwtfa/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential/nyosplwtfa/zeros/mul/y─
sequential/nyosplwtfa/zeros/mulMul,sequential/nyosplwtfa/strided_slice:output:0*sequential/nyosplwtfa/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/nyosplwtfa/zeros/mulЛ
"sequential/nyosplwtfa/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential/nyosplwtfa/zeros/Less/y┐
 sequential/nyosplwtfa/zeros/LessLess#sequential/nyosplwtfa/zeros/mul:z:0+sequential/nyosplwtfa/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/nyosplwtfa/zeros/LessО
$sequential/nyosplwtfa/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential/nyosplwtfa/zeros/packed/1█
"sequential/nyosplwtfa/zeros/packedPack,sequential/nyosplwtfa/strided_slice:output:0-sequential/nyosplwtfa/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/nyosplwtfa/zeros/packedЛ
!sequential/nyosplwtfa/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/nyosplwtfa/zeros/Const═
sequential/nyosplwtfa/zerosFill+sequential/nyosplwtfa/zeros/packed:output:0*sequential/nyosplwtfa/zeros/Const:output:0*
T0*'
_output_shapes
:          2
sequential/nyosplwtfa/zerosМ
#sequential/nyosplwtfa/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential/nyosplwtfa/zeros_1/mul/y╩
!sequential/nyosplwtfa/zeros_1/mulMul,sequential/nyosplwtfa/strided_slice:output:0,sequential/nyosplwtfa/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/nyosplwtfa/zeros_1/mulП
$sequential/nyosplwtfa/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2&
$sequential/nyosplwtfa/zeros_1/Less/y╟
"sequential/nyosplwtfa/zeros_1/LessLess%sequential/nyosplwtfa/zeros_1/mul:z:0-sequential/nyosplwtfa/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/nyosplwtfa/zeros_1/LessТ
&sequential/nyosplwtfa/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/nyosplwtfa/zeros_1/packed/1с
$sequential/nyosplwtfa/zeros_1/packedPack,sequential/nyosplwtfa/strided_slice:output:0/sequential/nyosplwtfa/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/nyosplwtfa/zeros_1/packedП
#sequential/nyosplwtfa/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/nyosplwtfa/zeros_1/Const╒
sequential/nyosplwtfa/zeros_1Fill-sequential/nyosplwtfa/zeros_1/packed:output:0,sequential/nyosplwtfa/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
sequential/nyosplwtfa/zeros_1б
$sequential/nyosplwtfa/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/nyosplwtfa/transpose/perm█
sequential/nyosplwtfa/transpose	Transpose%sequential/dnzlhpjizj/transpose_1:y:0-sequential/nyosplwtfa/transpose/perm:output:0*
T0*+
_output_shapes
:          2!
sequential/nyosplwtfa/transposeС
sequential/nyosplwtfa/Shape_1Shape#sequential/nyosplwtfa/transpose:y:0*
T0*
_output_shapes
:2
sequential/nyosplwtfa/Shape_1д
+sequential/nyosplwtfa/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/nyosplwtfa/strided_slice_1/stackи
-sequential/nyosplwtfa/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/nyosplwtfa/strided_slice_1/stack_1и
-sequential/nyosplwtfa/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/nyosplwtfa/strided_slice_1/stack_2Є
%sequential/nyosplwtfa/strided_slice_1StridedSlice&sequential/nyosplwtfa/Shape_1:output:04sequential/nyosplwtfa/strided_slice_1/stack:output:06sequential/nyosplwtfa/strided_slice_1/stack_1:output:06sequential/nyosplwtfa/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/nyosplwtfa/strided_slice_1▒
1sequential/nyosplwtfa/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         23
1sequential/nyosplwtfa/TensorArrayV2/element_shapeК
#sequential/nyosplwtfa/TensorArrayV2TensorListReserve:sequential/nyosplwtfa/TensorArrayV2/element_shape:output:0.sequential/nyosplwtfa/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/nyosplwtfa/TensorArrayV2ы
Ksequential/nyosplwtfa/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2M
Ksequential/nyosplwtfa/TensorArrayUnstack/TensorListFromTensor/element_shape╨
=sequential/nyosplwtfa/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/nyosplwtfa/transpose:y:0Tsequential/nyosplwtfa/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/nyosplwtfa/TensorArrayUnstack/TensorListFromTensorд
+sequential/nyosplwtfa/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/nyosplwtfa/strided_slice_2/stackи
-sequential/nyosplwtfa/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/nyosplwtfa/strided_slice_2/stack_1и
-sequential/nyosplwtfa/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/nyosplwtfa/strided_slice_2/stack_2А
%sequential/nyosplwtfa/strided_slice_2StridedSlice#sequential/nyosplwtfa/transpose:y:04sequential/nyosplwtfa/strided_slice_2/stack:output:06sequential/nyosplwtfa/strided_slice_2/stack_1:output:06sequential/nyosplwtfa/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2'
%sequential/nyosplwtfa/strided_slice_2ё
6sequential/nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp?sequential_nyosplwtfa_lwptfvtmlx_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype028
6sequential/nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp 
'sequential/nyosplwtfa/lwptfvtmlx/MatMulMatMul.sequential/nyosplwtfa/strided_slice_2:output:0>sequential/nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2)
'sequential/nyosplwtfa/lwptfvtmlx/MatMulў
8sequential/nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOpAsequential_nyosplwtfa_lwptfvtmlx_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02:
8sequential/nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp√
)sequential/nyosplwtfa/lwptfvtmlx/MatMul_1MatMul$sequential/nyosplwtfa/zeros:output:0@sequential/nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2+
)sequential/nyosplwtfa/lwptfvtmlx/MatMul_1Ё
$sequential/nyosplwtfa/lwptfvtmlx/addAddV21sequential/nyosplwtfa/lwptfvtmlx/MatMul:product:03sequential/nyosplwtfa/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2&
$sequential/nyosplwtfa/lwptfvtmlx/addЁ
7sequential/nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp@sequential_nyosplwtfa_lwptfvtmlx_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential/nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp¤
(sequential/nyosplwtfa/lwptfvtmlx/BiasAddBiasAdd(sequential/nyosplwtfa/lwptfvtmlx/add:z:0?sequential/nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2*
(sequential/nyosplwtfa/lwptfvtmlx/BiasAddж
0sequential/nyosplwtfa/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential/nyosplwtfa/lwptfvtmlx/split/split_dim├
&sequential/nyosplwtfa/lwptfvtmlx/splitSplit9sequential/nyosplwtfa/lwptfvtmlx/split/split_dim:output:01sequential/nyosplwtfa/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2(
&sequential/nyosplwtfa/lwptfvtmlx/split╫
/sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOpReadVariableOp8sequential_nyosplwtfa_lwptfvtmlx_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOpц
$sequential/nyosplwtfa/lwptfvtmlx/mulMul7sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp:value:0&sequential/nyosplwtfa/zeros_1:output:0*
T0*'
_output_shapes
:          2&
$sequential/nyosplwtfa/lwptfvtmlx/mulц
&sequential/nyosplwtfa/lwptfvtmlx/add_1AddV2/sequential/nyosplwtfa/lwptfvtmlx/split:output:0(sequential/nyosplwtfa/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2(
&sequential/nyosplwtfa/lwptfvtmlx/add_1╜
(sequential/nyosplwtfa/lwptfvtmlx/SigmoidSigmoid*sequential/nyosplwtfa/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2*
(sequential/nyosplwtfa/lwptfvtmlx/Sigmoid▌
1sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_1ReadVariableOp:sequential_nyosplwtfa_lwptfvtmlx_readvariableop_1_resource*
_output_shapes
: *
dtype023
1sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_1ь
&sequential/nyosplwtfa/lwptfvtmlx/mul_1Mul9sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_1:value:0&sequential/nyosplwtfa/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/nyosplwtfa/lwptfvtmlx/mul_1ш
&sequential/nyosplwtfa/lwptfvtmlx/add_2AddV2/sequential/nyosplwtfa/lwptfvtmlx/split:output:1*sequential/nyosplwtfa/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2(
&sequential/nyosplwtfa/lwptfvtmlx/add_2┴
*sequential/nyosplwtfa/lwptfvtmlx/Sigmoid_1Sigmoid*sequential/nyosplwtfa/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2,
*sequential/nyosplwtfa/lwptfvtmlx/Sigmoid_1с
&sequential/nyosplwtfa/lwptfvtmlx/mul_2Mul.sequential/nyosplwtfa/lwptfvtmlx/Sigmoid_1:y:0&sequential/nyosplwtfa/zeros_1:output:0*
T0*'
_output_shapes
:          2(
&sequential/nyosplwtfa/lwptfvtmlx/mul_2╣
%sequential/nyosplwtfa/lwptfvtmlx/TanhTanh/sequential/nyosplwtfa/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2'
%sequential/nyosplwtfa/lwptfvtmlx/Tanhт
&sequential/nyosplwtfa/lwptfvtmlx/mul_3Mul,sequential/nyosplwtfa/lwptfvtmlx/Sigmoid:y:0)sequential/nyosplwtfa/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2(
&sequential/nyosplwtfa/lwptfvtmlx/mul_3у
&sequential/nyosplwtfa/lwptfvtmlx/add_3AddV2*sequential/nyosplwtfa/lwptfvtmlx/mul_2:z:0*sequential/nyosplwtfa/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/nyosplwtfa/lwptfvtmlx/add_3▌
1sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_2ReadVariableOp:sequential_nyosplwtfa_lwptfvtmlx_readvariableop_2_resource*
_output_shapes
: *
dtype023
1sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_2Ё
&sequential/nyosplwtfa/lwptfvtmlx/mul_4Mul9sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_2:value:0*sequential/nyosplwtfa/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2(
&sequential/nyosplwtfa/lwptfvtmlx/mul_4ш
&sequential/nyosplwtfa/lwptfvtmlx/add_4AddV2/sequential/nyosplwtfa/lwptfvtmlx/split:output:3*sequential/nyosplwtfa/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2(
&sequential/nyosplwtfa/lwptfvtmlx/add_4┴
*sequential/nyosplwtfa/lwptfvtmlx/Sigmoid_2Sigmoid*sequential/nyosplwtfa/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2,
*sequential/nyosplwtfa/lwptfvtmlx/Sigmoid_2╕
'sequential/nyosplwtfa/lwptfvtmlx/Tanh_1Tanh*sequential/nyosplwtfa/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2)
'sequential/nyosplwtfa/lwptfvtmlx/Tanh_1ц
&sequential/nyosplwtfa/lwptfvtmlx/mul_5Mul.sequential/nyosplwtfa/lwptfvtmlx/Sigmoid_2:y:0+sequential/nyosplwtfa/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2(
&sequential/nyosplwtfa/lwptfvtmlx/mul_5╗
3sequential/nyosplwtfa/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential/nyosplwtfa/TensorArrayV2_1/element_shapeР
%sequential/nyosplwtfa/TensorArrayV2_1TensorListReserve<sequential/nyosplwtfa/TensorArrayV2_1/element_shape:output:0.sequential/nyosplwtfa/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/nyosplwtfa/TensorArrayV2_1z
sequential/nyosplwtfa/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/nyosplwtfa/timeл
.sequential/nyosplwtfa/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         20
.sequential/nyosplwtfa/while/maximum_iterationsЦ
(sequential/nyosplwtfa/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/nyosplwtfa/while/loop_counter°	
sequential/nyosplwtfa/whileWhile1sequential/nyosplwtfa/while/loop_counter:output:07sequential/nyosplwtfa/while/maximum_iterations:output:0#sequential/nyosplwtfa/time:output:0.sequential/nyosplwtfa/TensorArrayV2_1:handle:0$sequential/nyosplwtfa/zeros:output:0&sequential/nyosplwtfa/zeros_1:output:0.sequential/nyosplwtfa/strided_slice_1:output:0Msequential/nyosplwtfa/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_nyosplwtfa_lwptfvtmlx_matmul_readvariableop_resourceAsequential_nyosplwtfa_lwptfvtmlx_matmul_1_readvariableop_resource@sequential_nyosplwtfa_lwptfvtmlx_biasadd_readvariableop_resource8sequential_nyosplwtfa_lwptfvtmlx_readvariableop_resource:sequential_nyosplwtfa_lwptfvtmlx_readvariableop_1_resource:sequential_nyosplwtfa_lwptfvtmlx_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*4
body,R*
(sequential_nyosplwtfa_while_body_2593580*4
cond,R*
(sequential_nyosplwtfa_while_cond_2593579*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
sequential/nyosplwtfa/whileс
Fsequential/nyosplwtfa/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential/nyosplwtfa/TensorArrayV2Stack/TensorListStack/element_shape└
8sequential/nyosplwtfa/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/nyosplwtfa/while:output:3Osequential/nyosplwtfa/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02:
8sequential/nyosplwtfa/TensorArrayV2Stack/TensorListStackн
+sequential/nyosplwtfa/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2-
+sequential/nyosplwtfa/strided_slice_3/stackи
-sequential/nyosplwtfa/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/nyosplwtfa/strided_slice_3/stack_1и
-sequential/nyosplwtfa/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/nyosplwtfa/strided_slice_3/stack_2Ю
%sequential/nyosplwtfa/strided_slice_3StridedSliceAsequential/nyosplwtfa/TensorArrayV2Stack/TensorListStack:tensor:04sequential/nyosplwtfa/strided_slice_3/stack:output:06sequential/nyosplwtfa/strided_slice_3/stack_1:output:06sequential/nyosplwtfa/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2'
%sequential/nyosplwtfa/strided_slice_3е
&sequential/nyosplwtfa/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/nyosplwtfa/transpose_1/perm¤
!sequential/nyosplwtfa/transpose_1	TransposeAsequential/nyosplwtfa/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/nyosplwtfa/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2#
!sequential/nyosplwtfa/transpose_1╧
+sequential/chsgvefspq/MatMul/ReadVariableOpReadVariableOp4sequential_chsgvefspq_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential/chsgvefspq/MatMul/ReadVariableOp▌
sequential/chsgvefspq/MatMulMatMul.sequential/nyosplwtfa/strided_slice_3:output:03sequential/chsgvefspq/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/chsgvefspq/MatMul╬
,sequential/chsgvefspq/BiasAdd/ReadVariableOpReadVariableOp5sequential_chsgvefspq_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential/chsgvefspq/BiasAdd/ReadVariableOp┘
sequential/chsgvefspq/BiasAddBiasAdd&sequential/chsgvefspq/MatMul:product:04sequential/chsgvefspq/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/chsgvefspq/BiasAddа
IdentityIdentity&sequential/chsgvefspq/BiasAdd:output:0-^sequential/chsgvefspq/BiasAdd/ReadVariableOp,^sequential/chsgvefspq/MatMul/ReadVariableOp8^sequential/dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp7^sequential/dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp9^sequential/dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp0^sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp2^sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_12^sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_2^sequential/dnzlhpjizj/while9^sequential/gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp@^sequential/gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp8^sequential/nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp7^sequential/nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp9^sequential/nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp0^sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp2^sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_12^sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_2^sequential/nyosplwtfa/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2\
,sequential/chsgvefspq/BiasAdd/ReadVariableOp,sequential/chsgvefspq/BiasAdd/ReadVariableOp2Z
+sequential/chsgvefspq/MatMul/ReadVariableOp+sequential/chsgvefspq/MatMul/ReadVariableOp2r
7sequential/dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp7sequential/dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp2p
6sequential/dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp6sequential/dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp2t
8sequential/dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp8sequential/dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp2b
/sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp/sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp2f
1sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_11sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_12f
1sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_21sequential/dnzlhpjizj/hswofenhiy/ReadVariableOp_22:
sequential/dnzlhpjizj/whilesequential/dnzlhpjizj/while2t
8sequential/gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp8sequential/gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp2В
?sequential/gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp?sequential/gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp2r
7sequential/nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp7sequential/nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp2p
6sequential/nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp6sequential/nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp2t
8sequential/nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp8sequential/nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp2b
/sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp/sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp2f
1sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_11sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_12f
1sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_21sequential/nyosplwtfa/lwptfvtmlx/ReadVariableOp_22:
sequential/nyosplwtfa/whilesequential/nyosplwtfa/while:[ W
/
_output_shapes
:         
$
_user_specified_name
bdeyofgzkq
╣'
╡
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_2599158

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
▄Ж
П
(sequential_dnzlhpjizj_while_body_2593404H
Dsequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_loop_counterN
Jsequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_maximum_iterations+
'sequential_dnzlhpjizj_while_placeholder-
)sequential_dnzlhpjizj_while_placeholder_1-
)sequential_dnzlhpjizj_while_placeholder_2-
)sequential_dnzlhpjizj_while_placeholder_3G
Csequential_dnzlhpjizj_while_sequential_dnzlhpjizj_strided_slice_1_0Г
sequential_dnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_sequential_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource_0:	А\
Isequential_dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource_0:	 АW
Hsequential_dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource_0:	АN
@sequential_dnzlhpjizj_while_hswofenhiy_readvariableop_resource_0: P
Bsequential_dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource_0: P
Bsequential_dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource_0: (
$sequential_dnzlhpjizj_while_identity*
&sequential_dnzlhpjizj_while_identity_1*
&sequential_dnzlhpjizj_while_identity_2*
&sequential_dnzlhpjizj_while_identity_3*
&sequential_dnzlhpjizj_while_identity_4*
&sequential_dnzlhpjizj_while_identity_5E
Asequential_dnzlhpjizj_while_sequential_dnzlhpjizj_strided_slice_1Б
}sequential_dnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_sequential_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensorX
Esequential_dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource:	АZ
Gsequential_dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource:	 АU
Fsequential_dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource:	АL
>sequential_dnzlhpjizj_while_hswofenhiy_readvariableop_resource: N
@sequential_dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource: N
@sequential_dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource: Ив=sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOpв<sequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOpв>sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOpв5sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOpв7sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1в7sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2я
Msequential/dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2O
Msequential/dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem/element_shape╫
?sequential/dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_dnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_sequential_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensor_0'sequential_dnzlhpjizj_while_placeholderVsequential/dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02A
?sequential/dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItemЕ
<sequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOpReadVariableOpGsequential_dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02>
<sequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOpй
-sequential/dnzlhpjizj/while/hswofenhiy/MatMulMatMulFsequential/dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2/
-sequential/dnzlhpjizj/while/hswofenhiy/MatMulЛ
>sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOpIsequential_dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02@
>sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOpТ
/sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1MatMul)sequential_dnzlhpjizj_while_placeholder_2Fsequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А21
/sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1И
*sequential/dnzlhpjizj/while/hswofenhiy/addAddV27sequential/dnzlhpjizj/while/hswofenhiy/MatMul:product:09sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2,
*sequential/dnzlhpjizj/while/hswofenhiy/addД
=sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOpHsequential_dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOpХ
.sequential/dnzlhpjizj/while/hswofenhiy/BiasAddBiasAdd.sequential/dnzlhpjizj/while/hswofenhiy/add:z:0Esequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А20
.sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd▓
6sequential/dnzlhpjizj/while/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/dnzlhpjizj/while/hswofenhiy/split/split_dim█
,sequential/dnzlhpjizj/while/hswofenhiy/splitSplit?sequential/dnzlhpjizj/while/hswofenhiy/split/split_dim:output:07sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2.
,sequential/dnzlhpjizj/while/hswofenhiy/splitы
5sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOpReadVariableOp@sequential_dnzlhpjizj_while_hswofenhiy_readvariableop_resource_0*
_output_shapes
: *
dtype027
5sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp√
*sequential/dnzlhpjizj/while/hswofenhiy/mulMul=sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp:value:0)sequential_dnzlhpjizj_while_placeholder_3*
T0*'
_output_shapes
:          2,
*sequential/dnzlhpjizj/while/hswofenhiy/mul■
,sequential/dnzlhpjizj/while/hswofenhiy/add_1AddV25sequential/dnzlhpjizj/while/hswofenhiy/split:output:0.sequential/dnzlhpjizj/while/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2.
,sequential/dnzlhpjizj/while/hswofenhiy/add_1╧
.sequential/dnzlhpjizj/while/hswofenhiy/SigmoidSigmoid0sequential/dnzlhpjizj/while/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          20
.sequential/dnzlhpjizj/while/hswofenhiy/Sigmoidё
7sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1ReadVariableOpBsequential_dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource_0*
_output_shapes
: *
dtype029
7sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1Б
,sequential/dnzlhpjizj/while/hswofenhiy/mul_1Mul?sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1:value:0)sequential_dnzlhpjizj_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/dnzlhpjizj/while/hswofenhiy/mul_1А
,sequential/dnzlhpjizj/while/hswofenhiy/add_2AddV25sequential/dnzlhpjizj/while/hswofenhiy/split:output:10sequential/dnzlhpjizj/while/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2.
,sequential/dnzlhpjizj/while/hswofenhiy/add_2╙
0sequential/dnzlhpjizj/while/hswofenhiy/Sigmoid_1Sigmoid0sequential/dnzlhpjizj/while/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          22
0sequential/dnzlhpjizj/while/hswofenhiy/Sigmoid_1Ў
,sequential/dnzlhpjizj/while/hswofenhiy/mul_2Mul4sequential/dnzlhpjizj/while/hswofenhiy/Sigmoid_1:y:0)sequential_dnzlhpjizj_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/dnzlhpjizj/while/hswofenhiy/mul_2╦
+sequential/dnzlhpjizj/while/hswofenhiy/TanhTanh5sequential/dnzlhpjizj/while/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2-
+sequential/dnzlhpjizj/while/hswofenhiy/Tanh·
,sequential/dnzlhpjizj/while/hswofenhiy/mul_3Mul2sequential/dnzlhpjizj/while/hswofenhiy/Sigmoid:y:0/sequential/dnzlhpjizj/while/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2.
,sequential/dnzlhpjizj/while/hswofenhiy/mul_3√
,sequential/dnzlhpjizj/while/hswofenhiy/add_3AddV20sequential/dnzlhpjizj/while/hswofenhiy/mul_2:z:00sequential/dnzlhpjizj/while/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/dnzlhpjizj/while/hswofenhiy/add_3ё
7sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2ReadVariableOpBsequential_dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource_0*
_output_shapes
: *
dtype029
7sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2И
,sequential/dnzlhpjizj/while/hswofenhiy/mul_4Mul?sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2:value:00sequential/dnzlhpjizj/while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/dnzlhpjizj/while/hswofenhiy/mul_4А
,sequential/dnzlhpjizj/while/hswofenhiy/add_4AddV25sequential/dnzlhpjizj/while/hswofenhiy/split:output:30sequential/dnzlhpjizj/while/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2.
,sequential/dnzlhpjizj/while/hswofenhiy/add_4╙
0sequential/dnzlhpjizj/while/hswofenhiy/Sigmoid_2Sigmoid0sequential/dnzlhpjizj/while/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          22
0sequential/dnzlhpjizj/while/hswofenhiy/Sigmoid_2╩
-sequential/dnzlhpjizj/while/hswofenhiy/Tanh_1Tanh0sequential/dnzlhpjizj/while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2/
-sequential/dnzlhpjizj/while/hswofenhiy/Tanh_1■
,sequential/dnzlhpjizj/while/hswofenhiy/mul_5Mul4sequential/dnzlhpjizj/while/hswofenhiy/Sigmoid_2:y:01sequential/dnzlhpjizj/while/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2.
,sequential/dnzlhpjizj/while/hswofenhiy/mul_5╠
@sequential/dnzlhpjizj/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_dnzlhpjizj_while_placeholder_1'sequential_dnzlhpjizj_while_placeholder0sequential/dnzlhpjizj/while/hswofenhiy/mul_5:z:0*
_output_shapes
: *
element_dtype02B
@sequential/dnzlhpjizj/while/TensorArrayV2Write/TensorListSetItemИ
!sequential/dnzlhpjizj/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/dnzlhpjizj/while/add/y┴
sequential/dnzlhpjizj/while/addAddV2'sequential_dnzlhpjizj_while_placeholder*sequential/dnzlhpjizj/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/dnzlhpjizj/while/addМ
#sequential/dnzlhpjizj/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/dnzlhpjizj/while/add_1/yф
!sequential/dnzlhpjizj/while/add_1AddV2Dsequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_loop_counter,sequential/dnzlhpjizj/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/dnzlhpjizj/while/add_1М
$sequential/dnzlhpjizj/while/IdentityIdentity%sequential/dnzlhpjizj/while/add_1:z:0>^sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp=^sequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp?^sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp6^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp8^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_18^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2&
$sequential/dnzlhpjizj/while/Identity╡
&sequential/dnzlhpjizj/while/Identity_1IdentityJsequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_maximum_iterations>^sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp=^sequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp?^sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp6^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp8^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_18^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/dnzlhpjizj/while/Identity_1О
&sequential/dnzlhpjizj/while/Identity_2Identity#sequential/dnzlhpjizj/while/add:z:0>^sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp=^sequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp?^sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp6^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp8^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_18^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/dnzlhpjizj/while/Identity_2╗
&sequential/dnzlhpjizj/while/Identity_3IdentityPsequential/dnzlhpjizj/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp=^sequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp?^sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp6^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp8^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_18^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/dnzlhpjizj/while/Identity_3м
&sequential/dnzlhpjizj/while/Identity_4Identity0sequential/dnzlhpjizj/while/hswofenhiy/mul_5:z:0>^sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp=^sequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp?^sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp6^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp8^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_18^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/dnzlhpjizj/while/Identity_4м
&sequential/dnzlhpjizj/while/Identity_5Identity0sequential/dnzlhpjizj/while/hswofenhiy/add_3:z:0>^sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp=^sequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp?^sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp6^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp8^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_18^sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/dnzlhpjizj/while/Identity_5"Т
Fsequential_dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resourceHsequential_dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource_0"Ф
Gsequential_dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resourceIsequential_dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource_0"Р
Esequential_dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resourceGsequential_dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource_0"Ж
@sequential_dnzlhpjizj_while_hswofenhiy_readvariableop_1_resourceBsequential_dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource_0"Ж
@sequential_dnzlhpjizj_while_hswofenhiy_readvariableop_2_resourceBsequential_dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource_0"В
>sequential_dnzlhpjizj_while_hswofenhiy_readvariableop_resource@sequential_dnzlhpjizj_while_hswofenhiy_readvariableop_resource_0"U
$sequential_dnzlhpjizj_while_identity-sequential/dnzlhpjizj/while/Identity:output:0"Y
&sequential_dnzlhpjizj_while_identity_1/sequential/dnzlhpjizj/while/Identity_1:output:0"Y
&sequential_dnzlhpjizj_while_identity_2/sequential/dnzlhpjizj/while/Identity_2:output:0"Y
&sequential_dnzlhpjizj_while_identity_3/sequential/dnzlhpjizj/while/Identity_3:output:0"Y
&sequential_dnzlhpjizj_while_identity_4/sequential/dnzlhpjizj/while/Identity_4:output:0"Y
&sequential_dnzlhpjizj_while_identity_5/sequential/dnzlhpjizj/while/Identity_5:output:0"И
Asequential_dnzlhpjizj_while_sequential_dnzlhpjizj_strided_slice_1Csequential_dnzlhpjizj_while_sequential_dnzlhpjizj_strided_slice_1_0"А
}sequential_dnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_sequential_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensorsequential_dnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_sequential_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2~
=sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp=sequential/dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2|
<sequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp<sequential/dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp2А
>sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp>sequential/dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp2n
5sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp5sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp2r
7sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_17sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_12r
7sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_27sequential/dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2: 
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
рY
З
while_body_2595814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lwptfvtmlx_matmul_readvariableop_resource_0:	 АF
3while_lwptfvtmlx_matmul_1_readvariableop_resource_0:	 АA
2while_lwptfvtmlx_biasadd_readvariableop_resource_0:	А8
*while_lwptfvtmlx_readvariableop_resource_0: :
,while_lwptfvtmlx_readvariableop_1_resource_0: :
,while_lwptfvtmlx_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lwptfvtmlx_matmul_readvariableop_resource:	 АD
1while_lwptfvtmlx_matmul_1_readvariableop_resource:	 А?
0while_lwptfvtmlx_biasadd_readvariableop_resource:	А6
(while_lwptfvtmlx_readvariableop_resource: 8
*while_lwptfvtmlx_readvariableop_1_resource: 8
*while_lwptfvtmlx_readvariableop_2_resource: Ив'while/lwptfvtmlx/BiasAdd/ReadVariableOpв&while/lwptfvtmlx/MatMul/ReadVariableOpв(while/lwptfvtmlx/MatMul_1/ReadVariableOpвwhile/lwptfvtmlx/ReadVariableOpв!while/lwptfvtmlx/ReadVariableOp_1в!while/lwptfvtmlx/ReadVariableOp_2├
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
&while/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp1while_lwptfvtmlx_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/lwptfvtmlx/MatMul/ReadVariableOp╤
while/lwptfvtmlx/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul╔
(while/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp3while_lwptfvtmlx_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/lwptfvtmlx/MatMul_1/ReadVariableOp║
while/lwptfvtmlx/MatMul_1MatMulwhile_placeholder_20while/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul_1░
while/lwptfvtmlx/addAddV2!while/lwptfvtmlx/MatMul:product:0#while/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/add┬
'while/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp2while_lwptfvtmlx_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/lwptfvtmlx/BiasAdd/ReadVariableOp╜
while/lwptfvtmlx/BiasAddBiasAddwhile/lwptfvtmlx/add:z:0/while/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/BiasAddЖ
 while/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/lwptfvtmlx/split/split_dimГ
while/lwptfvtmlx/splitSplit)while/lwptfvtmlx/split/split_dim:output:0!while/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lwptfvtmlx/splitй
while/lwptfvtmlx/ReadVariableOpReadVariableOp*while_lwptfvtmlx_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/lwptfvtmlx/ReadVariableOpг
while/lwptfvtmlx/mulMul'while/lwptfvtmlx/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mulж
while/lwptfvtmlx/add_1AddV2while/lwptfvtmlx/split:output:0while/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_1Н
while/lwptfvtmlx/SigmoidSigmoidwhile/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoidп
!while/lwptfvtmlx/ReadVariableOp_1ReadVariableOp,while_lwptfvtmlx_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_1й
while/lwptfvtmlx/mul_1Mul)while/lwptfvtmlx/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_1и
while/lwptfvtmlx/add_2AddV2while/lwptfvtmlx/split:output:1while/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_2С
while/lwptfvtmlx/Sigmoid_1Sigmoidwhile/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_1Ю
while/lwptfvtmlx/mul_2Mulwhile/lwptfvtmlx/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_2Й
while/lwptfvtmlx/TanhTanhwhile/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanhв
while/lwptfvtmlx/mul_3Mulwhile/lwptfvtmlx/Sigmoid:y:0while/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_3г
while/lwptfvtmlx/add_3AddV2while/lwptfvtmlx/mul_2:z:0while/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_3п
!while/lwptfvtmlx/ReadVariableOp_2ReadVariableOp,while_lwptfvtmlx_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_2░
while/lwptfvtmlx/mul_4Mul)while/lwptfvtmlx/ReadVariableOp_2:value:0while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_4и
while/lwptfvtmlx/add_4AddV2while/lwptfvtmlx/split:output:3while/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_4С
while/lwptfvtmlx/Sigmoid_2Sigmoidwhile/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_2И
while/lwptfvtmlx/Tanh_1Tanhwhile/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanh_1ж
while/lwptfvtmlx/mul_5Mulwhile/lwptfvtmlx/Sigmoid_2:y:0while/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lwptfvtmlx/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/lwptfvtmlx/mul_5:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/lwptfvtmlx/add_3:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
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
0while_lwptfvtmlx_biasadd_readvariableop_resource2while_lwptfvtmlx_biasadd_readvariableop_resource_0"h
1while_lwptfvtmlx_matmul_1_readvariableop_resource3while_lwptfvtmlx_matmul_1_readvariableop_resource_0"d
/while_lwptfvtmlx_matmul_readvariableop_resource1while_lwptfvtmlx_matmul_readvariableop_resource_0"Z
*while_lwptfvtmlx_readvariableop_1_resource,while_lwptfvtmlx_readvariableop_1_resource_0"Z
*while_lwptfvtmlx_readvariableop_2_resource,while_lwptfvtmlx_readvariableop_2_resource_0"V
(while_lwptfvtmlx_readvariableop_resource*while_lwptfvtmlx_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/lwptfvtmlx/BiasAdd/ReadVariableOp'while/lwptfvtmlx/BiasAdd/ReadVariableOp2P
&while/lwptfvtmlx/MatMul/ReadVariableOp&while/lwptfvtmlx/MatMul/ReadVariableOp2T
(while/lwptfvtmlx/MatMul_1/ReadVariableOp(while/lwptfvtmlx/MatMul_1/ReadVariableOp2B
while/lwptfvtmlx/ReadVariableOpwhile/lwptfvtmlx/ReadVariableOp2F
!while/lwptfvtmlx/ReadVariableOp_1!while/lwptfvtmlx/ReadVariableOp_12F
!while/lwptfvtmlx/ReadVariableOp_2!while/lwptfvtmlx/ReadVariableOp_2: 
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
─
└
G__inference_sequential_layer_call_and_return_conditional_losses_2596394

bdeyofgzkq(
gtjikcltwy_2596356: 
gtjikcltwy_2596358:%
dnzlhpjizj_2596362:	А%
dnzlhpjizj_2596364:	 А!
dnzlhpjizj_2596366:	А 
dnzlhpjizj_2596368:  
dnzlhpjizj_2596370:  
dnzlhpjizj_2596372: %
nyosplwtfa_2596375:	 А%
nyosplwtfa_2596377:	 А!
nyosplwtfa_2596379:	А 
nyosplwtfa_2596381:  
nyosplwtfa_2596383:  
nyosplwtfa_2596385: $
chsgvefspq_2596388:  
chsgvefspq_2596390:
identityИв"chsgvefspq/StatefulPartitionedCallв"dnzlhpjizj/StatefulPartitionedCallв"gtjikcltwy/StatefulPartitionedCallв"nyosplwtfa/StatefulPartitionedCall░
"gtjikcltwy/StatefulPartitionedCallStatefulPartitionedCall
bdeyofgzkqgtjikcltwy_2596356gtjikcltwy_2596358*
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
GPU2*0J 8В *P
fKRI
G__inference_gtjikcltwy_layer_call_and_return_conditional_losses_25952472$
"gtjikcltwy/StatefulPartitionedCallЗ
ezubtmdnwx/PartitionedCallPartitionedCall+gtjikcltwy/StatefulPartitionedCall:output:0*
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
GPU2*0J 8В *P
fKRI
G__inference_ezubtmdnwx_layer_call_and_return_conditional_losses_25952662
ezubtmdnwx/PartitionedCallЭ
"dnzlhpjizj/StatefulPartitionedCallStatefulPartitionedCall#ezubtmdnwx/PartitionedCall:output:0dnzlhpjizj_2596362dnzlhpjizj_2596364dnzlhpjizj_2596366dnzlhpjizj_2596368dnzlhpjizj_2596370dnzlhpjizj_2596372*
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
GPU2*0J 8В *P
fKRI
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_25961292$
"dnzlhpjizj/StatefulPartitionedCallб
"nyosplwtfa/StatefulPartitionedCallStatefulPartitionedCall+dnzlhpjizj/StatefulPartitionedCall:output:0nyosplwtfa_2596375nyosplwtfa_2596377nyosplwtfa_2596379nyosplwtfa_2596381nyosplwtfa_2596383nyosplwtfa_2596385*
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
GPU2*0J 8В *P
fKRI
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_25959152$
"nyosplwtfa/StatefulPartitionedCall╔
"chsgvefspq/StatefulPartitionedCallStatefulPartitionedCall+nyosplwtfa/StatefulPartitionedCall:output:0chsgvefspq_2596388chsgvefspq_2596390*
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
GPU2*0J 8В *P
fKRI
G__inference_chsgvefspq_layer_call_and_return_conditional_losses_25956642$
"chsgvefspq/StatefulPartitionedCallУ
IdentityIdentity+chsgvefspq/StatefulPartitionedCall:output:0#^chsgvefspq/StatefulPartitionedCall#^dnzlhpjizj/StatefulPartitionedCall#^gtjikcltwy/StatefulPartitionedCall#^nyosplwtfa/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"chsgvefspq/StatefulPartitionedCall"chsgvefspq/StatefulPartitionedCall2H
"dnzlhpjizj/StatefulPartitionedCall"dnzlhpjizj/StatefulPartitionedCall2H
"gtjikcltwy/StatefulPartitionedCall"gtjikcltwy/StatefulPartitionedCall2H
"nyosplwtfa/StatefulPartitionedCall"nyosplwtfa/StatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
bdeyofgzkq
Ш
Л
nyosplwtfa_while_cond_25971392
.nyosplwtfa_while_nyosplwtfa_while_loop_counter8
4nyosplwtfa_while_nyosplwtfa_while_maximum_iterations 
nyosplwtfa_while_placeholder"
nyosplwtfa_while_placeholder_1"
nyosplwtfa_while_placeholder_2"
nyosplwtfa_while_placeholder_34
0nyosplwtfa_while_less_nyosplwtfa_strided_slice_1K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2597139___redundant_placeholder0K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2597139___redundant_placeholder1K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2597139___redundant_placeholder2K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2597139___redundant_placeholder3K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2597139___redundant_placeholder4K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2597139___redundant_placeholder5K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2597139___redundant_placeholder6
nyosplwtfa_while_identity
з
nyosplwtfa/while/LessLessnyosplwtfa_while_placeholder0nyosplwtfa_while_less_nyosplwtfa_strided_slice_1*
T0*
_output_shapes
: 2
nyosplwtfa/while/Less~
nyosplwtfa/while/IdentityIdentitynyosplwtfa/while/Less:z:0*
T0
*
_output_shapes
: 2
nyosplwtfa/while/Identity"?
nyosplwtfa_while_identity"nyosplwtfa/while/Identity:output:0*(
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
▄h
З
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598533
inputs_0<
)lwptfvtmlx_matmul_readvariableop_resource:	 А>
+lwptfvtmlx_matmul_1_readvariableop_resource:	 А9
*lwptfvtmlx_biasadd_readvariableop_resource:	А0
"lwptfvtmlx_readvariableop_resource: 2
$lwptfvtmlx_readvariableop_1_resource: 2
$lwptfvtmlx_readvariableop_2_resource: 
identityИв!lwptfvtmlx/BiasAdd/ReadVariableOpв lwptfvtmlx/MatMul/ReadVariableOpв"lwptfvtmlx/MatMul_1/ReadVariableOpвlwptfvtmlx/ReadVariableOpвlwptfvtmlx/ReadVariableOp_1вlwptfvtmlx/ReadVariableOp_2вwhileF
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
 lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp)lwptfvtmlx_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 lwptfvtmlx/MatMul/ReadVariableOpз
lwptfvtmlx/MatMulMatMulstrided_slice_2:output:0(lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul╡
"lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp+lwptfvtmlx_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"lwptfvtmlx/MatMul_1/ReadVariableOpг
lwptfvtmlx/MatMul_1MatMulzeros:output:0*lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul_1Ш
lwptfvtmlx/addAddV2lwptfvtmlx/MatMul:product:0lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/addо
!lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp*lwptfvtmlx_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!lwptfvtmlx/BiasAdd/ReadVariableOpе
lwptfvtmlx/BiasAddBiasAddlwptfvtmlx/add:z:0)lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/BiasAddz
lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lwptfvtmlx/split/split_dimы
lwptfvtmlx/splitSplit#lwptfvtmlx/split/split_dim:output:0lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lwptfvtmlx/splitХ
lwptfvtmlx/ReadVariableOpReadVariableOp"lwptfvtmlx_readvariableop_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOpО
lwptfvtmlx/mulMul!lwptfvtmlx/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mulО
lwptfvtmlx/add_1AddV2lwptfvtmlx/split:output:0lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_1{
lwptfvtmlx/SigmoidSigmoidlwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/SigmoidЫ
lwptfvtmlx/ReadVariableOp_1ReadVariableOp$lwptfvtmlx_readvariableop_1_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_1Ф
lwptfvtmlx/mul_1Mul#lwptfvtmlx/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_1Р
lwptfvtmlx/add_2AddV2lwptfvtmlx/split:output:1lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_2
lwptfvtmlx/Sigmoid_1Sigmoidlwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_1Й
lwptfvtmlx/mul_2Mullwptfvtmlx/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_2w
lwptfvtmlx/TanhTanhlwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
lwptfvtmlx/TanhК
lwptfvtmlx/mul_3Mullwptfvtmlx/Sigmoid:y:0lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_3Л
lwptfvtmlx/add_3AddV2lwptfvtmlx/mul_2:z:0lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_3Ы
lwptfvtmlx/ReadVariableOp_2ReadVariableOp$lwptfvtmlx_readvariableop_2_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_2Ш
lwptfvtmlx/mul_4Mul#lwptfvtmlx/ReadVariableOp_2:value:0lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_4Р
lwptfvtmlx/add_4AddV2lwptfvtmlx/split:output:3lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_4
lwptfvtmlx/Sigmoid_2Sigmoidlwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_2v
lwptfvtmlx/Tanh_1Tanhlwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Tanh_1О
lwptfvtmlx/mul_5Mullwptfvtmlx/Sigmoid_2:y:0lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lwptfvtmlx_matmul_readvariableop_resource+lwptfvtmlx_matmul_1_readvariableop_resource*lwptfvtmlx_biasadd_readvariableop_resource"lwptfvtmlx_readvariableop_resource$lwptfvtmlx_readvariableop_1_resource$lwptfvtmlx_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2598432*
condR
while_cond_2598431*Q
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
IdentityIdentitystrided_slice_3:output:0"^lwptfvtmlx/BiasAdd/ReadVariableOp!^lwptfvtmlx/MatMul/ReadVariableOp#^lwptfvtmlx/MatMul_1/ReadVariableOp^lwptfvtmlx/ReadVariableOp^lwptfvtmlx/ReadVariableOp_1^lwptfvtmlx/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2F
!lwptfvtmlx/BiasAdd/ReadVariableOp!lwptfvtmlx/BiasAdd/ReadVariableOp2D
 lwptfvtmlx/MatMul/ReadVariableOp lwptfvtmlx/MatMul/ReadVariableOp2H
"lwptfvtmlx/MatMul_1/ReadVariableOp"lwptfvtmlx/MatMul_1/ReadVariableOp26
lwptfvtmlx/ReadVariableOplwptfvtmlx/ReadVariableOp2:
lwptfvtmlx/ReadVariableOp_1lwptfvtmlx/ReadVariableOp_12:
lwptfvtmlx/ReadVariableOp_2lwptfvtmlx/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                   
"
_user_specified_name
inputs/0
Б
└
,__inference_hswofenhiy_layer_call_fn_2599091

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

identity_2ИвStatefulPartitionedCallь
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
GPU2*0J 8В *P
fKRI
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_25937742
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
╣'
╡
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_2599024

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
рY
З
while_body_2598612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lwptfvtmlx_matmul_readvariableop_resource_0:	 АF
3while_lwptfvtmlx_matmul_1_readvariableop_resource_0:	 АA
2while_lwptfvtmlx_biasadd_readvariableop_resource_0:	А8
*while_lwptfvtmlx_readvariableop_resource_0: :
,while_lwptfvtmlx_readvariableop_1_resource_0: :
,while_lwptfvtmlx_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lwptfvtmlx_matmul_readvariableop_resource:	 АD
1while_lwptfvtmlx_matmul_1_readvariableop_resource:	 А?
0while_lwptfvtmlx_biasadd_readvariableop_resource:	А6
(while_lwptfvtmlx_readvariableop_resource: 8
*while_lwptfvtmlx_readvariableop_1_resource: 8
*while_lwptfvtmlx_readvariableop_2_resource: Ив'while/lwptfvtmlx/BiasAdd/ReadVariableOpв&while/lwptfvtmlx/MatMul/ReadVariableOpв(while/lwptfvtmlx/MatMul_1/ReadVariableOpвwhile/lwptfvtmlx/ReadVariableOpв!while/lwptfvtmlx/ReadVariableOp_1в!while/lwptfvtmlx/ReadVariableOp_2├
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
&while/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp1while_lwptfvtmlx_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/lwptfvtmlx/MatMul/ReadVariableOp╤
while/lwptfvtmlx/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul╔
(while/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp3while_lwptfvtmlx_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/lwptfvtmlx/MatMul_1/ReadVariableOp║
while/lwptfvtmlx/MatMul_1MatMulwhile_placeholder_20while/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul_1░
while/lwptfvtmlx/addAddV2!while/lwptfvtmlx/MatMul:product:0#while/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/add┬
'while/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp2while_lwptfvtmlx_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/lwptfvtmlx/BiasAdd/ReadVariableOp╜
while/lwptfvtmlx/BiasAddBiasAddwhile/lwptfvtmlx/add:z:0/while/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/BiasAddЖ
 while/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/lwptfvtmlx/split/split_dimГ
while/lwptfvtmlx/splitSplit)while/lwptfvtmlx/split/split_dim:output:0!while/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lwptfvtmlx/splitй
while/lwptfvtmlx/ReadVariableOpReadVariableOp*while_lwptfvtmlx_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/lwptfvtmlx/ReadVariableOpг
while/lwptfvtmlx/mulMul'while/lwptfvtmlx/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mulж
while/lwptfvtmlx/add_1AddV2while/lwptfvtmlx/split:output:0while/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_1Н
while/lwptfvtmlx/SigmoidSigmoidwhile/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoidп
!while/lwptfvtmlx/ReadVariableOp_1ReadVariableOp,while_lwptfvtmlx_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_1й
while/lwptfvtmlx/mul_1Mul)while/lwptfvtmlx/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_1и
while/lwptfvtmlx/add_2AddV2while/lwptfvtmlx/split:output:1while/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_2С
while/lwptfvtmlx/Sigmoid_1Sigmoidwhile/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_1Ю
while/lwptfvtmlx/mul_2Mulwhile/lwptfvtmlx/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_2Й
while/lwptfvtmlx/TanhTanhwhile/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanhв
while/lwptfvtmlx/mul_3Mulwhile/lwptfvtmlx/Sigmoid:y:0while/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_3г
while/lwptfvtmlx/add_3AddV2while/lwptfvtmlx/mul_2:z:0while/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_3п
!while/lwptfvtmlx/ReadVariableOp_2ReadVariableOp,while_lwptfvtmlx_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_2░
while/lwptfvtmlx/mul_4Mul)while/lwptfvtmlx/ReadVariableOp_2:value:0while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_4и
while/lwptfvtmlx/add_4AddV2while/lwptfvtmlx/split:output:3while/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_4С
while/lwptfvtmlx/Sigmoid_2Sigmoidwhile/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_2И
while/lwptfvtmlx/Tanh_1Tanhwhile/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanh_1ж
while/lwptfvtmlx/mul_5Mulwhile/lwptfvtmlx/Sigmoid_2:y:0while/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lwptfvtmlx/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/lwptfvtmlx/mul_5:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/lwptfvtmlx/add_3:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
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
0while_lwptfvtmlx_biasadd_readvariableop_resource2while_lwptfvtmlx_biasadd_readvariableop_resource_0"h
1while_lwptfvtmlx_matmul_1_readvariableop_resource3while_lwptfvtmlx_matmul_1_readvariableop_resource_0"d
/while_lwptfvtmlx_matmul_readvariableop_resource1while_lwptfvtmlx_matmul_readvariableop_resource_0"Z
*while_lwptfvtmlx_readvariableop_1_resource,while_lwptfvtmlx_readvariableop_1_resource_0"Z
*while_lwptfvtmlx_readvariableop_2_resource,while_lwptfvtmlx_readvariableop_2_resource_0"V
(while_lwptfvtmlx_readvariableop_resource*while_lwptfvtmlx_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/lwptfvtmlx/BiasAdd/ReadVariableOp'while/lwptfvtmlx/BiasAdd/ReadVariableOp2P
&while/lwptfvtmlx/MatMul/ReadVariableOp&while/lwptfvtmlx/MatMul/ReadVariableOp2T
(while/lwptfvtmlx/MatMul_1/ReadVariableOp(while/lwptfvtmlx/MatMul_1/ReadVariableOp2B
while/lwptfvtmlx/ReadVariableOpwhile/lwptfvtmlx/ReadVariableOp2F
!while/lwptfvtmlx/ReadVariableOp_1!while/lwptfvtmlx/ReadVariableOp_12F
!while/lwptfvtmlx/ReadVariableOp_2!while/lwptfvtmlx/ReadVariableOp_2: 
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
Е	
Ж
,__inference_dnzlhpjizj_layer_call_fn_2598139
inputs_0
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCall╜
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
GPU2*0J 8В *P
fKRI
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_25941372
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
Л

э
while_cond_2593793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2593793___redundant_placeholder05
1while_while_cond_2593793___redundant_placeholder15
1while_while_cond_2593793___redundant_placeholder25
1while_while_cond_2593793___redundant_placeholder35
1while_while_cond_2593793___redundant_placeholder45
1while_while_cond_2593793___redundant_placeholder55
1while_while_cond_2593793___redundant_placeholder6
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
Л

э
while_cond_2598611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2598611___redundant_placeholder05
1while_while_cond_2598611___redundant_placeholder15
1while_while_cond_2598611___redundant_placeholder25
1while_while_cond_2598611___redundant_placeholder35
1while_while_cond_2598611___redundant_placeholder45
1while_while_cond_2598611___redundant_placeholder55
1while_while_cond_2598611___redundant_placeholder6
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
Щp
╩
dnzlhpjizj_while_body_25965602
.dnzlhpjizj_while_dnzlhpjizj_while_loop_counter8
4dnzlhpjizj_while_dnzlhpjizj_while_maximum_iterations 
dnzlhpjizj_while_placeholder"
dnzlhpjizj_while_placeholder_1"
dnzlhpjizj_while_placeholder_2"
dnzlhpjizj_while_placeholder_31
-dnzlhpjizj_while_dnzlhpjizj_strided_slice_1_0m
idnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensor_0O
<dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource_0:	АQ
>dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource_0:	 АL
=dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource_0:	АC
5dnzlhpjizj_while_hswofenhiy_readvariableop_resource_0: E
7dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource_0: E
7dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource_0: 
dnzlhpjizj_while_identity
dnzlhpjizj_while_identity_1
dnzlhpjizj_while_identity_2
dnzlhpjizj_while_identity_3
dnzlhpjizj_while_identity_4
dnzlhpjizj_while_identity_5/
+dnzlhpjizj_while_dnzlhpjizj_strided_slice_1k
gdnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensorM
:dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource:	АO
<dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource:	 АJ
;dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource:	АA
3dnzlhpjizj_while_hswofenhiy_readvariableop_resource: C
5dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource: C
5dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource: Ив2dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOpв1dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOpв3dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOpв*dnzlhpjizj/while/hswofenhiy/ReadVariableOpв,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1в,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2┘
Bdnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2D
Bdnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemidnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensor_0dnzlhpjizj_while_placeholderKdnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype026
4dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItemф
1dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOpReadVariableOp<dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype023
1dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp¤
"dnzlhpjizj/while/hswofenhiy/MatMulMatMul;dnzlhpjizj/while/TensorArrayV2Read/TensorListGetItem:item:09dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"dnzlhpjizj/while/hswofenhiy/MatMulъ
3dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp>dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOpц
$dnzlhpjizj/while/hswofenhiy/MatMul_1MatMuldnzlhpjizj_while_placeholder_2;dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$dnzlhpjizj/while/hswofenhiy/MatMul_1▄
dnzlhpjizj/while/hswofenhiy/addAddV2,dnzlhpjizj/while/hswofenhiy/MatMul:product:0.dnzlhpjizj/while/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
dnzlhpjizj/while/hswofenhiy/addу
2dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp=dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOpщ
#dnzlhpjizj/while/hswofenhiy/BiasAddBiasAdd#dnzlhpjizj/while/hswofenhiy/add:z:0:dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#dnzlhpjizj/while/hswofenhiy/BiasAddЬ
+dnzlhpjizj/while/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+dnzlhpjizj/while/hswofenhiy/split/split_dimп
!dnzlhpjizj/while/hswofenhiy/splitSplit4dnzlhpjizj/while/hswofenhiy/split/split_dim:output:0,dnzlhpjizj/while/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!dnzlhpjizj/while/hswofenhiy/split╩
*dnzlhpjizj/while/hswofenhiy/ReadVariableOpReadVariableOp5dnzlhpjizj_while_hswofenhiy_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*dnzlhpjizj/while/hswofenhiy/ReadVariableOp╧
dnzlhpjizj/while/hswofenhiy/mulMul2dnzlhpjizj/while/hswofenhiy/ReadVariableOp:value:0dnzlhpjizj_while_placeholder_3*
T0*'
_output_shapes
:          2!
dnzlhpjizj/while/hswofenhiy/mul╥
!dnzlhpjizj/while/hswofenhiy/add_1AddV2*dnzlhpjizj/while/hswofenhiy/split:output:0#dnzlhpjizj/while/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/add_1о
#dnzlhpjizj/while/hswofenhiy/SigmoidSigmoid%dnzlhpjizj/while/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2%
#dnzlhpjizj/while/hswofenhiy/Sigmoid╨
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1ReadVariableOp7dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1╒
!dnzlhpjizj/while/hswofenhiy/mul_1Mul4dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1:value:0dnzlhpjizj_while_placeholder_3*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/mul_1╘
!dnzlhpjizj/while/hswofenhiy/add_2AddV2*dnzlhpjizj/while/hswofenhiy/split:output:1%dnzlhpjizj/while/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/add_2▓
%dnzlhpjizj/while/hswofenhiy/Sigmoid_1Sigmoid%dnzlhpjizj/while/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2'
%dnzlhpjizj/while/hswofenhiy/Sigmoid_1╩
!dnzlhpjizj/while/hswofenhiy/mul_2Mul)dnzlhpjizj/while/hswofenhiy/Sigmoid_1:y:0dnzlhpjizj_while_placeholder_3*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/mul_2к
 dnzlhpjizj/while/hswofenhiy/TanhTanh*dnzlhpjizj/while/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2"
 dnzlhpjizj/while/hswofenhiy/Tanh╬
!dnzlhpjizj/while/hswofenhiy/mul_3Mul'dnzlhpjizj/while/hswofenhiy/Sigmoid:y:0$dnzlhpjizj/while/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/mul_3╧
!dnzlhpjizj/while/hswofenhiy/add_3AddV2%dnzlhpjizj/while/hswofenhiy/mul_2:z:0%dnzlhpjizj/while/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/add_3╨
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2ReadVariableOp7dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2▄
!dnzlhpjizj/while/hswofenhiy/mul_4Mul4dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2:value:0%dnzlhpjizj/while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/mul_4╘
!dnzlhpjizj/while/hswofenhiy/add_4AddV2*dnzlhpjizj/while/hswofenhiy/split:output:3%dnzlhpjizj/while/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/add_4▓
%dnzlhpjizj/while/hswofenhiy/Sigmoid_2Sigmoid%dnzlhpjizj/while/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2'
%dnzlhpjizj/while/hswofenhiy/Sigmoid_2й
"dnzlhpjizj/while/hswofenhiy/Tanh_1Tanh%dnzlhpjizj/while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2$
"dnzlhpjizj/while/hswofenhiy/Tanh_1╥
!dnzlhpjizj/while/hswofenhiy/mul_5Mul)dnzlhpjizj/while/hswofenhiy/Sigmoid_2:y:0&dnzlhpjizj/while/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!dnzlhpjizj/while/hswofenhiy/mul_5Х
5dnzlhpjizj/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemdnzlhpjizj_while_placeholder_1dnzlhpjizj_while_placeholder%dnzlhpjizj/while/hswofenhiy/mul_5:z:0*
_output_shapes
: *
element_dtype027
5dnzlhpjizj/while/TensorArrayV2Write/TensorListSetItemr
dnzlhpjizj/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
dnzlhpjizj/while/add/yХ
dnzlhpjizj/while/addAddV2dnzlhpjizj_while_placeholderdnzlhpjizj/while/add/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/while/addv
dnzlhpjizj/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
dnzlhpjizj/while/add_1/yн
dnzlhpjizj/while/add_1AddV2.dnzlhpjizj_while_dnzlhpjizj_while_loop_counter!dnzlhpjizj/while/add_1/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/while/add_1й
dnzlhpjizj/while/IdentityIdentitydnzlhpjizj/while/add_1:z:03^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
dnzlhpjizj/while/Identity╟
dnzlhpjizj/while/Identity_1Identity4dnzlhpjizj_while_dnzlhpjizj_while_maximum_iterations3^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
dnzlhpjizj/while/Identity_1л
dnzlhpjizj/while/Identity_2Identitydnzlhpjizj/while/add:z:03^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
dnzlhpjizj/while/Identity_2╪
dnzlhpjizj/while/Identity_3IdentityEdnzlhpjizj/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
dnzlhpjizj/while/Identity_3╔
dnzlhpjizj/while/Identity_4Identity%dnzlhpjizj/while/hswofenhiy/mul_5:z:03^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
dnzlhpjizj/while/Identity_4╔
dnzlhpjizj/while/Identity_5Identity%dnzlhpjizj/while/hswofenhiy/add_3:z:03^dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2^dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp4^dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp+^dnzlhpjizj/while/hswofenhiy/ReadVariableOp-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1-^dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
dnzlhpjizj/while/Identity_5"\
+dnzlhpjizj_while_dnzlhpjizj_strided_slice_1-dnzlhpjizj_while_dnzlhpjizj_strided_slice_1_0"|
;dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource=dnzlhpjizj_while_hswofenhiy_biasadd_readvariableop_resource_0"~
<dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource>dnzlhpjizj_while_hswofenhiy_matmul_1_readvariableop_resource_0"z
:dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource<dnzlhpjizj_while_hswofenhiy_matmul_readvariableop_resource_0"p
5dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource7dnzlhpjizj_while_hswofenhiy_readvariableop_1_resource_0"p
5dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource7dnzlhpjizj_while_hswofenhiy_readvariableop_2_resource_0"l
3dnzlhpjizj_while_hswofenhiy_readvariableop_resource5dnzlhpjizj_while_hswofenhiy_readvariableop_resource_0"?
dnzlhpjizj_while_identity"dnzlhpjizj/while/Identity:output:0"C
dnzlhpjizj_while_identity_1$dnzlhpjizj/while/Identity_1:output:0"C
dnzlhpjizj_while_identity_2$dnzlhpjizj/while/Identity_2:output:0"C
dnzlhpjizj_while_identity_3$dnzlhpjizj/while/Identity_3:output:0"C
dnzlhpjizj_while_identity_4$dnzlhpjizj/while/Identity_4:output:0"C
dnzlhpjizj_while_identity_5$dnzlhpjizj/while/Identity_5:output:0"╘
gdnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensoridnzlhpjizj_while_tensorarrayv2read_tensorlistgetitem_dnzlhpjizj_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2dnzlhpjizj/while/hswofenhiy/BiasAdd/ReadVariableOp2f
1dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp1dnzlhpjizj/while/hswofenhiy/MatMul/ReadVariableOp2j
3dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp3dnzlhpjizj/while/hswofenhiy/MatMul_1/ReadVariableOp2X
*dnzlhpjizj/while/hswofenhiy/ReadVariableOp*dnzlhpjizj/while/hswofenhiy/ReadVariableOp2\
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_1,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_12\
,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2,dnzlhpjizj/while/hswofenhiy/ReadVariableOp_2: 
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
Л

э
while_cond_2594814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2594814___redundant_placeholder05
1while_while_cond_2594814___redundant_placeholder15
1while_while_cond_2594814___redundant_placeholder25
1while_while_cond_2594814___redundant_placeholder35
1while_while_cond_2594814___redundant_placeholder45
1while_while_cond_2594814___redundant_placeholder55
1while_while_cond_2594814___redundant_placeholder6
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
╙	
°
G__inference_chsgvefspq_layer_call_and_return_conditional_losses_2595664

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
ч)
╥
while_body_2594057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_hswofenhiy_2594081_0:	А-
while_hswofenhiy_2594083_0:	 А)
while_hswofenhiy_2594085_0:	А(
while_hswofenhiy_2594087_0: (
while_hswofenhiy_2594089_0: (
while_hswofenhiy_2594091_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_hswofenhiy_2594081:	А+
while_hswofenhiy_2594083:	 А'
while_hswofenhiy_2594085:	А&
while_hswofenhiy_2594087: &
while_hswofenhiy_2594089: &
while_hswofenhiy_2594091: Ив(while/hswofenhiy/StatefulPartitionedCall├
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
)while/TensorArrayV2Read/TensorListGetItem╢
(while/hswofenhiy/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_hswofenhiy_2594081_0while_hswofenhiy_2594083_0while_hswofenhiy_2594085_0while_hswofenhiy_2594087_0while_hswofenhiy_2594089_0while_hswofenhiy_2594091_0*
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
GPU2*0J 8В *P
fKRI
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_25939612*
(while/hswofenhiy/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/hswofenhiy/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/hswofenhiy/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/hswofenhiy/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/hswofenhiy/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/hswofenhiy/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/hswofenhiy/StatefulPartitionedCall:output:1)^while/hswofenhiy/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/hswofenhiy/StatefulPartitionedCall:output:2)^while/hswofenhiy/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5"6
while_hswofenhiy_2594081while_hswofenhiy_2594081_0"6
while_hswofenhiy_2594083while_hswofenhiy_2594083_0"6
while_hswofenhiy_2594085while_hswofenhiy_2594085_0"6
while_hswofenhiy_2594087while_hswofenhiy_2594087_0"6
while_hswofenhiy_2594089while_hswofenhiy_2594089_0"6
while_hswofenhiy_2594091while_hswofenhiy_2594091_0")
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
(while/hswofenhiy/StatefulPartitionedCall(while/hswofenhiy/StatefulPartitionedCall: 
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
Щp
╩
nyosplwtfa_while_body_25971402
.nyosplwtfa_while_nyosplwtfa_while_loop_counter8
4nyosplwtfa_while_nyosplwtfa_while_maximum_iterations 
nyosplwtfa_while_placeholder"
nyosplwtfa_while_placeholder_1"
nyosplwtfa_while_placeholder_2"
nyosplwtfa_while_placeholder_31
-nyosplwtfa_while_nyosplwtfa_strided_slice_1_0m
inyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_nyosplwtfa_tensorarrayunstack_tensorlistfromtensor_0O
<nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource_0:	 АQ
>nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource_0:	 АL
=nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource_0:	АC
5nyosplwtfa_while_lwptfvtmlx_readvariableop_resource_0: E
7nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource_0: E
7nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource_0: 
nyosplwtfa_while_identity
nyosplwtfa_while_identity_1
nyosplwtfa_while_identity_2
nyosplwtfa_while_identity_3
nyosplwtfa_while_identity_4
nyosplwtfa_while_identity_5/
+nyosplwtfa_while_nyosplwtfa_strided_slice_1k
gnyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_nyosplwtfa_tensorarrayunstack_tensorlistfromtensorM
:nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource:	 АO
<nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource:	 АJ
;nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource:	АA
3nyosplwtfa_while_lwptfvtmlx_readvariableop_resource: C
5nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource: C
5nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource: Ив2nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOpв1nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOpв3nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOpв*nyosplwtfa/while/lwptfvtmlx/ReadVariableOpв,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1в,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2┘
Bnyosplwtfa/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bnyosplwtfa/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4nyosplwtfa/while/TensorArrayV2Read/TensorListGetItemTensorListGetIteminyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_nyosplwtfa_tensorarrayunstack_tensorlistfromtensor_0nyosplwtfa_while_placeholderKnyosplwtfa/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype026
4nyosplwtfa/while/TensorArrayV2Read/TensorListGetItemф
1nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp<nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype023
1nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp¤
"nyosplwtfa/while/lwptfvtmlx/MatMulMatMul;nyosplwtfa/while/TensorArrayV2Read/TensorListGetItem:item:09nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"nyosplwtfa/while/lwptfvtmlx/MatMulъ
3nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp>nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOpц
$nyosplwtfa/while/lwptfvtmlx/MatMul_1MatMulnyosplwtfa_while_placeholder_2;nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$nyosplwtfa/while/lwptfvtmlx/MatMul_1▄
nyosplwtfa/while/lwptfvtmlx/addAddV2,nyosplwtfa/while/lwptfvtmlx/MatMul:product:0.nyosplwtfa/while/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
nyosplwtfa/while/lwptfvtmlx/addу
2nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp=nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOpщ
#nyosplwtfa/while/lwptfvtmlx/BiasAddBiasAdd#nyosplwtfa/while/lwptfvtmlx/add:z:0:nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#nyosplwtfa/while/lwptfvtmlx/BiasAddЬ
+nyosplwtfa/while/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+nyosplwtfa/while/lwptfvtmlx/split/split_dimп
!nyosplwtfa/while/lwptfvtmlx/splitSplit4nyosplwtfa/while/lwptfvtmlx/split/split_dim:output:0,nyosplwtfa/while/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!nyosplwtfa/while/lwptfvtmlx/split╩
*nyosplwtfa/while/lwptfvtmlx/ReadVariableOpReadVariableOp5nyosplwtfa_while_lwptfvtmlx_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*nyosplwtfa/while/lwptfvtmlx/ReadVariableOp╧
nyosplwtfa/while/lwptfvtmlx/mulMul2nyosplwtfa/while/lwptfvtmlx/ReadVariableOp:value:0nyosplwtfa_while_placeholder_3*
T0*'
_output_shapes
:          2!
nyosplwtfa/while/lwptfvtmlx/mul╥
!nyosplwtfa/while/lwptfvtmlx/add_1AddV2*nyosplwtfa/while/lwptfvtmlx/split:output:0#nyosplwtfa/while/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/add_1о
#nyosplwtfa/while/lwptfvtmlx/SigmoidSigmoid%nyosplwtfa/while/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2%
#nyosplwtfa/while/lwptfvtmlx/Sigmoid╨
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1ReadVariableOp7nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1╒
!nyosplwtfa/while/lwptfvtmlx/mul_1Mul4nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1:value:0nyosplwtfa_while_placeholder_3*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/mul_1╘
!nyosplwtfa/while/lwptfvtmlx/add_2AddV2*nyosplwtfa/while/lwptfvtmlx/split:output:1%nyosplwtfa/while/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/add_2▓
%nyosplwtfa/while/lwptfvtmlx/Sigmoid_1Sigmoid%nyosplwtfa/while/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2'
%nyosplwtfa/while/lwptfvtmlx/Sigmoid_1╩
!nyosplwtfa/while/lwptfvtmlx/mul_2Mul)nyosplwtfa/while/lwptfvtmlx/Sigmoid_1:y:0nyosplwtfa_while_placeholder_3*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/mul_2к
 nyosplwtfa/while/lwptfvtmlx/TanhTanh*nyosplwtfa/while/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2"
 nyosplwtfa/while/lwptfvtmlx/Tanh╬
!nyosplwtfa/while/lwptfvtmlx/mul_3Mul'nyosplwtfa/while/lwptfvtmlx/Sigmoid:y:0$nyosplwtfa/while/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/mul_3╧
!nyosplwtfa/while/lwptfvtmlx/add_3AddV2%nyosplwtfa/while/lwptfvtmlx/mul_2:z:0%nyosplwtfa/while/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/add_3╨
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2ReadVariableOp7nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2▄
!nyosplwtfa/while/lwptfvtmlx/mul_4Mul4nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2:value:0%nyosplwtfa/while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/mul_4╘
!nyosplwtfa/while/lwptfvtmlx/add_4AddV2*nyosplwtfa/while/lwptfvtmlx/split:output:3%nyosplwtfa/while/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/add_4▓
%nyosplwtfa/while/lwptfvtmlx/Sigmoid_2Sigmoid%nyosplwtfa/while/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2'
%nyosplwtfa/while/lwptfvtmlx/Sigmoid_2й
"nyosplwtfa/while/lwptfvtmlx/Tanh_1Tanh%nyosplwtfa/while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2$
"nyosplwtfa/while/lwptfvtmlx/Tanh_1╥
!nyosplwtfa/while/lwptfvtmlx/mul_5Mul)nyosplwtfa/while/lwptfvtmlx/Sigmoid_2:y:0&nyosplwtfa/while/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/mul_5Х
5nyosplwtfa/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemnyosplwtfa_while_placeholder_1nyosplwtfa_while_placeholder%nyosplwtfa/while/lwptfvtmlx/mul_5:z:0*
_output_shapes
: *
element_dtype027
5nyosplwtfa/while/TensorArrayV2Write/TensorListSetItemr
nyosplwtfa/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
nyosplwtfa/while/add/yХ
nyosplwtfa/while/addAddV2nyosplwtfa_while_placeholdernyosplwtfa/while/add/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/while/addv
nyosplwtfa/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
nyosplwtfa/while/add_1/yн
nyosplwtfa/while/add_1AddV2.nyosplwtfa_while_nyosplwtfa_while_loop_counter!nyosplwtfa/while/add_1/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/while/add_1й
nyosplwtfa/while/IdentityIdentitynyosplwtfa/while/add_1:z:03^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
nyosplwtfa/while/Identity╟
nyosplwtfa/while/Identity_1Identity4nyosplwtfa_while_nyosplwtfa_while_maximum_iterations3^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
nyosplwtfa/while/Identity_1л
nyosplwtfa/while/Identity_2Identitynyosplwtfa/while/add:z:03^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
nyosplwtfa/while/Identity_2╪
nyosplwtfa/while/Identity_3IdentityEnyosplwtfa/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
nyosplwtfa/while/Identity_3╔
nyosplwtfa/while/Identity_4Identity%nyosplwtfa/while/lwptfvtmlx/mul_5:z:03^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2
nyosplwtfa/while/Identity_4╔
nyosplwtfa/while/Identity_5Identity%nyosplwtfa/while/lwptfvtmlx/add_3:z:03^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2
nyosplwtfa/while/Identity_5"?
nyosplwtfa_while_identity"nyosplwtfa/while/Identity:output:0"C
nyosplwtfa_while_identity_1$nyosplwtfa/while/Identity_1:output:0"C
nyosplwtfa_while_identity_2$nyosplwtfa/while/Identity_2:output:0"C
nyosplwtfa_while_identity_3$nyosplwtfa/while/Identity_3:output:0"C
nyosplwtfa_while_identity_4$nyosplwtfa/while/Identity_4:output:0"C
nyosplwtfa_while_identity_5$nyosplwtfa/while/Identity_5:output:0"|
;nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource=nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource_0"~
<nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource>nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource_0"z
:nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource<nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource_0"p
5nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource7nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource_0"p
5nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource7nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource_0"l
3nyosplwtfa_while_lwptfvtmlx_readvariableop_resource5nyosplwtfa_while_lwptfvtmlx_readvariableop_resource_0"\
+nyosplwtfa_while_nyosplwtfa_strided_slice_1-nyosplwtfa_while_nyosplwtfa_strided_slice_1_0"╘
gnyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_nyosplwtfa_tensorarrayunstack_tensorlistfromtensorinyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_nyosplwtfa_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2f
1nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp1nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp2j
3nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp3nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp2X
*nyosplwtfa/while/lwptfvtmlx/ReadVariableOp*nyosplwtfa/while/lwptfvtmlx/ReadVariableOp2\
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_12\
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2: 
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
Л

э
while_cond_2597643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2597643___redundant_placeholder05
1while_while_cond_2597643___redundant_placeholder15
1while_while_cond_2597643___redundant_placeholder25
1while_while_cond_2597643___redundant_placeholder35
1while_while_cond_2597643___redundant_placeholder45
1while_while_cond_2597643___redundant_placeholder55
1while_while_cond_2597643___redundant_placeholder6
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
▒'
│
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_2593774

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
рY
З
while_body_2596028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_hswofenhiy_matmul_readvariableop_resource_0:	АF
3while_hswofenhiy_matmul_1_readvariableop_resource_0:	 АA
2while_hswofenhiy_biasadd_readvariableop_resource_0:	А8
*while_hswofenhiy_readvariableop_resource_0: :
,while_hswofenhiy_readvariableop_1_resource_0: :
,while_hswofenhiy_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_hswofenhiy_matmul_readvariableop_resource:	АD
1while_hswofenhiy_matmul_1_readvariableop_resource:	 А?
0while_hswofenhiy_biasadd_readvariableop_resource:	А6
(while_hswofenhiy_readvariableop_resource: 8
*while_hswofenhiy_readvariableop_1_resource: 8
*while_hswofenhiy_readvariableop_2_resource: Ив'while/hswofenhiy/BiasAdd/ReadVariableOpв&while/hswofenhiy/MatMul/ReadVariableOpв(while/hswofenhiy/MatMul_1/ReadVariableOpвwhile/hswofenhiy/ReadVariableOpв!while/hswofenhiy/ReadVariableOp_1в!while/hswofenhiy/ReadVariableOp_2├
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
&while/hswofenhiy/MatMul/ReadVariableOpReadVariableOp1while_hswofenhiy_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/hswofenhiy/MatMul/ReadVariableOp╤
while/hswofenhiy/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul╔
(while/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp3while_hswofenhiy_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/hswofenhiy/MatMul_1/ReadVariableOp║
while/hswofenhiy/MatMul_1MatMulwhile_placeholder_20while/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul_1░
while/hswofenhiy/addAddV2!while/hswofenhiy/MatMul:product:0#while/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/add┬
'while/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp2while_hswofenhiy_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/hswofenhiy/BiasAdd/ReadVariableOp╜
while/hswofenhiy/BiasAddBiasAddwhile/hswofenhiy/add:z:0/while/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/BiasAddЖ
 while/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/hswofenhiy/split/split_dimГ
while/hswofenhiy/splitSplit)while/hswofenhiy/split/split_dim:output:0!while/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/hswofenhiy/splitй
while/hswofenhiy/ReadVariableOpReadVariableOp*while_hswofenhiy_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/hswofenhiy/ReadVariableOpг
while/hswofenhiy/mulMul'while/hswofenhiy/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mulж
while/hswofenhiy/add_1AddV2while/hswofenhiy/split:output:0while/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_1Н
while/hswofenhiy/SigmoidSigmoidwhile/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoidп
!while/hswofenhiy/ReadVariableOp_1ReadVariableOp,while_hswofenhiy_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_1й
while/hswofenhiy/mul_1Mul)while/hswofenhiy/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_1и
while/hswofenhiy/add_2AddV2while/hswofenhiy/split:output:1while/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_2С
while/hswofenhiy/Sigmoid_1Sigmoidwhile/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_1Ю
while/hswofenhiy/mul_2Mulwhile/hswofenhiy/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_2Й
while/hswofenhiy/TanhTanhwhile/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanhв
while/hswofenhiy/mul_3Mulwhile/hswofenhiy/Sigmoid:y:0while/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_3г
while/hswofenhiy/add_3AddV2while/hswofenhiy/mul_2:z:0while/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_3п
!while/hswofenhiy/ReadVariableOp_2ReadVariableOp,while_hswofenhiy_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_2░
while/hswofenhiy/mul_4Mul)while/hswofenhiy/ReadVariableOp_2:value:0while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_4и
while/hswofenhiy/add_4AddV2while/hswofenhiy/split:output:3while/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_4С
while/hswofenhiy/Sigmoid_2Sigmoidwhile/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_2И
while/hswofenhiy/Tanh_1Tanhwhile/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanh_1ж
while/hswofenhiy/mul_5Mulwhile/hswofenhiy/Sigmoid_2:y:0while/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/hswofenhiy/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/hswofenhiy/mul_5:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/hswofenhiy/add_3:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_hswofenhiy_biasadd_readvariableop_resource2while_hswofenhiy_biasadd_readvariableop_resource_0"h
1while_hswofenhiy_matmul_1_readvariableop_resource3while_hswofenhiy_matmul_1_readvariableop_resource_0"d
/while_hswofenhiy_matmul_readvariableop_resource1while_hswofenhiy_matmul_readvariableop_resource_0"Z
*while_hswofenhiy_readvariableop_1_resource,while_hswofenhiy_readvariableop_1_resource_0"Z
*while_hswofenhiy_readvariableop_2_resource,while_hswofenhiy_readvariableop_2_resource_0"V
(while_hswofenhiy_readvariableop_resource*while_hswofenhiy_readvariableop_resource_0")
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
'while/hswofenhiy/BiasAdd/ReadVariableOp'while/hswofenhiy/BiasAdd/ReadVariableOp2P
&while/hswofenhiy/MatMul/ReadVariableOp&while/hswofenhiy/MatMul/ReadVariableOp2T
(while/hswofenhiy/MatMul_1/ReadVariableOp(while/hswofenhiy/MatMul_1/ReadVariableOp2B
while/hswofenhiy/ReadVariableOpwhile/hswofenhiy/ReadVariableOp2F
!while/hswofenhiy/ReadVariableOp_1!while/hswofenhiy/ReadVariableOp_12F
!while/hswofenhiy/ReadVariableOp_2!while/hswofenhiy/ReadVariableOp_2: 
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
╙
Д
,__inference_nyosplwtfa_layer_call_fn_2598961

inputs
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCallо
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
GPU2*0J 8В *P
fKRI
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_25959152
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
ы
Ж
,__inference_nyosplwtfa_layer_call_fn_2598927
inputs_0
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCall░
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
GPU2*0J 8В *P
fKRI
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_25948952
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
жh
Е
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2595640

inputs<
)lwptfvtmlx_matmul_readvariableop_resource:	 А>
+lwptfvtmlx_matmul_1_readvariableop_resource:	 А9
*lwptfvtmlx_biasadd_readvariableop_resource:	А0
"lwptfvtmlx_readvariableop_resource: 2
$lwptfvtmlx_readvariableop_1_resource: 2
$lwptfvtmlx_readvariableop_2_resource: 
identityИв!lwptfvtmlx/BiasAdd/ReadVariableOpв lwptfvtmlx/MatMul/ReadVariableOpв"lwptfvtmlx/MatMul_1/ReadVariableOpвlwptfvtmlx/ReadVariableOpвlwptfvtmlx/ReadVariableOp_1вlwptfvtmlx/ReadVariableOp_2вwhileD
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
 lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp)lwptfvtmlx_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 lwptfvtmlx/MatMul/ReadVariableOpз
lwptfvtmlx/MatMulMatMulstrided_slice_2:output:0(lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul╡
"lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp+lwptfvtmlx_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"lwptfvtmlx/MatMul_1/ReadVariableOpг
lwptfvtmlx/MatMul_1MatMulzeros:output:0*lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul_1Ш
lwptfvtmlx/addAddV2lwptfvtmlx/MatMul:product:0lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/addо
!lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp*lwptfvtmlx_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!lwptfvtmlx/BiasAdd/ReadVariableOpе
lwptfvtmlx/BiasAddBiasAddlwptfvtmlx/add:z:0)lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/BiasAddz
lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lwptfvtmlx/split/split_dimы
lwptfvtmlx/splitSplit#lwptfvtmlx/split/split_dim:output:0lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lwptfvtmlx/splitХ
lwptfvtmlx/ReadVariableOpReadVariableOp"lwptfvtmlx_readvariableop_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOpО
lwptfvtmlx/mulMul!lwptfvtmlx/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mulО
lwptfvtmlx/add_1AddV2lwptfvtmlx/split:output:0lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_1{
lwptfvtmlx/SigmoidSigmoidlwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/SigmoidЫ
lwptfvtmlx/ReadVariableOp_1ReadVariableOp$lwptfvtmlx_readvariableop_1_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_1Ф
lwptfvtmlx/mul_1Mul#lwptfvtmlx/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_1Р
lwptfvtmlx/add_2AddV2lwptfvtmlx/split:output:1lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_2
lwptfvtmlx/Sigmoid_1Sigmoidlwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_1Й
lwptfvtmlx/mul_2Mullwptfvtmlx/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_2w
lwptfvtmlx/TanhTanhlwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
lwptfvtmlx/TanhК
lwptfvtmlx/mul_3Mullwptfvtmlx/Sigmoid:y:0lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_3Л
lwptfvtmlx/add_3AddV2lwptfvtmlx/mul_2:z:0lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_3Ы
lwptfvtmlx/ReadVariableOp_2ReadVariableOp$lwptfvtmlx_readvariableop_2_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_2Ш
lwptfvtmlx/mul_4Mul#lwptfvtmlx/ReadVariableOp_2:value:0lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_4Р
lwptfvtmlx/add_4AddV2lwptfvtmlx/split:output:3lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_4
lwptfvtmlx/Sigmoid_2Sigmoidlwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_2v
lwptfvtmlx/Tanh_1Tanhlwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Tanh_1О
lwptfvtmlx/mul_5Mullwptfvtmlx/Sigmoid_2:y:0lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lwptfvtmlx_matmul_readvariableop_resource+lwptfvtmlx_matmul_1_readvariableop_resource*lwptfvtmlx_biasadd_readvariableop_resource"lwptfvtmlx_readvariableop_resource$lwptfvtmlx_readvariableop_1_resource$lwptfvtmlx_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2595539*
condR
while_cond_2595538*Q
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
IdentityIdentitystrided_slice_3:output:0"^lwptfvtmlx/BiasAdd/ReadVariableOp!^lwptfvtmlx/MatMul/ReadVariableOp#^lwptfvtmlx/MatMul_1/ReadVariableOp^lwptfvtmlx/ReadVariableOp^lwptfvtmlx/ReadVariableOp_1^lwptfvtmlx/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!lwptfvtmlx/BiasAdd/ReadVariableOp!lwptfvtmlx/BiasAdd/ReadVariableOp2D
 lwptfvtmlx/MatMul/ReadVariableOp lwptfvtmlx/MatMul/ReadVariableOp2H
"lwptfvtmlx/MatMul_1/ReadVariableOp"lwptfvtmlx/MatMul_1/ReadVariableOp26
lwptfvtmlx/ReadVariableOplwptfvtmlx/ReadVariableOp2:
lwptfvtmlx/ReadVariableOp_1lwptfvtmlx/ReadVariableOp_12:
lwptfvtmlx/ReadVariableOp_2lwptfvtmlx/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
Ып
З
#__inference__traced_restore_2599515
file_prefix8
"assignvariableop_gtjikcltwy_kernel:0
"assignvariableop_1_gtjikcltwy_bias:6
$assignvariableop_2_chsgvefspq_kernel: 0
"assignvariableop_3_chsgvefspq_bias:)
assignvariableop_4_rmsprop_iter:	 *
 assignvariableop_5_rmsprop_decay: 2
(assignvariableop_6_rmsprop_learning_rate: -
#assignvariableop_7_rmsprop_momentum: (
assignvariableop_8_rmsprop_rho: B
/assignvariableop_9_dnzlhpjizj_hswofenhiy_kernel:	АM
:assignvariableop_10_dnzlhpjizj_hswofenhiy_recurrent_kernel:	 А=
.assignvariableop_11_dnzlhpjizj_hswofenhiy_bias:	АS
Eassignvariableop_12_dnzlhpjizj_hswofenhiy_input_gate_peephole_weights: T
Fassignvariableop_13_dnzlhpjizj_hswofenhiy_forget_gate_peephole_weights: T
Fassignvariableop_14_dnzlhpjizj_hswofenhiy_output_gate_peephole_weights: C
0assignvariableop_15_nyosplwtfa_lwptfvtmlx_kernel:	 АM
:assignvariableop_16_nyosplwtfa_lwptfvtmlx_recurrent_kernel:	 А=
.assignvariableop_17_nyosplwtfa_lwptfvtmlx_bias:	АS
Eassignvariableop_18_nyosplwtfa_lwptfvtmlx_input_gate_peephole_weights: T
Fassignvariableop_19_nyosplwtfa_lwptfvtmlx_forget_gate_peephole_weights: T
Fassignvariableop_20_nyosplwtfa_lwptfvtmlx_output_gate_peephole_weights: #
assignvariableop_21_total: #
assignvariableop_22_count: G
1assignvariableop_23_rmsprop_gtjikcltwy_kernel_rms:=
/assignvariableop_24_rmsprop_gtjikcltwy_bias_rms:C
1assignvariableop_25_rmsprop_chsgvefspq_kernel_rms: =
/assignvariableop_26_rmsprop_chsgvefspq_bias_rms:O
<assignvariableop_27_rmsprop_dnzlhpjizj_hswofenhiy_kernel_rms:	АY
Fassignvariableop_28_rmsprop_dnzlhpjizj_hswofenhiy_recurrent_kernel_rms:	 АI
:assignvariableop_29_rmsprop_dnzlhpjizj_hswofenhiy_bias_rms:	А_
Qassignvariableop_30_rmsprop_dnzlhpjizj_hswofenhiy_input_gate_peephole_weights_rms: `
Rassignvariableop_31_rmsprop_dnzlhpjizj_hswofenhiy_forget_gate_peephole_weights_rms: `
Rassignvariableop_32_rmsprop_dnzlhpjizj_hswofenhiy_output_gate_peephole_weights_rms: O
<assignvariableop_33_rmsprop_nyosplwtfa_lwptfvtmlx_kernel_rms:	 АY
Fassignvariableop_34_rmsprop_nyosplwtfa_lwptfvtmlx_recurrent_kernel_rms:	 АI
:assignvariableop_35_rmsprop_nyosplwtfa_lwptfvtmlx_bias_rms:	А_
Qassignvariableop_36_rmsprop_nyosplwtfa_lwptfvtmlx_input_gate_peephole_weights_rms: `
Rassignvariableop_37_rmsprop_nyosplwtfa_lwptfvtmlx_forget_gate_peephole_weights_rms: `
Rassignvariableop_38_rmsprop_nyosplwtfa_lwptfvtmlx_output_gate_peephole_weights_rms: 
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
AssignVariableOpAssignVariableOp"assignvariableop_gtjikcltwy_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1з
AssignVariableOp_1AssignVariableOp"assignvariableop_1_gtjikcltwy_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2й
AssignVariableOp_2AssignVariableOp$assignvariableop_2_chsgvefspq_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3з
AssignVariableOp_3AssignVariableOp"assignvariableop_3_chsgvefspq_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp/assignvariableop_9_dnzlhpjizj_hswofenhiy_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10┬
AssignVariableOp_10AssignVariableOp:assignvariableop_10_dnzlhpjizj_hswofenhiy_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11╢
AssignVariableOp_11AssignVariableOp.assignvariableop_11_dnzlhpjizj_hswofenhiy_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12═
AssignVariableOp_12AssignVariableOpEassignvariableop_12_dnzlhpjizj_hswofenhiy_input_gate_peephole_weightsIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13╬
AssignVariableOp_13AssignVariableOpFassignvariableop_13_dnzlhpjizj_hswofenhiy_forget_gate_peephole_weightsIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14╬
AssignVariableOp_14AssignVariableOpFassignvariableop_14_dnzlhpjizj_hswofenhiy_output_gate_peephole_weightsIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15╕
AssignVariableOp_15AssignVariableOp0assignvariableop_15_nyosplwtfa_lwptfvtmlx_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16┬
AssignVariableOp_16AssignVariableOp:assignvariableop_16_nyosplwtfa_lwptfvtmlx_recurrent_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17╢
AssignVariableOp_17AssignVariableOp.assignvariableop_17_nyosplwtfa_lwptfvtmlx_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18═
AssignVariableOp_18AssignVariableOpEassignvariableop_18_nyosplwtfa_lwptfvtmlx_input_gate_peephole_weightsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19╬
AssignVariableOp_19AssignVariableOpFassignvariableop_19_nyosplwtfa_lwptfvtmlx_forget_gate_peephole_weightsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╬
AssignVariableOp_20AssignVariableOpFassignvariableop_20_nyosplwtfa_lwptfvtmlx_output_gate_peephole_weightsIdentity_20:output:0"/device:CPU:0*
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
AssignVariableOp_23AssignVariableOp1assignvariableop_23_rmsprop_gtjikcltwy_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24╖
AssignVariableOp_24AssignVariableOp/assignvariableop_24_rmsprop_gtjikcltwy_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25╣
AssignVariableOp_25AssignVariableOp1assignvariableop_25_rmsprop_chsgvefspq_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╖
AssignVariableOp_26AssignVariableOp/assignvariableop_26_rmsprop_chsgvefspq_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27─
AssignVariableOp_27AssignVariableOp<assignvariableop_27_rmsprop_dnzlhpjizj_hswofenhiy_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28╬
AssignVariableOp_28AssignVariableOpFassignvariableop_28_rmsprop_dnzlhpjizj_hswofenhiy_recurrent_kernel_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29┬
AssignVariableOp_29AssignVariableOp:assignvariableop_29_rmsprop_dnzlhpjizj_hswofenhiy_bias_rmsIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30┘
AssignVariableOp_30AssignVariableOpQassignvariableop_30_rmsprop_dnzlhpjizj_hswofenhiy_input_gate_peephole_weights_rmsIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31┌
AssignVariableOp_31AssignVariableOpRassignvariableop_31_rmsprop_dnzlhpjizj_hswofenhiy_forget_gate_peephole_weights_rmsIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32┌
AssignVariableOp_32AssignVariableOpRassignvariableop_32_rmsprop_dnzlhpjizj_hswofenhiy_output_gate_peephole_weights_rmsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33─
AssignVariableOp_33AssignVariableOp<assignvariableop_33_rmsprop_nyosplwtfa_lwptfvtmlx_kernel_rmsIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34╬
AssignVariableOp_34AssignVariableOpFassignvariableop_34_rmsprop_nyosplwtfa_lwptfvtmlx_recurrent_kernel_rmsIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35┬
AssignVariableOp_35AssignVariableOp:assignvariableop_35_rmsprop_nyosplwtfa_lwptfvtmlx_bias_rmsIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36┘
AssignVariableOp_36AssignVariableOpQassignvariableop_36_rmsprop_nyosplwtfa_lwptfvtmlx_input_gate_peephole_weights_rmsIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37┌
AssignVariableOp_37AssignVariableOpRassignvariableop_37_rmsprop_nyosplwtfa_lwptfvtmlx_forget_gate_peephole_weights_rmsIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38┌
AssignVariableOp_38AssignVariableOpRassignvariableop_38_rmsprop_nyosplwtfa_lwptfvtmlx_output_gate_peephole_weights_rmsIdentity_38:output:0"/device:CPU:0*
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
Ъ
c
G__inference_ezubtmdnwx_layer_call_and_return_conditional_losses_2595266

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
Л

э
while_cond_2598003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2598003___redundant_placeholder05
1while_while_cond_2598003___redundant_placeholder15
1while_while_cond_2598003___redundant_placeholder25
1while_while_cond_2598003___redundant_placeholder35
1while_while_cond_2598003___redundant_placeholder45
1while_while_cond_2598003___redundant_placeholder55
1while_while_cond_2598003___redundant_placeholder6
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
бh
Е
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2596129

inputs<
)hswofenhiy_matmul_readvariableop_resource:	А>
+hswofenhiy_matmul_1_readvariableop_resource:	 А9
*hswofenhiy_biasadd_readvariableop_resource:	А0
"hswofenhiy_readvariableop_resource: 2
$hswofenhiy_readvariableop_1_resource: 2
$hswofenhiy_readvariableop_2_resource: 
identityИв!hswofenhiy/BiasAdd/ReadVariableOpв hswofenhiy/MatMul/ReadVariableOpв"hswofenhiy/MatMul_1/ReadVariableOpвhswofenhiy/ReadVariableOpвhswofenhiy/ReadVariableOp_1вhswofenhiy/ReadVariableOp_2вwhileD
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
 hswofenhiy/MatMul/ReadVariableOpReadVariableOp)hswofenhiy_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 hswofenhiy/MatMul/ReadVariableOpз
hswofenhiy/MatMulMatMulstrided_slice_2:output:0(hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul╡
"hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp+hswofenhiy_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"hswofenhiy/MatMul_1/ReadVariableOpг
hswofenhiy/MatMul_1MatMulzeros:output:0*hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul_1Ш
hswofenhiy/addAddV2hswofenhiy/MatMul:product:0hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
hswofenhiy/addо
!hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp*hswofenhiy_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!hswofenhiy/BiasAdd/ReadVariableOpе
hswofenhiy/BiasAddBiasAddhswofenhiy/add:z:0)hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/BiasAddz
hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
hswofenhiy/split/split_dimы
hswofenhiy/splitSplit#hswofenhiy/split/split_dim:output:0hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
hswofenhiy/splitХ
hswofenhiy/ReadVariableOpReadVariableOp"hswofenhiy_readvariableop_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOpО
hswofenhiy/mulMul!hswofenhiy/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mulО
hswofenhiy/add_1AddV2hswofenhiy/split:output:0hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_1{
hswofenhiy/SigmoidSigmoidhswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/SigmoidЫ
hswofenhiy/ReadVariableOp_1ReadVariableOp$hswofenhiy_readvariableop_1_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_1Ф
hswofenhiy/mul_1Mul#hswofenhiy/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_1Р
hswofenhiy/add_2AddV2hswofenhiy/split:output:1hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_2
hswofenhiy/Sigmoid_1Sigmoidhswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_1Й
hswofenhiy/mul_2Mulhswofenhiy/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_2w
hswofenhiy/TanhTanhhswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
hswofenhiy/TanhК
hswofenhiy/mul_3Mulhswofenhiy/Sigmoid:y:0hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_3Л
hswofenhiy/add_3AddV2hswofenhiy/mul_2:z:0hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_3Ы
hswofenhiy/ReadVariableOp_2ReadVariableOp$hswofenhiy_readvariableop_2_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_2Ш
hswofenhiy/mul_4Mul#hswofenhiy/ReadVariableOp_2:value:0hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_4Р
hswofenhiy/add_4AddV2hswofenhiy/split:output:3hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_4
hswofenhiy/Sigmoid_2Sigmoidhswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_2v
hswofenhiy/Tanh_1Tanhhswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Tanh_1О
hswofenhiy/mul_5Mulhswofenhiy/Sigmoid_2:y:0hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)hswofenhiy_matmul_readvariableop_resource+hswofenhiy_matmul_1_readvariableop_resource*hswofenhiy_biasadd_readvariableop_resource"hswofenhiy_readvariableop_resource$hswofenhiy_readvariableop_1_resource$hswofenhiy_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2596028*
condR
while_cond_2596027*Q
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
IdentityIdentitytranspose_1:y:0"^hswofenhiy/BiasAdd/ReadVariableOp!^hswofenhiy/MatMul/ReadVariableOp#^hswofenhiy/MatMul_1/ReadVariableOp^hswofenhiy/ReadVariableOp^hswofenhiy/ReadVariableOp_1^hswofenhiy/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!hswofenhiy/BiasAdd/ReadVariableOp!hswofenhiy/BiasAdd/ReadVariableOp2D
 hswofenhiy/MatMul/ReadVariableOp hswofenhiy/MatMul/ReadVariableOp2H
"hswofenhiy/MatMul_1/ReadVariableOp"hswofenhiy/MatMul_1/ReadVariableOp26
hswofenhiy/ReadVariableOphswofenhiy/ReadVariableOp2:
hswofenhiy/ReadVariableOp_1hswofenhiy/ReadVariableOp_12:
hswofenhiy/ReadVariableOp_2hswofenhiy/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
бh
Е
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2595447

inputs<
)hswofenhiy_matmul_readvariableop_resource:	А>
+hswofenhiy_matmul_1_readvariableop_resource:	 А9
*hswofenhiy_biasadd_readvariableop_resource:	А0
"hswofenhiy_readvariableop_resource: 2
$hswofenhiy_readvariableop_1_resource: 2
$hswofenhiy_readvariableop_2_resource: 
identityИв!hswofenhiy/BiasAdd/ReadVariableOpв hswofenhiy/MatMul/ReadVariableOpв"hswofenhiy/MatMul_1/ReadVariableOpвhswofenhiy/ReadVariableOpвhswofenhiy/ReadVariableOp_1вhswofenhiy/ReadVariableOp_2вwhileD
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
 hswofenhiy/MatMul/ReadVariableOpReadVariableOp)hswofenhiy_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 hswofenhiy/MatMul/ReadVariableOpз
hswofenhiy/MatMulMatMulstrided_slice_2:output:0(hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul╡
"hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp+hswofenhiy_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"hswofenhiy/MatMul_1/ReadVariableOpг
hswofenhiy/MatMul_1MatMulzeros:output:0*hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul_1Ш
hswofenhiy/addAddV2hswofenhiy/MatMul:product:0hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
hswofenhiy/addо
!hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp*hswofenhiy_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!hswofenhiy/BiasAdd/ReadVariableOpе
hswofenhiy/BiasAddBiasAddhswofenhiy/add:z:0)hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/BiasAddz
hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
hswofenhiy/split/split_dimы
hswofenhiy/splitSplit#hswofenhiy/split/split_dim:output:0hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
hswofenhiy/splitХ
hswofenhiy/ReadVariableOpReadVariableOp"hswofenhiy_readvariableop_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOpО
hswofenhiy/mulMul!hswofenhiy/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mulО
hswofenhiy/add_1AddV2hswofenhiy/split:output:0hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_1{
hswofenhiy/SigmoidSigmoidhswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/SigmoidЫ
hswofenhiy/ReadVariableOp_1ReadVariableOp$hswofenhiy_readvariableop_1_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_1Ф
hswofenhiy/mul_1Mul#hswofenhiy/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_1Р
hswofenhiy/add_2AddV2hswofenhiy/split:output:1hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_2
hswofenhiy/Sigmoid_1Sigmoidhswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_1Й
hswofenhiy/mul_2Mulhswofenhiy/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_2w
hswofenhiy/TanhTanhhswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
hswofenhiy/TanhК
hswofenhiy/mul_3Mulhswofenhiy/Sigmoid:y:0hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_3Л
hswofenhiy/add_3AddV2hswofenhiy/mul_2:z:0hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_3Ы
hswofenhiy/ReadVariableOp_2ReadVariableOp$hswofenhiy_readvariableop_2_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_2Ш
hswofenhiy/mul_4Mul#hswofenhiy/ReadVariableOp_2:value:0hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_4Р
hswofenhiy/add_4AddV2hswofenhiy/split:output:3hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_4
hswofenhiy/Sigmoid_2Sigmoidhswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_2v
hswofenhiy/Tanh_1Tanhhswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Tanh_1О
hswofenhiy/mul_5Mulhswofenhiy/Sigmoid_2:y:0hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)hswofenhiy_matmul_readvariableop_resource+hswofenhiy_matmul_1_readvariableop_resource*hswofenhiy_biasadd_readvariableop_resource"hswofenhiy_readvariableop_resource$hswofenhiy_readvariableop_1_resource$hswofenhiy_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2595346*
condR
while_cond_2595345*Q
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
IdentityIdentitytranspose_1:y:0"^hswofenhiy/BiasAdd/ReadVariableOp!^hswofenhiy/MatMul/ReadVariableOp#^hswofenhiy/MatMul_1/ReadVariableOp^hswofenhiy/ReadVariableOp^hswofenhiy/ReadVariableOp_1^hswofenhiy/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!hswofenhiy/BiasAdd/ReadVariableOp!hswofenhiy/BiasAdd/ReadVariableOp2D
 hswofenhiy/MatMul/ReadVariableOp hswofenhiy/MatMul/ReadVariableOp2H
"hswofenhiy/MatMul_1/ReadVariableOp"hswofenhiy/MatMul_1/ReadVariableOp26
hswofenhiy/ReadVariableOphswofenhiy/ReadVariableOp2:
hswofenhiy/ReadVariableOp_1hswofenhiy/ReadVariableOp_12:
hswofenhiy/ReadVariableOp_2hswofenhiy/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
█
Д
,__inference_dnzlhpjizj_layer_call_fn_2598156

inputs
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCall▓
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
GPU2*0J 8В *P
fKRI
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_25954472
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
пF
ъ
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2594632

inputs%
lwptfvtmlx_2594533:	 А%
lwptfvtmlx_2594535:	 А!
lwptfvtmlx_2594537:	А 
lwptfvtmlx_2594539:  
lwptfvtmlx_2594541:  
lwptfvtmlx_2594543: 
identityИв"lwptfvtmlx/StatefulPartitionedCallвwhileD
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
strided_slice_2┌
"lwptfvtmlx/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lwptfvtmlx_2594533lwptfvtmlx_2594535lwptfvtmlx_2594537lwptfvtmlx_2594539lwptfvtmlx_2594541lwptfvtmlx_2594543*
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
GPU2*0J 8В *P
fKRI
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_25945322$
"lwptfvtmlx/StatefulPartitionedCallП
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
while/loop_counterЁ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lwptfvtmlx_2594533lwptfvtmlx_2594535lwptfvtmlx_2594537lwptfvtmlx_2594539lwptfvtmlx_2594541lwptfvtmlx_2594543*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2594552*
condR
while_cond_2594551*Q
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
IdentityIdentitystrided_slice_3:output:0#^lwptfvtmlx/StatefulPartitionedCall^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2H
"lwptfvtmlx/StatefulPartitionedCall"lwptfvtmlx/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
▒'
│
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_2593961

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
Л

э
while_cond_2596027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2596027___redundant_placeholder05
1while_while_cond_2596027___redundant_placeholder15
1while_while_cond_2596027___redundant_placeholder25
1while_while_cond_2596027___redundant_placeholder35
1while_while_cond_2596027___redundant_placeholder45
1while_while_cond_2596027___redundant_placeholder55
1while_while_cond_2596027___redundant_placeholder6
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
Л

э
while_cond_2595538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2595538___redundant_placeholder05
1while_while_cond_2595538___redundant_placeholder15
1while_while_cond_2595538___redundant_placeholder25
1while_while_cond_2595538___redundant_placeholder35
1while_while_cond_2595538___redundant_placeholder45
1while_while_cond_2595538___redundant_placeholder55
1while_while_cond_2595538___redundant_placeholder6
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
рY
З
while_body_2598432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lwptfvtmlx_matmul_readvariableop_resource_0:	 АF
3while_lwptfvtmlx_matmul_1_readvariableop_resource_0:	 АA
2while_lwptfvtmlx_biasadd_readvariableop_resource_0:	А8
*while_lwptfvtmlx_readvariableop_resource_0: :
,while_lwptfvtmlx_readvariableop_1_resource_0: :
,while_lwptfvtmlx_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lwptfvtmlx_matmul_readvariableop_resource:	 АD
1while_lwptfvtmlx_matmul_1_readvariableop_resource:	 А?
0while_lwptfvtmlx_biasadd_readvariableop_resource:	А6
(while_lwptfvtmlx_readvariableop_resource: 8
*while_lwptfvtmlx_readvariableop_1_resource: 8
*while_lwptfvtmlx_readvariableop_2_resource: Ив'while/lwptfvtmlx/BiasAdd/ReadVariableOpв&while/lwptfvtmlx/MatMul/ReadVariableOpв(while/lwptfvtmlx/MatMul_1/ReadVariableOpвwhile/lwptfvtmlx/ReadVariableOpв!while/lwptfvtmlx/ReadVariableOp_1в!while/lwptfvtmlx/ReadVariableOp_2├
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
&while/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp1while_lwptfvtmlx_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/lwptfvtmlx/MatMul/ReadVariableOp╤
while/lwptfvtmlx/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul╔
(while/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp3while_lwptfvtmlx_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/lwptfvtmlx/MatMul_1/ReadVariableOp║
while/lwptfvtmlx/MatMul_1MatMulwhile_placeholder_20while/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul_1░
while/lwptfvtmlx/addAddV2!while/lwptfvtmlx/MatMul:product:0#while/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/add┬
'while/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp2while_lwptfvtmlx_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/lwptfvtmlx/BiasAdd/ReadVariableOp╜
while/lwptfvtmlx/BiasAddBiasAddwhile/lwptfvtmlx/add:z:0/while/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/BiasAddЖ
 while/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/lwptfvtmlx/split/split_dimГ
while/lwptfvtmlx/splitSplit)while/lwptfvtmlx/split/split_dim:output:0!while/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lwptfvtmlx/splitй
while/lwptfvtmlx/ReadVariableOpReadVariableOp*while_lwptfvtmlx_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/lwptfvtmlx/ReadVariableOpг
while/lwptfvtmlx/mulMul'while/lwptfvtmlx/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mulж
while/lwptfvtmlx/add_1AddV2while/lwptfvtmlx/split:output:0while/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_1Н
while/lwptfvtmlx/SigmoidSigmoidwhile/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoidп
!while/lwptfvtmlx/ReadVariableOp_1ReadVariableOp,while_lwptfvtmlx_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_1й
while/lwptfvtmlx/mul_1Mul)while/lwptfvtmlx/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_1и
while/lwptfvtmlx/add_2AddV2while/lwptfvtmlx/split:output:1while/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_2С
while/lwptfvtmlx/Sigmoid_1Sigmoidwhile/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_1Ю
while/lwptfvtmlx/mul_2Mulwhile/lwptfvtmlx/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_2Й
while/lwptfvtmlx/TanhTanhwhile/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanhв
while/lwptfvtmlx/mul_3Mulwhile/lwptfvtmlx/Sigmoid:y:0while/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_3г
while/lwptfvtmlx/add_3AddV2while/lwptfvtmlx/mul_2:z:0while/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_3п
!while/lwptfvtmlx/ReadVariableOp_2ReadVariableOp,while_lwptfvtmlx_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_2░
while/lwptfvtmlx/mul_4Mul)while/lwptfvtmlx/ReadVariableOp_2:value:0while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_4и
while/lwptfvtmlx/add_4AddV2while/lwptfvtmlx/split:output:3while/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_4С
while/lwptfvtmlx/Sigmoid_2Sigmoidwhile/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_2И
while/lwptfvtmlx/Tanh_1Tanhwhile/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanh_1ж
while/lwptfvtmlx/mul_5Mulwhile/lwptfvtmlx/Sigmoid_2:y:0while/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lwptfvtmlx/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/lwptfvtmlx/mul_5:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/lwptfvtmlx/add_3:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
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
0while_lwptfvtmlx_biasadd_readvariableop_resource2while_lwptfvtmlx_biasadd_readvariableop_resource_0"h
1while_lwptfvtmlx_matmul_1_readvariableop_resource3while_lwptfvtmlx_matmul_1_readvariableop_resource_0"d
/while_lwptfvtmlx_matmul_readvariableop_resource1while_lwptfvtmlx_matmul_readvariableop_resource_0"Z
*while_lwptfvtmlx_readvariableop_1_resource,while_lwptfvtmlx_readvariableop_1_resource_0"Z
*while_lwptfvtmlx_readvariableop_2_resource,while_lwptfvtmlx_readvariableop_2_resource_0"V
(while_lwptfvtmlx_readvariableop_resource*while_lwptfvtmlx_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/lwptfvtmlx/BiasAdd/ReadVariableOp'while/lwptfvtmlx/BiasAdd/ReadVariableOp2P
&while/lwptfvtmlx/MatMul/ReadVariableOp&while/lwptfvtmlx/MatMul/ReadVariableOp2T
(while/lwptfvtmlx/MatMul_1/ReadVariableOp(while/lwptfvtmlx/MatMul_1/ReadVariableOp2B
while/lwptfvtmlx/ReadVariableOpwhile/lwptfvtmlx/ReadVariableOp2F
!while/lwptfvtmlx/ReadVariableOp_1!while/lwptfvtmlx/ReadVariableOp_12F
!while/lwptfvtmlx/ReadVariableOp_2!while/lwptfvtmlx/ReadVariableOp_2: 
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
е
й	
(sequential_nyosplwtfa_while_cond_2593579H
Dsequential_nyosplwtfa_while_sequential_nyosplwtfa_while_loop_counterN
Jsequential_nyosplwtfa_while_sequential_nyosplwtfa_while_maximum_iterations+
'sequential_nyosplwtfa_while_placeholder-
)sequential_nyosplwtfa_while_placeholder_1-
)sequential_nyosplwtfa_while_placeholder_2-
)sequential_nyosplwtfa_while_placeholder_3J
Fsequential_nyosplwtfa_while_less_sequential_nyosplwtfa_strided_slice_1a
]sequential_nyosplwtfa_while_sequential_nyosplwtfa_while_cond_2593579___redundant_placeholder0a
]sequential_nyosplwtfa_while_sequential_nyosplwtfa_while_cond_2593579___redundant_placeholder1a
]sequential_nyosplwtfa_while_sequential_nyosplwtfa_while_cond_2593579___redundant_placeholder2a
]sequential_nyosplwtfa_while_sequential_nyosplwtfa_while_cond_2593579___redundant_placeholder3a
]sequential_nyosplwtfa_while_sequential_nyosplwtfa_while_cond_2593579___redundant_placeholder4a
]sequential_nyosplwtfa_while_sequential_nyosplwtfa_while_cond_2593579___redundant_placeholder5a
]sequential_nyosplwtfa_while_sequential_nyosplwtfa_while_cond_2593579___redundant_placeholder6(
$sequential_nyosplwtfa_while_identity
▐
 sequential/nyosplwtfa/while/LessLess'sequential_nyosplwtfa_while_placeholderFsequential_nyosplwtfa_while_less_sequential_nyosplwtfa_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/nyosplwtfa/while/LessЯ
$sequential/nyosplwtfa/while/IdentityIdentity$sequential/nyosplwtfa/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/nyosplwtfa/while/Identity"U
$sequential_nyosplwtfa_while_identity-sequential/nyosplwtfa/while/Identity:output:0*(
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
Л

э
while_cond_2597823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2597823___redundant_placeholder05
1while_while_cond_2597823___redundant_placeholder15
1while_while_cond_2597823___redundant_placeholder25
1while_while_cond_2597823___redundant_placeholder35
1while_while_cond_2597823___redundant_placeholder45
1while_while_cond_2597823___redundant_placeholder55
1while_while_cond_2597823___redundant_placeholder6
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
╙
Д
,__inference_nyosplwtfa_layer_call_fn_2598944

inputs
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCallо
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
GPU2*0J 8В *P
fKRI
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_25956402
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
▒'
│
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_2594719

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
│F
ъ
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2593874

inputs%
hswofenhiy_2593775:	А%
hswofenhiy_2593777:	 А!
hswofenhiy_2593779:	А 
hswofenhiy_2593781:  
hswofenhiy_2593783:  
hswofenhiy_2593785: 
identityИв"hswofenhiy/StatefulPartitionedCallвwhileD
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
strided_slice_2┌
"hswofenhiy/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0hswofenhiy_2593775hswofenhiy_2593777hswofenhiy_2593779hswofenhiy_2593781hswofenhiy_2593783hswofenhiy_2593785*
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
GPU2*0J 8В *P
fKRI
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_25937742$
"hswofenhiy/StatefulPartitionedCallП
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
while/loop_counterЁ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0hswofenhiy_2593775hswofenhiy_2593777hswofenhiy_2593779hswofenhiy_2593781hswofenhiy_2593783hswofenhiy_2593785*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2593794*
condR
while_cond_2593793*Q
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
IdentityIdentitytranspose_1:y:0#^hswofenhiy/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2H
"hswofenhiy/StatefulPartitionedCall"hswofenhiy/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Ш
Ю
,__inference_sequential_layer_call_fn_2595706

bdeyofgzkq
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
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCall
bdeyofgzkqunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_25956712
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
bdeyofgzkq
─
└
G__inference_sequential_layer_call_and_return_conditional_losses_2596353

bdeyofgzkq(
gtjikcltwy_2596315: 
gtjikcltwy_2596317:%
dnzlhpjizj_2596321:	А%
dnzlhpjizj_2596323:	 А!
dnzlhpjizj_2596325:	А 
dnzlhpjizj_2596327:  
dnzlhpjizj_2596329:  
dnzlhpjizj_2596331: %
nyosplwtfa_2596334:	 А%
nyosplwtfa_2596336:	 А!
nyosplwtfa_2596338:	А 
nyosplwtfa_2596340:  
nyosplwtfa_2596342:  
nyosplwtfa_2596344: $
chsgvefspq_2596347:  
chsgvefspq_2596349:
identityИв"chsgvefspq/StatefulPartitionedCallв"dnzlhpjizj/StatefulPartitionedCallв"gtjikcltwy/StatefulPartitionedCallв"nyosplwtfa/StatefulPartitionedCall░
"gtjikcltwy/StatefulPartitionedCallStatefulPartitionedCall
bdeyofgzkqgtjikcltwy_2596315gtjikcltwy_2596317*
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
GPU2*0J 8В *P
fKRI
G__inference_gtjikcltwy_layer_call_and_return_conditional_losses_25952472$
"gtjikcltwy/StatefulPartitionedCallЗ
ezubtmdnwx/PartitionedCallPartitionedCall+gtjikcltwy/StatefulPartitionedCall:output:0*
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
GPU2*0J 8В *P
fKRI
G__inference_ezubtmdnwx_layer_call_and_return_conditional_losses_25952662
ezubtmdnwx/PartitionedCallЭ
"dnzlhpjizj/StatefulPartitionedCallStatefulPartitionedCall#ezubtmdnwx/PartitionedCall:output:0dnzlhpjizj_2596321dnzlhpjizj_2596323dnzlhpjizj_2596325dnzlhpjizj_2596327dnzlhpjizj_2596329dnzlhpjizj_2596331*
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
GPU2*0J 8В *P
fKRI
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_25954472$
"dnzlhpjizj/StatefulPartitionedCallб
"nyosplwtfa/StatefulPartitionedCallStatefulPartitionedCall+dnzlhpjizj/StatefulPartitionedCall:output:0nyosplwtfa_2596334nyosplwtfa_2596336nyosplwtfa_2596338nyosplwtfa_2596340nyosplwtfa_2596342nyosplwtfa_2596344*
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
GPU2*0J 8В *P
fKRI
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_25956402$
"nyosplwtfa/StatefulPartitionedCall╔
"chsgvefspq/StatefulPartitionedCallStatefulPartitionedCall+nyosplwtfa/StatefulPartitionedCall:output:0chsgvefspq_2596347chsgvefspq_2596349*
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
GPU2*0J 8В *P
fKRI
G__inference_chsgvefspq_layer_call_and_return_conditional_losses_25956642$
"chsgvefspq/StatefulPartitionedCallУ
IdentityIdentity+chsgvefspq/StatefulPartitionedCall:output:0#^chsgvefspq/StatefulPartitionedCall#^dnzlhpjizj/StatefulPartitionedCall#^gtjikcltwy/StatefulPartitionedCall#^nyosplwtfa/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"chsgvefspq/StatefulPartitionedCall"chsgvefspq/StatefulPartitionedCall2H
"dnzlhpjizj/StatefulPartitionedCall"dnzlhpjizj/StatefulPartitionedCall2H
"gtjikcltwy/StatefulPartitionedCall"gtjikcltwy/StatefulPartitionedCall2H
"nyosplwtfa/StatefulPartitionedCall"nyosplwtfa/StatefulPartitionedCall:[ W
/
_output_shapes
:         
$
_user_specified_name
bdeyofgzkq
рY
З
while_body_2597824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_hswofenhiy_matmul_readvariableop_resource_0:	АF
3while_hswofenhiy_matmul_1_readvariableop_resource_0:	 АA
2while_hswofenhiy_biasadd_readvariableop_resource_0:	А8
*while_hswofenhiy_readvariableop_resource_0: :
,while_hswofenhiy_readvariableop_1_resource_0: :
,while_hswofenhiy_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_hswofenhiy_matmul_readvariableop_resource:	АD
1while_hswofenhiy_matmul_1_readvariableop_resource:	 А?
0while_hswofenhiy_biasadd_readvariableop_resource:	А6
(while_hswofenhiy_readvariableop_resource: 8
*while_hswofenhiy_readvariableop_1_resource: 8
*while_hswofenhiy_readvariableop_2_resource: Ив'while/hswofenhiy/BiasAdd/ReadVariableOpв&while/hswofenhiy/MatMul/ReadVariableOpв(while/hswofenhiy/MatMul_1/ReadVariableOpвwhile/hswofenhiy/ReadVariableOpв!while/hswofenhiy/ReadVariableOp_1в!while/hswofenhiy/ReadVariableOp_2├
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
&while/hswofenhiy/MatMul/ReadVariableOpReadVariableOp1while_hswofenhiy_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/hswofenhiy/MatMul/ReadVariableOp╤
while/hswofenhiy/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul╔
(while/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp3while_hswofenhiy_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/hswofenhiy/MatMul_1/ReadVariableOp║
while/hswofenhiy/MatMul_1MatMulwhile_placeholder_20while/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul_1░
while/hswofenhiy/addAddV2!while/hswofenhiy/MatMul:product:0#while/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/add┬
'while/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp2while_hswofenhiy_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/hswofenhiy/BiasAdd/ReadVariableOp╜
while/hswofenhiy/BiasAddBiasAddwhile/hswofenhiy/add:z:0/while/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/BiasAddЖ
 while/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/hswofenhiy/split/split_dimГ
while/hswofenhiy/splitSplit)while/hswofenhiy/split/split_dim:output:0!while/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/hswofenhiy/splitй
while/hswofenhiy/ReadVariableOpReadVariableOp*while_hswofenhiy_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/hswofenhiy/ReadVariableOpг
while/hswofenhiy/mulMul'while/hswofenhiy/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mulж
while/hswofenhiy/add_1AddV2while/hswofenhiy/split:output:0while/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_1Н
while/hswofenhiy/SigmoidSigmoidwhile/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoidп
!while/hswofenhiy/ReadVariableOp_1ReadVariableOp,while_hswofenhiy_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_1й
while/hswofenhiy/mul_1Mul)while/hswofenhiy/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_1и
while/hswofenhiy/add_2AddV2while/hswofenhiy/split:output:1while/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_2С
while/hswofenhiy/Sigmoid_1Sigmoidwhile/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_1Ю
while/hswofenhiy/mul_2Mulwhile/hswofenhiy/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_2Й
while/hswofenhiy/TanhTanhwhile/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanhв
while/hswofenhiy/mul_3Mulwhile/hswofenhiy/Sigmoid:y:0while/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_3г
while/hswofenhiy/add_3AddV2while/hswofenhiy/mul_2:z:0while/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_3п
!while/hswofenhiy/ReadVariableOp_2ReadVariableOp,while_hswofenhiy_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_2░
while/hswofenhiy/mul_4Mul)while/hswofenhiy/ReadVariableOp_2:value:0while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_4и
while/hswofenhiy/add_4AddV2while/hswofenhiy/split:output:3while/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_4С
while/hswofenhiy/Sigmoid_2Sigmoidwhile/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_2И
while/hswofenhiy/Tanh_1Tanhwhile/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanh_1ж
while/hswofenhiy/mul_5Mulwhile/hswofenhiy/Sigmoid_2:y:0while/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/hswofenhiy/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/hswofenhiy/mul_5:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/hswofenhiy/add_3:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_hswofenhiy_biasadd_readvariableop_resource2while_hswofenhiy_biasadd_readvariableop_resource_0"h
1while_hswofenhiy_matmul_1_readvariableop_resource3while_hswofenhiy_matmul_1_readvariableop_resource_0"d
/while_hswofenhiy_matmul_readvariableop_resource1while_hswofenhiy_matmul_readvariableop_resource_0"Z
*while_hswofenhiy_readvariableop_1_resource,while_hswofenhiy_readvariableop_1_resource_0"Z
*while_hswofenhiy_readvariableop_2_resource,while_hswofenhiy_readvariableop_2_resource_0"V
(while_hswofenhiy_readvariableop_resource*while_hswofenhiy_readvariableop_resource_0")
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
'while/hswofenhiy/BiasAdd/ReadVariableOp'while/hswofenhiy/BiasAdd/ReadVariableOp2P
&while/hswofenhiy/MatMul/ReadVariableOp&while/hswofenhiy/MatMul/ReadVariableOp2T
(while/hswofenhiy/MatMul_1/ReadVariableOp(while/hswofenhiy/MatMul_1/ReadVariableOp2B
while/hswofenhiy/ReadVariableOpwhile/hswofenhiy/ReadVariableOp2F
!while/hswofenhiy/ReadVariableOp_1!while/hswofenhiy/ReadVariableOp_12F
!while/hswofenhiy/ReadVariableOp_2!while/hswofenhiy/ReadVariableOp_2: 
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
╕
╝
G__inference_sequential_layer_call_and_return_conditional_losses_2596240

inputs(
gtjikcltwy_2596202: 
gtjikcltwy_2596204:%
dnzlhpjizj_2596208:	А%
dnzlhpjizj_2596210:	 А!
dnzlhpjizj_2596212:	А 
dnzlhpjizj_2596214:  
dnzlhpjizj_2596216:  
dnzlhpjizj_2596218: %
nyosplwtfa_2596221:	 А%
nyosplwtfa_2596223:	 А!
nyosplwtfa_2596225:	А 
nyosplwtfa_2596227:  
nyosplwtfa_2596229:  
nyosplwtfa_2596231: $
chsgvefspq_2596234:  
chsgvefspq_2596236:
identityИв"chsgvefspq/StatefulPartitionedCallв"dnzlhpjizj/StatefulPartitionedCallв"gtjikcltwy/StatefulPartitionedCallв"nyosplwtfa/StatefulPartitionedCallм
"gtjikcltwy/StatefulPartitionedCallStatefulPartitionedCallinputsgtjikcltwy_2596202gtjikcltwy_2596204*
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
GPU2*0J 8В *P
fKRI
G__inference_gtjikcltwy_layer_call_and_return_conditional_losses_25952472$
"gtjikcltwy/StatefulPartitionedCallЗ
ezubtmdnwx/PartitionedCallPartitionedCall+gtjikcltwy/StatefulPartitionedCall:output:0*
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
GPU2*0J 8В *P
fKRI
G__inference_ezubtmdnwx_layer_call_and_return_conditional_losses_25952662
ezubtmdnwx/PartitionedCallЭ
"dnzlhpjizj/StatefulPartitionedCallStatefulPartitionedCall#ezubtmdnwx/PartitionedCall:output:0dnzlhpjizj_2596208dnzlhpjizj_2596210dnzlhpjizj_2596212dnzlhpjizj_2596214dnzlhpjizj_2596216dnzlhpjizj_2596218*
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
GPU2*0J 8В *P
fKRI
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_25961292$
"dnzlhpjizj/StatefulPartitionedCallб
"nyosplwtfa/StatefulPartitionedCallStatefulPartitionedCall+dnzlhpjizj/StatefulPartitionedCall:output:0nyosplwtfa_2596221nyosplwtfa_2596223nyosplwtfa_2596225nyosplwtfa_2596227nyosplwtfa_2596229nyosplwtfa_2596231*
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
GPU2*0J 8В *P
fKRI
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_25959152$
"nyosplwtfa/StatefulPartitionedCall╔
"chsgvefspq/StatefulPartitionedCallStatefulPartitionedCall+nyosplwtfa/StatefulPartitionedCall:output:0chsgvefspq_2596234chsgvefspq_2596236*
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
GPU2*0J 8В *P
fKRI
G__inference_chsgvefspq_layer_call_and_return_conditional_losses_25956642$
"chsgvefspq/StatefulPartitionedCallУ
IdentityIdentity+chsgvefspq/StatefulPartitionedCall:output:0#^chsgvefspq/StatefulPartitionedCall#^dnzlhpjizj/StatefulPartitionedCall#^gtjikcltwy/StatefulPartitionedCall#^nyosplwtfa/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2H
"chsgvefspq/StatefulPartitionedCall"chsgvefspq/StatefulPartitionedCall2H
"dnzlhpjizj/StatefulPartitionedCall"dnzlhpjizj/StatefulPartitionedCall2H
"gtjikcltwy/StatefulPartitionedCall"gtjikcltwy/StatefulPartitionedCall2H
"nyosplwtfa/StatefulPartitionedCall"nyosplwtfa/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ш
Л
dnzlhpjizj_while_cond_25969632
.dnzlhpjizj_while_dnzlhpjizj_while_loop_counter8
4dnzlhpjizj_while_dnzlhpjizj_while_maximum_iterations 
dnzlhpjizj_while_placeholder"
dnzlhpjizj_while_placeholder_1"
dnzlhpjizj_while_placeholder_2"
dnzlhpjizj_while_placeholder_34
0dnzlhpjizj_while_less_dnzlhpjizj_strided_slice_1K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596963___redundant_placeholder0K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596963___redundant_placeholder1K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596963___redundant_placeholder2K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596963___redundant_placeholder3K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596963___redundant_placeholder4K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596963___redundant_placeholder5K
Gdnzlhpjizj_while_dnzlhpjizj_while_cond_2596963___redundant_placeholder6
dnzlhpjizj_while_identity
з
dnzlhpjizj/while/LessLessdnzlhpjizj_while_placeholder0dnzlhpjizj_while_less_dnzlhpjizj_strided_slice_1*
T0*
_output_shapes
: 2
dnzlhpjizj/while/Less~
dnzlhpjizj/while/IdentityIdentitydnzlhpjizj/while/Less:z:0*
T0
*
_output_shapes
: 2
dnzlhpjizj/while/Identity"?
dnzlhpjizj_while_identity"dnzlhpjizj/while/Identity:output:0*(
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
рY
З
while_body_2595346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_hswofenhiy_matmul_readvariableop_resource_0:	АF
3while_hswofenhiy_matmul_1_readvariableop_resource_0:	 АA
2while_hswofenhiy_biasadd_readvariableop_resource_0:	А8
*while_hswofenhiy_readvariableop_resource_0: :
,while_hswofenhiy_readvariableop_1_resource_0: :
,while_hswofenhiy_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_hswofenhiy_matmul_readvariableop_resource:	АD
1while_hswofenhiy_matmul_1_readvariableop_resource:	 А?
0while_hswofenhiy_biasadd_readvariableop_resource:	А6
(while_hswofenhiy_readvariableop_resource: 8
*while_hswofenhiy_readvariableop_1_resource: 8
*while_hswofenhiy_readvariableop_2_resource: Ив'while/hswofenhiy/BiasAdd/ReadVariableOpв&while/hswofenhiy/MatMul/ReadVariableOpв(while/hswofenhiy/MatMul_1/ReadVariableOpвwhile/hswofenhiy/ReadVariableOpв!while/hswofenhiy/ReadVariableOp_1в!while/hswofenhiy/ReadVariableOp_2├
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
&while/hswofenhiy/MatMul/ReadVariableOpReadVariableOp1while_hswofenhiy_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/hswofenhiy/MatMul/ReadVariableOp╤
while/hswofenhiy/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul╔
(while/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp3while_hswofenhiy_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/hswofenhiy/MatMul_1/ReadVariableOp║
while/hswofenhiy/MatMul_1MatMulwhile_placeholder_20while/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul_1░
while/hswofenhiy/addAddV2!while/hswofenhiy/MatMul:product:0#while/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/add┬
'while/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp2while_hswofenhiy_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/hswofenhiy/BiasAdd/ReadVariableOp╜
while/hswofenhiy/BiasAddBiasAddwhile/hswofenhiy/add:z:0/while/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/BiasAddЖ
 while/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/hswofenhiy/split/split_dimГ
while/hswofenhiy/splitSplit)while/hswofenhiy/split/split_dim:output:0!while/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/hswofenhiy/splitй
while/hswofenhiy/ReadVariableOpReadVariableOp*while_hswofenhiy_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/hswofenhiy/ReadVariableOpг
while/hswofenhiy/mulMul'while/hswofenhiy/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mulж
while/hswofenhiy/add_1AddV2while/hswofenhiy/split:output:0while/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_1Н
while/hswofenhiy/SigmoidSigmoidwhile/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoidп
!while/hswofenhiy/ReadVariableOp_1ReadVariableOp,while_hswofenhiy_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_1й
while/hswofenhiy/mul_1Mul)while/hswofenhiy/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_1и
while/hswofenhiy/add_2AddV2while/hswofenhiy/split:output:1while/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_2С
while/hswofenhiy/Sigmoid_1Sigmoidwhile/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_1Ю
while/hswofenhiy/mul_2Mulwhile/hswofenhiy/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_2Й
while/hswofenhiy/TanhTanhwhile/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanhв
while/hswofenhiy/mul_3Mulwhile/hswofenhiy/Sigmoid:y:0while/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_3г
while/hswofenhiy/add_3AddV2while/hswofenhiy/mul_2:z:0while/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_3п
!while/hswofenhiy/ReadVariableOp_2ReadVariableOp,while_hswofenhiy_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_2░
while/hswofenhiy/mul_4Mul)while/hswofenhiy/ReadVariableOp_2:value:0while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_4и
while/hswofenhiy/add_4AddV2while/hswofenhiy/split:output:3while/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_4С
while/hswofenhiy/Sigmoid_2Sigmoidwhile/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_2И
while/hswofenhiy/Tanh_1Tanhwhile/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanh_1ж
while/hswofenhiy/mul_5Mulwhile/hswofenhiy/Sigmoid_2:y:0while/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/hswofenhiy/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/hswofenhiy/mul_5:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/hswofenhiy/add_3:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_hswofenhiy_biasadd_readvariableop_resource2while_hswofenhiy_biasadd_readvariableop_resource_0"h
1while_hswofenhiy_matmul_1_readvariableop_resource3while_hswofenhiy_matmul_1_readvariableop_resource_0"d
/while_hswofenhiy_matmul_readvariableop_resource1while_hswofenhiy_matmul_readvariableop_resource_0"Z
*while_hswofenhiy_readvariableop_1_resource,while_hswofenhiy_readvariableop_1_resource_0"Z
*while_hswofenhiy_readvariableop_2_resource,while_hswofenhiy_readvariableop_2_resource_0"V
(while_hswofenhiy_readvariableop_resource*while_hswofenhiy_readvariableop_resource_0")
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
'while/hswofenhiy/BiasAdd/ReadVariableOp'while/hswofenhiy/BiasAdd/ReadVariableOp2P
&while/hswofenhiy/MatMul/ReadVariableOp&while/hswofenhiy/MatMul/ReadVariableOp2T
(while/hswofenhiy/MatMul_1/ReadVariableOp(while/hswofenhiy/MatMul_1/ReadVariableOp2B
while/hswofenhiy/ReadVariableOpwhile/hswofenhiy/ReadVariableOp2F
!while/hswofenhiy/ReadVariableOp_1!while/hswofenhiy/ReadVariableOp_12F
!while/hswofenhiy/ReadVariableOp_2!while/hswofenhiy/ReadVariableOp_2: 
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
рh
З
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2597745
inputs_0<
)hswofenhiy_matmul_readvariableop_resource:	А>
+hswofenhiy_matmul_1_readvariableop_resource:	 А9
*hswofenhiy_biasadd_readvariableop_resource:	А0
"hswofenhiy_readvariableop_resource: 2
$hswofenhiy_readvariableop_1_resource: 2
$hswofenhiy_readvariableop_2_resource: 
identityИв!hswofenhiy/BiasAdd/ReadVariableOpв hswofenhiy/MatMul/ReadVariableOpв"hswofenhiy/MatMul_1/ReadVariableOpвhswofenhiy/ReadVariableOpвhswofenhiy/ReadVariableOp_1вhswofenhiy/ReadVariableOp_2вwhileF
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
 hswofenhiy/MatMul/ReadVariableOpReadVariableOp)hswofenhiy_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 hswofenhiy/MatMul/ReadVariableOpз
hswofenhiy/MatMulMatMulstrided_slice_2:output:0(hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul╡
"hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp+hswofenhiy_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"hswofenhiy/MatMul_1/ReadVariableOpг
hswofenhiy/MatMul_1MatMulzeros:output:0*hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul_1Ш
hswofenhiy/addAddV2hswofenhiy/MatMul:product:0hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
hswofenhiy/addо
!hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp*hswofenhiy_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!hswofenhiy/BiasAdd/ReadVariableOpе
hswofenhiy/BiasAddBiasAddhswofenhiy/add:z:0)hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/BiasAddz
hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
hswofenhiy/split/split_dimы
hswofenhiy/splitSplit#hswofenhiy/split/split_dim:output:0hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
hswofenhiy/splitХ
hswofenhiy/ReadVariableOpReadVariableOp"hswofenhiy_readvariableop_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOpО
hswofenhiy/mulMul!hswofenhiy/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mulО
hswofenhiy/add_1AddV2hswofenhiy/split:output:0hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_1{
hswofenhiy/SigmoidSigmoidhswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/SigmoidЫ
hswofenhiy/ReadVariableOp_1ReadVariableOp$hswofenhiy_readvariableop_1_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_1Ф
hswofenhiy/mul_1Mul#hswofenhiy/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_1Р
hswofenhiy/add_2AddV2hswofenhiy/split:output:1hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_2
hswofenhiy/Sigmoid_1Sigmoidhswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_1Й
hswofenhiy/mul_2Mulhswofenhiy/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_2w
hswofenhiy/TanhTanhhswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
hswofenhiy/TanhК
hswofenhiy/mul_3Mulhswofenhiy/Sigmoid:y:0hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_3Л
hswofenhiy/add_3AddV2hswofenhiy/mul_2:z:0hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_3Ы
hswofenhiy/ReadVariableOp_2ReadVariableOp$hswofenhiy_readvariableop_2_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_2Ш
hswofenhiy/mul_4Mul#hswofenhiy/ReadVariableOp_2:value:0hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_4Р
hswofenhiy/add_4AddV2hswofenhiy/split:output:3hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_4
hswofenhiy/Sigmoid_2Sigmoidhswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_2v
hswofenhiy/Tanh_1Tanhhswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Tanh_1О
hswofenhiy/mul_5Mulhswofenhiy/Sigmoid_2:y:0hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)hswofenhiy_matmul_readvariableop_resource+hswofenhiy_matmul_1_readvariableop_resource*hswofenhiy_biasadd_readvariableop_resource"hswofenhiy_readvariableop_resource$hswofenhiy_readvariableop_1_resource$hswofenhiy_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2597644*
condR
while_cond_2597643*Q
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
IdentityIdentitytranspose_1:y:0"^hswofenhiy/BiasAdd/ReadVariableOp!^hswofenhiy/MatMul/ReadVariableOp#^hswofenhiy/MatMul_1/ReadVariableOp^hswofenhiy/ReadVariableOp^hswofenhiy/ReadVariableOp_1^hswofenhiy/ReadVariableOp_2^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2F
!hswofenhiy/BiasAdd/ReadVariableOp!hswofenhiy/BiasAdd/ReadVariableOp2D
 hswofenhiy/MatMul/ReadVariableOp hswofenhiy/MatMul/ReadVariableOp2H
"hswofenhiy/MatMul_1/ReadVariableOp"hswofenhiy/MatMul_1/ReadVariableOp26
hswofenhiy/ReadVariableOphswofenhiy/ReadVariableOp2:
hswofenhiy/ReadVariableOp_1hswofenhiy/ReadVariableOp_12:
hswofenhiy/ReadVariableOp_2hswofenhiy/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╙	
°
G__inference_chsgvefspq_layer_call_and_return_conditional_losses_2598971

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
▐╩
В
G__inference_sequential_layer_call_and_return_conditional_losses_2597247

inputsL
6gtjikcltwy_conv1d_expanddims_1_readvariableop_resource:K
=gtjikcltwy_squeeze_batch_dims_biasadd_readvariableop_resource:G
4dnzlhpjizj_hswofenhiy_matmul_readvariableop_resource:	АI
6dnzlhpjizj_hswofenhiy_matmul_1_readvariableop_resource:	 АD
5dnzlhpjizj_hswofenhiy_biasadd_readvariableop_resource:	А;
-dnzlhpjizj_hswofenhiy_readvariableop_resource: =
/dnzlhpjizj_hswofenhiy_readvariableop_1_resource: =
/dnzlhpjizj_hswofenhiy_readvariableop_2_resource: G
4nyosplwtfa_lwptfvtmlx_matmul_readvariableop_resource:	 АI
6nyosplwtfa_lwptfvtmlx_matmul_1_readvariableop_resource:	 АD
5nyosplwtfa_lwptfvtmlx_biasadd_readvariableop_resource:	А;
-nyosplwtfa_lwptfvtmlx_readvariableop_resource: =
/nyosplwtfa_lwptfvtmlx_readvariableop_1_resource: =
/nyosplwtfa_lwptfvtmlx_readvariableop_2_resource: ;
)chsgvefspq_matmul_readvariableop_resource: 8
*chsgvefspq_biasadd_readvariableop_resource:
identityИв!chsgvefspq/BiasAdd/ReadVariableOpв chsgvefspq/MatMul/ReadVariableOpв,dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOpв+dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOpв-dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOpв$dnzlhpjizj/hswofenhiy/ReadVariableOpв&dnzlhpjizj/hswofenhiy/ReadVariableOp_1в&dnzlhpjizj/hswofenhiy/ReadVariableOp_2вdnzlhpjizj/whileв-gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOpв4gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOpв,nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOpв+nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOpв-nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOpв$nyosplwtfa/lwptfvtmlx/ReadVariableOpв&nyosplwtfa/lwptfvtmlx/ReadVariableOp_1в&nyosplwtfa/lwptfvtmlx/ReadVariableOp_2вnyosplwtfa/whileП
 gtjikcltwy/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
¤        2"
 gtjikcltwy/conv1d/ExpandDims/dim╗
gtjikcltwy/conv1d/ExpandDims
ExpandDimsinputs)gtjikcltwy/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:         2
gtjikcltwy/conv1d/ExpandDims┘
-gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6gtjikcltwy_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOpК
"gtjikcltwy/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"gtjikcltwy/conv1d/ExpandDims_1/dimу
gtjikcltwy/conv1d/ExpandDims_1
ExpandDims5gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp:value:0+gtjikcltwy/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
gtjikcltwy/conv1d/ExpandDims_1З
gtjikcltwy/conv1d/ShapeShape%gtjikcltwy/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
gtjikcltwy/conv1d/ShapeШ
%gtjikcltwy/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%gtjikcltwy/conv1d/strided_slice/stackе
'gtjikcltwy/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
¤        2)
'gtjikcltwy/conv1d/strided_slice/stack_1Ь
'gtjikcltwy/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'gtjikcltwy/conv1d/strided_slice/stack_2╠
gtjikcltwy/conv1d/strided_sliceStridedSlice gtjikcltwy/conv1d/Shape:output:0.gtjikcltwy/conv1d/strided_slice/stack:output:00gtjikcltwy/conv1d/strided_slice/stack_1:output:00gtjikcltwy/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
gtjikcltwy/conv1d/strided_sliceЫ
gtjikcltwy/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2!
gtjikcltwy/conv1d/Reshape/shape╠
gtjikcltwy/conv1d/ReshapeReshape%gtjikcltwy/conv1d/ExpandDims:output:0(gtjikcltwy/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:         2
gtjikcltwy/conv1d/Reshapeю
gtjikcltwy/conv1d/Conv2DConv2D"gtjikcltwy/conv1d/Reshape:output:0'gtjikcltwy/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
gtjikcltwy/conv1d/Conv2DЫ
!gtjikcltwy/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!gtjikcltwy/conv1d/concat/values_1Й
gtjikcltwy/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2
gtjikcltwy/conv1d/concat/axisь
gtjikcltwy/conv1d/concatConcatV2(gtjikcltwy/conv1d/strided_slice:output:0*gtjikcltwy/conv1d/concat/values_1:output:0&gtjikcltwy/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gtjikcltwy/conv1d/concat╔
gtjikcltwy/conv1d/Reshape_1Reshape!gtjikcltwy/conv1d/Conv2D:output:0!gtjikcltwy/conv1d/concat:output:0*
T0*3
_output_shapes!
:         2
gtjikcltwy/conv1d/Reshape_1┴
gtjikcltwy/conv1d/SqueezeSqueeze$gtjikcltwy/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:         *
squeeze_dims

¤        2
gtjikcltwy/conv1d/SqueezeЬ
#gtjikcltwy/squeeze_batch_dims/ShapeShape"gtjikcltwy/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#gtjikcltwy/squeeze_batch_dims/Shape░
1gtjikcltwy/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1gtjikcltwy/squeeze_batch_dims/strided_slice/stack╜
3gtjikcltwy/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        25
3gtjikcltwy/squeeze_batch_dims/strided_slice/stack_1┤
3gtjikcltwy/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3gtjikcltwy/squeeze_batch_dims/strided_slice/stack_2Ф
+gtjikcltwy/squeeze_batch_dims/strided_sliceStridedSlice,gtjikcltwy/squeeze_batch_dims/Shape:output:0:gtjikcltwy/squeeze_batch_dims/strided_slice/stack:output:0<gtjikcltwy/squeeze_batch_dims/strided_slice/stack_1:output:0<gtjikcltwy/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+gtjikcltwy/squeeze_batch_dims/strided_sliceп
+gtjikcltwy/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          2-
+gtjikcltwy/squeeze_batch_dims/Reshape/shapeщ
%gtjikcltwy/squeeze_batch_dims/ReshapeReshape"gtjikcltwy/conv1d/Squeeze:output:04gtjikcltwy/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:         2'
%gtjikcltwy/squeeze_batch_dims/Reshapeц
4gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=gtjikcltwy_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp¤
%gtjikcltwy/squeeze_batch_dims/BiasAddBiasAdd.gtjikcltwy/squeeze_batch_dims/Reshape:output:0<gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:         2'
%gtjikcltwy/squeeze_batch_dims/BiasAddп
-gtjikcltwy/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-gtjikcltwy/squeeze_batch_dims/concat/values_1б
)gtjikcltwy/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         2+
)gtjikcltwy/squeeze_batch_dims/concat/axisи
$gtjikcltwy/squeeze_batch_dims/concatConcatV24gtjikcltwy/squeeze_batch_dims/strided_slice:output:06gtjikcltwy/squeeze_batch_dims/concat/values_1:output:02gtjikcltwy/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$gtjikcltwy/squeeze_batch_dims/concatЎ
'gtjikcltwy/squeeze_batch_dims/Reshape_1Reshape.gtjikcltwy/squeeze_batch_dims/BiasAdd:output:0-gtjikcltwy/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:         2)
'gtjikcltwy/squeeze_batch_dims/Reshape_1Д
ezubtmdnwx/ShapeShape0gtjikcltwy/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
ezubtmdnwx/ShapeК
ezubtmdnwx/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
ezubtmdnwx/strided_slice/stackО
 ezubtmdnwx/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 ezubtmdnwx/strided_slice/stack_1О
 ezubtmdnwx/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 ezubtmdnwx/strided_slice/stack_2д
ezubtmdnwx/strided_sliceStridedSliceezubtmdnwx/Shape:output:0'ezubtmdnwx/strided_slice/stack:output:0)ezubtmdnwx/strided_slice/stack_1:output:0)ezubtmdnwx/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ezubtmdnwx/strided_slicez
ezubtmdnwx/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
ezubtmdnwx/Reshape/shape/1z
ezubtmdnwx/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ezubtmdnwx/Reshape/shape/2╫
ezubtmdnwx/Reshape/shapePack!ezubtmdnwx/strided_slice:output:0#ezubtmdnwx/Reshape/shape/1:output:0#ezubtmdnwx/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ezubtmdnwx/Reshape/shape╛
ezubtmdnwx/ReshapeReshape0gtjikcltwy/squeeze_batch_dims/Reshape_1:output:0!ezubtmdnwx/Reshape/shape:output:0*
T0*+
_output_shapes
:         2
ezubtmdnwx/Reshapeo
dnzlhpjizj/ShapeShapeezubtmdnwx/Reshape:output:0*
T0*
_output_shapes
:2
dnzlhpjizj/ShapeК
dnzlhpjizj/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
dnzlhpjizj/strided_slice/stackО
 dnzlhpjizj/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 dnzlhpjizj/strided_slice/stack_1О
 dnzlhpjizj/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 dnzlhpjizj/strided_slice/stack_2д
dnzlhpjizj/strided_sliceStridedSlicednzlhpjizj/Shape:output:0'dnzlhpjizj/strided_slice/stack:output:0)dnzlhpjizj/strided_slice/stack_1:output:0)dnzlhpjizj/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
dnzlhpjizj/strided_slicer
dnzlhpjizj/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/zeros/mul/yШ
dnzlhpjizj/zeros/mulMul!dnzlhpjizj/strided_slice:output:0dnzlhpjizj/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/zeros/mulu
dnzlhpjizj/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
dnzlhpjizj/zeros/Less/yУ
dnzlhpjizj/zeros/LessLessdnzlhpjizj/zeros/mul:z:0 dnzlhpjizj/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/zeros/Lessx
dnzlhpjizj/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/zeros/packed/1п
dnzlhpjizj/zeros/packedPack!dnzlhpjizj/strided_slice:output:0"dnzlhpjizj/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
dnzlhpjizj/zeros/packedu
dnzlhpjizj/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
dnzlhpjizj/zeros/Constб
dnzlhpjizj/zerosFill dnzlhpjizj/zeros/packed:output:0dnzlhpjizj/zeros/Const:output:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/zerosv
dnzlhpjizj/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/zeros_1/mul/yЮ
dnzlhpjizj/zeros_1/mulMul!dnzlhpjizj/strided_slice:output:0!dnzlhpjizj/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/zeros_1/muly
dnzlhpjizj/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
dnzlhpjizj/zeros_1/Less/yЫ
dnzlhpjizj/zeros_1/LessLessdnzlhpjizj/zeros_1/mul:z:0"dnzlhpjizj/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
dnzlhpjizj/zeros_1/Less|
dnzlhpjizj/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/zeros_1/packed/1╡
dnzlhpjizj/zeros_1/packedPack!dnzlhpjizj/strided_slice:output:0$dnzlhpjizj/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
dnzlhpjizj/zeros_1/packedy
dnzlhpjizj/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
dnzlhpjizj/zeros_1/Constй
dnzlhpjizj/zeros_1Fill"dnzlhpjizj/zeros_1/packed:output:0!dnzlhpjizj/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/zeros_1Л
dnzlhpjizj/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
dnzlhpjizj/transpose/perm░
dnzlhpjizj/transpose	Transposeezubtmdnwx/Reshape:output:0"dnzlhpjizj/transpose/perm:output:0*
T0*+
_output_shapes
:         2
dnzlhpjizj/transposep
dnzlhpjizj/Shape_1Shapednzlhpjizj/transpose:y:0*
T0*
_output_shapes
:2
dnzlhpjizj/Shape_1О
 dnzlhpjizj/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dnzlhpjizj/strided_slice_1/stackТ
"dnzlhpjizj/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"dnzlhpjizj/strided_slice_1/stack_1Т
"dnzlhpjizj/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"dnzlhpjizj/strided_slice_1/stack_2░
dnzlhpjizj/strided_slice_1StridedSlicednzlhpjizj/Shape_1:output:0)dnzlhpjizj/strided_slice_1/stack:output:0+dnzlhpjizj/strided_slice_1/stack_1:output:0+dnzlhpjizj/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
dnzlhpjizj/strided_slice_1Ы
&dnzlhpjizj/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&dnzlhpjizj/TensorArrayV2/element_shape▐
dnzlhpjizj/TensorArrayV2TensorListReserve/dnzlhpjizj/TensorArrayV2/element_shape:output:0#dnzlhpjizj/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
dnzlhpjizj/TensorArrayV2╒
@dnzlhpjizj/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@dnzlhpjizj/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2dnzlhpjizj/TensorArrayUnstack/TensorListFromTensorTensorListFromTensordnzlhpjizj/transpose:y:0Idnzlhpjizj/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2dnzlhpjizj/TensorArrayUnstack/TensorListFromTensorО
 dnzlhpjizj/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 dnzlhpjizj/strided_slice_2/stackТ
"dnzlhpjizj/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"dnzlhpjizj/strided_slice_2/stack_1Т
"dnzlhpjizj/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"dnzlhpjizj/strided_slice_2/stack_2╛
dnzlhpjizj/strided_slice_2StridedSlicednzlhpjizj/transpose:y:0)dnzlhpjizj/strided_slice_2/stack:output:0+dnzlhpjizj/strided_slice_2/stack_1:output:0+dnzlhpjizj/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
dnzlhpjizj/strided_slice_2╨
+dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOpReadVariableOp4dnzlhpjizj_hswofenhiy_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02-
+dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp╙
dnzlhpjizj/hswofenhiy/MatMulMatMul#dnzlhpjizj/strided_slice_2:output:03dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dnzlhpjizj/hswofenhiy/MatMul╓
-dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp6dnzlhpjizj_hswofenhiy_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp╧
dnzlhpjizj/hswofenhiy/MatMul_1MatMuldnzlhpjizj/zeros:output:05dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
dnzlhpjizj/hswofenhiy/MatMul_1─
dnzlhpjizj/hswofenhiy/addAddV2&dnzlhpjizj/hswofenhiy/MatMul:product:0(dnzlhpjizj/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
dnzlhpjizj/hswofenhiy/add╧
,dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp5dnzlhpjizj_hswofenhiy_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp╤
dnzlhpjizj/hswofenhiy/BiasAddBiasAdddnzlhpjizj/hswofenhiy/add:z:04dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dnzlhpjizj/hswofenhiy/BiasAddР
%dnzlhpjizj/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%dnzlhpjizj/hswofenhiy/split/split_dimЧ
dnzlhpjizj/hswofenhiy/splitSplit.dnzlhpjizj/hswofenhiy/split/split_dim:output:0&dnzlhpjizj/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
dnzlhpjizj/hswofenhiy/split╢
$dnzlhpjizj/hswofenhiy/ReadVariableOpReadVariableOp-dnzlhpjizj_hswofenhiy_readvariableop_resource*
_output_shapes
: *
dtype02&
$dnzlhpjizj/hswofenhiy/ReadVariableOp║
dnzlhpjizj/hswofenhiy/mulMul,dnzlhpjizj/hswofenhiy/ReadVariableOp:value:0dnzlhpjizj/zeros_1:output:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul║
dnzlhpjizj/hswofenhiy/add_1AddV2$dnzlhpjizj/hswofenhiy/split:output:0dnzlhpjizj/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/add_1Ь
dnzlhpjizj/hswofenhiy/SigmoidSigmoiddnzlhpjizj/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/Sigmoid╝
&dnzlhpjizj/hswofenhiy/ReadVariableOp_1ReadVariableOp/dnzlhpjizj_hswofenhiy_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&dnzlhpjizj/hswofenhiy/ReadVariableOp_1└
dnzlhpjizj/hswofenhiy/mul_1Mul.dnzlhpjizj/hswofenhiy/ReadVariableOp_1:value:0dnzlhpjizj/zeros_1:output:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul_1╝
dnzlhpjizj/hswofenhiy/add_2AddV2$dnzlhpjizj/hswofenhiy/split:output:1dnzlhpjizj/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/add_2а
dnzlhpjizj/hswofenhiy/Sigmoid_1Sigmoiddnzlhpjizj/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2!
dnzlhpjizj/hswofenhiy/Sigmoid_1╡
dnzlhpjizj/hswofenhiy/mul_2Mul#dnzlhpjizj/hswofenhiy/Sigmoid_1:y:0dnzlhpjizj/zeros_1:output:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul_2Ш
dnzlhpjizj/hswofenhiy/TanhTanh$dnzlhpjizj/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/Tanh╢
dnzlhpjizj/hswofenhiy/mul_3Mul!dnzlhpjizj/hswofenhiy/Sigmoid:y:0dnzlhpjizj/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul_3╖
dnzlhpjizj/hswofenhiy/add_3AddV2dnzlhpjizj/hswofenhiy/mul_2:z:0dnzlhpjizj/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/add_3╝
&dnzlhpjizj/hswofenhiy/ReadVariableOp_2ReadVariableOp/dnzlhpjizj_hswofenhiy_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&dnzlhpjizj/hswofenhiy/ReadVariableOp_2─
dnzlhpjizj/hswofenhiy/mul_4Mul.dnzlhpjizj/hswofenhiy/ReadVariableOp_2:value:0dnzlhpjizj/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul_4╝
dnzlhpjizj/hswofenhiy/add_4AddV2$dnzlhpjizj/hswofenhiy/split:output:3dnzlhpjizj/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/add_4а
dnzlhpjizj/hswofenhiy/Sigmoid_2Sigmoiddnzlhpjizj/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2!
dnzlhpjizj/hswofenhiy/Sigmoid_2Ч
dnzlhpjizj/hswofenhiy/Tanh_1Tanhdnzlhpjizj/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/Tanh_1║
dnzlhpjizj/hswofenhiy/mul_5Mul#dnzlhpjizj/hswofenhiy/Sigmoid_2:y:0 dnzlhpjizj/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
dnzlhpjizj/hswofenhiy/mul_5е
(dnzlhpjizj/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(dnzlhpjizj/TensorArrayV2_1/element_shapeф
dnzlhpjizj/TensorArrayV2_1TensorListReserve1dnzlhpjizj/TensorArrayV2_1/element_shape:output:0#dnzlhpjizj/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
dnzlhpjizj/TensorArrayV2_1d
dnzlhpjizj/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/timeХ
#dnzlhpjizj/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#dnzlhpjizj/while/maximum_iterationsА
dnzlhpjizj/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
dnzlhpjizj/while/loop_counter▓
dnzlhpjizj/whileWhile&dnzlhpjizj/while/loop_counter:output:0,dnzlhpjizj/while/maximum_iterations:output:0dnzlhpjizj/time:output:0#dnzlhpjizj/TensorArrayV2_1:handle:0dnzlhpjizj/zeros:output:0dnzlhpjizj/zeros_1:output:0#dnzlhpjizj/strided_slice_1:output:0Bdnzlhpjizj/TensorArrayUnstack/TensorListFromTensor:output_handle:04dnzlhpjizj_hswofenhiy_matmul_readvariableop_resource6dnzlhpjizj_hswofenhiy_matmul_1_readvariableop_resource5dnzlhpjizj_hswofenhiy_biasadd_readvariableop_resource-dnzlhpjizj_hswofenhiy_readvariableop_resource/dnzlhpjizj_hswofenhiy_readvariableop_1_resource/dnzlhpjizj_hswofenhiy_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*)
body!R
dnzlhpjizj_while_body_2596964*)
cond!R
dnzlhpjizj_while_cond_2596963*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
dnzlhpjizj/while╦
;dnzlhpjizj/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;dnzlhpjizj/TensorArrayV2Stack/TensorListStack/element_shapeФ
-dnzlhpjizj/TensorArrayV2Stack/TensorListStackTensorListStackdnzlhpjizj/while:output:3Ddnzlhpjizj/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-dnzlhpjizj/TensorArrayV2Stack/TensorListStackЧ
 dnzlhpjizj/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 dnzlhpjizj/strided_slice_3/stackТ
"dnzlhpjizj/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"dnzlhpjizj/strided_slice_3/stack_1Т
"dnzlhpjizj/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"dnzlhpjizj/strided_slice_3/stack_2▄
dnzlhpjizj/strided_slice_3StridedSlice6dnzlhpjizj/TensorArrayV2Stack/TensorListStack:tensor:0)dnzlhpjizj/strided_slice_3/stack:output:0+dnzlhpjizj/strided_slice_3/stack_1:output:0+dnzlhpjizj/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
dnzlhpjizj/strided_slice_3П
dnzlhpjizj/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
dnzlhpjizj/transpose_1/perm╤
dnzlhpjizj/transpose_1	Transpose6dnzlhpjizj/TensorArrayV2Stack/TensorListStack:tensor:0$dnzlhpjizj/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
dnzlhpjizj/transpose_1n
nyosplwtfa/ShapeShapednzlhpjizj/transpose_1:y:0*
T0*
_output_shapes
:2
nyosplwtfa/ShapeК
nyosplwtfa/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
nyosplwtfa/strided_slice/stackО
 nyosplwtfa/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 nyosplwtfa/strided_slice/stack_1О
 nyosplwtfa/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 nyosplwtfa/strided_slice/stack_2д
nyosplwtfa/strided_sliceStridedSlicenyosplwtfa/Shape:output:0'nyosplwtfa/strided_slice/stack:output:0)nyosplwtfa/strided_slice/stack_1:output:0)nyosplwtfa/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
nyosplwtfa/strided_slicer
nyosplwtfa/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/zeros/mul/yШ
nyosplwtfa/zeros/mulMul!nyosplwtfa/strided_slice:output:0nyosplwtfa/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/zeros/mulu
nyosplwtfa/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
nyosplwtfa/zeros/Less/yУ
nyosplwtfa/zeros/LessLessnyosplwtfa/zeros/mul:z:0 nyosplwtfa/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/zeros/Lessx
nyosplwtfa/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/zeros/packed/1п
nyosplwtfa/zeros/packedPack!nyosplwtfa/strided_slice:output:0"nyosplwtfa/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
nyosplwtfa/zeros/packedu
nyosplwtfa/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
nyosplwtfa/zeros/Constб
nyosplwtfa/zerosFill nyosplwtfa/zeros/packed:output:0nyosplwtfa/zeros/Const:output:0*
T0*'
_output_shapes
:          2
nyosplwtfa/zerosv
nyosplwtfa/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/zeros_1/mul/yЮ
nyosplwtfa/zeros_1/mulMul!nyosplwtfa/strided_slice:output:0!nyosplwtfa/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/zeros_1/muly
nyosplwtfa/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
nyosplwtfa/zeros_1/Less/yЫ
nyosplwtfa/zeros_1/LessLessnyosplwtfa/zeros_1/mul:z:0"nyosplwtfa/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/zeros_1/Less|
nyosplwtfa/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/zeros_1/packed/1╡
nyosplwtfa/zeros_1/packedPack!nyosplwtfa/strided_slice:output:0$nyosplwtfa/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
nyosplwtfa/zeros_1/packedy
nyosplwtfa/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
nyosplwtfa/zeros_1/Constй
nyosplwtfa/zeros_1Fill"nyosplwtfa/zeros_1/packed:output:0!nyosplwtfa/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
nyosplwtfa/zeros_1Л
nyosplwtfa/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
nyosplwtfa/transpose/permп
nyosplwtfa/transpose	Transposednzlhpjizj/transpose_1:y:0"nyosplwtfa/transpose/perm:output:0*
T0*+
_output_shapes
:          2
nyosplwtfa/transposep
nyosplwtfa/Shape_1Shapenyosplwtfa/transpose:y:0*
T0*
_output_shapes
:2
nyosplwtfa/Shape_1О
 nyosplwtfa/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 nyosplwtfa/strided_slice_1/stackТ
"nyosplwtfa/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"nyosplwtfa/strided_slice_1/stack_1Т
"nyosplwtfa/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"nyosplwtfa/strided_slice_1/stack_2░
nyosplwtfa/strided_slice_1StridedSlicenyosplwtfa/Shape_1:output:0)nyosplwtfa/strided_slice_1/stack:output:0+nyosplwtfa/strided_slice_1/stack_1:output:0+nyosplwtfa/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
nyosplwtfa/strided_slice_1Ы
&nyosplwtfa/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&nyosplwtfa/TensorArrayV2/element_shape▐
nyosplwtfa/TensorArrayV2TensorListReserve/nyosplwtfa/TensorArrayV2/element_shape:output:0#nyosplwtfa/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
nyosplwtfa/TensorArrayV2╒
@nyosplwtfa/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2B
@nyosplwtfa/TensorArrayUnstack/TensorListFromTensor/element_shapeд
2nyosplwtfa/TensorArrayUnstack/TensorListFromTensorTensorListFromTensornyosplwtfa/transpose:y:0Inyosplwtfa/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2nyosplwtfa/TensorArrayUnstack/TensorListFromTensorО
 nyosplwtfa/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 nyosplwtfa/strided_slice_2/stackТ
"nyosplwtfa/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"nyosplwtfa/strided_slice_2/stack_1Т
"nyosplwtfa/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"nyosplwtfa/strided_slice_2/stack_2╛
nyosplwtfa/strided_slice_2StridedSlicenyosplwtfa/transpose:y:0)nyosplwtfa/strided_slice_2/stack:output:0+nyosplwtfa/strided_slice_2/stack_1:output:0+nyosplwtfa/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
nyosplwtfa/strided_slice_2╨
+nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp4nyosplwtfa_lwptfvtmlx_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02-
+nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp╙
nyosplwtfa/lwptfvtmlx/MatMulMatMul#nyosplwtfa/strided_slice_2:output:03nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
nyosplwtfa/lwptfvtmlx/MatMul╓
-nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp6nyosplwtfa_lwptfvtmlx_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02/
-nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp╧
nyosplwtfa/lwptfvtmlx/MatMul_1MatMulnyosplwtfa/zeros:output:05nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2 
nyosplwtfa/lwptfvtmlx/MatMul_1─
nyosplwtfa/lwptfvtmlx/addAddV2&nyosplwtfa/lwptfvtmlx/MatMul:product:0(nyosplwtfa/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
nyosplwtfa/lwptfvtmlx/add╧
,nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp5nyosplwtfa_lwptfvtmlx_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp╤
nyosplwtfa/lwptfvtmlx/BiasAddBiasAddnyosplwtfa/lwptfvtmlx/add:z:04nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
nyosplwtfa/lwptfvtmlx/BiasAddР
%nyosplwtfa/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%nyosplwtfa/lwptfvtmlx/split/split_dimЧ
nyosplwtfa/lwptfvtmlx/splitSplit.nyosplwtfa/lwptfvtmlx/split/split_dim:output:0&nyosplwtfa/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
nyosplwtfa/lwptfvtmlx/split╢
$nyosplwtfa/lwptfvtmlx/ReadVariableOpReadVariableOp-nyosplwtfa_lwptfvtmlx_readvariableop_resource*
_output_shapes
: *
dtype02&
$nyosplwtfa/lwptfvtmlx/ReadVariableOp║
nyosplwtfa/lwptfvtmlx/mulMul,nyosplwtfa/lwptfvtmlx/ReadVariableOp:value:0nyosplwtfa/zeros_1:output:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul║
nyosplwtfa/lwptfvtmlx/add_1AddV2$nyosplwtfa/lwptfvtmlx/split:output:0nyosplwtfa/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/add_1Ь
nyosplwtfa/lwptfvtmlx/SigmoidSigmoidnyosplwtfa/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/Sigmoid╝
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_1ReadVariableOp/nyosplwtfa_lwptfvtmlx_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_1└
nyosplwtfa/lwptfvtmlx/mul_1Mul.nyosplwtfa/lwptfvtmlx/ReadVariableOp_1:value:0nyosplwtfa/zeros_1:output:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul_1╝
nyosplwtfa/lwptfvtmlx/add_2AddV2$nyosplwtfa/lwptfvtmlx/split:output:1nyosplwtfa/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/add_2а
nyosplwtfa/lwptfvtmlx/Sigmoid_1Sigmoidnyosplwtfa/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2!
nyosplwtfa/lwptfvtmlx/Sigmoid_1╡
nyosplwtfa/lwptfvtmlx/mul_2Mul#nyosplwtfa/lwptfvtmlx/Sigmoid_1:y:0nyosplwtfa/zeros_1:output:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul_2Ш
nyosplwtfa/lwptfvtmlx/TanhTanh$nyosplwtfa/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/Tanh╢
nyosplwtfa/lwptfvtmlx/mul_3Mul!nyosplwtfa/lwptfvtmlx/Sigmoid:y:0nyosplwtfa/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul_3╖
nyosplwtfa/lwptfvtmlx/add_3AddV2nyosplwtfa/lwptfvtmlx/mul_2:z:0nyosplwtfa/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/add_3╝
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_2ReadVariableOp/nyosplwtfa_lwptfvtmlx_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_2─
nyosplwtfa/lwptfvtmlx/mul_4Mul.nyosplwtfa/lwptfvtmlx/ReadVariableOp_2:value:0nyosplwtfa/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul_4╝
nyosplwtfa/lwptfvtmlx/add_4AddV2$nyosplwtfa/lwptfvtmlx/split:output:3nyosplwtfa/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/add_4а
nyosplwtfa/lwptfvtmlx/Sigmoid_2Sigmoidnyosplwtfa/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2!
nyosplwtfa/lwptfvtmlx/Sigmoid_2Ч
nyosplwtfa/lwptfvtmlx/Tanh_1Tanhnyosplwtfa/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/Tanh_1║
nyosplwtfa/lwptfvtmlx/mul_5Mul#nyosplwtfa/lwptfvtmlx/Sigmoid_2:y:0 nyosplwtfa/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
nyosplwtfa/lwptfvtmlx/mul_5е
(nyosplwtfa/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2*
(nyosplwtfa/TensorArrayV2_1/element_shapeф
nyosplwtfa/TensorArrayV2_1TensorListReserve1nyosplwtfa/TensorArrayV2_1/element_shape:output:0#nyosplwtfa/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
nyosplwtfa/TensorArrayV2_1d
nyosplwtfa/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/timeХ
#nyosplwtfa/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#nyosplwtfa/while/maximum_iterationsА
nyosplwtfa/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
nyosplwtfa/while/loop_counter▓
nyosplwtfa/whileWhile&nyosplwtfa/while/loop_counter:output:0,nyosplwtfa/while/maximum_iterations:output:0nyosplwtfa/time:output:0#nyosplwtfa/TensorArrayV2_1:handle:0nyosplwtfa/zeros:output:0nyosplwtfa/zeros_1:output:0#nyosplwtfa/strided_slice_1:output:0Bnyosplwtfa/TensorArrayUnstack/TensorListFromTensor:output_handle:04nyosplwtfa_lwptfvtmlx_matmul_readvariableop_resource6nyosplwtfa_lwptfvtmlx_matmul_1_readvariableop_resource5nyosplwtfa_lwptfvtmlx_biasadd_readvariableop_resource-nyosplwtfa_lwptfvtmlx_readvariableop_resource/nyosplwtfa_lwptfvtmlx_readvariableop_1_resource/nyosplwtfa_lwptfvtmlx_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*)
body!R
nyosplwtfa_while_body_2597140*)
cond!R
nyosplwtfa_while_cond_2597139*Q
output_shapes@
>: : : : :          :          : : : : : : : : *
parallel_iterations 2
nyosplwtfa/while╦
;nyosplwtfa/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2=
;nyosplwtfa/TensorArrayV2Stack/TensorListStack/element_shapeФ
-nyosplwtfa/TensorArrayV2Stack/TensorListStackTensorListStacknyosplwtfa/while:output:3Dnyosplwtfa/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02/
-nyosplwtfa/TensorArrayV2Stack/TensorListStackЧ
 nyosplwtfa/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2"
 nyosplwtfa/strided_slice_3/stackТ
"nyosplwtfa/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"nyosplwtfa/strided_slice_3/stack_1Т
"nyosplwtfa/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"nyosplwtfa/strided_slice_3/stack_2▄
nyosplwtfa/strided_slice_3StridedSlice6nyosplwtfa/TensorArrayV2Stack/TensorListStack:tensor:0)nyosplwtfa/strided_slice_3/stack:output:0+nyosplwtfa/strided_slice_3/stack_1:output:0+nyosplwtfa/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
nyosplwtfa/strided_slice_3П
nyosplwtfa/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
nyosplwtfa/transpose_1/perm╤
nyosplwtfa/transpose_1	Transpose6nyosplwtfa/TensorArrayV2Stack/TensorListStack:tensor:0$nyosplwtfa/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
nyosplwtfa/transpose_1о
 chsgvefspq/MatMul/ReadVariableOpReadVariableOp)chsgvefspq_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 chsgvefspq/MatMul/ReadVariableOp▒
chsgvefspq/MatMulMatMul#nyosplwtfa/strided_slice_3:output:0(chsgvefspq/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
chsgvefspq/MatMulн
!chsgvefspq/BiasAdd/ReadVariableOpReadVariableOp*chsgvefspq_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!chsgvefspq/BiasAdd/ReadVariableOpн
chsgvefspq/BiasAddBiasAddchsgvefspq/MatMul:product:0)chsgvefspq/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
chsgvefspq/BiasAdd╧
IdentityIdentitychsgvefspq/BiasAdd:output:0"^chsgvefspq/BiasAdd/ReadVariableOp!^chsgvefspq/MatMul/ReadVariableOp-^dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp,^dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp.^dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp%^dnzlhpjizj/hswofenhiy/ReadVariableOp'^dnzlhpjizj/hswofenhiy/ReadVariableOp_1'^dnzlhpjizj/hswofenhiy/ReadVariableOp_2^dnzlhpjizj/while.^gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp5^gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp-^nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp,^nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp.^nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp%^nyosplwtfa/lwptfvtmlx/ReadVariableOp'^nyosplwtfa/lwptfvtmlx/ReadVariableOp_1'^nyosplwtfa/lwptfvtmlx/ReadVariableOp_2^nyosplwtfa/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:         : : : : : : : : : : : : : : : : 2F
!chsgvefspq/BiasAdd/ReadVariableOp!chsgvefspq/BiasAdd/ReadVariableOp2D
 chsgvefspq/MatMul/ReadVariableOp chsgvefspq/MatMul/ReadVariableOp2\
,dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp,dnzlhpjizj/hswofenhiy/BiasAdd/ReadVariableOp2Z
+dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp+dnzlhpjizj/hswofenhiy/MatMul/ReadVariableOp2^
-dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp-dnzlhpjizj/hswofenhiy/MatMul_1/ReadVariableOp2L
$dnzlhpjizj/hswofenhiy/ReadVariableOp$dnzlhpjizj/hswofenhiy/ReadVariableOp2P
&dnzlhpjizj/hswofenhiy/ReadVariableOp_1&dnzlhpjizj/hswofenhiy/ReadVariableOp_12P
&dnzlhpjizj/hswofenhiy/ReadVariableOp_2&dnzlhpjizj/hswofenhiy/ReadVariableOp_22$
dnzlhpjizj/whilednzlhpjizj/while2^
-gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp-gtjikcltwy/conv1d/ExpandDims_1/ReadVariableOp2l
4gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp4gtjikcltwy/squeeze_batch_dims/BiasAdd/ReadVariableOp2\
,nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp,nyosplwtfa/lwptfvtmlx/BiasAdd/ReadVariableOp2Z
+nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp+nyosplwtfa/lwptfvtmlx/MatMul/ReadVariableOp2^
-nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp-nyosplwtfa/lwptfvtmlx/MatMul_1/ReadVariableOp2L
$nyosplwtfa/lwptfvtmlx/ReadVariableOp$nyosplwtfa/lwptfvtmlx/ReadVariableOp2P
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_1&nyosplwtfa/lwptfvtmlx/ReadVariableOp_12P
&nyosplwtfa/lwptfvtmlx/ReadVariableOp_2&nyosplwtfa/lwptfvtmlx/ReadVariableOp_22$
nyosplwtfa/whilenyosplwtfa/while:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Б
└
,__inference_hswofenhiy_layer_call_fn_2599114

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

identity_2ИвStatefulPartitionedCallь
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
GPU2*0J 8В *P
fKRI
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_25939612
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
Л

э
while_cond_2597463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2597463___redundant_placeholder05
1while_while_cond_2597463___redundant_placeholder15
1while_while_cond_2597463___redundant_placeholder25
1while_while_cond_2597463___redundant_placeholder35
1while_while_cond_2597463___redundant_placeholder45
1while_while_cond_2597463___redundant_placeholder55
1while_while_cond_2597463___redundant_placeholder6
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
пF
ъ
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2594895

inputs%
lwptfvtmlx_2594796:	 А%
lwptfvtmlx_2594798:	 А!
lwptfvtmlx_2594800:	А 
lwptfvtmlx_2594802:  
lwptfvtmlx_2594804:  
lwptfvtmlx_2594806: 
identityИв"lwptfvtmlx/StatefulPartitionedCallвwhileD
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
strided_slice_2┌
"lwptfvtmlx/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lwptfvtmlx_2594796lwptfvtmlx_2594798lwptfvtmlx_2594800lwptfvtmlx_2594802lwptfvtmlx_2594804lwptfvtmlx_2594806*
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
GPU2*0J 8В *P
fKRI
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_25947192$
"lwptfvtmlx/StatefulPartitionedCallП
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
while/loop_counterЁ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lwptfvtmlx_2594796lwptfvtmlx_2594798lwptfvtmlx_2594800lwptfvtmlx_2594802lwptfvtmlx_2594804lwptfvtmlx_2594806*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2594815*
condR
while_cond_2594814*Q
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
IdentityIdentitystrided_slice_3:output:0#^lwptfvtmlx/StatefulPartitionedCall^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                   : : : : : : 2H
"lwptfvtmlx/StatefulPartitionedCall"lwptfvtmlx/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                   
 
_user_specified_nameinputs
Щp
╩
nyosplwtfa_while_body_25967362
.nyosplwtfa_while_nyosplwtfa_while_loop_counter8
4nyosplwtfa_while_nyosplwtfa_while_maximum_iterations 
nyosplwtfa_while_placeholder"
nyosplwtfa_while_placeholder_1"
nyosplwtfa_while_placeholder_2"
nyosplwtfa_while_placeholder_31
-nyosplwtfa_while_nyosplwtfa_strided_slice_1_0m
inyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_nyosplwtfa_tensorarrayunstack_tensorlistfromtensor_0O
<nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource_0:	 АQ
>nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource_0:	 АL
=nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource_0:	АC
5nyosplwtfa_while_lwptfvtmlx_readvariableop_resource_0: E
7nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource_0: E
7nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource_0: 
nyosplwtfa_while_identity
nyosplwtfa_while_identity_1
nyosplwtfa_while_identity_2
nyosplwtfa_while_identity_3
nyosplwtfa_while_identity_4
nyosplwtfa_while_identity_5/
+nyosplwtfa_while_nyosplwtfa_strided_slice_1k
gnyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_nyosplwtfa_tensorarrayunstack_tensorlistfromtensorM
:nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource:	 АO
<nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource:	 АJ
;nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource:	АA
3nyosplwtfa_while_lwptfvtmlx_readvariableop_resource: C
5nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource: C
5nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource: Ив2nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOpв1nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOpв3nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOpв*nyosplwtfa/while/lwptfvtmlx/ReadVariableOpв,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1в,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2┘
Bnyosplwtfa/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bnyosplwtfa/while/TensorArrayV2Read/TensorListGetItem/element_shapeХ
4nyosplwtfa/while/TensorArrayV2Read/TensorListGetItemTensorListGetIteminyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_nyosplwtfa_tensorarrayunstack_tensorlistfromtensor_0nyosplwtfa_while_placeholderKnyosplwtfa/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype026
4nyosplwtfa/while/TensorArrayV2Read/TensorListGetItemф
1nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp<nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype023
1nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp¤
"nyosplwtfa/while/lwptfvtmlx/MatMulMatMul;nyosplwtfa/while/TensorArrayV2Read/TensorListGetItem:item:09nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"nyosplwtfa/while/lwptfvtmlx/MatMulъ
3nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp>nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype025
3nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOpц
$nyosplwtfa/while/lwptfvtmlx/MatMul_1MatMulnyosplwtfa_while_placeholder_2;nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2&
$nyosplwtfa/while/lwptfvtmlx/MatMul_1▄
nyosplwtfa/while/lwptfvtmlx/addAddV2,nyosplwtfa/while/lwptfvtmlx/MatMul:product:0.nyosplwtfa/while/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2!
nyosplwtfa/while/lwptfvtmlx/addу
2nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp=nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype024
2nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOpщ
#nyosplwtfa/while/lwptfvtmlx/BiasAddBiasAdd#nyosplwtfa/while/lwptfvtmlx/add:z:0:nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#nyosplwtfa/while/lwptfvtmlx/BiasAddЬ
+nyosplwtfa/while/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+nyosplwtfa/while/lwptfvtmlx/split/split_dimп
!nyosplwtfa/while/lwptfvtmlx/splitSplit4nyosplwtfa/while/lwptfvtmlx/split/split_dim:output:0,nyosplwtfa/while/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2#
!nyosplwtfa/while/lwptfvtmlx/split╩
*nyosplwtfa/while/lwptfvtmlx/ReadVariableOpReadVariableOp5nyosplwtfa_while_lwptfvtmlx_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*nyosplwtfa/while/lwptfvtmlx/ReadVariableOp╧
nyosplwtfa/while/lwptfvtmlx/mulMul2nyosplwtfa/while/lwptfvtmlx/ReadVariableOp:value:0nyosplwtfa_while_placeholder_3*
T0*'
_output_shapes
:          2!
nyosplwtfa/while/lwptfvtmlx/mul╥
!nyosplwtfa/while/lwptfvtmlx/add_1AddV2*nyosplwtfa/while/lwptfvtmlx/split:output:0#nyosplwtfa/while/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/add_1о
#nyosplwtfa/while/lwptfvtmlx/SigmoidSigmoid%nyosplwtfa/while/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2%
#nyosplwtfa/while/lwptfvtmlx/Sigmoid╨
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1ReadVariableOp7nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1╒
!nyosplwtfa/while/lwptfvtmlx/mul_1Mul4nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1:value:0nyosplwtfa_while_placeholder_3*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/mul_1╘
!nyosplwtfa/while/lwptfvtmlx/add_2AddV2*nyosplwtfa/while/lwptfvtmlx/split:output:1%nyosplwtfa/while/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/add_2▓
%nyosplwtfa/while/lwptfvtmlx/Sigmoid_1Sigmoid%nyosplwtfa/while/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2'
%nyosplwtfa/while/lwptfvtmlx/Sigmoid_1╩
!nyosplwtfa/while/lwptfvtmlx/mul_2Mul)nyosplwtfa/while/lwptfvtmlx/Sigmoid_1:y:0nyosplwtfa_while_placeholder_3*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/mul_2к
 nyosplwtfa/while/lwptfvtmlx/TanhTanh*nyosplwtfa/while/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2"
 nyosplwtfa/while/lwptfvtmlx/Tanh╬
!nyosplwtfa/while/lwptfvtmlx/mul_3Mul'nyosplwtfa/while/lwptfvtmlx/Sigmoid:y:0$nyosplwtfa/while/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/mul_3╧
!nyosplwtfa/while/lwptfvtmlx/add_3AddV2%nyosplwtfa/while/lwptfvtmlx/mul_2:z:0%nyosplwtfa/while/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/add_3╨
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2ReadVariableOp7nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2▄
!nyosplwtfa/while/lwptfvtmlx/mul_4Mul4nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2:value:0%nyosplwtfa/while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/mul_4╘
!nyosplwtfa/while/lwptfvtmlx/add_4AddV2*nyosplwtfa/while/lwptfvtmlx/split:output:3%nyosplwtfa/while/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/add_4▓
%nyosplwtfa/while/lwptfvtmlx/Sigmoid_2Sigmoid%nyosplwtfa/while/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2'
%nyosplwtfa/while/lwptfvtmlx/Sigmoid_2й
"nyosplwtfa/while/lwptfvtmlx/Tanh_1Tanh%nyosplwtfa/while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2$
"nyosplwtfa/while/lwptfvtmlx/Tanh_1╥
!nyosplwtfa/while/lwptfvtmlx/mul_5Mul)nyosplwtfa/while/lwptfvtmlx/Sigmoid_2:y:0&nyosplwtfa/while/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2#
!nyosplwtfa/while/lwptfvtmlx/mul_5Х
5nyosplwtfa/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemnyosplwtfa_while_placeholder_1nyosplwtfa_while_placeholder%nyosplwtfa/while/lwptfvtmlx/mul_5:z:0*
_output_shapes
: *
element_dtype027
5nyosplwtfa/while/TensorArrayV2Write/TensorListSetItemr
nyosplwtfa/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
nyosplwtfa/while/add/yХ
nyosplwtfa/while/addAddV2nyosplwtfa_while_placeholdernyosplwtfa/while/add/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/while/addv
nyosplwtfa/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
nyosplwtfa/while/add_1/yн
nyosplwtfa/while/add_1AddV2.nyosplwtfa_while_nyosplwtfa_while_loop_counter!nyosplwtfa/while/add_1/y:output:0*
T0*
_output_shapes
: 2
nyosplwtfa/while/add_1й
nyosplwtfa/while/IdentityIdentitynyosplwtfa/while/add_1:z:03^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
nyosplwtfa/while/Identity╟
nyosplwtfa/while/Identity_1Identity4nyosplwtfa_while_nyosplwtfa_while_maximum_iterations3^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
nyosplwtfa/while/Identity_1л
nyosplwtfa/while/Identity_2Identitynyosplwtfa/while/add:z:03^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
nyosplwtfa/while/Identity_2╪
nyosplwtfa/while/Identity_3IdentityEnyosplwtfa/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
nyosplwtfa/while/Identity_3╔
nyosplwtfa/while/Identity_4Identity%nyosplwtfa/while/lwptfvtmlx/mul_5:z:03^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2
nyosplwtfa/while/Identity_4╔
nyosplwtfa/while/Identity_5Identity%nyosplwtfa/while/lwptfvtmlx/add_3:z:03^nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2^nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp4^nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp+^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1-^nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2
nyosplwtfa/while/Identity_5"?
nyosplwtfa_while_identity"nyosplwtfa/while/Identity:output:0"C
nyosplwtfa_while_identity_1$nyosplwtfa/while/Identity_1:output:0"C
nyosplwtfa_while_identity_2$nyosplwtfa/while/Identity_2:output:0"C
nyosplwtfa_while_identity_3$nyosplwtfa/while/Identity_3:output:0"C
nyosplwtfa_while_identity_4$nyosplwtfa/while/Identity_4:output:0"C
nyosplwtfa_while_identity_5$nyosplwtfa/while/Identity_5:output:0"|
;nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource=nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource_0"~
<nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource>nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource_0"z
:nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource<nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource_0"p
5nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource7nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource_0"p
5nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource7nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource_0"l
3nyosplwtfa_while_lwptfvtmlx_readvariableop_resource5nyosplwtfa_while_lwptfvtmlx_readvariableop_resource_0"\
+nyosplwtfa_while_nyosplwtfa_strided_slice_1-nyosplwtfa_while_nyosplwtfa_strided_slice_1_0"╘
gnyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_nyosplwtfa_tensorarrayunstack_tensorlistfromtensorinyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_nyosplwtfa_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2h
2nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2f
1nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp1nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp2j
3nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp3nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp2X
*nyosplwtfa/while/lwptfvtmlx/ReadVariableOp*nyosplwtfa/while/lwptfvtmlx/ReadVariableOp2\
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_12\
,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2,nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2: 
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
жh
Е
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2595915

inputs<
)lwptfvtmlx_matmul_readvariableop_resource:	 А>
+lwptfvtmlx_matmul_1_readvariableop_resource:	 А9
*lwptfvtmlx_biasadd_readvariableop_resource:	А0
"lwptfvtmlx_readvariableop_resource: 2
$lwptfvtmlx_readvariableop_1_resource: 2
$lwptfvtmlx_readvariableop_2_resource: 
identityИв!lwptfvtmlx/BiasAdd/ReadVariableOpв lwptfvtmlx/MatMul/ReadVariableOpв"lwptfvtmlx/MatMul_1/ReadVariableOpвlwptfvtmlx/ReadVariableOpвlwptfvtmlx/ReadVariableOp_1вlwptfvtmlx/ReadVariableOp_2вwhileD
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
 lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp)lwptfvtmlx_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 lwptfvtmlx/MatMul/ReadVariableOpз
lwptfvtmlx/MatMulMatMulstrided_slice_2:output:0(lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul╡
"lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp+lwptfvtmlx_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"lwptfvtmlx/MatMul_1/ReadVariableOpг
lwptfvtmlx/MatMul_1MatMulzeros:output:0*lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul_1Ш
lwptfvtmlx/addAddV2lwptfvtmlx/MatMul:product:0lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/addо
!lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp*lwptfvtmlx_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!lwptfvtmlx/BiasAdd/ReadVariableOpе
lwptfvtmlx/BiasAddBiasAddlwptfvtmlx/add:z:0)lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/BiasAddz
lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lwptfvtmlx/split/split_dimы
lwptfvtmlx/splitSplit#lwptfvtmlx/split/split_dim:output:0lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lwptfvtmlx/splitХ
lwptfvtmlx/ReadVariableOpReadVariableOp"lwptfvtmlx_readvariableop_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOpО
lwptfvtmlx/mulMul!lwptfvtmlx/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mulО
lwptfvtmlx/add_1AddV2lwptfvtmlx/split:output:0lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_1{
lwptfvtmlx/SigmoidSigmoidlwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/SigmoidЫ
lwptfvtmlx/ReadVariableOp_1ReadVariableOp$lwptfvtmlx_readvariableop_1_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_1Ф
lwptfvtmlx/mul_1Mul#lwptfvtmlx/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_1Р
lwptfvtmlx/add_2AddV2lwptfvtmlx/split:output:1lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_2
lwptfvtmlx/Sigmoid_1Sigmoidlwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_1Й
lwptfvtmlx/mul_2Mullwptfvtmlx/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_2w
lwptfvtmlx/TanhTanhlwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
lwptfvtmlx/TanhК
lwptfvtmlx/mul_3Mullwptfvtmlx/Sigmoid:y:0lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_3Л
lwptfvtmlx/add_3AddV2lwptfvtmlx/mul_2:z:0lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_3Ы
lwptfvtmlx/ReadVariableOp_2ReadVariableOp$lwptfvtmlx_readvariableop_2_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_2Ш
lwptfvtmlx/mul_4Mul#lwptfvtmlx/ReadVariableOp_2:value:0lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_4Р
lwptfvtmlx/add_4AddV2lwptfvtmlx/split:output:3lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_4
lwptfvtmlx/Sigmoid_2Sigmoidlwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_2v
lwptfvtmlx/Tanh_1Tanhlwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Tanh_1О
lwptfvtmlx/mul_5Mullwptfvtmlx/Sigmoid_2:y:0lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lwptfvtmlx_matmul_readvariableop_resource+lwptfvtmlx_matmul_1_readvariableop_resource*lwptfvtmlx_biasadd_readvariableop_resource"lwptfvtmlx_readvariableop_resource$lwptfvtmlx_readvariableop_1_resource$lwptfvtmlx_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2595814*
condR
while_cond_2595813*Q
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
IdentityIdentitystrided_slice_3:output:0"^lwptfvtmlx/BiasAdd/ReadVariableOp!^lwptfvtmlx/MatMul/ReadVariableOp#^lwptfvtmlx/MatMul_1/ReadVariableOp^lwptfvtmlx/ReadVariableOp^lwptfvtmlx/ReadVariableOp_1^lwptfvtmlx/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!lwptfvtmlx/BiasAdd/ReadVariableOp!lwptfvtmlx/BiasAdd/ReadVariableOp2D
 lwptfvtmlx/MatMul/ReadVariableOp lwptfvtmlx/MatMul/ReadVariableOp2H
"lwptfvtmlx/MatMul_1/ReadVariableOp"lwptfvtmlx/MatMul_1/ReadVariableOp26
lwptfvtmlx/ReadVariableOplwptfvtmlx/ReadVariableOp2:
lwptfvtmlx/ReadVariableOp_1lwptfvtmlx/ReadVariableOp_12:
lwptfvtmlx/ReadVariableOp_2lwptfvtmlx/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
й0
╝
G__inference_gtjikcltwy_layer_call_and_return_conditional_losses_2597358

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
Ъ
c
G__inference_ezubtmdnwx_layer_call_and_return_conditional_losses_2597380

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
бh
Е
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2597925

inputs<
)hswofenhiy_matmul_readvariableop_resource:	А>
+hswofenhiy_matmul_1_readvariableop_resource:	 А9
*hswofenhiy_biasadd_readvariableop_resource:	А0
"hswofenhiy_readvariableop_resource: 2
$hswofenhiy_readvariableop_1_resource: 2
$hswofenhiy_readvariableop_2_resource: 
identityИв!hswofenhiy/BiasAdd/ReadVariableOpв hswofenhiy/MatMul/ReadVariableOpв"hswofenhiy/MatMul_1/ReadVariableOpвhswofenhiy/ReadVariableOpвhswofenhiy/ReadVariableOp_1вhswofenhiy/ReadVariableOp_2вwhileD
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
 hswofenhiy/MatMul/ReadVariableOpReadVariableOp)hswofenhiy_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 hswofenhiy/MatMul/ReadVariableOpз
hswofenhiy/MatMulMatMulstrided_slice_2:output:0(hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul╡
"hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp+hswofenhiy_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"hswofenhiy/MatMul_1/ReadVariableOpг
hswofenhiy/MatMul_1MatMulzeros:output:0*hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul_1Ш
hswofenhiy/addAddV2hswofenhiy/MatMul:product:0hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
hswofenhiy/addо
!hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp*hswofenhiy_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!hswofenhiy/BiasAdd/ReadVariableOpе
hswofenhiy/BiasAddBiasAddhswofenhiy/add:z:0)hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/BiasAddz
hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
hswofenhiy/split/split_dimы
hswofenhiy/splitSplit#hswofenhiy/split/split_dim:output:0hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
hswofenhiy/splitХ
hswofenhiy/ReadVariableOpReadVariableOp"hswofenhiy_readvariableop_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOpО
hswofenhiy/mulMul!hswofenhiy/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mulО
hswofenhiy/add_1AddV2hswofenhiy/split:output:0hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_1{
hswofenhiy/SigmoidSigmoidhswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/SigmoidЫ
hswofenhiy/ReadVariableOp_1ReadVariableOp$hswofenhiy_readvariableop_1_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_1Ф
hswofenhiy/mul_1Mul#hswofenhiy/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_1Р
hswofenhiy/add_2AddV2hswofenhiy/split:output:1hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_2
hswofenhiy/Sigmoid_1Sigmoidhswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_1Й
hswofenhiy/mul_2Mulhswofenhiy/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_2w
hswofenhiy/TanhTanhhswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
hswofenhiy/TanhК
hswofenhiy/mul_3Mulhswofenhiy/Sigmoid:y:0hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_3Л
hswofenhiy/add_3AddV2hswofenhiy/mul_2:z:0hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_3Ы
hswofenhiy/ReadVariableOp_2ReadVariableOp$hswofenhiy_readvariableop_2_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_2Ш
hswofenhiy/mul_4Mul#hswofenhiy/ReadVariableOp_2:value:0hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_4Р
hswofenhiy/add_4AddV2hswofenhiy/split:output:3hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_4
hswofenhiy/Sigmoid_2Sigmoidhswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_2v
hswofenhiy/Tanh_1Tanhhswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Tanh_1О
hswofenhiy/mul_5Mulhswofenhiy/Sigmoid_2:y:0hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)hswofenhiy_matmul_readvariableop_resource+hswofenhiy_matmul_1_readvariableop_resource*hswofenhiy_biasadd_readvariableop_resource"hswofenhiy_readvariableop_resource$hswofenhiy_readvariableop_1_resource$hswofenhiy_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2597824*
condR
while_cond_2597823*Q
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
IdentityIdentitytranspose_1:y:0"^hswofenhiy/BiasAdd/ReadVariableOp!^hswofenhiy/MatMul/ReadVariableOp#^hswofenhiy/MatMul_1/ReadVariableOp^hswofenhiy/ReadVariableOp^hswofenhiy/ReadVariableOp_1^hswofenhiy/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!hswofenhiy/BiasAdd/ReadVariableOp!hswofenhiy/BiasAdd/ReadVariableOp2D
 hswofenhiy/MatMul/ReadVariableOp hswofenhiy/MatMul/ReadVariableOp2H
"hswofenhiy/MatMul_1/ReadVariableOp"hswofenhiy/MatMul_1/ReadVariableOp26
hswofenhiy/ReadVariableOphswofenhiy/ReadVariableOp2:
hswofenhiy/ReadVariableOp_1hswofenhiy/ReadVariableOp_12:
hswofenhiy/ReadVariableOp_2hswofenhiy/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
М
Ъ
,__inference_sequential_layer_call_fn_2597284

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
identityИвStatefulPartitionedCall╡
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
GPU2*0J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_25956712
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
ч)
╥
while_body_2593794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_hswofenhiy_2593818_0:	А-
while_hswofenhiy_2593820_0:	 А)
while_hswofenhiy_2593822_0:	А(
while_hswofenhiy_2593824_0: (
while_hswofenhiy_2593826_0: (
while_hswofenhiy_2593828_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_hswofenhiy_2593818:	А+
while_hswofenhiy_2593820:	 А'
while_hswofenhiy_2593822:	А&
while_hswofenhiy_2593824: &
while_hswofenhiy_2593826: &
while_hswofenhiy_2593828: Ив(while/hswofenhiy/StatefulPartitionedCall├
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
)while/TensorArrayV2Read/TensorListGetItem╢
(while/hswofenhiy/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_hswofenhiy_2593818_0while_hswofenhiy_2593820_0while_hswofenhiy_2593822_0while_hswofenhiy_2593824_0while_hswofenhiy_2593826_0while_hswofenhiy_2593828_0*
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
GPU2*0J 8В *P
fKRI
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_25937742*
(while/hswofenhiy/StatefulPartitionedCallї
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/hswofenhiy/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/hswofenhiy/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/IdentityЬ
while/Identity_1Identitywhile_while_maximum_iterations)^while/hswofenhiy/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Л
while/Identity_2Identitywhile/add:z:0)^while/hswofenhiy/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2╕
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/hswofenhiy/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3└
while/Identity_4Identity1while/hswofenhiy/StatefulPartitionedCall:output:1)^while/hswofenhiy/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_4└
while/Identity_5Identity1while/hswofenhiy/StatefulPartitionedCall:output:2)^while/hswofenhiy/StatefulPartitionedCall*
T0*'
_output_shapes
:          2
while/Identity_5"6
while_hswofenhiy_2593818while_hswofenhiy_2593818_0"6
while_hswofenhiy_2593820while_hswofenhiy_2593820_0"6
while_hswofenhiy_2593822while_hswofenhiy_2593822_0"6
while_hswofenhiy_2593824while_hswofenhiy_2593824_0"6
while_hswofenhiy_2593826while_hswofenhiy_2593826_0"6
while_hswofenhiy_2593828while_hswofenhiy_2593828_0")
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
(while/hswofenhiy/StatefulPartitionedCall(while/hswofenhiy/StatefulPartitionedCall: 
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
е
й	
(sequential_dnzlhpjizj_while_cond_2593403H
Dsequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_loop_counterN
Jsequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_maximum_iterations+
'sequential_dnzlhpjizj_while_placeholder-
)sequential_dnzlhpjizj_while_placeholder_1-
)sequential_dnzlhpjizj_while_placeholder_2-
)sequential_dnzlhpjizj_while_placeholder_3J
Fsequential_dnzlhpjizj_while_less_sequential_dnzlhpjizj_strided_slice_1a
]sequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_cond_2593403___redundant_placeholder0a
]sequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_cond_2593403___redundant_placeholder1a
]sequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_cond_2593403___redundant_placeholder2a
]sequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_cond_2593403___redundant_placeholder3a
]sequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_cond_2593403___redundant_placeholder4a
]sequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_cond_2593403___redundant_placeholder5a
]sequential_dnzlhpjizj_while_sequential_dnzlhpjizj_while_cond_2593403___redundant_placeholder6(
$sequential_dnzlhpjizj_while_identity
▐
 sequential/dnzlhpjizj/while/LessLess'sequential_dnzlhpjizj_while_placeholderFsequential_dnzlhpjizj_while_less_sequential_dnzlhpjizj_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/dnzlhpjizj/while/LessЯ
$sequential/dnzlhpjizj/while/IdentityIdentity$sequential/dnzlhpjizj/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/dnzlhpjizj/while/Identity"U
$sequential_dnzlhpjizj_while_identity-sequential/dnzlhpjizj/while/Identity:output:0*(
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
М
Ъ
,__inference_sequential_layer_call_fn_2597321

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
identityИвStatefulPartitionedCall╡
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
GPU2*0J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_25962402
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
Ш
Л
nyosplwtfa_while_cond_25967352
.nyosplwtfa_while_nyosplwtfa_while_loop_counter8
4nyosplwtfa_while_nyosplwtfa_while_maximum_iterations 
nyosplwtfa_while_placeholder"
nyosplwtfa_while_placeholder_1"
nyosplwtfa_while_placeholder_2"
nyosplwtfa_while_placeholder_34
0nyosplwtfa_while_less_nyosplwtfa_strided_slice_1K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2596735___redundant_placeholder0K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2596735___redundant_placeholder1K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2596735___redundant_placeholder2K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2596735___redundant_placeholder3K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2596735___redundant_placeholder4K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2596735___redundant_placeholder5K
Gnyosplwtfa_while_nyosplwtfa_while_cond_2596735___redundant_placeholder6
nyosplwtfa_while_identity
з
nyosplwtfa/while/LessLessnyosplwtfa_while_placeholder0nyosplwtfa_while_less_nyosplwtfa_strided_slice_1*
T0*
_output_shapes
: 2
nyosplwtfa/while/Less~
nyosplwtfa/while/IdentityIdentitynyosplwtfa/while/Less:z:0*
T0
*
_output_shapes
: 2
nyosplwtfa/while/Identity"?
nyosplwtfa_while_identity"nyosplwtfa/while/Identity:output:0*(
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
рY
З
while_body_2597464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_hswofenhiy_matmul_readvariableop_resource_0:	АF
3while_hswofenhiy_matmul_1_readvariableop_resource_0:	 АA
2while_hswofenhiy_biasadd_readvariableop_resource_0:	А8
*while_hswofenhiy_readvariableop_resource_0: :
,while_hswofenhiy_readvariableop_1_resource_0: :
,while_hswofenhiy_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_hswofenhiy_matmul_readvariableop_resource:	АD
1while_hswofenhiy_matmul_1_readvariableop_resource:	 А?
0while_hswofenhiy_biasadd_readvariableop_resource:	А6
(while_hswofenhiy_readvariableop_resource: 8
*while_hswofenhiy_readvariableop_1_resource: 8
*while_hswofenhiy_readvariableop_2_resource: Ив'while/hswofenhiy/BiasAdd/ReadVariableOpв&while/hswofenhiy/MatMul/ReadVariableOpв(while/hswofenhiy/MatMul_1/ReadVariableOpвwhile/hswofenhiy/ReadVariableOpв!while/hswofenhiy/ReadVariableOp_1в!while/hswofenhiy/ReadVariableOp_2├
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
&while/hswofenhiy/MatMul/ReadVariableOpReadVariableOp1while_hswofenhiy_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/hswofenhiy/MatMul/ReadVariableOp╤
while/hswofenhiy/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul╔
(while/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp3while_hswofenhiy_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/hswofenhiy/MatMul_1/ReadVariableOp║
while/hswofenhiy/MatMul_1MatMulwhile_placeholder_20while/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul_1░
while/hswofenhiy/addAddV2!while/hswofenhiy/MatMul:product:0#while/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/add┬
'while/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp2while_hswofenhiy_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/hswofenhiy/BiasAdd/ReadVariableOp╜
while/hswofenhiy/BiasAddBiasAddwhile/hswofenhiy/add:z:0/while/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/BiasAddЖ
 while/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/hswofenhiy/split/split_dimГ
while/hswofenhiy/splitSplit)while/hswofenhiy/split/split_dim:output:0!while/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/hswofenhiy/splitй
while/hswofenhiy/ReadVariableOpReadVariableOp*while_hswofenhiy_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/hswofenhiy/ReadVariableOpг
while/hswofenhiy/mulMul'while/hswofenhiy/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mulж
while/hswofenhiy/add_1AddV2while/hswofenhiy/split:output:0while/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_1Н
while/hswofenhiy/SigmoidSigmoidwhile/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoidп
!while/hswofenhiy/ReadVariableOp_1ReadVariableOp,while_hswofenhiy_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_1й
while/hswofenhiy/mul_1Mul)while/hswofenhiy/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_1и
while/hswofenhiy/add_2AddV2while/hswofenhiy/split:output:1while/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_2С
while/hswofenhiy/Sigmoid_1Sigmoidwhile/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_1Ю
while/hswofenhiy/mul_2Mulwhile/hswofenhiy/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_2Й
while/hswofenhiy/TanhTanhwhile/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanhв
while/hswofenhiy/mul_3Mulwhile/hswofenhiy/Sigmoid:y:0while/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_3г
while/hswofenhiy/add_3AddV2while/hswofenhiy/mul_2:z:0while/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_3п
!while/hswofenhiy/ReadVariableOp_2ReadVariableOp,while_hswofenhiy_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_2░
while/hswofenhiy/mul_4Mul)while/hswofenhiy/ReadVariableOp_2:value:0while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_4и
while/hswofenhiy/add_4AddV2while/hswofenhiy/split:output:3while/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_4С
while/hswofenhiy/Sigmoid_2Sigmoidwhile/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_2И
while/hswofenhiy/Tanh_1Tanhwhile/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanh_1ж
while/hswofenhiy/mul_5Mulwhile/hswofenhiy/Sigmoid_2:y:0while/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/hswofenhiy/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/hswofenhiy/mul_5:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/hswofenhiy/add_3:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_hswofenhiy_biasadd_readvariableop_resource2while_hswofenhiy_biasadd_readvariableop_resource_0"h
1while_hswofenhiy_matmul_1_readvariableop_resource3while_hswofenhiy_matmul_1_readvariableop_resource_0"d
/while_hswofenhiy_matmul_readvariableop_resource1while_hswofenhiy_matmul_readvariableop_resource_0"Z
*while_hswofenhiy_readvariableop_1_resource,while_hswofenhiy_readvariableop_1_resource_0"Z
*while_hswofenhiy_readvariableop_2_resource,while_hswofenhiy_readvariableop_2_resource_0"V
(while_hswofenhiy_readvariableop_resource*while_hswofenhiy_readvariableop_resource_0")
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
'while/hswofenhiy/BiasAdd/ReadVariableOp'while/hswofenhiy/BiasAdd/ReadVariableOp2P
&while/hswofenhiy/MatMul/ReadVariableOp&while/hswofenhiy/MatMul/ReadVariableOp2T
(while/hswofenhiy/MatMul_1/ReadVariableOp(while/hswofenhiy/MatMul_1/ReadVariableOp2B
while/hswofenhiy/ReadVariableOpwhile/hswofenhiy/ReadVariableOp2F
!while/hswofenhiy/ReadVariableOp_1!while/hswofenhiy/ReadVariableOp_12F
!while/hswofenhiy/ReadVariableOp_2!while/hswofenhiy/ReadVariableOp_2: 
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
ь
Ч
%__inference_signature_wrapper_2596439

bdeyofgzkq
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
identityИвStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCall
bdeyofgzkqunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8В *+
f&R$
"__inference__wrapped_model_25936872
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
bdeyofgzkq
Б
└
,__inference_lwptfvtmlx_layer_call_fn_2599225

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

identity_2ИвStatefulPartitionedCallь
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
GPU2*0J 8В *P
fKRI
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_25945322
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
▌
H
,__inference_ezubtmdnwx_layer_call_fn_2597385

inputs
identity╠
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
GPU2*0J 8В *P
fKRI
G__inference_ezubtmdnwx_layer_call_and_return_conditional_losses_25952662
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
Б
└
,__inference_lwptfvtmlx_layer_call_fn_2599248

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

identity_2ИвStatefulPartitionedCallь
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
GPU2*0J 8В *P
fKRI
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_25947192
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
Л

э
while_cond_2595813
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2595813___redundant_placeholder05
1while_while_cond_2595813___redundant_placeholder15
1while_while_cond_2595813___redundant_placeholder25
1while_while_cond_2595813___redundant_placeholder35
1while_while_cond_2595813___redundant_placeholder45
1while_while_cond_2595813___redundant_placeholder55
1while_while_cond_2595813___redundant_placeholder6
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
рh
З
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2597565
inputs_0<
)hswofenhiy_matmul_readvariableop_resource:	А>
+hswofenhiy_matmul_1_readvariableop_resource:	 А9
*hswofenhiy_biasadd_readvariableop_resource:	А0
"hswofenhiy_readvariableop_resource: 2
$hswofenhiy_readvariableop_1_resource: 2
$hswofenhiy_readvariableop_2_resource: 
identityИв!hswofenhiy/BiasAdd/ReadVariableOpв hswofenhiy/MatMul/ReadVariableOpв"hswofenhiy/MatMul_1/ReadVariableOpвhswofenhiy/ReadVariableOpвhswofenhiy/ReadVariableOp_1вhswofenhiy/ReadVariableOp_2вwhileF
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
 hswofenhiy/MatMul/ReadVariableOpReadVariableOp)hswofenhiy_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 hswofenhiy/MatMul/ReadVariableOpз
hswofenhiy/MatMulMatMulstrided_slice_2:output:0(hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul╡
"hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp+hswofenhiy_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"hswofenhiy/MatMul_1/ReadVariableOpг
hswofenhiy/MatMul_1MatMulzeros:output:0*hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul_1Ш
hswofenhiy/addAddV2hswofenhiy/MatMul:product:0hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
hswofenhiy/addо
!hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp*hswofenhiy_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!hswofenhiy/BiasAdd/ReadVariableOpе
hswofenhiy/BiasAddBiasAddhswofenhiy/add:z:0)hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/BiasAddz
hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
hswofenhiy/split/split_dimы
hswofenhiy/splitSplit#hswofenhiy/split/split_dim:output:0hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
hswofenhiy/splitХ
hswofenhiy/ReadVariableOpReadVariableOp"hswofenhiy_readvariableop_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOpО
hswofenhiy/mulMul!hswofenhiy/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mulО
hswofenhiy/add_1AddV2hswofenhiy/split:output:0hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_1{
hswofenhiy/SigmoidSigmoidhswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/SigmoidЫ
hswofenhiy/ReadVariableOp_1ReadVariableOp$hswofenhiy_readvariableop_1_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_1Ф
hswofenhiy/mul_1Mul#hswofenhiy/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_1Р
hswofenhiy/add_2AddV2hswofenhiy/split:output:1hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_2
hswofenhiy/Sigmoid_1Sigmoidhswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_1Й
hswofenhiy/mul_2Mulhswofenhiy/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_2w
hswofenhiy/TanhTanhhswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
hswofenhiy/TanhК
hswofenhiy/mul_3Mulhswofenhiy/Sigmoid:y:0hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_3Л
hswofenhiy/add_3AddV2hswofenhiy/mul_2:z:0hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_3Ы
hswofenhiy/ReadVariableOp_2ReadVariableOp$hswofenhiy_readvariableop_2_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_2Ш
hswofenhiy/mul_4Mul#hswofenhiy/ReadVariableOp_2:value:0hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_4Р
hswofenhiy/add_4AddV2hswofenhiy/split:output:3hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_4
hswofenhiy/Sigmoid_2Sigmoidhswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_2v
hswofenhiy/Tanh_1Tanhhswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Tanh_1О
hswofenhiy/mul_5Mulhswofenhiy/Sigmoid_2:y:0hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)hswofenhiy_matmul_readvariableop_resource+hswofenhiy_matmul_1_readvariableop_resource*hswofenhiy_biasadd_readvariableop_resource"hswofenhiy_readvariableop_resource$hswofenhiy_readvariableop_1_resource$hswofenhiy_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2597464*
condR
while_cond_2597463*Q
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
IdentityIdentitytranspose_1:y:0"^hswofenhiy/BiasAdd/ReadVariableOp!^hswofenhiy/MatMul/ReadVariableOp#^hswofenhiy/MatMul_1/ReadVariableOp^hswofenhiy/ReadVariableOp^hswofenhiy/ReadVariableOp_1^hswofenhiy/ReadVariableOp_2^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2F
!hswofenhiy/BiasAdd/ReadVariableOp!hswofenhiy/BiasAdd/ReadVariableOp2D
 hswofenhiy/MatMul/ReadVariableOp hswofenhiy/MatMul/ReadVariableOp2H
"hswofenhiy/MatMul_1/ReadVariableOp"hswofenhiy/MatMul_1/ReadVariableOp26
hswofenhiy/ReadVariableOphswofenhiy/ReadVariableOp2:
hswofenhiy/ReadVariableOp_1hswofenhiy/ReadVariableOp_12:
hswofenhiy/ReadVariableOp_2hswofenhiy/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Е	
Ж
,__inference_dnzlhpjizj_layer_call_fn_2598122
inputs_0
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCall╜
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
GPU2*0J 8В *P
fKRI
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_25938742
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
│F
ъ
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2594137

inputs%
hswofenhiy_2594038:	А%
hswofenhiy_2594040:	 А!
hswofenhiy_2594042:	А 
hswofenhiy_2594044:  
hswofenhiy_2594046:  
hswofenhiy_2594048: 
identityИв"hswofenhiy/StatefulPartitionedCallвwhileD
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
strided_slice_2┌
"hswofenhiy/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0hswofenhiy_2594038hswofenhiy_2594040hswofenhiy_2594042hswofenhiy_2594044hswofenhiy_2594046hswofenhiy_2594048*
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
GPU2*0J 8В *P
fKRI
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_25939612$
"hswofenhiy/StatefulPartitionedCallП
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
while/loop_counterЁ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0hswofenhiy_2594038hswofenhiy_2594040hswofenhiy_2594042hswofenhiy_2594044hswofenhiy_2594046hswofenhiy_2594048*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2594057*
condR
while_cond_2594056*Q
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
IdentityIdentitytranspose_1:y:0#^hswofenhiy/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :                   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:                  : : : : : : 2H
"hswofenhiy/StatefulPartitionedCall"hswofenhiy/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Л

э
while_cond_2598251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2598251___redundant_placeholder05
1while_while_cond_2598251___redundant_placeholder15
1while_while_cond_2598251___redundant_placeholder25
1while_while_cond_2598251___redundant_placeholder35
1while_while_cond_2598251___redundant_placeholder45
1while_while_cond_2598251___redundant_placeholder55
1while_while_cond_2598251___redundant_placeholder6
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
Л

э
while_cond_2594551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2594551___redundant_placeholder05
1while_while_cond_2594551___redundant_placeholder15
1while_while_cond_2594551___redundant_placeholder25
1while_while_cond_2594551___redundant_placeholder35
1while_while_cond_2594551___redundant_placeholder45
1while_while_cond_2594551___redundant_placeholder55
1while_while_cond_2594551___redundant_placeholder6
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
Л

э
while_cond_2594056
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2594056___redundant_placeholder05
1while_while_cond_2594056___redundant_placeholder15
1while_while_cond_2594056___redundant_placeholder25
1while_while_cond_2594056___redundant_placeholder35
1while_while_cond_2594056___redundant_placeholder45
1while_while_cond_2594056___redundant_placeholder55
1while_while_cond_2594056___redundant_placeholder6
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
КZ
╦
 __inference__traced_save_2599388
file_prefix0
,savev2_gtjikcltwy_kernel_read_readvariableop.
*savev2_gtjikcltwy_bias_read_readvariableop0
,savev2_chsgvefspq_kernel_read_readvariableop.
*savev2_chsgvefspq_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop;
7savev2_dnzlhpjizj_hswofenhiy_kernel_read_readvariableopE
Asavev2_dnzlhpjizj_hswofenhiy_recurrent_kernel_read_readvariableop9
5savev2_dnzlhpjizj_hswofenhiy_bias_read_readvariableopP
Lsavev2_dnzlhpjizj_hswofenhiy_input_gate_peephole_weights_read_readvariableopQ
Msavev2_dnzlhpjizj_hswofenhiy_forget_gate_peephole_weights_read_readvariableopQ
Msavev2_dnzlhpjizj_hswofenhiy_output_gate_peephole_weights_read_readvariableop;
7savev2_nyosplwtfa_lwptfvtmlx_kernel_read_readvariableopE
Asavev2_nyosplwtfa_lwptfvtmlx_recurrent_kernel_read_readvariableop9
5savev2_nyosplwtfa_lwptfvtmlx_bias_read_readvariableopP
Lsavev2_nyosplwtfa_lwptfvtmlx_input_gate_peephole_weights_read_readvariableopQ
Msavev2_nyosplwtfa_lwptfvtmlx_forget_gate_peephole_weights_read_readvariableopQ
Msavev2_nyosplwtfa_lwptfvtmlx_output_gate_peephole_weights_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop<
8savev2_rmsprop_gtjikcltwy_kernel_rms_read_readvariableop:
6savev2_rmsprop_gtjikcltwy_bias_rms_read_readvariableop<
8savev2_rmsprop_chsgvefspq_kernel_rms_read_readvariableop:
6savev2_rmsprop_chsgvefspq_bias_rms_read_readvariableopG
Csavev2_rmsprop_dnzlhpjizj_hswofenhiy_kernel_rms_read_readvariableopQ
Msavev2_rmsprop_dnzlhpjizj_hswofenhiy_recurrent_kernel_rms_read_readvariableopE
Asavev2_rmsprop_dnzlhpjizj_hswofenhiy_bias_rms_read_readvariableop\
Xsavev2_rmsprop_dnzlhpjizj_hswofenhiy_input_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_dnzlhpjizj_hswofenhiy_forget_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_dnzlhpjizj_hswofenhiy_output_gate_peephole_weights_rms_read_readvariableopG
Csavev2_rmsprop_nyosplwtfa_lwptfvtmlx_kernel_rms_read_readvariableopQ
Msavev2_rmsprop_nyosplwtfa_lwptfvtmlx_recurrent_kernel_rms_read_readvariableopE
Asavev2_rmsprop_nyosplwtfa_lwptfvtmlx_bias_rms_read_readvariableop\
Xsavev2_rmsprop_nyosplwtfa_lwptfvtmlx_input_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_nyosplwtfa_lwptfvtmlx_forget_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_nyosplwtfa_lwptfvtmlx_output_gate_peephole_weights_rms_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_gtjikcltwy_kernel_read_readvariableop*savev2_gtjikcltwy_bias_read_readvariableop,savev2_chsgvefspq_kernel_read_readvariableop*savev2_chsgvefspq_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop7savev2_dnzlhpjizj_hswofenhiy_kernel_read_readvariableopAsavev2_dnzlhpjizj_hswofenhiy_recurrent_kernel_read_readvariableop5savev2_dnzlhpjizj_hswofenhiy_bias_read_readvariableopLsavev2_dnzlhpjizj_hswofenhiy_input_gate_peephole_weights_read_readvariableopMsavev2_dnzlhpjizj_hswofenhiy_forget_gate_peephole_weights_read_readvariableopMsavev2_dnzlhpjizj_hswofenhiy_output_gate_peephole_weights_read_readvariableop7savev2_nyosplwtfa_lwptfvtmlx_kernel_read_readvariableopAsavev2_nyosplwtfa_lwptfvtmlx_recurrent_kernel_read_readvariableop5savev2_nyosplwtfa_lwptfvtmlx_bias_read_readvariableopLsavev2_nyosplwtfa_lwptfvtmlx_input_gate_peephole_weights_read_readvariableopMsavev2_nyosplwtfa_lwptfvtmlx_forget_gate_peephole_weights_read_readvariableopMsavev2_nyosplwtfa_lwptfvtmlx_output_gate_peephole_weights_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop8savev2_rmsprop_gtjikcltwy_kernel_rms_read_readvariableop6savev2_rmsprop_gtjikcltwy_bias_rms_read_readvariableop8savev2_rmsprop_chsgvefspq_kernel_rms_read_readvariableop6savev2_rmsprop_chsgvefspq_bias_rms_read_readvariableopCsavev2_rmsprop_dnzlhpjizj_hswofenhiy_kernel_rms_read_readvariableopMsavev2_rmsprop_dnzlhpjizj_hswofenhiy_recurrent_kernel_rms_read_readvariableopAsavev2_rmsprop_dnzlhpjizj_hswofenhiy_bias_rms_read_readvariableopXsavev2_rmsprop_dnzlhpjizj_hswofenhiy_input_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_dnzlhpjizj_hswofenhiy_forget_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_dnzlhpjizj_hswofenhiy_output_gate_peephole_weights_rms_read_readvariableopCsavev2_rmsprop_nyosplwtfa_lwptfvtmlx_kernel_rms_read_readvariableopMsavev2_rmsprop_nyosplwtfa_lwptfvtmlx_recurrent_kernel_rms_read_readvariableopAsavev2_rmsprop_nyosplwtfa_lwptfvtmlx_bias_rms_read_readvariableopXsavev2_rmsprop_nyosplwtfa_lwptfvtmlx_input_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_nyosplwtfa_lwptfvtmlx_forget_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_nyosplwtfa_lwptfvtmlx_output_gate_peephole_weights_rms_read_readvariableopsavev2_const"/device:CPU:0*
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
Л

э
while_cond_2598791
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2598791___redundant_placeholder05
1while_while_cond_2598791___redundant_placeholder15
1while_while_cond_2598791___redundant_placeholder25
1while_while_cond_2598791___redundant_placeholder35
1while_while_cond_2598791___redundant_placeholder45
1while_while_cond_2598791___redundant_placeholder55
1while_while_cond_2598791___redundant_placeholder6
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
рY
З
while_body_2598252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lwptfvtmlx_matmul_readvariableop_resource_0:	 АF
3while_lwptfvtmlx_matmul_1_readvariableop_resource_0:	 АA
2while_lwptfvtmlx_biasadd_readvariableop_resource_0:	А8
*while_lwptfvtmlx_readvariableop_resource_0: :
,while_lwptfvtmlx_readvariableop_1_resource_0: :
,while_lwptfvtmlx_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lwptfvtmlx_matmul_readvariableop_resource:	 АD
1while_lwptfvtmlx_matmul_1_readvariableop_resource:	 А?
0while_lwptfvtmlx_biasadd_readvariableop_resource:	А6
(while_lwptfvtmlx_readvariableop_resource: 8
*while_lwptfvtmlx_readvariableop_1_resource: 8
*while_lwptfvtmlx_readvariableop_2_resource: Ив'while/lwptfvtmlx/BiasAdd/ReadVariableOpв&while/lwptfvtmlx/MatMul/ReadVariableOpв(while/lwptfvtmlx/MatMul_1/ReadVariableOpвwhile/lwptfvtmlx/ReadVariableOpв!while/lwptfvtmlx/ReadVariableOp_1в!while/lwptfvtmlx/ReadVariableOp_2├
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
&while/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp1while_lwptfvtmlx_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/lwptfvtmlx/MatMul/ReadVariableOp╤
while/lwptfvtmlx/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul╔
(while/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp3while_lwptfvtmlx_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/lwptfvtmlx/MatMul_1/ReadVariableOp║
while/lwptfvtmlx/MatMul_1MatMulwhile_placeholder_20while/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul_1░
while/lwptfvtmlx/addAddV2!while/lwptfvtmlx/MatMul:product:0#while/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/add┬
'while/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp2while_lwptfvtmlx_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/lwptfvtmlx/BiasAdd/ReadVariableOp╜
while/lwptfvtmlx/BiasAddBiasAddwhile/lwptfvtmlx/add:z:0/while/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/BiasAddЖ
 while/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/lwptfvtmlx/split/split_dimГ
while/lwptfvtmlx/splitSplit)while/lwptfvtmlx/split/split_dim:output:0!while/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lwptfvtmlx/splitй
while/lwptfvtmlx/ReadVariableOpReadVariableOp*while_lwptfvtmlx_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/lwptfvtmlx/ReadVariableOpг
while/lwptfvtmlx/mulMul'while/lwptfvtmlx/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mulж
while/lwptfvtmlx/add_1AddV2while/lwptfvtmlx/split:output:0while/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_1Н
while/lwptfvtmlx/SigmoidSigmoidwhile/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoidп
!while/lwptfvtmlx/ReadVariableOp_1ReadVariableOp,while_lwptfvtmlx_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_1й
while/lwptfvtmlx/mul_1Mul)while/lwptfvtmlx/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_1и
while/lwptfvtmlx/add_2AddV2while/lwptfvtmlx/split:output:1while/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_2С
while/lwptfvtmlx/Sigmoid_1Sigmoidwhile/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_1Ю
while/lwptfvtmlx/mul_2Mulwhile/lwptfvtmlx/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_2Й
while/lwptfvtmlx/TanhTanhwhile/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanhв
while/lwptfvtmlx/mul_3Mulwhile/lwptfvtmlx/Sigmoid:y:0while/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_3г
while/lwptfvtmlx/add_3AddV2while/lwptfvtmlx/mul_2:z:0while/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_3п
!while/lwptfvtmlx/ReadVariableOp_2ReadVariableOp,while_lwptfvtmlx_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_2░
while/lwptfvtmlx/mul_4Mul)while/lwptfvtmlx/ReadVariableOp_2:value:0while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_4и
while/lwptfvtmlx/add_4AddV2while/lwptfvtmlx/split:output:3while/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_4С
while/lwptfvtmlx/Sigmoid_2Sigmoidwhile/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_2И
while/lwptfvtmlx/Tanh_1Tanhwhile/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanh_1ж
while/lwptfvtmlx/mul_5Mulwhile/lwptfvtmlx/Sigmoid_2:y:0while/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lwptfvtmlx/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/lwptfvtmlx/mul_5:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/lwptfvtmlx/add_3:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
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
0while_lwptfvtmlx_biasadd_readvariableop_resource2while_lwptfvtmlx_biasadd_readvariableop_resource_0"h
1while_lwptfvtmlx_matmul_1_readvariableop_resource3while_lwptfvtmlx_matmul_1_readvariableop_resource_0"d
/while_lwptfvtmlx_matmul_readvariableop_resource1while_lwptfvtmlx_matmul_readvariableop_resource_0"Z
*while_lwptfvtmlx_readvariableop_1_resource,while_lwptfvtmlx_readvariableop_1_resource_0"Z
*while_lwptfvtmlx_readvariableop_2_resource,while_lwptfvtmlx_readvariableop_2_resource_0"V
(while_lwptfvtmlx_readvariableop_resource*while_lwptfvtmlx_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/lwptfvtmlx/BiasAdd/ReadVariableOp'while/lwptfvtmlx/BiasAdd/ReadVariableOp2P
&while/lwptfvtmlx/MatMul/ReadVariableOp&while/lwptfvtmlx/MatMul/ReadVariableOp2T
(while/lwptfvtmlx/MatMul_1/ReadVariableOp(while/lwptfvtmlx/MatMul_1/ReadVariableOp2B
while/lwptfvtmlx/ReadVariableOpwhile/lwptfvtmlx/ReadVariableOp2F
!while/lwptfvtmlx/ReadVariableOp_1!while/lwptfvtmlx/ReadVariableOp_12F
!while/lwptfvtmlx/ReadVariableOp_2!while/lwptfvtmlx/ReadVariableOp_2: 
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
▄Ж
П
(sequential_nyosplwtfa_while_body_2593580H
Dsequential_nyosplwtfa_while_sequential_nyosplwtfa_while_loop_counterN
Jsequential_nyosplwtfa_while_sequential_nyosplwtfa_while_maximum_iterations+
'sequential_nyosplwtfa_while_placeholder-
)sequential_nyosplwtfa_while_placeholder_1-
)sequential_nyosplwtfa_while_placeholder_2-
)sequential_nyosplwtfa_while_placeholder_3G
Csequential_nyosplwtfa_while_sequential_nyosplwtfa_strided_slice_1_0Г
sequential_nyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_sequential_nyosplwtfa_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource_0:	 А\
Isequential_nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource_0:	 АW
Hsequential_nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource_0:	АN
@sequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_resource_0: P
Bsequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource_0: P
Bsequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource_0: (
$sequential_nyosplwtfa_while_identity*
&sequential_nyosplwtfa_while_identity_1*
&sequential_nyosplwtfa_while_identity_2*
&sequential_nyosplwtfa_while_identity_3*
&sequential_nyosplwtfa_while_identity_4*
&sequential_nyosplwtfa_while_identity_5E
Asequential_nyosplwtfa_while_sequential_nyosplwtfa_strided_slice_1Б
}sequential_nyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_sequential_nyosplwtfa_tensorarrayunstack_tensorlistfromtensorX
Esequential_nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource:	 АZ
Gsequential_nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource:	 АU
Fsequential_nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource:	АL
>sequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_resource: N
@sequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource: N
@sequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource: Ив=sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOpв<sequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOpв>sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOpв5sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOpв7sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1в7sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2я
Msequential/nyosplwtfa/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2O
Msequential/nyosplwtfa/while/TensorArrayV2Read/TensorListGetItem/element_shape╫
?sequential/nyosplwtfa/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_nyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_sequential_nyosplwtfa_tensorarrayunstack_tensorlistfromtensor_0'sequential_nyosplwtfa_while_placeholderVsequential/nyosplwtfa/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:          *
element_dtype02A
?sequential/nyosplwtfa/while/TensorArrayV2Read/TensorListGetItemЕ
<sequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOpGsequential_nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02>
<sequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOpй
-sequential/nyosplwtfa/while/lwptfvtmlx/MatMulMatMulFsequential/nyosplwtfa/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2/
-sequential/nyosplwtfa/while/lwptfvtmlx/MatMulЛ
>sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOpIsequential_nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02@
>sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOpТ
/sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1MatMul)sequential_nyosplwtfa_while_placeholder_2Fsequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А21
/sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1И
*sequential/nyosplwtfa/while/lwptfvtmlx/addAddV27sequential/nyosplwtfa/while/lwptfvtmlx/MatMul:product:09sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2,
*sequential/nyosplwtfa/while/lwptfvtmlx/addД
=sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOpHsequential_nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOpХ
.sequential/nyosplwtfa/while/lwptfvtmlx/BiasAddBiasAdd.sequential/nyosplwtfa/while/lwptfvtmlx/add:z:0Esequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А20
.sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd▓
6sequential/nyosplwtfa/while/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/nyosplwtfa/while/lwptfvtmlx/split/split_dim█
,sequential/nyosplwtfa/while/lwptfvtmlx/splitSplit?sequential/nyosplwtfa/while/lwptfvtmlx/split/split_dim:output:07sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2.
,sequential/nyosplwtfa/while/lwptfvtmlx/splitы
5sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOpReadVariableOp@sequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_resource_0*
_output_shapes
: *
dtype027
5sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp√
*sequential/nyosplwtfa/while/lwptfvtmlx/mulMul=sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp:value:0)sequential_nyosplwtfa_while_placeholder_3*
T0*'
_output_shapes
:          2,
*sequential/nyosplwtfa/while/lwptfvtmlx/mul■
,sequential/nyosplwtfa/while/lwptfvtmlx/add_1AddV25sequential/nyosplwtfa/while/lwptfvtmlx/split:output:0.sequential/nyosplwtfa/while/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2.
,sequential/nyosplwtfa/while/lwptfvtmlx/add_1╧
.sequential/nyosplwtfa/while/lwptfvtmlx/SigmoidSigmoid0sequential/nyosplwtfa/while/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          20
.sequential/nyosplwtfa/while/lwptfvtmlx/Sigmoidё
7sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1ReadVariableOpBsequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource_0*
_output_shapes
: *
dtype029
7sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1Б
,sequential/nyosplwtfa/while/lwptfvtmlx/mul_1Mul?sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_1:value:0)sequential_nyosplwtfa_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/nyosplwtfa/while/lwptfvtmlx/mul_1А
,sequential/nyosplwtfa/while/lwptfvtmlx/add_2AddV25sequential/nyosplwtfa/while/lwptfvtmlx/split:output:10sequential/nyosplwtfa/while/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2.
,sequential/nyosplwtfa/while/lwptfvtmlx/add_2╙
0sequential/nyosplwtfa/while/lwptfvtmlx/Sigmoid_1Sigmoid0sequential/nyosplwtfa/while/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          22
0sequential/nyosplwtfa/while/lwptfvtmlx/Sigmoid_1Ў
,sequential/nyosplwtfa/while/lwptfvtmlx/mul_2Mul4sequential/nyosplwtfa/while/lwptfvtmlx/Sigmoid_1:y:0)sequential_nyosplwtfa_while_placeholder_3*
T0*'
_output_shapes
:          2.
,sequential/nyosplwtfa/while/lwptfvtmlx/mul_2╦
+sequential/nyosplwtfa/while/lwptfvtmlx/TanhTanh5sequential/nyosplwtfa/while/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2-
+sequential/nyosplwtfa/while/lwptfvtmlx/Tanh·
,sequential/nyosplwtfa/while/lwptfvtmlx/mul_3Mul2sequential/nyosplwtfa/while/lwptfvtmlx/Sigmoid:y:0/sequential/nyosplwtfa/while/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2.
,sequential/nyosplwtfa/while/lwptfvtmlx/mul_3√
,sequential/nyosplwtfa/while/lwptfvtmlx/add_3AddV20sequential/nyosplwtfa/while/lwptfvtmlx/mul_2:z:00sequential/nyosplwtfa/while/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/nyosplwtfa/while/lwptfvtmlx/add_3ё
7sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2ReadVariableOpBsequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource_0*
_output_shapes
: *
dtype029
7sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2И
,sequential/nyosplwtfa/while/lwptfvtmlx/mul_4Mul?sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2:value:00sequential/nyosplwtfa/while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2.
,sequential/nyosplwtfa/while/lwptfvtmlx/mul_4А
,sequential/nyosplwtfa/while/lwptfvtmlx/add_4AddV25sequential/nyosplwtfa/while/lwptfvtmlx/split:output:30sequential/nyosplwtfa/while/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2.
,sequential/nyosplwtfa/while/lwptfvtmlx/add_4╙
0sequential/nyosplwtfa/while/lwptfvtmlx/Sigmoid_2Sigmoid0sequential/nyosplwtfa/while/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          22
0sequential/nyosplwtfa/while/lwptfvtmlx/Sigmoid_2╩
-sequential/nyosplwtfa/while/lwptfvtmlx/Tanh_1Tanh0sequential/nyosplwtfa/while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2/
-sequential/nyosplwtfa/while/lwptfvtmlx/Tanh_1■
,sequential/nyosplwtfa/while/lwptfvtmlx/mul_5Mul4sequential/nyosplwtfa/while/lwptfvtmlx/Sigmoid_2:y:01sequential/nyosplwtfa/while/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2.
,sequential/nyosplwtfa/while/lwptfvtmlx/mul_5╠
@sequential/nyosplwtfa/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_nyosplwtfa_while_placeholder_1'sequential_nyosplwtfa_while_placeholder0sequential/nyosplwtfa/while/lwptfvtmlx/mul_5:z:0*
_output_shapes
: *
element_dtype02B
@sequential/nyosplwtfa/while/TensorArrayV2Write/TensorListSetItemИ
!sequential/nyosplwtfa/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/nyosplwtfa/while/add/y┴
sequential/nyosplwtfa/while/addAddV2'sequential_nyosplwtfa_while_placeholder*sequential/nyosplwtfa/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/nyosplwtfa/while/addМ
#sequential/nyosplwtfa/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/nyosplwtfa/while/add_1/yф
!sequential/nyosplwtfa/while/add_1AddV2Dsequential_nyosplwtfa_while_sequential_nyosplwtfa_while_loop_counter,sequential/nyosplwtfa/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/nyosplwtfa/while/add_1М
$sequential/nyosplwtfa/while/IdentityIdentity%sequential/nyosplwtfa/while/add_1:z:0>^sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp=^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp?^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp6^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp8^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_18^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2&
$sequential/nyosplwtfa/while/Identity╡
&sequential/nyosplwtfa/while/Identity_1IdentityJsequential_nyosplwtfa_while_sequential_nyosplwtfa_while_maximum_iterations>^sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp=^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp?^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp6^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp8^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_18^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/nyosplwtfa/while/Identity_1О
&sequential/nyosplwtfa/while/Identity_2Identity#sequential/nyosplwtfa/while/add:z:0>^sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp=^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp?^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp6^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp8^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_18^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/nyosplwtfa/while/Identity_2╗
&sequential/nyosplwtfa/while/Identity_3IdentityPsequential/nyosplwtfa/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp=^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp?^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp6^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp8^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_18^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/nyosplwtfa/while/Identity_3м
&sequential/nyosplwtfa/while/Identity_4Identity0sequential/nyosplwtfa/while/lwptfvtmlx/mul_5:z:0>^sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp=^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp?^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp6^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp8^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_18^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/nyosplwtfa/while/Identity_4м
&sequential/nyosplwtfa/while/Identity_5Identity0sequential/nyosplwtfa/while/lwptfvtmlx/add_3:z:0>^sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp=^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp?^sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp6^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp8^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_18^sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2(
&sequential/nyosplwtfa/while/Identity_5"U
$sequential_nyosplwtfa_while_identity-sequential/nyosplwtfa/while/Identity:output:0"Y
&sequential_nyosplwtfa_while_identity_1/sequential/nyosplwtfa/while/Identity_1:output:0"Y
&sequential_nyosplwtfa_while_identity_2/sequential/nyosplwtfa/while/Identity_2:output:0"Y
&sequential_nyosplwtfa_while_identity_3/sequential/nyosplwtfa/while/Identity_3:output:0"Y
&sequential_nyosplwtfa_while_identity_4/sequential/nyosplwtfa/while/Identity_4:output:0"Y
&sequential_nyosplwtfa_while_identity_5/sequential/nyosplwtfa/while/Identity_5:output:0"Т
Fsequential_nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resourceHsequential_nyosplwtfa_while_lwptfvtmlx_biasadd_readvariableop_resource_0"Ф
Gsequential_nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resourceIsequential_nyosplwtfa_while_lwptfvtmlx_matmul_1_readvariableop_resource_0"Р
Esequential_nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resourceGsequential_nyosplwtfa_while_lwptfvtmlx_matmul_readvariableop_resource_0"Ж
@sequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resourceBsequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_1_resource_0"Ж
@sequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resourceBsequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_2_resource_0"В
>sequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_resource@sequential_nyosplwtfa_while_lwptfvtmlx_readvariableop_resource_0"И
Asequential_nyosplwtfa_while_sequential_nyosplwtfa_strided_slice_1Csequential_nyosplwtfa_while_sequential_nyosplwtfa_strided_slice_1_0"А
}sequential_nyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_sequential_nyosplwtfa_tensorarrayunstack_tensorlistfromtensorsequential_nyosplwtfa_while_tensorarrayv2read_tensorlistgetitem_sequential_nyosplwtfa_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2~
=sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp=sequential/nyosplwtfa/while/lwptfvtmlx/BiasAdd/ReadVariableOp2|
<sequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp<sequential/nyosplwtfa/while/lwptfvtmlx/MatMul/ReadVariableOp2А
>sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp>sequential/nyosplwtfa/while/lwptfvtmlx/MatMul_1/ReadVariableOp2n
5sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp5sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp2r
7sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_17sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_12r
7sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_27sequential/nyosplwtfa/while/lwptfvtmlx/ReadVariableOp_2: 
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
рY
З
while_body_2598004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_hswofenhiy_matmul_readvariableop_resource_0:	АF
3while_hswofenhiy_matmul_1_readvariableop_resource_0:	 АA
2while_hswofenhiy_biasadd_readvariableop_resource_0:	А8
*while_hswofenhiy_readvariableop_resource_0: :
,while_hswofenhiy_readvariableop_1_resource_0: :
,while_hswofenhiy_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_hswofenhiy_matmul_readvariableop_resource:	АD
1while_hswofenhiy_matmul_1_readvariableop_resource:	 А?
0while_hswofenhiy_biasadd_readvariableop_resource:	А6
(while_hswofenhiy_readvariableop_resource: 8
*while_hswofenhiy_readvariableop_1_resource: 8
*while_hswofenhiy_readvariableop_2_resource: Ив'while/hswofenhiy/BiasAdd/ReadVariableOpв&while/hswofenhiy/MatMul/ReadVariableOpв(while/hswofenhiy/MatMul_1/ReadVariableOpвwhile/hswofenhiy/ReadVariableOpв!while/hswofenhiy/ReadVariableOp_1в!while/hswofenhiy/ReadVariableOp_2├
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
&while/hswofenhiy/MatMul/ReadVariableOpReadVariableOp1while_hswofenhiy_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/hswofenhiy/MatMul/ReadVariableOp╤
while/hswofenhiy/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul╔
(while/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp3while_hswofenhiy_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/hswofenhiy/MatMul_1/ReadVariableOp║
while/hswofenhiy/MatMul_1MatMulwhile_placeholder_20while/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul_1░
while/hswofenhiy/addAddV2!while/hswofenhiy/MatMul:product:0#while/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/add┬
'while/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp2while_hswofenhiy_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/hswofenhiy/BiasAdd/ReadVariableOp╜
while/hswofenhiy/BiasAddBiasAddwhile/hswofenhiy/add:z:0/while/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/BiasAddЖ
 while/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/hswofenhiy/split/split_dimГ
while/hswofenhiy/splitSplit)while/hswofenhiy/split/split_dim:output:0!while/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/hswofenhiy/splitй
while/hswofenhiy/ReadVariableOpReadVariableOp*while_hswofenhiy_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/hswofenhiy/ReadVariableOpг
while/hswofenhiy/mulMul'while/hswofenhiy/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mulж
while/hswofenhiy/add_1AddV2while/hswofenhiy/split:output:0while/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_1Н
while/hswofenhiy/SigmoidSigmoidwhile/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoidп
!while/hswofenhiy/ReadVariableOp_1ReadVariableOp,while_hswofenhiy_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_1й
while/hswofenhiy/mul_1Mul)while/hswofenhiy/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_1и
while/hswofenhiy/add_2AddV2while/hswofenhiy/split:output:1while/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_2С
while/hswofenhiy/Sigmoid_1Sigmoidwhile/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_1Ю
while/hswofenhiy/mul_2Mulwhile/hswofenhiy/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_2Й
while/hswofenhiy/TanhTanhwhile/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanhв
while/hswofenhiy/mul_3Mulwhile/hswofenhiy/Sigmoid:y:0while/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_3г
while/hswofenhiy/add_3AddV2while/hswofenhiy/mul_2:z:0while/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_3п
!while/hswofenhiy/ReadVariableOp_2ReadVariableOp,while_hswofenhiy_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_2░
while/hswofenhiy/mul_4Mul)while/hswofenhiy/ReadVariableOp_2:value:0while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_4и
while/hswofenhiy/add_4AddV2while/hswofenhiy/split:output:3while/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_4С
while/hswofenhiy/Sigmoid_2Sigmoidwhile/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_2И
while/hswofenhiy/Tanh_1Tanhwhile/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanh_1ж
while/hswofenhiy/mul_5Mulwhile/hswofenhiy/Sigmoid_2:y:0while/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/hswofenhiy/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/hswofenhiy/mul_5:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/hswofenhiy/add_3:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_hswofenhiy_biasadd_readvariableop_resource2while_hswofenhiy_biasadd_readvariableop_resource_0"h
1while_hswofenhiy_matmul_1_readvariableop_resource3while_hswofenhiy_matmul_1_readvariableop_resource_0"d
/while_hswofenhiy_matmul_readvariableop_resource1while_hswofenhiy_matmul_readvariableop_resource_0"Z
*while_hswofenhiy_readvariableop_1_resource,while_hswofenhiy_readvariableop_1_resource_0"Z
*while_hswofenhiy_readvariableop_2_resource,while_hswofenhiy_readvariableop_2_resource_0"V
(while_hswofenhiy_readvariableop_resource*while_hswofenhiy_readvariableop_resource_0")
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
'while/hswofenhiy/BiasAdd/ReadVariableOp'while/hswofenhiy/BiasAdd/ReadVariableOp2P
&while/hswofenhiy/MatMul/ReadVariableOp&while/hswofenhiy/MatMul/ReadVariableOp2T
(while/hswofenhiy/MatMul_1/ReadVariableOp(while/hswofenhiy/MatMul_1/ReadVariableOp2B
while/hswofenhiy/ReadVariableOpwhile/hswofenhiy/ReadVariableOp2F
!while/hswofenhiy/ReadVariableOp_1!while/hswofenhiy/ReadVariableOp_12F
!while/hswofenhiy/ReadVariableOp_2!while/hswofenhiy/ReadVariableOp_2: 
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
рY
З
while_body_2597644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_hswofenhiy_matmul_readvariableop_resource_0:	АF
3while_hswofenhiy_matmul_1_readvariableop_resource_0:	 АA
2while_hswofenhiy_biasadd_readvariableop_resource_0:	А8
*while_hswofenhiy_readvariableop_resource_0: :
,while_hswofenhiy_readvariableop_1_resource_0: :
,while_hswofenhiy_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_hswofenhiy_matmul_readvariableop_resource:	АD
1while_hswofenhiy_matmul_1_readvariableop_resource:	 А?
0while_hswofenhiy_biasadd_readvariableop_resource:	А6
(while_hswofenhiy_readvariableop_resource: 8
*while_hswofenhiy_readvariableop_1_resource: 8
*while_hswofenhiy_readvariableop_2_resource: Ив'while/hswofenhiy/BiasAdd/ReadVariableOpв&while/hswofenhiy/MatMul/ReadVariableOpв(while/hswofenhiy/MatMul_1/ReadVariableOpвwhile/hswofenhiy/ReadVariableOpв!while/hswofenhiy/ReadVariableOp_1в!while/hswofenhiy/ReadVariableOp_2├
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
&while/hswofenhiy/MatMul/ReadVariableOpReadVariableOp1while_hswofenhiy_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02(
&while/hswofenhiy/MatMul/ReadVariableOp╤
while/hswofenhiy/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul╔
(while/hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp3while_hswofenhiy_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/hswofenhiy/MatMul_1/ReadVariableOp║
while/hswofenhiy/MatMul_1MatMulwhile_placeholder_20while/hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/MatMul_1░
while/hswofenhiy/addAddV2!while/hswofenhiy/MatMul:product:0#while/hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/add┬
'while/hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp2while_hswofenhiy_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/hswofenhiy/BiasAdd/ReadVariableOp╜
while/hswofenhiy/BiasAddBiasAddwhile/hswofenhiy/add:z:0/while/hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/hswofenhiy/BiasAddЖ
 while/hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/hswofenhiy/split/split_dimГ
while/hswofenhiy/splitSplit)while/hswofenhiy/split/split_dim:output:0!while/hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/hswofenhiy/splitй
while/hswofenhiy/ReadVariableOpReadVariableOp*while_hswofenhiy_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/hswofenhiy/ReadVariableOpг
while/hswofenhiy/mulMul'while/hswofenhiy/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mulж
while/hswofenhiy/add_1AddV2while/hswofenhiy/split:output:0while/hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_1Н
while/hswofenhiy/SigmoidSigmoidwhile/hswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoidп
!while/hswofenhiy/ReadVariableOp_1ReadVariableOp,while_hswofenhiy_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_1й
while/hswofenhiy/mul_1Mul)while/hswofenhiy/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_1и
while/hswofenhiy/add_2AddV2while/hswofenhiy/split:output:1while/hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_2С
while/hswofenhiy/Sigmoid_1Sigmoidwhile/hswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_1Ю
while/hswofenhiy/mul_2Mulwhile/hswofenhiy/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_2Й
while/hswofenhiy/TanhTanhwhile/hswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanhв
while/hswofenhiy/mul_3Mulwhile/hswofenhiy/Sigmoid:y:0while/hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_3г
while/hswofenhiy/add_3AddV2while/hswofenhiy/mul_2:z:0while/hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_3п
!while/hswofenhiy/ReadVariableOp_2ReadVariableOp,while_hswofenhiy_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/hswofenhiy/ReadVariableOp_2░
while/hswofenhiy/mul_4Mul)while/hswofenhiy/ReadVariableOp_2:value:0while/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_4и
while/hswofenhiy/add_4AddV2while/hswofenhiy/split:output:3while/hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/add_4С
while/hswofenhiy/Sigmoid_2Sigmoidwhile/hswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Sigmoid_2И
while/hswofenhiy/Tanh_1Tanhwhile/hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/Tanh_1ж
while/hswofenhiy/mul_5Mulwhile/hswofenhiy/Sigmoid_2:y:0while/hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/hswofenhiy/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/hswofenhiy/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/hswofenhiy/mul_5:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/hswofenhiy/add_3:z:0(^while/hswofenhiy/BiasAdd/ReadVariableOp'^while/hswofenhiy/MatMul/ReadVariableOp)^while/hswofenhiy/MatMul_1/ReadVariableOp ^while/hswofenhiy/ReadVariableOp"^while/hswofenhiy/ReadVariableOp_1"^while/hswofenhiy/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_5"f
0while_hswofenhiy_biasadd_readvariableop_resource2while_hswofenhiy_biasadd_readvariableop_resource_0"h
1while_hswofenhiy_matmul_1_readvariableop_resource3while_hswofenhiy_matmul_1_readvariableop_resource_0"d
/while_hswofenhiy_matmul_readvariableop_resource1while_hswofenhiy_matmul_readvariableop_resource_0"Z
*while_hswofenhiy_readvariableop_1_resource,while_hswofenhiy_readvariableop_1_resource_0"Z
*while_hswofenhiy_readvariableop_2_resource,while_hswofenhiy_readvariableop_2_resource_0"V
(while_hswofenhiy_readvariableop_resource*while_hswofenhiy_readvariableop_resource_0")
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
'while/hswofenhiy/BiasAdd/ReadVariableOp'while/hswofenhiy/BiasAdd/ReadVariableOp2P
&while/hswofenhiy/MatMul/ReadVariableOp&while/hswofenhiy/MatMul/ReadVariableOp2T
(while/hswofenhiy/MatMul_1/ReadVariableOp(while/hswofenhiy/MatMul_1/ReadVariableOp2B
while/hswofenhiy/ReadVariableOpwhile/hswofenhiy/ReadVariableOp2F
!while/hswofenhiy/ReadVariableOp_1!while/hswofenhiy/ReadVariableOp_12F
!while/hswofenhiy/ReadVariableOp_2!while/hswofenhiy/ReadVariableOp_2: 
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
╣'
╡
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_2599202

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
█
Д
,__inference_dnzlhpjizj_layer_call_fn_2598173

inputs
unknown:	А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCall▓
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
GPU2*0J 8В *P
fKRI
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_25961292
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
ы
Ж
,__inference_nyosplwtfa_layer_call_fn_2598910
inputs_0
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 
	unknown_3: 
	unknown_4: 
identityИвStatefulPartitionedCall░
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
GPU2*0J 8В *P
fKRI
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_25946322
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
рY
З
while_body_2598792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lwptfvtmlx_matmul_readvariableop_resource_0:	 АF
3while_lwptfvtmlx_matmul_1_readvariableop_resource_0:	 АA
2while_lwptfvtmlx_biasadd_readvariableop_resource_0:	А8
*while_lwptfvtmlx_readvariableop_resource_0: :
,while_lwptfvtmlx_readvariableop_1_resource_0: :
,while_lwptfvtmlx_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lwptfvtmlx_matmul_readvariableop_resource:	 АD
1while_lwptfvtmlx_matmul_1_readvariableop_resource:	 А?
0while_lwptfvtmlx_biasadd_readvariableop_resource:	А6
(while_lwptfvtmlx_readvariableop_resource: 8
*while_lwptfvtmlx_readvariableop_1_resource: 8
*while_lwptfvtmlx_readvariableop_2_resource: Ив'while/lwptfvtmlx/BiasAdd/ReadVariableOpв&while/lwptfvtmlx/MatMul/ReadVariableOpв(while/lwptfvtmlx/MatMul_1/ReadVariableOpвwhile/lwptfvtmlx/ReadVariableOpв!while/lwptfvtmlx/ReadVariableOp_1в!while/lwptfvtmlx/ReadVariableOp_2├
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
&while/lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp1while_lwptfvtmlx_matmul_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02(
&while/lwptfvtmlx/MatMul/ReadVariableOp╤
while/lwptfvtmlx/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul╔
(while/lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp3while_lwptfvtmlx_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02*
(while/lwptfvtmlx/MatMul_1/ReadVariableOp║
while/lwptfvtmlx/MatMul_1MatMulwhile_placeholder_20while/lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/MatMul_1░
while/lwptfvtmlx/addAddV2!while/lwptfvtmlx/MatMul:product:0#while/lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/add┬
'while/lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp2while_lwptfvtmlx_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02)
'while/lwptfvtmlx/BiasAdd/ReadVariableOp╜
while/lwptfvtmlx/BiasAddBiasAddwhile/lwptfvtmlx/add:z:0/while/lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lwptfvtmlx/BiasAddЖ
 while/lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/lwptfvtmlx/split/split_dimГ
while/lwptfvtmlx/splitSplit)while/lwptfvtmlx/split/split_dim:output:0!while/lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lwptfvtmlx/splitй
while/lwptfvtmlx/ReadVariableOpReadVariableOp*while_lwptfvtmlx_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/lwptfvtmlx/ReadVariableOpг
while/lwptfvtmlx/mulMul'while/lwptfvtmlx/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mulж
while/lwptfvtmlx/add_1AddV2while/lwptfvtmlx/split:output:0while/lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_1Н
while/lwptfvtmlx/SigmoidSigmoidwhile/lwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoidп
!while/lwptfvtmlx/ReadVariableOp_1ReadVariableOp,while_lwptfvtmlx_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_1й
while/lwptfvtmlx/mul_1Mul)while/lwptfvtmlx/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_1и
while/lwptfvtmlx/add_2AddV2while/lwptfvtmlx/split:output:1while/lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_2С
while/lwptfvtmlx/Sigmoid_1Sigmoidwhile/lwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_1Ю
while/lwptfvtmlx/mul_2Mulwhile/lwptfvtmlx/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_2Й
while/lwptfvtmlx/TanhTanhwhile/lwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanhв
while/lwptfvtmlx/mul_3Mulwhile/lwptfvtmlx/Sigmoid:y:0while/lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_3г
while/lwptfvtmlx/add_3AddV2while/lwptfvtmlx/mul_2:z:0while/lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_3п
!while/lwptfvtmlx/ReadVariableOp_2ReadVariableOp,while_lwptfvtmlx_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/lwptfvtmlx/ReadVariableOp_2░
while/lwptfvtmlx/mul_4Mul)while/lwptfvtmlx/ReadVariableOp_2:value:0while/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_4и
while/lwptfvtmlx/add_4AddV2while/lwptfvtmlx/split:output:3while/lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/add_4С
while/lwptfvtmlx/Sigmoid_2Sigmoidwhile/lwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Sigmoid_2И
while/lwptfvtmlx/Tanh_1Tanhwhile/lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/Tanh_1ж
while/lwptfvtmlx/mul_5Mulwhile/lwptfvtmlx/Sigmoid_2:y:0while/lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
while/lwptfvtmlx/mul_5▐
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lwptfvtmlx/mul_5:z:0*
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
while/IdentityIdentitywhile/add_1:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity┘
while/Identity_1Identitywhile_while_maximum_iterations(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1╚
while/Identity_2Identitywhile/add:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3ц
while/Identity_4Identitywhile/lwptfvtmlx/mul_5:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
T0*'
_output_shapes
:          2
while/Identity_4ц
while/Identity_5Identitywhile/lwptfvtmlx/add_3:z:0(^while/lwptfvtmlx/BiasAdd/ReadVariableOp'^while/lwptfvtmlx/MatMul/ReadVariableOp)^while/lwptfvtmlx/MatMul_1/ReadVariableOp ^while/lwptfvtmlx/ReadVariableOp"^while/lwptfvtmlx/ReadVariableOp_1"^while/lwptfvtmlx/ReadVariableOp_2*
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
0while_lwptfvtmlx_biasadd_readvariableop_resource2while_lwptfvtmlx_biasadd_readvariableop_resource_0"h
1while_lwptfvtmlx_matmul_1_readvariableop_resource3while_lwptfvtmlx_matmul_1_readvariableop_resource_0"d
/while_lwptfvtmlx_matmul_readvariableop_resource1while_lwptfvtmlx_matmul_readvariableop_resource_0"Z
*while_lwptfvtmlx_readvariableop_1_resource,while_lwptfvtmlx_readvariableop_1_resource_0"Z
*while_lwptfvtmlx_readvariableop_2_resource,while_lwptfvtmlx_readvariableop_2_resource_0"V
(while_lwptfvtmlx_readvariableop_resource*while_lwptfvtmlx_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :          :          : : : : : : : : 2R
'while/lwptfvtmlx/BiasAdd/ReadVariableOp'while/lwptfvtmlx/BiasAdd/ReadVariableOp2P
&while/lwptfvtmlx/MatMul/ReadVariableOp&while/lwptfvtmlx/MatMul/ReadVariableOp2T
(while/lwptfvtmlx/MatMul_1/ReadVariableOp(while/lwptfvtmlx/MatMul_1/ReadVariableOp2B
while/lwptfvtmlx/ReadVariableOpwhile/lwptfvtmlx/ReadVariableOp2F
!while/lwptfvtmlx/ReadVariableOp_1!while/lwptfvtmlx/ReadVariableOp_12F
!while/lwptfvtmlx/ReadVariableOp_2!while/lwptfvtmlx/ReadVariableOp_2: 
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
▒'
│
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_2594532

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
╣'
╡
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_2599068

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
╚
Э
,__inference_gtjikcltwy_layer_call_fn_2597367

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCallВ
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
GPU2*0J 8В *P
fKRI
G__inference_gtjikcltwy_layer_call_and_return_conditional_losses_25952472
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
жh
Е
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598713

inputs<
)lwptfvtmlx_matmul_readvariableop_resource:	 А>
+lwptfvtmlx_matmul_1_readvariableop_resource:	 А9
*lwptfvtmlx_biasadd_readvariableop_resource:	А0
"lwptfvtmlx_readvariableop_resource: 2
$lwptfvtmlx_readvariableop_1_resource: 2
$lwptfvtmlx_readvariableop_2_resource: 
identityИв!lwptfvtmlx/BiasAdd/ReadVariableOpв lwptfvtmlx/MatMul/ReadVariableOpв"lwptfvtmlx/MatMul_1/ReadVariableOpвlwptfvtmlx/ReadVariableOpвlwptfvtmlx/ReadVariableOp_1вlwptfvtmlx/ReadVariableOp_2вwhileD
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
 lwptfvtmlx/MatMul/ReadVariableOpReadVariableOp)lwptfvtmlx_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype02"
 lwptfvtmlx/MatMul/ReadVariableOpз
lwptfvtmlx/MatMulMatMulstrided_slice_2:output:0(lwptfvtmlx/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul╡
"lwptfvtmlx/MatMul_1/ReadVariableOpReadVariableOp+lwptfvtmlx_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"lwptfvtmlx/MatMul_1/ReadVariableOpг
lwptfvtmlx/MatMul_1MatMulzeros:output:0*lwptfvtmlx/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/MatMul_1Ш
lwptfvtmlx/addAddV2lwptfvtmlx/MatMul:product:0lwptfvtmlx/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/addо
!lwptfvtmlx/BiasAdd/ReadVariableOpReadVariableOp*lwptfvtmlx_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!lwptfvtmlx/BiasAdd/ReadVariableOpе
lwptfvtmlx/BiasAddBiasAddlwptfvtmlx/add:z:0)lwptfvtmlx/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lwptfvtmlx/BiasAddz
lwptfvtmlx/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lwptfvtmlx/split/split_dimы
lwptfvtmlx/splitSplit#lwptfvtmlx/split/split_dim:output:0lwptfvtmlx/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lwptfvtmlx/splitХ
lwptfvtmlx/ReadVariableOpReadVariableOp"lwptfvtmlx_readvariableop_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOpО
lwptfvtmlx/mulMul!lwptfvtmlx/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mulО
lwptfvtmlx/add_1AddV2lwptfvtmlx/split:output:0lwptfvtmlx/mul:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_1{
lwptfvtmlx/SigmoidSigmoidlwptfvtmlx/add_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/SigmoidЫ
lwptfvtmlx/ReadVariableOp_1ReadVariableOp$lwptfvtmlx_readvariableop_1_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_1Ф
lwptfvtmlx/mul_1Mul#lwptfvtmlx/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_1Р
lwptfvtmlx/add_2AddV2lwptfvtmlx/split:output:1lwptfvtmlx/mul_1:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_2
lwptfvtmlx/Sigmoid_1Sigmoidlwptfvtmlx/add_2:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_1Й
lwptfvtmlx/mul_2Mullwptfvtmlx/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_2w
lwptfvtmlx/TanhTanhlwptfvtmlx/split:output:2*
T0*'
_output_shapes
:          2
lwptfvtmlx/TanhК
lwptfvtmlx/mul_3Mullwptfvtmlx/Sigmoid:y:0lwptfvtmlx/Tanh:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_3Л
lwptfvtmlx/add_3AddV2lwptfvtmlx/mul_2:z:0lwptfvtmlx/mul_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_3Ы
lwptfvtmlx/ReadVariableOp_2ReadVariableOp$lwptfvtmlx_readvariableop_2_resource*
_output_shapes
: *
dtype02
lwptfvtmlx/ReadVariableOp_2Ш
lwptfvtmlx/mul_4Mul#lwptfvtmlx/ReadVariableOp_2:value:0lwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_4Р
lwptfvtmlx/add_4AddV2lwptfvtmlx/split:output:3lwptfvtmlx/mul_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/add_4
lwptfvtmlx/Sigmoid_2Sigmoidlwptfvtmlx/add_4:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Sigmoid_2v
lwptfvtmlx/Tanh_1Tanhlwptfvtmlx/add_3:z:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/Tanh_1О
lwptfvtmlx/mul_5Mullwptfvtmlx/Sigmoid_2:y:0lwptfvtmlx/Tanh_1:y:0*
T0*'
_output_shapes
:          2
lwptfvtmlx/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lwptfvtmlx_matmul_readvariableop_resource+lwptfvtmlx_matmul_1_readvariableop_resource*lwptfvtmlx_biasadd_readvariableop_resource"lwptfvtmlx_readvariableop_resource$lwptfvtmlx_readvariableop_1_resource$lwptfvtmlx_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2598612*
condR
while_cond_2598611*Q
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
IdentityIdentitystrided_slice_3:output:0"^lwptfvtmlx/BiasAdd/ReadVariableOp!^lwptfvtmlx/MatMul/ReadVariableOp#^lwptfvtmlx/MatMul_1/ReadVariableOp^lwptfvtmlx/ReadVariableOp^lwptfvtmlx/ReadVariableOp_1^lwptfvtmlx/ReadVariableOp_2^while*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:          : : : : : : 2F
!lwptfvtmlx/BiasAdd/ReadVariableOp!lwptfvtmlx/BiasAdd/ReadVariableOp2D
 lwptfvtmlx/MatMul/ReadVariableOp lwptfvtmlx/MatMul/ReadVariableOp2H
"lwptfvtmlx/MatMul_1/ReadVariableOp"lwptfvtmlx/MatMul_1/ReadVariableOp26
lwptfvtmlx/ReadVariableOplwptfvtmlx/ReadVariableOp2:
lwptfvtmlx/ReadVariableOp_1lwptfvtmlx/ReadVariableOp_12:
lwptfvtmlx/ReadVariableOp_2lwptfvtmlx/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:          
 
_user_specified_nameinputs
бh
Е
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2598105

inputs<
)hswofenhiy_matmul_readvariableop_resource:	А>
+hswofenhiy_matmul_1_readvariableop_resource:	 А9
*hswofenhiy_biasadd_readvariableop_resource:	А0
"hswofenhiy_readvariableop_resource: 2
$hswofenhiy_readvariableop_1_resource: 2
$hswofenhiy_readvariableop_2_resource: 
identityИв!hswofenhiy/BiasAdd/ReadVariableOpв hswofenhiy/MatMul/ReadVariableOpв"hswofenhiy/MatMul_1/ReadVariableOpвhswofenhiy/ReadVariableOpвhswofenhiy/ReadVariableOp_1вhswofenhiy/ReadVariableOp_2вwhileD
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
 hswofenhiy/MatMul/ReadVariableOpReadVariableOp)hswofenhiy_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02"
 hswofenhiy/MatMul/ReadVariableOpз
hswofenhiy/MatMulMatMulstrided_slice_2:output:0(hswofenhiy/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul╡
"hswofenhiy/MatMul_1/ReadVariableOpReadVariableOp+hswofenhiy_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02$
"hswofenhiy/MatMul_1/ReadVariableOpг
hswofenhiy/MatMul_1MatMulzeros:output:0*hswofenhiy/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/MatMul_1Ш
hswofenhiy/addAddV2hswofenhiy/MatMul:product:0hswofenhiy/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
hswofenhiy/addо
!hswofenhiy/BiasAdd/ReadVariableOpReadVariableOp*hswofenhiy_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02#
!hswofenhiy/BiasAdd/ReadVariableOpе
hswofenhiy/BiasAddBiasAddhswofenhiy/add:z:0)hswofenhiy/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
hswofenhiy/BiasAddz
hswofenhiy/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
hswofenhiy/split/split_dimы
hswofenhiy/splitSplit#hswofenhiy/split/split_dim:output:0hswofenhiy/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
hswofenhiy/splitХ
hswofenhiy/ReadVariableOpReadVariableOp"hswofenhiy_readvariableop_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOpО
hswofenhiy/mulMul!hswofenhiy/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mulО
hswofenhiy/add_1AddV2hswofenhiy/split:output:0hswofenhiy/mul:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_1{
hswofenhiy/SigmoidSigmoidhswofenhiy/add_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/SigmoidЫ
hswofenhiy/ReadVariableOp_1ReadVariableOp$hswofenhiy_readvariableop_1_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_1Ф
hswofenhiy/mul_1Mul#hswofenhiy/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_1Р
hswofenhiy/add_2AddV2hswofenhiy/split:output:1hswofenhiy/mul_1:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_2
hswofenhiy/Sigmoid_1Sigmoidhswofenhiy/add_2:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_1Й
hswofenhiy/mul_2Mulhswofenhiy/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_2w
hswofenhiy/TanhTanhhswofenhiy/split:output:2*
T0*'
_output_shapes
:          2
hswofenhiy/TanhК
hswofenhiy/mul_3Mulhswofenhiy/Sigmoid:y:0hswofenhiy/Tanh:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_3Л
hswofenhiy/add_3AddV2hswofenhiy/mul_2:z:0hswofenhiy/mul_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_3Ы
hswofenhiy/ReadVariableOp_2ReadVariableOp$hswofenhiy_readvariableop_2_resource*
_output_shapes
: *
dtype02
hswofenhiy/ReadVariableOp_2Ш
hswofenhiy/mul_4Mul#hswofenhiy/ReadVariableOp_2:value:0hswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_4Р
hswofenhiy/add_4AddV2hswofenhiy/split:output:3hswofenhiy/mul_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/add_4
hswofenhiy/Sigmoid_2Sigmoidhswofenhiy/add_4:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Sigmoid_2v
hswofenhiy/Tanh_1Tanhhswofenhiy/add_3:z:0*
T0*'
_output_shapes
:          2
hswofenhiy/Tanh_1О
hswofenhiy/mul_5Mulhswofenhiy/Sigmoid_2:y:0hswofenhiy/Tanh_1:y:0*
T0*'
_output_shapes
:          2
hswofenhiy/mul_5П
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
while/loop_counterь
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)hswofenhiy_matmul_readvariableop_resource+hswofenhiy_matmul_1_readvariableop_resource*hswofenhiy_biasadd_readvariableop_resource"hswofenhiy_readvariableop_resource$hswofenhiy_readvariableop_1_resource$hswofenhiy_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :          :          : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_2598004*
condR
while_cond_2598003*Q
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
IdentityIdentitytranspose_1:y:0"^hswofenhiy/BiasAdd/ReadVariableOp!^hswofenhiy/MatMul/ReadVariableOp#^hswofenhiy/MatMul_1/ReadVariableOp^hswofenhiy/ReadVariableOp^hswofenhiy/ReadVariableOp_1^hswofenhiy/ReadVariableOp_2^while*
T0*+
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : : : 2F
!hswofenhiy/BiasAdd/ReadVariableOp!hswofenhiy/BiasAdd/ReadVariableOp2D
 hswofenhiy/MatMul/ReadVariableOp hswofenhiy/MatMul/ReadVariableOp2H
"hswofenhiy/MatMul_1/ReadVariableOp"hswofenhiy/MatMul_1/ReadVariableOp26
hswofenhiy/ReadVariableOphswofenhiy/ReadVariableOp2:
hswofenhiy/ReadVariableOp_1hswofenhiy/ReadVariableOp_12:
hswofenhiy/ReadVariableOp_2hswofenhiy/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultз
I

bdeyofgzkq;
serving_default_bdeyofgzkq:0         >

chsgvefspq0
StatefulPartitionedCall:0         tensorflow/serving/predict:╨║
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
+Г&call_and_return_all_conditional_losses
Д__call__"┬A
_tf_keras_sequentialгA{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "bdeyofgzkq"}}, {"class_name": "Conv1D", "config": {"name": "gtjikcltwy", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "ezubtmdnwx", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}}, {"class_name": "RNN", "config": {"name": "dnzlhpjizj", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "hswofenhiy", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}}, {"class_name": "RNN", "config": {"name": "nyosplwtfa", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "lwptfvtmlx", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}}, {"class_name": "Dense", "config": {"name": "chsgvefspq", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 13}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 5, 13]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 3, 5, 13]}, "float32", "bdeyofgzkq"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "bdeyofgzkq"}, "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "gtjikcltwy", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Reshape", "config": {"name": "ezubtmdnwx", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}, "shared_object_id": 4}, {"class_name": "RNN", "config": {"name": "dnzlhpjizj", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "hswofenhiy", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}}, "shared_object_id": 9}, {"class_name": "RNN", "config": {"name": "nyosplwtfa", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "lwptfvtmlx", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "chsgvefspq", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
╠

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+Е&call_and_return_all_conditional_losses
Ж__call__"е

_tf_keras_layerЛ
{"name": "gtjikcltwy", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "gtjikcltwy", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 13}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 5, 13]}}
Р
	variables
regularization_losses
trainable_variables
	keras_api
+З&call_and_return_all_conditional_losses
И__call__" 
_tf_keras_layerх{"name": "ezubtmdnwx", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "ezubtmdnwx", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}, "shared_object_id": 4}
н
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
+Й&call_and_return_all_conditional_losses
К__call__"В
_tf_keras_rnn_layerф{"name": "dnzlhpjizj", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RNN", "config": {"name": "dnzlhpjizj", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "hswofenhiy", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}}, "shared_object_id": 9, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 20]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 20]}}
│
cell

state_spec
	variables
regularization_losses
 trainable_variables
!	keras_api
+Л&call_and_return_all_conditional_losses
М__call__"И
_tf_keras_rnn_layerъ{"name": "nyosplwtfa", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RNN", "config": {"name": "nyosplwtfa", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "lwptfvtmlx", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}}, "shared_object_id": 14, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 21}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 32]}}
┘

"kernel
#bias
$	variables
%regularization_losses
&trainable_variables
'	keras_api
+Н&call_and_return_all_conditional_losses
О__call__"▓
_tf_keras_layerШ{"name": "chsgvefspq", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "chsgvefspq", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
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
9non_trainable_variables
	variables

:layers
regularization_losses
;layer_metrics
<metrics
=layer_regularization_losses
	trainable_variables
Д__call__
В_default_save_signature
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
-
Пserving_default"
signature_map
':%2gtjikcltwy/kernel
:2gtjikcltwy/bias
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
>non_trainable_variables
?layer_metrics

@layers
	variables
regularization_losses
Ametrics
Blayer_regularization_losses
trainable_variables
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
Cnon_trainable_variables
Dlayer_metrics

Elayers
	variables
regularization_losses
Fmetrics
Glayer_regularization_losses
trainable_variables
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
Jregularization_losses
Ktrainable_variables
L	keras_api
+Р&call_and_return_all_conditional_losses
С__call__"╓
_tf_keras_layer╝{"name": "hswofenhiy", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Addons>PeepholeLSTMCell", "config": {"name": "hswofenhiy", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}
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
Mnon_trainable_variables
	variables

Nlayers
Olayer_metrics
regularization_losses

Pstates
Qmetrics
Rlayer_regularization_losses
trainable_variables
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
Uregularization_losses
Vtrainable_variables
W	keras_api
+Т&call_and_return_all_conditional_losses
У__call__"┌
_tf_keras_layer└{"name": "lwptfvtmlx", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Addons>PeepholeLSTMCell", "config": {"name": "lwptfvtmlx", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}
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
Xnon_trainable_variables
	variables

Ylayers
Zlayer_metrics
regularization_losses

[states
\metrics
]layer_regularization_losses
 trainable_variables
М__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
#:! 2chsgvefspq/kernel
:2chsgvefspq/bias
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
^non_trainable_variables
_layer_metrics

`layers
$	variables
%regularization_losses
ametrics
blayer_regularization_losses
&trainable_variables
О__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
/:-	А2dnzlhpjizj/hswofenhiy/kernel
9:7	 А2&dnzlhpjizj/hswofenhiy/recurrent_kernel
):'А2dnzlhpjizj/hswofenhiy/bias
?:= 21dnzlhpjizj/hswofenhiy/input_gate_peephole_weights
@:> 22dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights
@:> 22dnzlhpjizj/hswofenhiy/output_gate_peephole_weights
/:-	 А2nyosplwtfa/lwptfvtmlx/kernel
9:7	 А2&nyosplwtfa/lwptfvtmlx/recurrent_kernel
):'А2nyosplwtfa/lwptfvtmlx/bias
?:= 21nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights
@:> 22nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights
@:> 22nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_dict_wrapper
'
c0"
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
dnon_trainable_variables
elayer_metrics

flayers
I	variables
Jregularization_losses
gmetrics
hlayer_regularization_losses
Ktrainable_variables
С__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
inon_trainable_variables
jlayer_metrics

klayers
T	variables
Uregularization_losses
lmetrics
mlayer_regularization_losses
Vtrainable_variables
У__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
╘
	ntotal
	ocount
p	variables
q	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 23}
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
n0
o1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
1:/2RMSprop/gtjikcltwy/kernel/rms
':%2RMSprop/gtjikcltwy/bias/rms
-:+ 2RMSprop/chsgvefspq/kernel/rms
':%2RMSprop/chsgvefspq/bias/rms
9:7	А2(RMSprop/dnzlhpjizj/hswofenhiy/kernel/rms
C:A	 А22RMSprop/dnzlhpjizj/hswofenhiy/recurrent_kernel/rms
3:1А2&RMSprop/dnzlhpjizj/hswofenhiy/bias/rms
I:G 2=RMSprop/dnzlhpjizj/hswofenhiy/input_gate_peephole_weights/rms
J:H 2>RMSprop/dnzlhpjizj/hswofenhiy/forget_gate_peephole_weights/rms
J:H 2>RMSprop/dnzlhpjizj/hswofenhiy/output_gate_peephole_weights/rms
9:7	 А2(RMSprop/nyosplwtfa/lwptfvtmlx/kernel/rms
C:A	 А22RMSprop/nyosplwtfa/lwptfvtmlx/recurrent_kernel/rms
3:1А2&RMSprop/nyosplwtfa/lwptfvtmlx/bias/rms
I:G 2=RMSprop/nyosplwtfa/lwptfvtmlx/input_gate_peephole_weights/rms
J:H 2>RMSprop/nyosplwtfa/lwptfvtmlx/forget_gate_peephole_weights/rms
J:H 2>RMSprop/nyosplwtfa/lwptfvtmlx/output_gate_peephole_weights/rms
ы2ш
"__inference__wrapped_model_2593687┴
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

bdeyofgzkq         
ъ2ч
G__inference_sequential_layer_call_and_return_conditional_losses_2596843
G__inference_sequential_layer_call_and_return_conditional_losses_2597247
G__inference_sequential_layer_call_and_return_conditional_losses_2596353
G__inference_sequential_layer_call_and_return_conditional_losses_2596394└
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
■2√
,__inference_sequential_layer_call_fn_2595706
,__inference_sequential_layer_call_fn_2597284
,__inference_sequential_layer_call_fn_2597321
,__inference_sequential_layer_call_fn_2596312└
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
ё2ю
G__inference_gtjikcltwy_layer_call_and_return_conditional_losses_2597358в
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
╓2╙
,__inference_gtjikcltwy_layer_call_fn_2597367в
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
ё2ю
G__inference_ezubtmdnwx_layer_call_and_return_conditional_losses_2597380в
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
╓2╙
,__inference_ezubtmdnwx_layer_call_fn_2597385в
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
Р2Н
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2597565
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2597745
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2597925
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2598105ц
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
д2б
,__inference_dnzlhpjizj_layer_call_fn_2598122
,__inference_dnzlhpjizj_layer_call_fn_2598139
,__inference_dnzlhpjizj_layer_call_fn_2598156
,__inference_dnzlhpjizj_layer_call_fn_2598173ц
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
Р2Н
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598353
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598533
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598713
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598893ц
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
д2б
,__inference_nyosplwtfa_layer_call_fn_2598910
,__inference_nyosplwtfa_layer_call_fn_2598927
,__inference_nyosplwtfa_layer_call_fn_2598944
,__inference_nyosplwtfa_layer_call_fn_2598961ц
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
ё2ю
G__inference_chsgvefspq_layer_call_and_return_conditional_losses_2598971в
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
╓2╙
,__inference_chsgvefspq_layer_call_fn_2598980в
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
╧B╠
%__inference_signature_wrapper_2596439
bdeyofgzkq"Ф
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
╓2╙
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_2599024
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_2599068╛
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
а2Э
,__inference_hswofenhiy_layer_call_fn_2599091
,__inference_hswofenhiy_layer_call_fn_2599114╛
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
╓2╙
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_2599158
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_2599202╛
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
а2Э
,__inference_lwptfvtmlx_layer_call_fn_2599225
,__inference_lwptfvtmlx_layer_call_fn_2599248╛
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
 п
"__inference__wrapped_model_2593687И-./012345678"#;в8
1в.
,К)

bdeyofgzkq         
к "7к4
2

chsgvefspq$К!

chsgvefspq         з
G__inference_chsgvefspq_layer_call_and_return_conditional_losses_2598971\"#/в,
%в"
 К
inputs          
к "%в"
К
0         
Ъ 
,__inference_chsgvefspq_layer_call_fn_2598980O"#/в,
%в"
 К
inputs          
к "К         ▌
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2597565С-./012SвP
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
Ъ ▌
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2597745С-./012SвP
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
Ъ ├
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2597925x-./012Cв@
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
Ъ ├
G__inference_dnzlhpjizj_layer_call_and_return_conditional_losses_2598105x-./012Cв@
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
Ъ ╡
,__inference_dnzlhpjizj_layer_call_fn_2598122Д-./012SвP
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
к "%К"                   ╡
,__inference_dnzlhpjizj_layer_call_fn_2598139Д-./012SвP
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
к "%К"                   Ы
,__inference_dnzlhpjizj_layer_call_fn_2598156k-./012Cв@
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
к "К          Ы
,__inference_dnzlhpjizj_layer_call_fn_2598173k-./012Cв@
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
к "К          п
G__inference_ezubtmdnwx_layer_call_and_return_conditional_losses_2597380d7в4
-в*
(К%
inputs         
к ")в&
К
0         
Ъ З
,__inference_ezubtmdnwx_layer_call_fn_2597385W7в4
-в*
(К%
inputs         
к "К         ╖
G__inference_gtjikcltwy_layer_call_and_return_conditional_losses_2597358l7в4
-в*
(К%
inputs         
к "-в*
#К 
0         
Ъ П
,__inference_gtjikcltwy_layer_call_fn_2597367_7в4
-в*
(К%
inputs         
к " К         ╠
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_2599024А-./012Ав}
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
Ъ ╠
G__inference_hswofenhiy_layer_call_and_return_conditional_losses_2599068А-./012Ав}
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
Ъ б
,__inference_hswofenhiy_layer_call_fn_2599091Ё-./012Ав}
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
1/1          б
,__inference_hswofenhiy_layer_call_fn_2599114Ё-./012Ав}
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
1/1          ╠
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_2599158А345678Ав}
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
Ъ ╠
G__inference_lwptfvtmlx_layer_call_and_return_conditional_losses_2599202А345678Ав}
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
Ъ б
,__inference_lwptfvtmlx_layer_call_fn_2599225Ё345678Ав}
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
1/1          б
,__inference_lwptfvtmlx_layer_call_fn_2599248Ё345678Ав}
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
1/1          ╨
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598353Д345678SвP
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
Ъ ╨
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598533Д345678SвP
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
Ъ ┐
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598713t345678Cв@
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
Ъ ┐
G__inference_nyosplwtfa_layer_call_and_return_conditional_losses_2598893t345678Cв@
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
Ъ з
,__inference_nyosplwtfa_layer_call_fn_2598910w345678SвP
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
к "К          з
,__inference_nyosplwtfa_layer_call_fn_2598927w345678SвP
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
к "К          Ч
,__inference_nyosplwtfa_layer_call_fn_2598944g345678Cв@
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
к "К          Ч
,__inference_nyosplwtfa_layer_call_fn_2598961g345678Cв@
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
к "К          ╔
G__inference_sequential_layer_call_and_return_conditional_losses_2596353~-./012345678"#Cв@
9в6
,К)

bdeyofgzkq         
p 

 
к "%в"
К
0         
Ъ ╔
G__inference_sequential_layer_call_and_return_conditional_losses_2596394~-./012345678"#Cв@
9в6
,К)

bdeyofgzkq         
p

 
к "%в"
К
0         
Ъ ┼
G__inference_sequential_layer_call_and_return_conditional_losses_2596843z-./012345678"#?в<
5в2
(К%
inputs         
p 

 
к "%в"
К
0         
Ъ ┼
G__inference_sequential_layer_call_and_return_conditional_losses_2597247z-./012345678"#?в<
5в2
(К%
inputs         
p

 
к "%в"
К
0         
Ъ б
,__inference_sequential_layer_call_fn_2595706q-./012345678"#Cв@
9в6
,К)

bdeyofgzkq         
p 

 
к "К         б
,__inference_sequential_layer_call_fn_2596312q-./012345678"#Cв@
9в6
,К)

bdeyofgzkq         
p

 
к "К         Э
,__inference_sequential_layer_call_fn_2597284m-./012345678"#?в<
5в2
(К%
inputs         
p 

 
к "К         Э
,__inference_sequential_layer_call_fn_2597321m-./012345678"#?в<
5в2
(К%
inputs         
p

 
к "К         └
%__inference_signature_wrapper_2596439Ц-./012345678"#IвF
в 
?к<
:

bdeyofgzkq,К)

bdeyofgzkq         "7к4
2

chsgvefspq$К!

chsgvefspq         