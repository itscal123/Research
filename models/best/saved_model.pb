��2
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
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
�"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ث/
�
bpstkcuudk/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namebpstkcuudk/kernel
{
%bpstkcuudk/kernel/Read/ReadVariableOpReadVariableOpbpstkcuudk/kernel*"
_output_shapes
:*
dtype0
v
bpstkcuudk/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namebpstkcuudk/bias
o
#bpstkcuudk/bias/Read/ReadVariableOpReadVariableOpbpstkcuudk/bias*
_output_shapes
:*
dtype0
~
oaettnoaty/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_nameoaettnoaty/kernel
w
%oaettnoaty/kernel/Read/ReadVariableOpReadVariableOpoaettnoaty/kernel*
_output_shapes

: *
dtype0
v
oaettnoaty/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameoaettnoaty/bias
o
#oaettnoaty/bias/Read/ReadVariableOpReadVariableOpoaettnoaty/bias*
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
�
osutmzfngz/dsycfvoega/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_nameosutmzfngz/dsycfvoega/kernel
�
0osutmzfngz/dsycfvoega/kernel/Read/ReadVariableOpReadVariableOposutmzfngz/dsycfvoega/kernel*
_output_shapes
:	�*
dtype0
�
&osutmzfngz/dsycfvoega/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*7
shared_name(&osutmzfngz/dsycfvoega/recurrent_kernel
�
:osutmzfngz/dsycfvoega/recurrent_kernel/Read/ReadVariableOpReadVariableOp&osutmzfngz/dsycfvoega/recurrent_kernel*
_output_shapes
:	 �*
dtype0
�
osutmzfngz/dsycfvoega/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameosutmzfngz/dsycfvoega/bias
�
.osutmzfngz/dsycfvoega/bias/Read/ReadVariableOpReadVariableOposutmzfngz/dsycfvoega/bias*
_output_shapes	
:�*
dtype0
�
1osutmzfngz/dsycfvoega/input_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31osutmzfngz/dsycfvoega/input_gate_peephole_weights
�
Eosutmzfngz/dsycfvoega/input_gate_peephole_weights/Read/ReadVariableOpReadVariableOp1osutmzfngz/dsycfvoega/input_gate_peephole_weights*
_output_shapes
: *
dtype0
�
2osutmzfngz/dsycfvoega/forget_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42osutmzfngz/dsycfvoega/forget_gate_peephole_weights
�
Fosutmzfngz/dsycfvoega/forget_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2osutmzfngz/dsycfvoega/forget_gate_peephole_weights*
_output_shapes
: *
dtype0
�
2osutmzfngz/dsycfvoega/output_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42osutmzfngz/dsycfvoega/output_gate_peephole_weights
�
Fosutmzfngz/dsycfvoega/output_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2osutmzfngz/dsycfvoega/output_gate_peephole_weights*
_output_shapes
: *
dtype0
�
owshcilvwl/flzkvrshbq/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*-
shared_nameowshcilvwl/flzkvrshbq/kernel
�
0owshcilvwl/flzkvrshbq/kernel/Read/ReadVariableOpReadVariableOpowshcilvwl/flzkvrshbq/kernel*
_output_shapes
:	 �*
dtype0
�
&owshcilvwl/flzkvrshbq/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*7
shared_name(&owshcilvwl/flzkvrshbq/recurrent_kernel
�
:owshcilvwl/flzkvrshbq/recurrent_kernel/Read/ReadVariableOpReadVariableOp&owshcilvwl/flzkvrshbq/recurrent_kernel*
_output_shapes
:	 �*
dtype0
�
owshcilvwl/flzkvrshbq/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameowshcilvwl/flzkvrshbq/bias
�
.owshcilvwl/flzkvrshbq/bias/Read/ReadVariableOpReadVariableOpowshcilvwl/flzkvrshbq/bias*
_output_shapes	
:�*
dtype0
�
1owshcilvwl/flzkvrshbq/input_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31owshcilvwl/flzkvrshbq/input_gate_peephole_weights
�
Eowshcilvwl/flzkvrshbq/input_gate_peephole_weights/Read/ReadVariableOpReadVariableOp1owshcilvwl/flzkvrshbq/input_gate_peephole_weights*
_output_shapes
: *
dtype0
�
2owshcilvwl/flzkvrshbq/forget_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42owshcilvwl/flzkvrshbq/forget_gate_peephole_weights
�
Fowshcilvwl/flzkvrshbq/forget_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2owshcilvwl/flzkvrshbq/forget_gate_peephole_weights*
_output_shapes
: *
dtype0
�
2owshcilvwl/flzkvrshbq/output_gate_peephole_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42owshcilvwl/flzkvrshbq/output_gate_peephole_weights
�
Fowshcilvwl/flzkvrshbq/output_gate_peephole_weights/Read/ReadVariableOpReadVariableOp2owshcilvwl/flzkvrshbq/output_gate_peephole_weights*
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
�
RMSprop/bpstkcuudk/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/bpstkcuudk/kernel/rms
�
1RMSprop/bpstkcuudk/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/bpstkcuudk/kernel/rms*"
_output_shapes
:*
dtype0
�
RMSprop/bpstkcuudk/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/bpstkcuudk/bias/rms
�
/RMSprop/bpstkcuudk/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/bpstkcuudk/bias/rms*
_output_shapes
:*
dtype0
�
RMSprop/oaettnoaty/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *.
shared_nameRMSprop/oaettnoaty/kernel/rms
�
1RMSprop/oaettnoaty/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/oaettnoaty/kernel/rms*
_output_shapes

: *
dtype0
�
RMSprop/oaettnoaty/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/oaettnoaty/bias/rms
�
/RMSprop/oaettnoaty/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/oaettnoaty/bias/rms*
_output_shapes
:*
dtype0
�
(RMSprop/osutmzfngz/dsycfvoega/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*9
shared_name*(RMSprop/osutmzfngz/dsycfvoega/kernel/rms
�
<RMSprop/osutmzfngz/dsycfvoega/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/osutmzfngz/dsycfvoega/kernel/rms*
_output_shapes
:	�*
dtype0
�
2RMSprop/osutmzfngz/dsycfvoega/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*C
shared_name42RMSprop/osutmzfngz/dsycfvoega/recurrent_kernel/rms
�
FRMSprop/osutmzfngz/dsycfvoega/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp2RMSprop/osutmzfngz/dsycfvoega/recurrent_kernel/rms*
_output_shapes
:	 �*
dtype0
�
&RMSprop/osutmzfngz/dsycfvoega/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&RMSprop/osutmzfngz/dsycfvoega/bias/rms
�
:RMSprop/osutmzfngz/dsycfvoega/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/osutmzfngz/dsycfvoega/bias/rms*
_output_shapes	
:�*
dtype0
�
=RMSprop/osutmzfngz/dsycfvoega/input_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=RMSprop/osutmzfngz/dsycfvoega/input_gate_peephole_weights/rms
�
QRMSprop/osutmzfngz/dsycfvoega/input_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp=RMSprop/osutmzfngz/dsycfvoega/input_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
�
>RMSprop/osutmzfngz/dsycfvoega/forget_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/osutmzfngz/dsycfvoega/forget_gate_peephole_weights/rms
�
RRMSprop/osutmzfngz/dsycfvoega/forget_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/osutmzfngz/dsycfvoega/forget_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
�
>RMSprop/osutmzfngz/dsycfvoega/output_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/osutmzfngz/dsycfvoega/output_gate_peephole_weights/rms
�
RRMSprop/osutmzfngz/dsycfvoega/output_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/osutmzfngz/dsycfvoega/output_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
�
(RMSprop/owshcilvwl/flzkvrshbq/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*9
shared_name*(RMSprop/owshcilvwl/flzkvrshbq/kernel/rms
�
<RMSprop/owshcilvwl/flzkvrshbq/kernel/rms/Read/ReadVariableOpReadVariableOp(RMSprop/owshcilvwl/flzkvrshbq/kernel/rms*
_output_shapes
:	 �*
dtype0
�
2RMSprop/owshcilvwl/flzkvrshbq/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*C
shared_name42RMSprop/owshcilvwl/flzkvrshbq/recurrent_kernel/rms
�
FRMSprop/owshcilvwl/flzkvrshbq/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp2RMSprop/owshcilvwl/flzkvrshbq/recurrent_kernel/rms*
_output_shapes
:	 �*
dtype0
�
&RMSprop/owshcilvwl/flzkvrshbq/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&RMSprop/owshcilvwl/flzkvrshbq/bias/rms
�
:RMSprop/owshcilvwl/flzkvrshbq/bias/rms/Read/ReadVariableOpReadVariableOp&RMSprop/owshcilvwl/flzkvrshbq/bias/rms*
_output_shapes	
:�*
dtype0
�
=RMSprop/owshcilvwl/flzkvrshbq/input_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=RMSprop/owshcilvwl/flzkvrshbq/input_gate_peephole_weights/rms
�
QRMSprop/owshcilvwl/flzkvrshbq/input_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp=RMSprop/owshcilvwl/flzkvrshbq/input_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
�
>RMSprop/owshcilvwl/flzkvrshbq/forget_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/owshcilvwl/flzkvrshbq/forget_gate_peephole_weights/rms
�
RRMSprop/owshcilvwl/flzkvrshbq/forget_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/owshcilvwl/flzkvrshbq/forget_gate_peephole_weights/rms*
_output_shapes
: *
dtype0
�
>RMSprop/owshcilvwl/flzkvrshbq/output_gate_peephole_weights/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *O
shared_name@>RMSprop/owshcilvwl/flzkvrshbq/output_gate_peephole_weights/rms
�
RRMSprop/owshcilvwl/flzkvrshbq/output_gate_peephole_weights/rms/Read/ReadVariableOpReadVariableOp>RMSprop/owshcilvwl/flzkvrshbq/output_gate_peephole_weights/rms*
_output_shapes
: *
dtype0

NoOpNoOp
�F
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�E
value�EB�E B�E
�
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

signatures
#_self_saveable_object_factories
	trainable_variables

regularization_losses
	variables
	keras_api
�

kernel
bias
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
w
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
�
cell

state_spec
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
�
 cell
!
state_spec
#"_self_saveable_object_factories
#trainable_variables
$regularization_losses
%	variables
&	keras_api
�

'kernel
(bias
#)_self_saveable_object_factories
*trainable_variables
+regularization_losses
,	variables
-	keras_api
�
.iter
	/decay
0learning_rate
1momentum
2rho	rmsz	rms{	'rms|	(rms}	3rms~	4rms
5rms�
6rms�
7rms�
8rms�
9rms�
:rms�
;rms�
<rms�
=rms�
>rms�
 
 
v
0
1
32
43
54
65
76
87
98
:9
;10
<11
=12
>13
'14
(15
 
v
0
1
32
43
54
65
76
87
98
:9
;10
<11
=12
>13
'14
(15
�
	trainable_variables
?non_trainable_variables
@layer_regularization_losses

regularization_losses
	variables
Ametrics
Blayer_metrics

Clayers
][
VARIABLE_VALUEbpstkcuudk/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEbpstkcuudk/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
�
trainable_variables
Dnon_trainable_variables
Elayer_regularization_losses
regularization_losses
	variables
Fmetrics
Glayer_metrics

Hlayers
 
 
 
 
�
trainable_variables
Inon_trainable_variables
Jlayer_regularization_losses
regularization_losses
	variables
Kmetrics
Llayer_metrics

Mlayers
�
N
state_size

3kernel
4recurrent_kernel
5bias
6input_gate_peephole_weights
 7forget_gate_peephole_weights
 8output_gate_peephole_weights
#O_self_saveable_object_factories
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
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
�
trainable_variables
Tnon_trainable_variables

Ustates
Vlayer_regularization_losses
regularization_losses
	variables
Wmetrics
Xlayer_metrics

Ylayers
�
Z
state_size

9kernel
:recurrent_kernel
;bias
<input_gate_peephole_weights
 =forget_gate_peephole_weights
 >output_gate_peephole_weights
#[_self_saveable_object_factories
\trainable_variables
]regularization_losses
^	variables
_	keras_api
 
 
*
90
:1
;2
<3
=4
>5
 
*
90
:1
;2
<3
=4
>5
�
#trainable_variables
`non_trainable_variables

astates
blayer_regularization_losses
$regularization_losses
%	variables
cmetrics
dlayer_metrics

elayers
][
VARIABLE_VALUEoaettnoaty/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEoaettnoaty/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1
 

'0
(1
�
*trainable_variables
fnon_trainable_variables
glayer_regularization_losses
+regularization_losses
,	variables
hmetrics
ilayer_metrics

jlayers
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
b`
VARIABLE_VALUEosutmzfngz/dsycfvoega/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE&osutmzfngz/dsycfvoega/recurrent_kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEosutmzfngz/dsycfvoega/bias0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE1osutmzfngz/dsycfvoega/input_gate_peephole_weights0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE2osutmzfngz/dsycfvoega/forget_gate_peephole_weights0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE2osutmzfngz/dsycfvoega/output_gate_peephole_weights0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEowshcilvwl/flzkvrshbq/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE&owshcilvwl/flzkvrshbq/recurrent_kernel0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEowshcilvwl/flzkvrshbq/bias1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE1owshcilvwl/flzkvrshbq/input_gate_peephole_weights1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE2owshcilvwl/flzkvrshbq/forget_gate_peephole_weights1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE2owshcilvwl/flzkvrshbq/output_gate_peephole_weights1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
 
 

k0
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
�
Ptrainable_variables
lnon_trainable_variables
mlayer_regularization_losses
Qregularization_losses
R	variables
nmetrics
olayer_metrics

players
 
 
 
 
 

0
 
 
*
90
:1
;2
<3
=4
>5
 
*
90
:1
;2
<3
=4
>5
�
\trainable_variables
qnon_trainable_variables
rlayer_regularization_losses
]regularization_losses
^	variables
smetrics
tlayer_metrics

ulayers
 
 
 
 
 

 0
 
 
 
 
 
4
	vtotal
	wcount
x	variables
y	keras_api
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
v0
w1

x	variables
��
VARIABLE_VALUERMSprop/bpstkcuudk/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/bpstkcuudk/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/oaettnoaty/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/oaettnoaty/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE(RMSprop/osutmzfngz/dsycfvoega/kernel/rmsNtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE2RMSprop/osutmzfngz/dsycfvoega/recurrent_kernel/rmsNtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE&RMSprop/osutmzfngz/dsycfvoega/bias/rmsNtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE=RMSprop/osutmzfngz/dsycfvoega/input_gate_peephole_weights/rmsNtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE>RMSprop/osutmzfngz/dsycfvoega/forget_gate_peephole_weights/rmsNtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE>RMSprop/osutmzfngz/dsycfvoega/output_gate_peephole_weights/rmsNtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE(RMSprop/owshcilvwl/flzkvrshbq/kernel/rmsNtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE2RMSprop/owshcilvwl/flzkvrshbq/recurrent_kernel/rmsNtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE&RMSprop/owshcilvwl/flzkvrshbq/bias/rmsOtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE=RMSprop/owshcilvwl/flzkvrshbq/input_gate_peephole_weights/rmsOtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE>RMSprop/owshcilvwl/flzkvrshbq/forget_gate_peephole_weights/rmsOtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE>RMSprop/owshcilvwl/flzkvrshbq/output_gate_peephole_weights/rmsOtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_jfowsgvbzwPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_jfowsgvbzwbpstkcuudk/kernelbpstkcuudk/biasosutmzfngz/dsycfvoega/kernel&osutmzfngz/dsycfvoega/recurrent_kernelosutmzfngz/dsycfvoega/bias1osutmzfngz/dsycfvoega/input_gate_peephole_weights2osutmzfngz/dsycfvoega/forget_gate_peephole_weights2osutmzfngz/dsycfvoega/output_gate_peephole_weightsowshcilvwl/flzkvrshbq/kernel&owshcilvwl/flzkvrshbq/recurrent_kernelowshcilvwl/flzkvrshbq/bias1owshcilvwl/flzkvrshbq/input_gate_peephole_weights2owshcilvwl/flzkvrshbq/forget_gate_peephole_weights2owshcilvwl/flzkvrshbq/output_gate_peephole_weightsoaettnoaty/kerneloaettnoaty/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_29832
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%bpstkcuudk/kernel/Read/ReadVariableOp#bpstkcuudk/bias/Read/ReadVariableOp%oaettnoaty/kernel/Read/ReadVariableOp#oaettnoaty/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp0osutmzfngz/dsycfvoega/kernel/Read/ReadVariableOp:osutmzfngz/dsycfvoega/recurrent_kernel/Read/ReadVariableOp.osutmzfngz/dsycfvoega/bias/Read/ReadVariableOpEosutmzfngz/dsycfvoega/input_gate_peephole_weights/Read/ReadVariableOpFosutmzfngz/dsycfvoega/forget_gate_peephole_weights/Read/ReadVariableOpFosutmzfngz/dsycfvoega/output_gate_peephole_weights/Read/ReadVariableOp0owshcilvwl/flzkvrshbq/kernel/Read/ReadVariableOp:owshcilvwl/flzkvrshbq/recurrent_kernel/Read/ReadVariableOp.owshcilvwl/flzkvrshbq/bias/Read/ReadVariableOpEowshcilvwl/flzkvrshbq/input_gate_peephole_weights/Read/ReadVariableOpFowshcilvwl/flzkvrshbq/forget_gate_peephole_weights/Read/ReadVariableOpFowshcilvwl/flzkvrshbq/output_gate_peephole_weights/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp1RMSprop/bpstkcuudk/kernel/rms/Read/ReadVariableOp/RMSprop/bpstkcuudk/bias/rms/Read/ReadVariableOp1RMSprop/oaettnoaty/kernel/rms/Read/ReadVariableOp/RMSprop/oaettnoaty/bias/rms/Read/ReadVariableOp<RMSprop/osutmzfngz/dsycfvoega/kernel/rms/Read/ReadVariableOpFRMSprop/osutmzfngz/dsycfvoega/recurrent_kernel/rms/Read/ReadVariableOp:RMSprop/osutmzfngz/dsycfvoega/bias/rms/Read/ReadVariableOpQRMSprop/osutmzfngz/dsycfvoega/input_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/osutmzfngz/dsycfvoega/forget_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/osutmzfngz/dsycfvoega/output_gate_peephole_weights/rms/Read/ReadVariableOp<RMSprop/owshcilvwl/flzkvrshbq/kernel/rms/Read/ReadVariableOpFRMSprop/owshcilvwl/flzkvrshbq/recurrent_kernel/rms/Read/ReadVariableOp:RMSprop/owshcilvwl/flzkvrshbq/bias/rms/Read/ReadVariableOpQRMSprop/owshcilvwl/flzkvrshbq/input_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/owshcilvwl/flzkvrshbq/forget_gate_peephole_weights/rms/Read/ReadVariableOpRRMSprop/owshcilvwl/flzkvrshbq/output_gate_peephole_weights/rms/Read/ReadVariableOpConst*4
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
GPU2*0J 8� *'
f"R 
__inference__traced_save_32781
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebpstkcuudk/kernelbpstkcuudk/biasoaettnoaty/kerneloaettnoaty/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhoosutmzfngz/dsycfvoega/kernel&osutmzfngz/dsycfvoega/recurrent_kernelosutmzfngz/dsycfvoega/bias1osutmzfngz/dsycfvoega/input_gate_peephole_weights2osutmzfngz/dsycfvoega/forget_gate_peephole_weights2osutmzfngz/dsycfvoega/output_gate_peephole_weightsowshcilvwl/flzkvrshbq/kernel&owshcilvwl/flzkvrshbq/recurrent_kernelowshcilvwl/flzkvrshbq/bias1owshcilvwl/flzkvrshbq/input_gate_peephole_weights2owshcilvwl/flzkvrshbq/forget_gate_peephole_weights2owshcilvwl/flzkvrshbq/output_gate_peephole_weightstotalcountRMSprop/bpstkcuudk/kernel/rmsRMSprop/bpstkcuudk/bias/rmsRMSprop/oaettnoaty/kernel/rmsRMSprop/oaettnoaty/bias/rms(RMSprop/osutmzfngz/dsycfvoega/kernel/rms2RMSprop/osutmzfngz/dsycfvoega/recurrent_kernel/rms&RMSprop/osutmzfngz/dsycfvoega/bias/rms=RMSprop/osutmzfngz/dsycfvoega/input_gate_peephole_weights/rms>RMSprop/osutmzfngz/dsycfvoega/forget_gate_peephole_weights/rms>RMSprop/osutmzfngz/dsycfvoega/output_gate_peephole_weights/rms(RMSprop/owshcilvwl/flzkvrshbq/kernel/rms2RMSprop/owshcilvwl/flzkvrshbq/recurrent_kernel/rms&RMSprop/owshcilvwl/flzkvrshbq/bias/rms=RMSprop/owshcilvwl/flzkvrshbq/input_gate_peephole_weights/rms>RMSprop/owshcilvwl/flzkvrshbq/forget_gate_peephole_weights/rms>RMSprop/owshcilvwl/flzkvrshbq/output_gate_peephole_weights/rms*3
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
GPU2*0J 8� **
f%R#
!__inference__traced_restore_32908��-
�p
�
osutmzfngz_while_body_299532
.osutmzfngz_while_osutmzfngz_while_loop_counter8
4osutmzfngz_while_osutmzfngz_while_maximum_iterations 
osutmzfngz_while_placeholder"
osutmzfngz_while_placeholder_1"
osutmzfngz_while_placeholder_2"
osutmzfngz_while_placeholder_31
-osutmzfngz_while_osutmzfngz_strided_slice_1_0m
iosutmzfngz_while_tensorarrayv2read_tensorlistgetitem_osutmzfngz_tensorarrayunstack_tensorlistfromtensor_0O
<osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource_0:	�Q
>osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource_0:	 �L
=osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource_0:	�C
5osutmzfngz_while_dsycfvoega_readvariableop_resource_0: E
7osutmzfngz_while_dsycfvoega_readvariableop_1_resource_0: E
7osutmzfngz_while_dsycfvoega_readvariableop_2_resource_0: 
osutmzfngz_while_identity
osutmzfngz_while_identity_1
osutmzfngz_while_identity_2
osutmzfngz_while_identity_3
osutmzfngz_while_identity_4
osutmzfngz_while_identity_5/
+osutmzfngz_while_osutmzfngz_strided_slice_1k
gosutmzfngz_while_tensorarrayv2read_tensorlistgetitem_osutmzfngz_tensorarrayunstack_tensorlistfromtensorM
:osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource:	�O
<osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource:	 �J
;osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource:	�A
3osutmzfngz_while_dsycfvoega_readvariableop_resource: C
5osutmzfngz_while_dsycfvoega_readvariableop_1_resource: C
5osutmzfngz_while_dsycfvoega_readvariableop_2_resource: ��2osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp�1osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp�3osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp�*osutmzfngz/while/dsycfvoega/ReadVariableOp�,osutmzfngz/while/dsycfvoega/ReadVariableOp_1�,osutmzfngz/while/dsycfvoega/ReadVariableOp_2�
Bosutmzfngz/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2D
Bosutmzfngz/while/TensorArrayV2Read/TensorListGetItem/element_shape�
4osutmzfngz/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemiosutmzfngz_while_tensorarrayv2read_tensorlistgetitem_osutmzfngz_tensorarrayunstack_tensorlistfromtensor_0osutmzfngz_while_placeholderKosutmzfngz/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype026
4osutmzfngz/while/TensorArrayV2Read/TensorListGetItem�
1osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOpReadVariableOp<osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype023
1osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp�
"osutmzfngz/while/dsycfvoega/MatMulMatMul;osutmzfngz/while/TensorArrayV2Read/TensorListGetItem:item:09osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"osutmzfngz/while/dsycfvoega/MatMul�
3osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp>osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype025
3osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp�
$osutmzfngz/while/dsycfvoega/MatMul_1MatMulosutmzfngz_while_placeholder_2;osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$osutmzfngz/while/dsycfvoega/MatMul_1�
osutmzfngz/while/dsycfvoega/addAddV2,osutmzfngz/while/dsycfvoega/MatMul:product:0.osutmzfngz/while/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2!
osutmzfngz/while/dsycfvoega/add�
2osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp=osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype024
2osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp�
#osutmzfngz/while/dsycfvoega/BiasAddBiasAdd#osutmzfngz/while/dsycfvoega/add:z:0:osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#osutmzfngz/while/dsycfvoega/BiasAdd�
+osutmzfngz/while/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+osutmzfngz/while/dsycfvoega/split/split_dim�
!osutmzfngz/while/dsycfvoega/splitSplit4osutmzfngz/while/dsycfvoega/split/split_dim:output:0,osutmzfngz/while/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2#
!osutmzfngz/while/dsycfvoega/split�
*osutmzfngz/while/dsycfvoega/ReadVariableOpReadVariableOp5osutmzfngz_while_dsycfvoega_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*osutmzfngz/while/dsycfvoega/ReadVariableOp�
osutmzfngz/while/dsycfvoega/mulMul2osutmzfngz/while/dsycfvoega/ReadVariableOp:value:0osutmzfngz_while_placeholder_3*
T0*'
_output_shapes
:��������� 2!
osutmzfngz/while/dsycfvoega/mul�
!osutmzfngz/while/dsycfvoega/add_1AddV2*osutmzfngz/while/dsycfvoega/split:output:0#osutmzfngz/while/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/add_1�
#osutmzfngz/while/dsycfvoega/SigmoidSigmoid%osutmzfngz/while/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2%
#osutmzfngz/while/dsycfvoega/Sigmoid�
,osutmzfngz/while/dsycfvoega/ReadVariableOp_1ReadVariableOp7osutmzfngz_while_dsycfvoega_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,osutmzfngz/while/dsycfvoega/ReadVariableOp_1�
!osutmzfngz/while/dsycfvoega/mul_1Mul4osutmzfngz/while/dsycfvoega/ReadVariableOp_1:value:0osutmzfngz_while_placeholder_3*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/mul_1�
!osutmzfngz/while/dsycfvoega/add_2AddV2*osutmzfngz/while/dsycfvoega/split:output:1%osutmzfngz/while/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/add_2�
%osutmzfngz/while/dsycfvoega/Sigmoid_1Sigmoid%osutmzfngz/while/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2'
%osutmzfngz/while/dsycfvoega/Sigmoid_1�
!osutmzfngz/while/dsycfvoega/mul_2Mul)osutmzfngz/while/dsycfvoega/Sigmoid_1:y:0osutmzfngz_while_placeholder_3*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/mul_2�
 osutmzfngz/while/dsycfvoega/TanhTanh*osutmzfngz/while/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2"
 osutmzfngz/while/dsycfvoega/Tanh�
!osutmzfngz/while/dsycfvoega/mul_3Mul'osutmzfngz/while/dsycfvoega/Sigmoid:y:0$osutmzfngz/while/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/mul_3�
!osutmzfngz/while/dsycfvoega/add_3AddV2%osutmzfngz/while/dsycfvoega/mul_2:z:0%osutmzfngz/while/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/add_3�
,osutmzfngz/while/dsycfvoega/ReadVariableOp_2ReadVariableOp7osutmzfngz_while_dsycfvoega_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,osutmzfngz/while/dsycfvoega/ReadVariableOp_2�
!osutmzfngz/while/dsycfvoega/mul_4Mul4osutmzfngz/while/dsycfvoega/ReadVariableOp_2:value:0%osutmzfngz/while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/mul_4�
!osutmzfngz/while/dsycfvoega/add_4AddV2*osutmzfngz/while/dsycfvoega/split:output:3%osutmzfngz/while/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/add_4�
%osutmzfngz/while/dsycfvoega/Sigmoid_2Sigmoid%osutmzfngz/while/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2'
%osutmzfngz/while/dsycfvoega/Sigmoid_2�
"osutmzfngz/while/dsycfvoega/Tanh_1Tanh%osutmzfngz/while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2$
"osutmzfngz/while/dsycfvoega/Tanh_1�
!osutmzfngz/while/dsycfvoega/mul_5Mul)osutmzfngz/while/dsycfvoega/Sigmoid_2:y:0&osutmzfngz/while/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/mul_5�
5osutmzfngz/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemosutmzfngz_while_placeholder_1osutmzfngz_while_placeholder%osutmzfngz/while/dsycfvoega/mul_5:z:0*
_output_shapes
: *
element_dtype027
5osutmzfngz/while/TensorArrayV2Write/TensorListSetItemr
osutmzfngz/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
osutmzfngz/while/add/y�
osutmzfngz/while/addAddV2osutmzfngz_while_placeholderosutmzfngz/while/add/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/while/addv
osutmzfngz/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
osutmzfngz/while/add_1/y�
osutmzfngz/while/add_1AddV2.osutmzfngz_while_osutmzfngz_while_loop_counter!osutmzfngz/while/add_1/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/while/add_1�
osutmzfngz/while/IdentityIdentityosutmzfngz/while/add_1:z:03^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
osutmzfngz/while/Identity�
osutmzfngz/while/Identity_1Identity4osutmzfngz_while_osutmzfngz_while_maximum_iterations3^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
osutmzfngz/while/Identity_1�
osutmzfngz/while/Identity_2Identityosutmzfngz/while/add:z:03^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
osutmzfngz/while/Identity_2�
osutmzfngz/while/Identity_3IdentityEosutmzfngz/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
osutmzfngz/while/Identity_3�
osutmzfngz/while/Identity_4Identity%osutmzfngz/while/dsycfvoega/mul_5:z:03^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
osutmzfngz/while/Identity_4�
osutmzfngz/while/Identity_5Identity%osutmzfngz/while/dsycfvoega/add_3:z:03^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
osutmzfngz/while/Identity_5"|
;osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource=osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource_0"~
<osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource>osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource_0"z
:osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource<osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource_0"p
5osutmzfngz_while_dsycfvoega_readvariableop_1_resource7osutmzfngz_while_dsycfvoega_readvariableop_1_resource_0"p
5osutmzfngz_while_dsycfvoega_readvariableop_2_resource7osutmzfngz_while_dsycfvoega_readvariableop_2_resource_0"l
3osutmzfngz_while_dsycfvoega_readvariableop_resource5osutmzfngz_while_dsycfvoega_readvariableop_resource_0"?
osutmzfngz_while_identity"osutmzfngz/while/Identity:output:0"C
osutmzfngz_while_identity_1$osutmzfngz/while/Identity_1:output:0"C
osutmzfngz_while_identity_2$osutmzfngz/while/Identity_2:output:0"C
osutmzfngz_while_identity_3$osutmzfngz/while/Identity_3:output:0"C
osutmzfngz_while_identity_4$osutmzfngz/while/Identity_4:output:0"C
osutmzfngz_while_identity_5$osutmzfngz/while/Identity_5:output:0"\
+osutmzfngz_while_osutmzfngz_strided_slice_1-osutmzfngz_while_osutmzfngz_strided_slice_1_0"�
gosutmzfngz_while_tensorarrayv2read_tensorlistgetitem_osutmzfngz_tensorarrayunstack_tensorlistfromtensoriosutmzfngz_while_tensorarrayv2read_tensorlistgetitem_osutmzfngz_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2h
2osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2f
1osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp1osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp2j
3osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp3osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp2X
*osutmzfngz/while/dsycfvoega/ReadVariableOp*osutmzfngz/while/dsycfvoega/ReadVariableOp2\
,osutmzfngz/while/dsycfvoega/ReadVariableOp_1,osutmzfngz/while/dsycfvoega/ReadVariableOp_12\
,osutmzfngz/while/dsycfvoega/ReadVariableOp_2,osutmzfngz/while/dsycfvoega/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_flzkvrshbq_layer_call_fn_32618

inputs
states_0
states_1
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_279252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:��������� :��������� :��������� : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�	
�
E__inference_oaettnoaty_layer_call_and_return_conditional_losses_29057

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
*__inference_dsycfvoega_layer_call_fn_32507

inputs
states_0
states_1
unknown:	�
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_273542
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:���������:��������� :��������� : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�
�
*__inference_flzkvrshbq_layer_call_fn_32641

inputs
states_0
states_1
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_281122
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:��������� :��������� :��������� : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�p
�
owshcilvwl_while_body_305332
.owshcilvwl_while_owshcilvwl_while_loop_counter8
4owshcilvwl_while_owshcilvwl_while_maximum_iterations 
owshcilvwl_while_placeholder"
owshcilvwl_while_placeholder_1"
owshcilvwl_while_placeholder_2"
owshcilvwl_while_placeholder_31
-owshcilvwl_while_owshcilvwl_strided_slice_1_0m
iowshcilvwl_while_tensorarrayv2read_tensorlistgetitem_owshcilvwl_tensorarrayunstack_tensorlistfromtensor_0O
<owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource_0:	 �Q
>owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource_0:	 �L
=owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource_0:	�C
5owshcilvwl_while_flzkvrshbq_readvariableop_resource_0: E
7owshcilvwl_while_flzkvrshbq_readvariableop_1_resource_0: E
7owshcilvwl_while_flzkvrshbq_readvariableop_2_resource_0: 
owshcilvwl_while_identity
owshcilvwl_while_identity_1
owshcilvwl_while_identity_2
owshcilvwl_while_identity_3
owshcilvwl_while_identity_4
owshcilvwl_while_identity_5/
+owshcilvwl_while_owshcilvwl_strided_slice_1k
gowshcilvwl_while_tensorarrayv2read_tensorlistgetitem_owshcilvwl_tensorarrayunstack_tensorlistfromtensorM
:owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource:	 �O
<owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource:	 �J
;owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource:	�A
3owshcilvwl_while_flzkvrshbq_readvariableop_resource: C
5owshcilvwl_while_flzkvrshbq_readvariableop_1_resource: C
5owshcilvwl_while_flzkvrshbq_readvariableop_2_resource: ��2owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp�1owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp�3owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp�*owshcilvwl/while/flzkvrshbq/ReadVariableOp�,owshcilvwl/while/flzkvrshbq/ReadVariableOp_1�,owshcilvwl/while/flzkvrshbq/ReadVariableOp_2�
Bowshcilvwl/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2D
Bowshcilvwl/while/TensorArrayV2Read/TensorListGetItem/element_shape�
4owshcilvwl/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemiowshcilvwl_while_tensorarrayv2read_tensorlistgetitem_owshcilvwl_tensorarrayunstack_tensorlistfromtensor_0owshcilvwl_while_placeholderKowshcilvwl/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype026
4owshcilvwl/while/TensorArrayV2Read/TensorListGetItem�
1owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOpReadVariableOp<owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype023
1owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp�
"owshcilvwl/while/flzkvrshbq/MatMulMatMul;owshcilvwl/while/TensorArrayV2Read/TensorListGetItem:item:09owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"owshcilvwl/while/flzkvrshbq/MatMul�
3owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp>owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype025
3owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp�
$owshcilvwl/while/flzkvrshbq/MatMul_1MatMulowshcilvwl_while_placeholder_2;owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$owshcilvwl/while/flzkvrshbq/MatMul_1�
owshcilvwl/while/flzkvrshbq/addAddV2,owshcilvwl/while/flzkvrshbq/MatMul:product:0.owshcilvwl/while/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2!
owshcilvwl/while/flzkvrshbq/add�
2owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp=owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype024
2owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp�
#owshcilvwl/while/flzkvrshbq/BiasAddBiasAdd#owshcilvwl/while/flzkvrshbq/add:z:0:owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#owshcilvwl/while/flzkvrshbq/BiasAdd�
+owshcilvwl/while/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+owshcilvwl/while/flzkvrshbq/split/split_dim�
!owshcilvwl/while/flzkvrshbq/splitSplit4owshcilvwl/while/flzkvrshbq/split/split_dim:output:0,owshcilvwl/while/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2#
!owshcilvwl/while/flzkvrshbq/split�
*owshcilvwl/while/flzkvrshbq/ReadVariableOpReadVariableOp5owshcilvwl_while_flzkvrshbq_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*owshcilvwl/while/flzkvrshbq/ReadVariableOp�
owshcilvwl/while/flzkvrshbq/mulMul2owshcilvwl/while/flzkvrshbq/ReadVariableOp:value:0owshcilvwl_while_placeholder_3*
T0*'
_output_shapes
:��������� 2!
owshcilvwl/while/flzkvrshbq/mul�
!owshcilvwl/while/flzkvrshbq/add_1AddV2*owshcilvwl/while/flzkvrshbq/split:output:0#owshcilvwl/while/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/add_1�
#owshcilvwl/while/flzkvrshbq/SigmoidSigmoid%owshcilvwl/while/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2%
#owshcilvwl/while/flzkvrshbq/Sigmoid�
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_1ReadVariableOp7owshcilvwl_while_flzkvrshbq_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_1�
!owshcilvwl/while/flzkvrshbq/mul_1Mul4owshcilvwl/while/flzkvrshbq/ReadVariableOp_1:value:0owshcilvwl_while_placeholder_3*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/mul_1�
!owshcilvwl/while/flzkvrshbq/add_2AddV2*owshcilvwl/while/flzkvrshbq/split:output:1%owshcilvwl/while/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/add_2�
%owshcilvwl/while/flzkvrshbq/Sigmoid_1Sigmoid%owshcilvwl/while/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2'
%owshcilvwl/while/flzkvrshbq/Sigmoid_1�
!owshcilvwl/while/flzkvrshbq/mul_2Mul)owshcilvwl/while/flzkvrshbq/Sigmoid_1:y:0owshcilvwl_while_placeholder_3*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/mul_2�
 owshcilvwl/while/flzkvrshbq/TanhTanh*owshcilvwl/while/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2"
 owshcilvwl/while/flzkvrshbq/Tanh�
!owshcilvwl/while/flzkvrshbq/mul_3Mul'owshcilvwl/while/flzkvrshbq/Sigmoid:y:0$owshcilvwl/while/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/mul_3�
!owshcilvwl/while/flzkvrshbq/add_3AddV2%owshcilvwl/while/flzkvrshbq/mul_2:z:0%owshcilvwl/while/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/add_3�
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_2ReadVariableOp7owshcilvwl_while_flzkvrshbq_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_2�
!owshcilvwl/while/flzkvrshbq/mul_4Mul4owshcilvwl/while/flzkvrshbq/ReadVariableOp_2:value:0%owshcilvwl/while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/mul_4�
!owshcilvwl/while/flzkvrshbq/add_4AddV2*owshcilvwl/while/flzkvrshbq/split:output:3%owshcilvwl/while/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/add_4�
%owshcilvwl/while/flzkvrshbq/Sigmoid_2Sigmoid%owshcilvwl/while/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2'
%owshcilvwl/while/flzkvrshbq/Sigmoid_2�
"owshcilvwl/while/flzkvrshbq/Tanh_1Tanh%owshcilvwl/while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2$
"owshcilvwl/while/flzkvrshbq/Tanh_1�
!owshcilvwl/while/flzkvrshbq/mul_5Mul)owshcilvwl/while/flzkvrshbq/Sigmoid_2:y:0&owshcilvwl/while/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/mul_5�
5owshcilvwl/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemowshcilvwl_while_placeholder_1owshcilvwl_while_placeholder%owshcilvwl/while/flzkvrshbq/mul_5:z:0*
_output_shapes
: *
element_dtype027
5owshcilvwl/while/TensorArrayV2Write/TensorListSetItemr
owshcilvwl/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
owshcilvwl/while/add/y�
owshcilvwl/while/addAddV2owshcilvwl_while_placeholderowshcilvwl/while/add/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/while/addv
owshcilvwl/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
owshcilvwl/while/add_1/y�
owshcilvwl/while/add_1AddV2.owshcilvwl_while_owshcilvwl_while_loop_counter!owshcilvwl/while/add_1/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/while/add_1�
owshcilvwl/while/IdentityIdentityowshcilvwl/while/add_1:z:03^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
owshcilvwl/while/Identity�
owshcilvwl/while/Identity_1Identity4owshcilvwl_while_owshcilvwl_while_maximum_iterations3^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
owshcilvwl/while/Identity_1�
owshcilvwl/while/Identity_2Identityowshcilvwl/while/add:z:03^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
owshcilvwl/while/Identity_2�
owshcilvwl/while/Identity_3IdentityEowshcilvwl/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
owshcilvwl/while/Identity_3�
owshcilvwl/while/Identity_4Identity%owshcilvwl/while/flzkvrshbq/mul_5:z:03^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
owshcilvwl/while/Identity_4�
owshcilvwl/while/Identity_5Identity%owshcilvwl/while/flzkvrshbq/add_3:z:03^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
owshcilvwl/while/Identity_5"|
;owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource=owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource_0"~
<owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource>owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource_0"z
:owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource<owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource_0"p
5owshcilvwl_while_flzkvrshbq_readvariableop_1_resource7owshcilvwl_while_flzkvrshbq_readvariableop_1_resource_0"p
5owshcilvwl_while_flzkvrshbq_readvariableop_2_resource7owshcilvwl_while_flzkvrshbq_readvariableop_2_resource_0"l
3owshcilvwl_while_flzkvrshbq_readvariableop_resource5owshcilvwl_while_flzkvrshbq_readvariableop_resource_0"?
owshcilvwl_while_identity"owshcilvwl/while/Identity:output:0"C
owshcilvwl_while_identity_1$owshcilvwl/while/Identity_1:output:0"C
owshcilvwl_while_identity_2$owshcilvwl/while/Identity_2:output:0"C
owshcilvwl_while_identity_3$owshcilvwl/while/Identity_3:output:0"C
owshcilvwl_while_identity_4$owshcilvwl/while/Identity_4:output:0"C
owshcilvwl_while_identity_5$owshcilvwl/while/Identity_5:output:0"\
+owshcilvwl_while_owshcilvwl_strided_slice_1-owshcilvwl_while_owshcilvwl_strided_slice_1_0"�
gowshcilvwl_while_tensorarrayv2read_tensorlistgetitem_owshcilvwl_tensorarrayunstack_tensorlistfromtensoriowshcilvwl_while_tensorarrayv2read_tensorlistgetitem_owshcilvwl_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2h
2owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2f
1owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp1owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp2j
3owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp3owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp2X
*owshcilvwl/while/flzkvrshbq/ReadVariableOp*owshcilvwl/while/flzkvrshbq/ReadVariableOp2\
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_1,owshcilvwl/while/flzkvrshbq/ReadVariableOp_12\
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_2,owshcilvwl/while/flzkvrshbq/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_oaettnoaty_layer_call_fn_32373

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_oaettnoaty_layer_call_and_return_conditional_losses_290572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�	
&sequential_osutmzfngz_while_cond_26796H
Dsequential_osutmzfngz_while_sequential_osutmzfngz_while_loop_counterN
Jsequential_osutmzfngz_while_sequential_osutmzfngz_while_maximum_iterations+
'sequential_osutmzfngz_while_placeholder-
)sequential_osutmzfngz_while_placeholder_1-
)sequential_osutmzfngz_while_placeholder_2-
)sequential_osutmzfngz_while_placeholder_3J
Fsequential_osutmzfngz_while_less_sequential_osutmzfngz_strided_slice_1_
[sequential_osutmzfngz_while_sequential_osutmzfngz_while_cond_26796___redundant_placeholder0_
[sequential_osutmzfngz_while_sequential_osutmzfngz_while_cond_26796___redundant_placeholder1_
[sequential_osutmzfngz_while_sequential_osutmzfngz_while_cond_26796___redundant_placeholder2_
[sequential_osutmzfngz_while_sequential_osutmzfngz_while_cond_26796___redundant_placeholder3_
[sequential_osutmzfngz_while_sequential_osutmzfngz_while_cond_26796___redundant_placeholder4_
[sequential_osutmzfngz_while_sequential_osutmzfngz_while_cond_26796___redundant_placeholder5_
[sequential_osutmzfngz_while_sequential_osutmzfngz_while_cond_26796___redundant_placeholder6(
$sequential_osutmzfngz_while_identity
�
 sequential/osutmzfngz/while/LessLess'sequential_osutmzfngz_while_placeholderFsequential_osutmzfngz_while_less_sequential_osutmzfngz_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/osutmzfngz/while/Less�
$sequential/osutmzfngz/while/IdentityIdentity$sequential/osutmzfngz/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/osutmzfngz/while/Identity"U
$sequential_osutmzfngz_while_identity-sequential/osutmzfngz/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�Y
�
while_body_28932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_flzkvrshbq_matmul_readvariableop_resource_0:	 �F
3while_flzkvrshbq_matmul_1_readvariableop_resource_0:	 �A
2while_flzkvrshbq_biasadd_readvariableop_resource_0:	�8
*while_flzkvrshbq_readvariableop_resource_0: :
,while_flzkvrshbq_readvariableop_1_resource_0: :
,while_flzkvrshbq_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_flzkvrshbq_matmul_readvariableop_resource:	 �D
1while_flzkvrshbq_matmul_1_readvariableop_resource:	 �?
0while_flzkvrshbq_biasadd_readvariableop_resource:	�6
(while_flzkvrshbq_readvariableop_resource: 8
*while_flzkvrshbq_readvariableop_1_resource: 8
*while_flzkvrshbq_readvariableop_2_resource: ��'while/flzkvrshbq/BiasAdd/ReadVariableOp�&while/flzkvrshbq/MatMul/ReadVariableOp�(while/flzkvrshbq/MatMul_1/ReadVariableOp�while/flzkvrshbq/ReadVariableOp�!while/flzkvrshbq/ReadVariableOp_1�!while/flzkvrshbq/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/flzkvrshbq/MatMul/ReadVariableOpReadVariableOp1while_flzkvrshbq_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02(
&while/flzkvrshbq/MatMul/ReadVariableOp�
while/flzkvrshbq/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul�
(while/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp3while_flzkvrshbq_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/flzkvrshbq/MatMul_1/ReadVariableOp�
while/flzkvrshbq/MatMul_1MatMulwhile_placeholder_20while/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul_1�
while/flzkvrshbq/addAddV2!while/flzkvrshbq/MatMul:product:0#while/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/add�
'while/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp2while_flzkvrshbq_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/flzkvrshbq/BiasAdd/ReadVariableOp�
while/flzkvrshbq/BiasAddBiasAddwhile/flzkvrshbq/add:z:0/while/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/BiasAdd�
 while/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/flzkvrshbq/split/split_dim�
while/flzkvrshbq/splitSplit)while/flzkvrshbq/split/split_dim:output:0!while/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/flzkvrshbq/split�
while/flzkvrshbq/ReadVariableOpReadVariableOp*while_flzkvrshbq_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/flzkvrshbq/ReadVariableOp�
while/flzkvrshbq/mulMul'while/flzkvrshbq/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul�
while/flzkvrshbq/add_1AddV2while/flzkvrshbq/split:output:0while/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_1�
while/flzkvrshbq/SigmoidSigmoidwhile/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid�
!while/flzkvrshbq/ReadVariableOp_1ReadVariableOp,while_flzkvrshbq_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_1�
while/flzkvrshbq/mul_1Mul)while/flzkvrshbq/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_1�
while/flzkvrshbq/add_2AddV2while/flzkvrshbq/split:output:1while/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_2�
while/flzkvrshbq/Sigmoid_1Sigmoidwhile/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_1�
while/flzkvrshbq/mul_2Mulwhile/flzkvrshbq/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_2�
while/flzkvrshbq/TanhTanhwhile/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh�
while/flzkvrshbq/mul_3Mulwhile/flzkvrshbq/Sigmoid:y:0while/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_3�
while/flzkvrshbq/add_3AddV2while/flzkvrshbq/mul_2:z:0while/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_3�
!while/flzkvrshbq/ReadVariableOp_2ReadVariableOp,while_flzkvrshbq_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_2�
while/flzkvrshbq/mul_4Mul)while/flzkvrshbq/ReadVariableOp_2:value:0while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_4�
while/flzkvrshbq/add_4AddV2while/flzkvrshbq/split:output:3while/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_4�
while/flzkvrshbq/Sigmoid_2Sigmoidwhile/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_2�
while/flzkvrshbq/Tanh_1Tanhwhile/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh_1�
while/flzkvrshbq/mul_5Mulwhile/flzkvrshbq/Sigmoid_2:y:0while/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/flzkvrshbq/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/flzkvrshbq/mul_5:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/flzkvrshbq/add_3:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_flzkvrshbq_biasadd_readvariableop_resource2while_flzkvrshbq_biasadd_readvariableop_resource_0"h
1while_flzkvrshbq_matmul_1_readvariableop_resource3while_flzkvrshbq_matmul_1_readvariableop_resource_0"d
/while_flzkvrshbq_matmul_readvariableop_resource1while_flzkvrshbq_matmul_readvariableop_resource_0"Z
*while_flzkvrshbq_readvariableop_1_resource,while_flzkvrshbq_readvariableop_1_resource_0"Z
*while_flzkvrshbq_readvariableop_2_resource,while_flzkvrshbq_readvariableop_2_resource_0"V
(while_flzkvrshbq_readvariableop_resource*while_flzkvrshbq_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/flzkvrshbq/BiasAdd/ReadVariableOp'while/flzkvrshbq/BiasAdd/ReadVariableOp2P
&while/flzkvrshbq/MatMul/ReadVariableOp&while/flzkvrshbq/MatMul/ReadVariableOp2T
(while/flzkvrshbq/MatMul_1/ReadVariableOp(while/flzkvrshbq/MatMul_1/ReadVariableOp2B
while/flzkvrshbq/ReadVariableOpwhile/flzkvrshbq/ReadVariableOp2F
!while/flzkvrshbq/ReadVariableOp_1!while/flzkvrshbq/ReadVariableOp_12F
!while/flzkvrshbq/ReadVariableOp_2!while/flzkvrshbq/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
چ
�
&sequential_owshcilvwl_while_body_26973H
Dsequential_owshcilvwl_while_sequential_owshcilvwl_while_loop_counterN
Jsequential_owshcilvwl_while_sequential_owshcilvwl_while_maximum_iterations+
'sequential_owshcilvwl_while_placeholder-
)sequential_owshcilvwl_while_placeholder_1-
)sequential_owshcilvwl_while_placeholder_2-
)sequential_owshcilvwl_while_placeholder_3G
Csequential_owshcilvwl_while_sequential_owshcilvwl_strided_slice_1_0�
sequential_owshcilvwl_while_tensorarrayv2read_tensorlistgetitem_sequential_owshcilvwl_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource_0:	 �\
Isequential_owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource_0:	 �W
Hsequential_owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource_0:	�N
@sequential_owshcilvwl_while_flzkvrshbq_readvariableop_resource_0: P
Bsequential_owshcilvwl_while_flzkvrshbq_readvariableop_1_resource_0: P
Bsequential_owshcilvwl_while_flzkvrshbq_readvariableop_2_resource_0: (
$sequential_owshcilvwl_while_identity*
&sequential_owshcilvwl_while_identity_1*
&sequential_owshcilvwl_while_identity_2*
&sequential_owshcilvwl_while_identity_3*
&sequential_owshcilvwl_while_identity_4*
&sequential_owshcilvwl_while_identity_5E
Asequential_owshcilvwl_while_sequential_owshcilvwl_strided_slice_1�
}sequential_owshcilvwl_while_tensorarrayv2read_tensorlistgetitem_sequential_owshcilvwl_tensorarrayunstack_tensorlistfromtensorX
Esequential_owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource:	 �Z
Gsequential_owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource:	 �U
Fsequential_owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource:	�L
>sequential_owshcilvwl_while_flzkvrshbq_readvariableop_resource: N
@sequential_owshcilvwl_while_flzkvrshbq_readvariableop_1_resource: N
@sequential_owshcilvwl_while_flzkvrshbq_readvariableop_2_resource: ��=sequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp�<sequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp�>sequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp�5sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp�7sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_1�7sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_2�
Msequential/owshcilvwl/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2O
Msequential/owshcilvwl/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential/owshcilvwl/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_owshcilvwl_while_tensorarrayv2read_tensorlistgetitem_sequential_owshcilvwl_tensorarrayunstack_tensorlistfromtensor_0'sequential_owshcilvwl_while_placeholderVsequential/owshcilvwl/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype02A
?sequential/owshcilvwl/while/TensorArrayV2Read/TensorListGetItem�
<sequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOpReadVariableOpGsequential_owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02>
<sequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp�
-sequential/owshcilvwl/while/flzkvrshbq/MatMulMatMulFsequential/owshcilvwl/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2/
-sequential/owshcilvwl/while/flzkvrshbq/MatMul�
>sequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOpIsequential_owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02@
>sequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp�
/sequential/owshcilvwl/while/flzkvrshbq/MatMul_1MatMul)sequential_owshcilvwl_while_placeholder_2Fsequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������21
/sequential/owshcilvwl/while/flzkvrshbq/MatMul_1�
*sequential/owshcilvwl/while/flzkvrshbq/addAddV27sequential/owshcilvwl/while/flzkvrshbq/MatMul:product:09sequential/owshcilvwl/while/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2,
*sequential/owshcilvwl/while/flzkvrshbq/add�
=sequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOpHsequential_owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02?
=sequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp�
.sequential/owshcilvwl/while/flzkvrshbq/BiasAddBiasAdd.sequential/owshcilvwl/while/flzkvrshbq/add:z:0Esequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������20
.sequential/owshcilvwl/while/flzkvrshbq/BiasAdd�
6sequential/owshcilvwl/while/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/owshcilvwl/while/flzkvrshbq/split/split_dim�
,sequential/owshcilvwl/while/flzkvrshbq/splitSplit?sequential/owshcilvwl/while/flzkvrshbq/split/split_dim:output:07sequential/owshcilvwl/while/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2.
,sequential/owshcilvwl/while/flzkvrshbq/split�
5sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOpReadVariableOp@sequential_owshcilvwl_while_flzkvrshbq_readvariableop_resource_0*
_output_shapes
: *
dtype027
5sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp�
*sequential/owshcilvwl/while/flzkvrshbq/mulMul=sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp:value:0)sequential_owshcilvwl_while_placeholder_3*
T0*'
_output_shapes
:��������� 2,
*sequential/owshcilvwl/while/flzkvrshbq/mul�
,sequential/owshcilvwl/while/flzkvrshbq/add_1AddV25sequential/owshcilvwl/while/flzkvrshbq/split:output:0.sequential/owshcilvwl/while/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2.
,sequential/owshcilvwl/while/flzkvrshbq/add_1�
.sequential/owshcilvwl/while/flzkvrshbq/SigmoidSigmoid0sequential/owshcilvwl/while/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 20
.sequential/owshcilvwl/while/flzkvrshbq/Sigmoid�
7sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_1ReadVariableOpBsequential_owshcilvwl_while_flzkvrshbq_readvariableop_1_resource_0*
_output_shapes
: *
dtype029
7sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_1�
,sequential/owshcilvwl/while/flzkvrshbq/mul_1Mul?sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_1:value:0)sequential_owshcilvwl_while_placeholder_3*
T0*'
_output_shapes
:��������� 2.
,sequential/owshcilvwl/while/flzkvrshbq/mul_1�
,sequential/owshcilvwl/while/flzkvrshbq/add_2AddV25sequential/owshcilvwl/while/flzkvrshbq/split:output:10sequential/owshcilvwl/while/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2.
,sequential/owshcilvwl/while/flzkvrshbq/add_2�
0sequential/owshcilvwl/while/flzkvrshbq/Sigmoid_1Sigmoid0sequential/owshcilvwl/while/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 22
0sequential/owshcilvwl/while/flzkvrshbq/Sigmoid_1�
,sequential/owshcilvwl/while/flzkvrshbq/mul_2Mul4sequential/owshcilvwl/while/flzkvrshbq/Sigmoid_1:y:0)sequential_owshcilvwl_while_placeholder_3*
T0*'
_output_shapes
:��������� 2.
,sequential/owshcilvwl/while/flzkvrshbq/mul_2�
+sequential/owshcilvwl/while/flzkvrshbq/TanhTanh5sequential/owshcilvwl/while/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2-
+sequential/owshcilvwl/while/flzkvrshbq/Tanh�
,sequential/owshcilvwl/while/flzkvrshbq/mul_3Mul2sequential/owshcilvwl/while/flzkvrshbq/Sigmoid:y:0/sequential/owshcilvwl/while/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2.
,sequential/owshcilvwl/while/flzkvrshbq/mul_3�
,sequential/owshcilvwl/while/flzkvrshbq/add_3AddV20sequential/owshcilvwl/while/flzkvrshbq/mul_2:z:00sequential/owshcilvwl/while/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2.
,sequential/owshcilvwl/while/flzkvrshbq/add_3�
7sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_2ReadVariableOpBsequential_owshcilvwl_while_flzkvrshbq_readvariableop_2_resource_0*
_output_shapes
: *
dtype029
7sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_2�
,sequential/owshcilvwl/while/flzkvrshbq/mul_4Mul?sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_2:value:00sequential/owshcilvwl/while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2.
,sequential/owshcilvwl/while/flzkvrshbq/mul_4�
,sequential/owshcilvwl/while/flzkvrshbq/add_4AddV25sequential/owshcilvwl/while/flzkvrshbq/split:output:30sequential/owshcilvwl/while/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2.
,sequential/owshcilvwl/while/flzkvrshbq/add_4�
0sequential/owshcilvwl/while/flzkvrshbq/Sigmoid_2Sigmoid0sequential/owshcilvwl/while/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 22
0sequential/owshcilvwl/while/flzkvrshbq/Sigmoid_2�
-sequential/owshcilvwl/while/flzkvrshbq/Tanh_1Tanh0sequential/owshcilvwl/while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2/
-sequential/owshcilvwl/while/flzkvrshbq/Tanh_1�
,sequential/owshcilvwl/while/flzkvrshbq/mul_5Mul4sequential/owshcilvwl/while/flzkvrshbq/Sigmoid_2:y:01sequential/owshcilvwl/while/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2.
,sequential/owshcilvwl/while/flzkvrshbq/mul_5�
@sequential/owshcilvwl/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_owshcilvwl_while_placeholder_1'sequential_owshcilvwl_while_placeholder0sequential/owshcilvwl/while/flzkvrshbq/mul_5:z:0*
_output_shapes
: *
element_dtype02B
@sequential/owshcilvwl/while/TensorArrayV2Write/TensorListSetItem�
!sequential/owshcilvwl/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/owshcilvwl/while/add/y�
sequential/owshcilvwl/while/addAddV2'sequential_owshcilvwl_while_placeholder*sequential/owshcilvwl/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/owshcilvwl/while/add�
#sequential/owshcilvwl/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/owshcilvwl/while/add_1/y�
!sequential/owshcilvwl/while/add_1AddV2Dsequential_owshcilvwl_while_sequential_owshcilvwl_while_loop_counter,sequential/owshcilvwl/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/owshcilvwl/while/add_1�
$sequential/owshcilvwl/while/IdentityIdentity%sequential/owshcilvwl/while/add_1:z:0>^sequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp=^sequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp?^sequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp6^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp8^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_18^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2&
$sequential/owshcilvwl/while/Identity�
&sequential/owshcilvwl/while/Identity_1IdentityJsequential_owshcilvwl_while_sequential_owshcilvwl_while_maximum_iterations>^sequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp=^sequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp?^sequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp6^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp8^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_18^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/owshcilvwl/while/Identity_1�
&sequential/owshcilvwl/while/Identity_2Identity#sequential/owshcilvwl/while/add:z:0>^sequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp=^sequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp?^sequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp6^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp8^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_18^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/owshcilvwl/while/Identity_2�
&sequential/owshcilvwl/while/Identity_3IdentityPsequential/owshcilvwl/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp=^sequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp?^sequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp6^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp8^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_18^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/owshcilvwl/while/Identity_3�
&sequential/owshcilvwl/while/Identity_4Identity0sequential/owshcilvwl/while/flzkvrshbq/mul_5:z:0>^sequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp=^sequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp?^sequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp6^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp8^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_18^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2(
&sequential/owshcilvwl/while/Identity_4�
&sequential/owshcilvwl/while/Identity_5Identity0sequential/owshcilvwl/while/flzkvrshbq/add_3:z:0>^sequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp=^sequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp?^sequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp6^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp8^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_18^sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2(
&sequential/owshcilvwl/while/Identity_5"�
Fsequential_owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resourceHsequential_owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource_0"�
Gsequential_owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resourceIsequential_owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource_0"�
Esequential_owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resourceGsequential_owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource_0"�
@sequential_owshcilvwl_while_flzkvrshbq_readvariableop_1_resourceBsequential_owshcilvwl_while_flzkvrshbq_readvariableop_1_resource_0"�
@sequential_owshcilvwl_while_flzkvrshbq_readvariableop_2_resourceBsequential_owshcilvwl_while_flzkvrshbq_readvariableop_2_resource_0"�
>sequential_owshcilvwl_while_flzkvrshbq_readvariableop_resource@sequential_owshcilvwl_while_flzkvrshbq_readvariableop_resource_0"U
$sequential_owshcilvwl_while_identity-sequential/owshcilvwl/while/Identity:output:0"Y
&sequential_owshcilvwl_while_identity_1/sequential/owshcilvwl/while/Identity_1:output:0"Y
&sequential_owshcilvwl_while_identity_2/sequential/owshcilvwl/while/Identity_2:output:0"Y
&sequential_owshcilvwl_while_identity_3/sequential/owshcilvwl/while/Identity_3:output:0"Y
&sequential_owshcilvwl_while_identity_4/sequential/owshcilvwl/while/Identity_4:output:0"Y
&sequential_owshcilvwl_while_identity_5/sequential/owshcilvwl/while/Identity_5:output:0"�
Asequential_owshcilvwl_while_sequential_owshcilvwl_strided_slice_1Csequential_owshcilvwl_while_sequential_owshcilvwl_strided_slice_1_0"�
}sequential_owshcilvwl_while_tensorarrayv2read_tensorlistgetitem_sequential_owshcilvwl_tensorarrayunstack_tensorlistfromtensorsequential_owshcilvwl_while_tensorarrayv2read_tensorlistgetitem_sequential_owshcilvwl_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2~
=sequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp=sequential/owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2|
<sequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp<sequential/owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp2�
>sequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp>sequential/owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp2n
5sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp5sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp2r
7sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_17sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_12r
7sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_27sequential/owshcilvwl/while/flzkvrshbq/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�F
�
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_27267

inputs#
dsycfvoega_27168:	�#
dsycfvoega_27170:	 �
dsycfvoega_27172:	�
dsycfvoega_27174: 
dsycfvoega_27176: 
dsycfvoega_27178: 
identity��"dsycfvoega/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"dsycfvoega/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0dsycfvoega_27168dsycfvoega_27170dsycfvoega_27172dsycfvoega_27174dsycfvoega_27176dsycfvoega_27178*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_271672$
"dsycfvoega/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0dsycfvoega_27168dsycfvoega_27170dsycfvoega_27172dsycfvoega_27174dsycfvoega_27176dsycfvoega_27178*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_27187*
condR
while_cond_27186*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitytranspose_1:y:0#^dsycfvoega/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :������������������ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������: : : : : : 2H
"dsycfvoega/StatefulPartitionedCall"dsycfvoega/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�h
�
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_31498

inputs<
)dsycfvoega_matmul_readvariableop_resource:	�>
+dsycfvoega_matmul_1_readvariableop_resource:	 �9
*dsycfvoega_biasadd_readvariableop_resource:	�0
"dsycfvoega_readvariableop_resource: 2
$dsycfvoega_readvariableop_1_resource: 2
$dsycfvoega_readvariableop_2_resource: 
identity��!dsycfvoega/BiasAdd/ReadVariableOp� dsycfvoega/MatMul/ReadVariableOp�"dsycfvoega/MatMul_1/ReadVariableOp�dsycfvoega/ReadVariableOp�dsycfvoega/ReadVariableOp_1�dsycfvoega/ReadVariableOp_2�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
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
:���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
 dsycfvoega/MatMul/ReadVariableOpReadVariableOp)dsycfvoega_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02"
 dsycfvoega/MatMul/ReadVariableOp�
dsycfvoega/MatMulMatMulstrided_slice_2:output:0(dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul�
"dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp+dsycfvoega_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"dsycfvoega/MatMul_1/ReadVariableOp�
dsycfvoega/MatMul_1MatMulzeros:output:0*dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul_1�
dsycfvoega/addAddV2dsycfvoega/MatMul:product:0dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
dsycfvoega/add�
!dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp*dsycfvoega_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!dsycfvoega/BiasAdd/ReadVariableOp�
dsycfvoega/BiasAddBiasAdddsycfvoega/add:z:0)dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/BiasAddz
dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
dsycfvoega/split/split_dim�
dsycfvoega/splitSplit#dsycfvoega/split/split_dim:output:0dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
dsycfvoega/split�
dsycfvoega/ReadVariableOpReadVariableOp"dsycfvoega_readvariableop_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp�
dsycfvoega/mulMul!dsycfvoega/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul�
dsycfvoega/add_1AddV2dsycfvoega/split:output:0dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_1{
dsycfvoega/SigmoidSigmoiddsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid�
dsycfvoega/ReadVariableOp_1ReadVariableOp$dsycfvoega_readvariableop_1_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_1�
dsycfvoega/mul_1Mul#dsycfvoega/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_1�
dsycfvoega/add_2AddV2dsycfvoega/split:output:1dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_2
dsycfvoega/Sigmoid_1Sigmoiddsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_1�
dsycfvoega/mul_2Muldsycfvoega/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_2w
dsycfvoega/TanhTanhdsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh�
dsycfvoega/mul_3Muldsycfvoega/Sigmoid:y:0dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_3�
dsycfvoega/add_3AddV2dsycfvoega/mul_2:z:0dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_3�
dsycfvoega/ReadVariableOp_2ReadVariableOp$dsycfvoega_readvariableop_2_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_2�
dsycfvoega/mul_4Mul#dsycfvoega/ReadVariableOp_2:value:0dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_4�
dsycfvoega/add_4AddV2dsycfvoega/split:output:3dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_4
dsycfvoega/Sigmoid_2Sigmoiddsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_2v
dsycfvoega/Tanh_1Tanhdsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh_1�
dsycfvoega/mul_5Muldsycfvoega/Sigmoid_2:y:0dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)dsycfvoega_matmul_readvariableop_resource+dsycfvoega_matmul_1_readvariableop_resource*dsycfvoega_biasadd_readvariableop_resource"dsycfvoega_readvariableop_resource$dsycfvoega_readvariableop_1_resource$dsycfvoega_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_31397*
condR
while_cond_31396*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1�
IdentityIdentitytranspose_1:y:0"^dsycfvoega/BiasAdd/ReadVariableOp!^dsycfvoega/MatMul/ReadVariableOp#^dsycfvoega/MatMul_1/ReadVariableOp^dsycfvoega/ReadVariableOp^dsycfvoega/ReadVariableOp_1^dsycfvoega/ReadVariableOp_2^while*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2F
!dsycfvoega/BiasAdd/ReadVariableOp!dsycfvoega/BiasAdd/ReadVariableOp2D
 dsycfvoega/MatMul/ReadVariableOp dsycfvoega/MatMul/ReadVariableOp2H
"dsycfvoega/MatMul_1/ReadVariableOp"dsycfvoega/MatMul_1/ReadVariableOp26
dsycfvoega/ReadVariableOpdsycfvoega/ReadVariableOp2:
dsycfvoega/ReadVariableOp_1dsycfvoega/ReadVariableOp_12:
dsycfvoega/ReadVariableOp_2dsycfvoega/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�h
�
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_29033

inputs<
)flzkvrshbq_matmul_readvariableop_resource:	 �>
+flzkvrshbq_matmul_1_readvariableop_resource:	 �9
*flzkvrshbq_biasadd_readvariableop_resource:	�0
"flzkvrshbq_readvariableop_resource: 2
$flzkvrshbq_readvariableop_1_resource: 2
$flzkvrshbq_readvariableop_2_resource: 
identity��!flzkvrshbq/BiasAdd/ReadVariableOp� flzkvrshbq/MatMul/ReadVariableOp�"flzkvrshbq/MatMul_1/ReadVariableOp�flzkvrshbq/ReadVariableOp�flzkvrshbq/ReadVariableOp_1�flzkvrshbq/ReadVariableOp_2�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
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
:��������� 2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_2�
 flzkvrshbq/MatMul/ReadVariableOpReadVariableOp)flzkvrshbq_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02"
 flzkvrshbq/MatMul/ReadVariableOp�
flzkvrshbq/MatMulMatMulstrided_slice_2:output:0(flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul�
"flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp+flzkvrshbq_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"flzkvrshbq/MatMul_1/ReadVariableOp�
flzkvrshbq/MatMul_1MatMulzeros:output:0*flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul_1�
flzkvrshbq/addAddV2flzkvrshbq/MatMul:product:0flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/add�
!flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp*flzkvrshbq_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!flzkvrshbq/BiasAdd/ReadVariableOp�
flzkvrshbq/BiasAddBiasAddflzkvrshbq/add:z:0)flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/BiasAddz
flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
flzkvrshbq/split/split_dim�
flzkvrshbq/splitSplit#flzkvrshbq/split/split_dim:output:0flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
flzkvrshbq/split�
flzkvrshbq/ReadVariableOpReadVariableOp"flzkvrshbq_readvariableop_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp�
flzkvrshbq/mulMul!flzkvrshbq/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul�
flzkvrshbq/add_1AddV2flzkvrshbq/split:output:0flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_1{
flzkvrshbq/SigmoidSigmoidflzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid�
flzkvrshbq/ReadVariableOp_1ReadVariableOp$flzkvrshbq_readvariableop_1_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_1�
flzkvrshbq/mul_1Mul#flzkvrshbq/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_1�
flzkvrshbq/add_2AddV2flzkvrshbq/split:output:1flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_2
flzkvrshbq/Sigmoid_1Sigmoidflzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_1�
flzkvrshbq/mul_2Mulflzkvrshbq/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_2w
flzkvrshbq/TanhTanhflzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh�
flzkvrshbq/mul_3Mulflzkvrshbq/Sigmoid:y:0flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_3�
flzkvrshbq/add_3AddV2flzkvrshbq/mul_2:z:0flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_3�
flzkvrshbq/ReadVariableOp_2ReadVariableOp$flzkvrshbq_readvariableop_2_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_2�
flzkvrshbq/mul_4Mul#flzkvrshbq/ReadVariableOp_2:value:0flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_4�
flzkvrshbq/add_4AddV2flzkvrshbq/split:output:3flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_4
flzkvrshbq/Sigmoid_2Sigmoidflzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_2v
flzkvrshbq/Tanh_1Tanhflzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh_1�
flzkvrshbq/mul_5Mulflzkvrshbq/Sigmoid_2:y:0flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)flzkvrshbq_matmul_readvariableop_resource+flzkvrshbq_matmul_1_readvariableop_resource*flzkvrshbq_biasadd_readvariableop_resource"flzkvrshbq_readvariableop_resource$flzkvrshbq_readvariableop_1_resource$flzkvrshbq_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_28932*
condR
while_cond_28931*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0"^flzkvrshbq/BiasAdd/ReadVariableOp!^flzkvrshbq/MatMul/ReadVariableOp#^flzkvrshbq/MatMul_1/ReadVariableOp^flzkvrshbq/ReadVariableOp^flzkvrshbq/ReadVariableOp_1^flzkvrshbq/ReadVariableOp_2^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� : : : : : : 2F
!flzkvrshbq/BiasAdd/ReadVariableOp!flzkvrshbq/BiasAdd/ReadVariableOp2D
 flzkvrshbq/MatMul/ReadVariableOp flzkvrshbq/MatMul/ReadVariableOp2H
"flzkvrshbq/MatMul_1/ReadVariableOp"flzkvrshbq/MatMul_1/ReadVariableOp26
flzkvrshbq/ReadVariableOpflzkvrshbq/ReadVariableOp2:
flzkvrshbq/ReadVariableOp_1flzkvrshbq/ReadVariableOp_12:
flzkvrshbq/ReadVariableOp_2flzkvrshbq/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�h
�
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_29308

inputs<
)flzkvrshbq_matmul_readvariableop_resource:	 �>
+flzkvrshbq_matmul_1_readvariableop_resource:	 �9
*flzkvrshbq_biasadd_readvariableop_resource:	�0
"flzkvrshbq_readvariableop_resource: 2
$flzkvrshbq_readvariableop_1_resource: 2
$flzkvrshbq_readvariableop_2_resource: 
identity��!flzkvrshbq/BiasAdd/ReadVariableOp� flzkvrshbq/MatMul/ReadVariableOp�"flzkvrshbq/MatMul_1/ReadVariableOp�flzkvrshbq/ReadVariableOp�flzkvrshbq/ReadVariableOp_1�flzkvrshbq/ReadVariableOp_2�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
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
:��������� 2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_2�
 flzkvrshbq/MatMul/ReadVariableOpReadVariableOp)flzkvrshbq_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02"
 flzkvrshbq/MatMul/ReadVariableOp�
flzkvrshbq/MatMulMatMulstrided_slice_2:output:0(flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul�
"flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp+flzkvrshbq_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"flzkvrshbq/MatMul_1/ReadVariableOp�
flzkvrshbq/MatMul_1MatMulzeros:output:0*flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul_1�
flzkvrshbq/addAddV2flzkvrshbq/MatMul:product:0flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/add�
!flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp*flzkvrshbq_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!flzkvrshbq/BiasAdd/ReadVariableOp�
flzkvrshbq/BiasAddBiasAddflzkvrshbq/add:z:0)flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/BiasAddz
flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
flzkvrshbq/split/split_dim�
flzkvrshbq/splitSplit#flzkvrshbq/split/split_dim:output:0flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
flzkvrshbq/split�
flzkvrshbq/ReadVariableOpReadVariableOp"flzkvrshbq_readvariableop_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp�
flzkvrshbq/mulMul!flzkvrshbq/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul�
flzkvrshbq/add_1AddV2flzkvrshbq/split:output:0flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_1{
flzkvrshbq/SigmoidSigmoidflzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid�
flzkvrshbq/ReadVariableOp_1ReadVariableOp$flzkvrshbq_readvariableop_1_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_1�
flzkvrshbq/mul_1Mul#flzkvrshbq/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_1�
flzkvrshbq/add_2AddV2flzkvrshbq/split:output:1flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_2
flzkvrshbq/Sigmoid_1Sigmoidflzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_1�
flzkvrshbq/mul_2Mulflzkvrshbq/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_2w
flzkvrshbq/TanhTanhflzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh�
flzkvrshbq/mul_3Mulflzkvrshbq/Sigmoid:y:0flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_3�
flzkvrshbq/add_3AddV2flzkvrshbq/mul_2:z:0flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_3�
flzkvrshbq/ReadVariableOp_2ReadVariableOp$flzkvrshbq_readvariableop_2_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_2�
flzkvrshbq/mul_4Mul#flzkvrshbq/ReadVariableOp_2:value:0flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_4�
flzkvrshbq/add_4AddV2flzkvrshbq/split:output:3flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_4
flzkvrshbq/Sigmoid_2Sigmoidflzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_2v
flzkvrshbq/Tanh_1Tanhflzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh_1�
flzkvrshbq/mul_5Mulflzkvrshbq/Sigmoid_2:y:0flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)flzkvrshbq_matmul_readvariableop_resource+flzkvrshbq_matmul_1_readvariableop_resource*flzkvrshbq_biasadd_readvariableop_resource"flzkvrshbq_readvariableop_resource$flzkvrshbq_readvariableop_1_resource$flzkvrshbq_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_29207*
condR
while_cond_29206*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0"^flzkvrshbq/BiasAdd/ReadVariableOp!^flzkvrshbq/MatMul/ReadVariableOp#^flzkvrshbq/MatMul_1/ReadVariableOp^flzkvrshbq/ReadVariableOp^flzkvrshbq/ReadVariableOp_1^flzkvrshbq/ReadVariableOp_2^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� : : : : : : 2F
!flzkvrshbq/BiasAdd/ReadVariableOp!flzkvrshbq/BiasAdd/ReadVariableOp2D
 flzkvrshbq/MatMul/ReadVariableOp flzkvrshbq/MatMul/ReadVariableOp2H
"flzkvrshbq/MatMul_1/ReadVariableOp"flzkvrshbq/MatMul_1/ReadVariableOp26
flzkvrshbq/ReadVariableOpflzkvrshbq/ReadVariableOp2:
flzkvrshbq/ReadVariableOp_1flzkvrshbq/ReadVariableOp_12:
flzkvrshbq/ReadVariableOp_2flzkvrshbq/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
*__inference_bpstkcuudk_layer_call_fn_30760

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_bpstkcuudk_layer_call_and_return_conditional_losses_286402
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�h
�
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_31746
inputs_0<
)flzkvrshbq_matmul_readvariableop_resource:	 �>
+flzkvrshbq_matmul_1_readvariableop_resource:	 �9
*flzkvrshbq_biasadd_readvariableop_resource:	�0
"flzkvrshbq_readvariableop_resource: 2
$flzkvrshbq_readvariableop_1_resource: 2
$flzkvrshbq_readvariableop_2_resource: 
identity��!flzkvrshbq/BiasAdd/ReadVariableOp� flzkvrshbq/MatMul/ReadVariableOp�"flzkvrshbq/MatMul_1/ReadVariableOp�flzkvrshbq/ReadVariableOp�flzkvrshbq/ReadVariableOp_1�flzkvrshbq/ReadVariableOp_2�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_2�
 flzkvrshbq/MatMul/ReadVariableOpReadVariableOp)flzkvrshbq_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02"
 flzkvrshbq/MatMul/ReadVariableOp�
flzkvrshbq/MatMulMatMulstrided_slice_2:output:0(flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul�
"flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp+flzkvrshbq_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"flzkvrshbq/MatMul_1/ReadVariableOp�
flzkvrshbq/MatMul_1MatMulzeros:output:0*flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul_1�
flzkvrshbq/addAddV2flzkvrshbq/MatMul:product:0flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/add�
!flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp*flzkvrshbq_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!flzkvrshbq/BiasAdd/ReadVariableOp�
flzkvrshbq/BiasAddBiasAddflzkvrshbq/add:z:0)flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/BiasAddz
flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
flzkvrshbq/split/split_dim�
flzkvrshbq/splitSplit#flzkvrshbq/split/split_dim:output:0flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
flzkvrshbq/split�
flzkvrshbq/ReadVariableOpReadVariableOp"flzkvrshbq_readvariableop_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp�
flzkvrshbq/mulMul!flzkvrshbq/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul�
flzkvrshbq/add_1AddV2flzkvrshbq/split:output:0flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_1{
flzkvrshbq/SigmoidSigmoidflzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid�
flzkvrshbq/ReadVariableOp_1ReadVariableOp$flzkvrshbq_readvariableop_1_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_1�
flzkvrshbq/mul_1Mul#flzkvrshbq/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_1�
flzkvrshbq/add_2AddV2flzkvrshbq/split:output:1flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_2
flzkvrshbq/Sigmoid_1Sigmoidflzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_1�
flzkvrshbq/mul_2Mulflzkvrshbq/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_2w
flzkvrshbq/TanhTanhflzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh�
flzkvrshbq/mul_3Mulflzkvrshbq/Sigmoid:y:0flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_3�
flzkvrshbq/add_3AddV2flzkvrshbq/mul_2:z:0flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_3�
flzkvrshbq/ReadVariableOp_2ReadVariableOp$flzkvrshbq_readvariableop_2_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_2�
flzkvrshbq/mul_4Mul#flzkvrshbq/ReadVariableOp_2:value:0flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_4�
flzkvrshbq/add_4AddV2flzkvrshbq/split:output:3flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_4
flzkvrshbq/Sigmoid_2Sigmoidflzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_2v
flzkvrshbq/Tanh_1Tanhflzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh_1�
flzkvrshbq/mul_5Mulflzkvrshbq/Sigmoid_2:y:0flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)flzkvrshbq_matmul_readvariableop_resource+flzkvrshbq_matmul_1_readvariableop_resource*flzkvrshbq_biasadd_readvariableop_resource"flzkvrshbq_readvariableop_resource$flzkvrshbq_readvariableop_1_resource$flzkvrshbq_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_31645*
condR
while_cond_31644*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0"^flzkvrshbq/BiasAdd/ReadVariableOp!^flzkvrshbq/MatMul/ReadVariableOp#^flzkvrshbq/MatMul_1/ReadVariableOp^flzkvrshbq/ReadVariableOp^flzkvrshbq/ReadVariableOp_1^flzkvrshbq/ReadVariableOp_2^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������ : : : : : : 2F
!flzkvrshbq/BiasAdd/ReadVariableOp!flzkvrshbq/BiasAdd/ReadVariableOp2D
 flzkvrshbq/MatMul/ReadVariableOp flzkvrshbq/MatMul/ReadVariableOp2H
"flzkvrshbq/MatMul_1/ReadVariableOp"flzkvrshbq/MatMul_1/ReadVariableOp26
flzkvrshbq/ReadVariableOpflzkvrshbq/ReadVariableOp2:
flzkvrshbq/ReadVariableOp_1flzkvrshbq/ReadVariableOp_12:
flzkvrshbq/ReadVariableOp_2flzkvrshbq/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
�
�
*__inference_owshcilvwl_layer_call_fn_32303
inputs_0
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_280252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
چ
�
&sequential_osutmzfngz_while_body_26797H
Dsequential_osutmzfngz_while_sequential_osutmzfngz_while_loop_counterN
Jsequential_osutmzfngz_while_sequential_osutmzfngz_while_maximum_iterations+
'sequential_osutmzfngz_while_placeholder-
)sequential_osutmzfngz_while_placeholder_1-
)sequential_osutmzfngz_while_placeholder_2-
)sequential_osutmzfngz_while_placeholder_3G
Csequential_osutmzfngz_while_sequential_osutmzfngz_strided_slice_1_0�
sequential_osutmzfngz_while_tensorarrayv2read_tensorlistgetitem_sequential_osutmzfngz_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource_0:	�\
Isequential_osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource_0:	 �W
Hsequential_osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource_0:	�N
@sequential_osutmzfngz_while_dsycfvoega_readvariableop_resource_0: P
Bsequential_osutmzfngz_while_dsycfvoega_readvariableop_1_resource_0: P
Bsequential_osutmzfngz_while_dsycfvoega_readvariableop_2_resource_0: (
$sequential_osutmzfngz_while_identity*
&sequential_osutmzfngz_while_identity_1*
&sequential_osutmzfngz_while_identity_2*
&sequential_osutmzfngz_while_identity_3*
&sequential_osutmzfngz_while_identity_4*
&sequential_osutmzfngz_while_identity_5E
Asequential_osutmzfngz_while_sequential_osutmzfngz_strided_slice_1�
}sequential_osutmzfngz_while_tensorarrayv2read_tensorlistgetitem_sequential_osutmzfngz_tensorarrayunstack_tensorlistfromtensorX
Esequential_osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource:	�Z
Gsequential_osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource:	 �U
Fsequential_osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource:	�L
>sequential_osutmzfngz_while_dsycfvoega_readvariableop_resource: N
@sequential_osutmzfngz_while_dsycfvoega_readvariableop_1_resource: N
@sequential_osutmzfngz_while_dsycfvoega_readvariableop_2_resource: ��=sequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp�<sequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp�>sequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp�5sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp�7sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_1�7sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_2�
Msequential/osutmzfngz/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2O
Msequential/osutmzfngz/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential/osutmzfngz/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_osutmzfngz_while_tensorarrayv2read_tensorlistgetitem_sequential_osutmzfngz_tensorarrayunstack_tensorlistfromtensor_0'sequential_osutmzfngz_while_placeholderVsequential/osutmzfngz/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02A
?sequential/osutmzfngz/while/TensorArrayV2Read/TensorListGetItem�
<sequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOpReadVariableOpGsequential_osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02>
<sequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp�
-sequential/osutmzfngz/while/dsycfvoega/MatMulMatMulFsequential/osutmzfngz/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2/
-sequential/osutmzfngz/while/dsycfvoega/MatMul�
>sequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOpIsequential_osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02@
>sequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp�
/sequential/osutmzfngz/while/dsycfvoega/MatMul_1MatMul)sequential_osutmzfngz_while_placeholder_2Fsequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������21
/sequential/osutmzfngz/while/dsycfvoega/MatMul_1�
*sequential/osutmzfngz/while/dsycfvoega/addAddV27sequential/osutmzfngz/while/dsycfvoega/MatMul:product:09sequential/osutmzfngz/while/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2,
*sequential/osutmzfngz/while/dsycfvoega/add�
=sequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOpHsequential_osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02?
=sequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp�
.sequential/osutmzfngz/while/dsycfvoega/BiasAddBiasAdd.sequential/osutmzfngz/while/dsycfvoega/add:z:0Esequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������20
.sequential/osutmzfngz/while/dsycfvoega/BiasAdd�
6sequential/osutmzfngz/while/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential/osutmzfngz/while/dsycfvoega/split/split_dim�
,sequential/osutmzfngz/while/dsycfvoega/splitSplit?sequential/osutmzfngz/while/dsycfvoega/split/split_dim:output:07sequential/osutmzfngz/while/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2.
,sequential/osutmzfngz/while/dsycfvoega/split�
5sequential/osutmzfngz/while/dsycfvoega/ReadVariableOpReadVariableOp@sequential_osutmzfngz_while_dsycfvoega_readvariableop_resource_0*
_output_shapes
: *
dtype027
5sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp�
*sequential/osutmzfngz/while/dsycfvoega/mulMul=sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp:value:0)sequential_osutmzfngz_while_placeholder_3*
T0*'
_output_shapes
:��������� 2,
*sequential/osutmzfngz/while/dsycfvoega/mul�
,sequential/osutmzfngz/while/dsycfvoega/add_1AddV25sequential/osutmzfngz/while/dsycfvoega/split:output:0.sequential/osutmzfngz/while/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2.
,sequential/osutmzfngz/while/dsycfvoega/add_1�
.sequential/osutmzfngz/while/dsycfvoega/SigmoidSigmoid0sequential/osutmzfngz/while/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 20
.sequential/osutmzfngz/while/dsycfvoega/Sigmoid�
7sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_1ReadVariableOpBsequential_osutmzfngz_while_dsycfvoega_readvariableop_1_resource_0*
_output_shapes
: *
dtype029
7sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_1�
,sequential/osutmzfngz/while/dsycfvoega/mul_1Mul?sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_1:value:0)sequential_osutmzfngz_while_placeholder_3*
T0*'
_output_shapes
:��������� 2.
,sequential/osutmzfngz/while/dsycfvoega/mul_1�
,sequential/osutmzfngz/while/dsycfvoega/add_2AddV25sequential/osutmzfngz/while/dsycfvoega/split:output:10sequential/osutmzfngz/while/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2.
,sequential/osutmzfngz/while/dsycfvoega/add_2�
0sequential/osutmzfngz/while/dsycfvoega/Sigmoid_1Sigmoid0sequential/osutmzfngz/while/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 22
0sequential/osutmzfngz/while/dsycfvoega/Sigmoid_1�
,sequential/osutmzfngz/while/dsycfvoega/mul_2Mul4sequential/osutmzfngz/while/dsycfvoega/Sigmoid_1:y:0)sequential_osutmzfngz_while_placeholder_3*
T0*'
_output_shapes
:��������� 2.
,sequential/osutmzfngz/while/dsycfvoega/mul_2�
+sequential/osutmzfngz/while/dsycfvoega/TanhTanh5sequential/osutmzfngz/while/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2-
+sequential/osutmzfngz/while/dsycfvoega/Tanh�
,sequential/osutmzfngz/while/dsycfvoega/mul_3Mul2sequential/osutmzfngz/while/dsycfvoega/Sigmoid:y:0/sequential/osutmzfngz/while/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2.
,sequential/osutmzfngz/while/dsycfvoega/mul_3�
,sequential/osutmzfngz/while/dsycfvoega/add_3AddV20sequential/osutmzfngz/while/dsycfvoega/mul_2:z:00sequential/osutmzfngz/while/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2.
,sequential/osutmzfngz/while/dsycfvoega/add_3�
7sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_2ReadVariableOpBsequential_osutmzfngz_while_dsycfvoega_readvariableop_2_resource_0*
_output_shapes
: *
dtype029
7sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_2�
,sequential/osutmzfngz/while/dsycfvoega/mul_4Mul?sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_2:value:00sequential/osutmzfngz/while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2.
,sequential/osutmzfngz/while/dsycfvoega/mul_4�
,sequential/osutmzfngz/while/dsycfvoega/add_4AddV25sequential/osutmzfngz/while/dsycfvoega/split:output:30sequential/osutmzfngz/while/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2.
,sequential/osutmzfngz/while/dsycfvoega/add_4�
0sequential/osutmzfngz/while/dsycfvoega/Sigmoid_2Sigmoid0sequential/osutmzfngz/while/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 22
0sequential/osutmzfngz/while/dsycfvoega/Sigmoid_2�
-sequential/osutmzfngz/while/dsycfvoega/Tanh_1Tanh0sequential/osutmzfngz/while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2/
-sequential/osutmzfngz/while/dsycfvoega/Tanh_1�
,sequential/osutmzfngz/while/dsycfvoega/mul_5Mul4sequential/osutmzfngz/while/dsycfvoega/Sigmoid_2:y:01sequential/osutmzfngz/while/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2.
,sequential/osutmzfngz/while/dsycfvoega/mul_5�
@sequential/osutmzfngz/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_osutmzfngz_while_placeholder_1'sequential_osutmzfngz_while_placeholder0sequential/osutmzfngz/while/dsycfvoega/mul_5:z:0*
_output_shapes
: *
element_dtype02B
@sequential/osutmzfngz/while/TensorArrayV2Write/TensorListSetItem�
!sequential/osutmzfngz/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/osutmzfngz/while/add/y�
sequential/osutmzfngz/while/addAddV2'sequential_osutmzfngz_while_placeholder*sequential/osutmzfngz/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/osutmzfngz/while/add�
#sequential/osutmzfngz/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/osutmzfngz/while/add_1/y�
!sequential/osutmzfngz/while/add_1AddV2Dsequential_osutmzfngz_while_sequential_osutmzfngz_while_loop_counter,sequential/osutmzfngz/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/osutmzfngz/while/add_1�
$sequential/osutmzfngz/while/IdentityIdentity%sequential/osutmzfngz/while/add_1:z:0>^sequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp=^sequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp?^sequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp6^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp8^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_18^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2&
$sequential/osutmzfngz/while/Identity�
&sequential/osutmzfngz/while/Identity_1IdentityJsequential_osutmzfngz_while_sequential_osutmzfngz_while_maximum_iterations>^sequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp=^sequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp?^sequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp6^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp8^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_18^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/osutmzfngz/while/Identity_1�
&sequential/osutmzfngz/while/Identity_2Identity#sequential/osutmzfngz/while/add:z:0>^sequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp=^sequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp?^sequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp6^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp8^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_18^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/osutmzfngz/while/Identity_2�
&sequential/osutmzfngz/while/Identity_3IdentityPsequential/osutmzfngz/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp=^sequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp?^sequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp6^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp8^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_18^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2(
&sequential/osutmzfngz/while/Identity_3�
&sequential/osutmzfngz/while/Identity_4Identity0sequential/osutmzfngz/while/dsycfvoega/mul_5:z:0>^sequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp=^sequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp?^sequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp6^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp8^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_18^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2(
&sequential/osutmzfngz/while/Identity_4�
&sequential/osutmzfngz/while/Identity_5Identity0sequential/osutmzfngz/while/dsycfvoega/add_3:z:0>^sequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp=^sequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp?^sequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp6^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp8^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_18^sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2(
&sequential/osutmzfngz/while/Identity_5"�
Fsequential_osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resourceHsequential_osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource_0"�
Gsequential_osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resourceIsequential_osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource_0"�
Esequential_osutmzfngz_while_dsycfvoega_matmul_readvariableop_resourceGsequential_osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource_0"�
@sequential_osutmzfngz_while_dsycfvoega_readvariableop_1_resourceBsequential_osutmzfngz_while_dsycfvoega_readvariableop_1_resource_0"�
@sequential_osutmzfngz_while_dsycfvoega_readvariableop_2_resourceBsequential_osutmzfngz_while_dsycfvoega_readvariableop_2_resource_0"�
>sequential_osutmzfngz_while_dsycfvoega_readvariableop_resource@sequential_osutmzfngz_while_dsycfvoega_readvariableop_resource_0"U
$sequential_osutmzfngz_while_identity-sequential/osutmzfngz/while/Identity:output:0"Y
&sequential_osutmzfngz_while_identity_1/sequential/osutmzfngz/while/Identity_1:output:0"Y
&sequential_osutmzfngz_while_identity_2/sequential/osutmzfngz/while/Identity_2:output:0"Y
&sequential_osutmzfngz_while_identity_3/sequential/osutmzfngz/while/Identity_3:output:0"Y
&sequential_osutmzfngz_while_identity_4/sequential/osutmzfngz/while/Identity_4:output:0"Y
&sequential_osutmzfngz_while_identity_5/sequential/osutmzfngz/while/Identity_5:output:0"�
Asequential_osutmzfngz_while_sequential_osutmzfngz_strided_slice_1Csequential_osutmzfngz_while_sequential_osutmzfngz_strided_slice_1_0"�
}sequential_osutmzfngz_while_tensorarrayv2read_tensorlistgetitem_sequential_osutmzfngz_tensorarrayunstack_tensorlistfromtensorsequential_osutmzfngz_while_tensorarrayv2read_tensorlistgetitem_sequential_osutmzfngz_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2~
=sequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp=sequential/osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2|
<sequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp<sequential/osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp2�
>sequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp>sequential/osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp2n
5sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp5sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp2r
7sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_17sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_12r
7sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_27sequential/osutmzfngz/while/dsycfvoega/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_dsycfvoega_layer_call_fn_32484

inputs
states_0
states_1
unknown:	�
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_271672
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:���������:��������� :��������� : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�
F
*__inference_xlcvyoxoxq_layer_call_fn_30778

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_xlcvyoxoxq_layer_call_and_return_conditional_losses_286592
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�F
�
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_28288

inputs#
flzkvrshbq_28189:	 �#
flzkvrshbq_28191:	 �
flzkvrshbq_28193:	�
flzkvrshbq_28195: 
flzkvrshbq_28197: 
flzkvrshbq_28199: 
identity��"flzkvrshbq/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_2�
"flzkvrshbq/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0flzkvrshbq_28189flzkvrshbq_28191flzkvrshbq_28193flzkvrshbq_28195flzkvrshbq_28197flzkvrshbq_28199*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_281122$
"flzkvrshbq/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0flzkvrshbq_28189flzkvrshbq_28191flzkvrshbq_28193flzkvrshbq_28195flzkvrshbq_28197flzkvrshbq_28199*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_28208*
condR
while_cond_28207*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0#^flzkvrshbq/StatefulPartitionedCall^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������ : : : : : : 2H
"flzkvrshbq/StatefulPartitionedCall"flzkvrshbq/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������ 
 
_user_specified_nameinputs
�	
�
while_cond_28207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_28207___redundant_placeholder03
/while_while_cond_28207___redundant_placeholder13
/while_while_cond_28207___redundant_placeholder23
/while_while_cond_28207___redundant_placeholder33
/while_while_cond_28207___redundant_placeholder43
/while_while_cond_28207___redundant_placeholder53
/while_while_cond_28207___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
��
�
 __inference__wrapped_model_27080

jfowsgvbzwW
Asequential_bpstkcuudk_conv1d_expanddims_1_readvariableop_resource:V
Hsequential_bpstkcuudk_squeeze_batch_dims_biasadd_readvariableop_resource:R
?sequential_osutmzfngz_dsycfvoega_matmul_readvariableop_resource:	�T
Asequential_osutmzfngz_dsycfvoega_matmul_1_readvariableop_resource:	 �O
@sequential_osutmzfngz_dsycfvoega_biasadd_readvariableop_resource:	�F
8sequential_osutmzfngz_dsycfvoega_readvariableop_resource: H
:sequential_osutmzfngz_dsycfvoega_readvariableop_1_resource: H
:sequential_osutmzfngz_dsycfvoega_readvariableop_2_resource: R
?sequential_owshcilvwl_flzkvrshbq_matmul_readvariableop_resource:	 �T
Asequential_owshcilvwl_flzkvrshbq_matmul_1_readvariableop_resource:	 �O
@sequential_owshcilvwl_flzkvrshbq_biasadd_readvariableop_resource:	�F
8sequential_owshcilvwl_flzkvrshbq_readvariableop_resource: H
:sequential_owshcilvwl_flzkvrshbq_readvariableop_1_resource: H
:sequential_owshcilvwl_flzkvrshbq_readvariableop_2_resource: F
4sequential_oaettnoaty_matmul_readvariableop_resource: C
5sequential_oaettnoaty_biasadd_readvariableop_resource:
identity��8sequential/bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp�?sequential/bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp�,sequential/oaettnoaty/BiasAdd/ReadVariableOp�+sequential/oaettnoaty/MatMul/ReadVariableOp�7sequential/osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp�6sequential/osutmzfngz/dsycfvoega/MatMul/ReadVariableOp�8sequential/osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp�/sequential/osutmzfngz/dsycfvoega/ReadVariableOp�1sequential/osutmzfngz/dsycfvoega/ReadVariableOp_1�1sequential/osutmzfngz/dsycfvoega/ReadVariableOp_2�sequential/osutmzfngz/while�7sequential/owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp�6sequential/owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp�8sequential/owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp�/sequential/owshcilvwl/flzkvrshbq/ReadVariableOp�1sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_1�1sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_2�sequential/owshcilvwl/while�
+sequential/bpstkcuudk/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2-
+sequential/bpstkcuudk/conv1d/ExpandDims/dim�
'sequential/bpstkcuudk/conv1d/ExpandDims
ExpandDims
jfowsgvbzw4sequential/bpstkcuudk/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2)
'sequential/bpstkcuudk/conv1d/ExpandDims�
8sequential/bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_bpstkcuudk_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02:
8sequential/bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp�
-sequential/bpstkcuudk/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential/bpstkcuudk/conv1d/ExpandDims_1/dim�
)sequential/bpstkcuudk/conv1d/ExpandDims_1
ExpandDims@sequential/bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential/bpstkcuudk/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2+
)sequential/bpstkcuudk/conv1d/ExpandDims_1�
"sequential/bpstkcuudk/conv1d/ShapeShape0sequential/bpstkcuudk/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2$
"sequential/bpstkcuudk/conv1d/Shape�
0sequential/bpstkcuudk/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0sequential/bpstkcuudk/conv1d/strided_slice/stack�
2sequential/bpstkcuudk/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������24
2sequential/bpstkcuudk/conv1d/strided_slice/stack_1�
2sequential/bpstkcuudk/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential/bpstkcuudk/conv1d/strided_slice/stack_2�
*sequential/bpstkcuudk/conv1d/strided_sliceStridedSlice+sequential/bpstkcuudk/conv1d/Shape:output:09sequential/bpstkcuudk/conv1d/strided_slice/stack:output:0;sequential/bpstkcuudk/conv1d/strided_slice/stack_1:output:0;sequential/bpstkcuudk/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2,
*sequential/bpstkcuudk/conv1d/strided_slice�
*sequential/bpstkcuudk/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2,
*sequential/bpstkcuudk/conv1d/Reshape/shape�
$sequential/bpstkcuudk/conv1d/ReshapeReshape0sequential/bpstkcuudk/conv1d/ExpandDims:output:03sequential/bpstkcuudk/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2&
$sequential/bpstkcuudk/conv1d/Reshape�
#sequential/bpstkcuudk/conv1d/Conv2DConv2D-sequential/bpstkcuudk/conv1d/Reshape:output:02sequential/bpstkcuudk/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
2%
#sequential/bpstkcuudk/conv1d/Conv2D�
,sequential/bpstkcuudk/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2.
,sequential/bpstkcuudk/conv1d/concat/values_1�
(sequential/bpstkcuudk/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2*
(sequential/bpstkcuudk/conv1d/concat/axis�
#sequential/bpstkcuudk/conv1d/concatConcatV23sequential/bpstkcuudk/conv1d/strided_slice:output:05sequential/bpstkcuudk/conv1d/concat/values_1:output:01sequential/bpstkcuudk/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/bpstkcuudk/conv1d/concat�
&sequential/bpstkcuudk/conv1d/Reshape_1Reshape,sequential/bpstkcuudk/conv1d/Conv2D:output:0,sequential/bpstkcuudk/conv1d/concat:output:0*
T0*3
_output_shapes!
:���������2(
&sequential/bpstkcuudk/conv1d/Reshape_1�
$sequential/bpstkcuudk/conv1d/SqueezeSqueeze/sequential/bpstkcuudk/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:���������*
squeeze_dims

���������2&
$sequential/bpstkcuudk/conv1d/Squeeze�
.sequential/bpstkcuudk/squeeze_batch_dims/ShapeShape-sequential/bpstkcuudk/conv1d/Squeeze:output:0*
T0*
_output_shapes
:20
.sequential/bpstkcuudk/squeeze_batch_dims/Shape�
<sequential/bpstkcuudk/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential/bpstkcuudk/squeeze_batch_dims/strided_slice/stack�
>sequential/bpstkcuudk/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2@
>sequential/bpstkcuudk/squeeze_batch_dims/strided_slice/stack_1�
>sequential/bpstkcuudk/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential/bpstkcuudk/squeeze_batch_dims/strided_slice/stack_2�
6sequential/bpstkcuudk/squeeze_batch_dims/strided_sliceStridedSlice7sequential/bpstkcuudk/squeeze_batch_dims/Shape:output:0Esequential/bpstkcuudk/squeeze_batch_dims/strided_slice/stack:output:0Gsequential/bpstkcuudk/squeeze_batch_dims/strided_slice/stack_1:output:0Gsequential/bpstkcuudk/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask28
6sequential/bpstkcuudk/squeeze_batch_dims/strided_slice�
6sequential/bpstkcuudk/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      28
6sequential/bpstkcuudk/squeeze_batch_dims/Reshape/shape�
0sequential/bpstkcuudk/squeeze_batch_dims/ReshapeReshape-sequential/bpstkcuudk/conv1d/Squeeze:output:0?sequential/bpstkcuudk/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:���������22
0sequential/bpstkcuudk/squeeze_batch_dims/Reshape�
?sequential/bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOpHsequential_bpstkcuudk_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02A
?sequential/bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp�
0sequential/bpstkcuudk/squeeze_batch_dims/BiasAddBiasAdd9sequential/bpstkcuudk/squeeze_batch_dims/Reshape:output:0Gsequential/bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������22
0sequential/bpstkcuudk/squeeze_batch_dims/BiasAdd�
8sequential/bpstkcuudk/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential/bpstkcuudk/squeeze_batch_dims/concat/values_1�
4sequential/bpstkcuudk/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������26
4sequential/bpstkcuudk/squeeze_batch_dims/concat/axis�
/sequential/bpstkcuudk/squeeze_batch_dims/concatConcatV2?sequential/bpstkcuudk/squeeze_batch_dims/strided_slice:output:0Asequential/bpstkcuudk/squeeze_batch_dims/concat/values_1:output:0=sequential/bpstkcuudk/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:21
/sequential/bpstkcuudk/squeeze_batch_dims/concat�
2sequential/bpstkcuudk/squeeze_batch_dims/Reshape_1Reshape9sequential/bpstkcuudk/squeeze_batch_dims/BiasAdd:output:08sequential/bpstkcuudk/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:���������24
2sequential/bpstkcuudk/squeeze_batch_dims/Reshape_1�
sequential/xlcvyoxoxq/ShapeShape;sequential/bpstkcuudk/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
sequential/xlcvyoxoxq/Shape�
)sequential/xlcvyoxoxq/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/xlcvyoxoxq/strided_slice/stack�
+sequential/xlcvyoxoxq/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/xlcvyoxoxq/strided_slice/stack_1�
+sequential/xlcvyoxoxq/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/xlcvyoxoxq/strided_slice/stack_2�
#sequential/xlcvyoxoxq/strided_sliceStridedSlice$sequential/xlcvyoxoxq/Shape:output:02sequential/xlcvyoxoxq/strided_slice/stack:output:04sequential/xlcvyoxoxq/strided_slice/stack_1:output:04sequential/xlcvyoxoxq/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/xlcvyoxoxq/strided_slice�
%sequential/xlcvyoxoxq/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/xlcvyoxoxq/Reshape/shape/1�
%sequential/xlcvyoxoxq/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/xlcvyoxoxq/Reshape/shape/2�
#sequential/xlcvyoxoxq/Reshape/shapePack,sequential/xlcvyoxoxq/strided_slice:output:0.sequential/xlcvyoxoxq/Reshape/shape/1:output:0.sequential/xlcvyoxoxq/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2%
#sequential/xlcvyoxoxq/Reshape/shape�
sequential/xlcvyoxoxq/ReshapeReshape;sequential/bpstkcuudk/squeeze_batch_dims/Reshape_1:output:0,sequential/xlcvyoxoxq/Reshape/shape:output:0*
T0*+
_output_shapes
:���������2
sequential/xlcvyoxoxq/Reshape�
sequential/osutmzfngz/ShapeShape&sequential/xlcvyoxoxq/Reshape:output:0*
T0*
_output_shapes
:2
sequential/osutmzfngz/Shape�
)sequential/osutmzfngz/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/osutmzfngz/strided_slice/stack�
+sequential/osutmzfngz/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/osutmzfngz/strided_slice/stack_1�
+sequential/osutmzfngz/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/osutmzfngz/strided_slice/stack_2�
#sequential/osutmzfngz/strided_sliceStridedSlice$sequential/osutmzfngz/Shape:output:02sequential/osutmzfngz/strided_slice/stack:output:04sequential/osutmzfngz/strided_slice/stack_1:output:04sequential/osutmzfngz/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/osutmzfngz/strided_slice�
!sequential/osutmzfngz/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential/osutmzfngz/zeros/mul/y�
sequential/osutmzfngz/zeros/mulMul,sequential/osutmzfngz/strided_slice:output:0*sequential/osutmzfngz/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/osutmzfngz/zeros/mul�
"sequential/osutmzfngz/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential/osutmzfngz/zeros/Less/y�
 sequential/osutmzfngz/zeros/LessLess#sequential/osutmzfngz/zeros/mul:z:0+sequential/osutmzfngz/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/osutmzfngz/zeros/Less�
$sequential/osutmzfngz/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential/osutmzfngz/zeros/packed/1�
"sequential/osutmzfngz/zeros/packedPack,sequential/osutmzfngz/strided_slice:output:0-sequential/osutmzfngz/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/osutmzfngz/zeros/packed�
!sequential/osutmzfngz/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/osutmzfngz/zeros/Const�
sequential/osutmzfngz/zerosFill+sequential/osutmzfngz/zeros/packed:output:0*sequential/osutmzfngz/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
sequential/osutmzfngz/zeros�
#sequential/osutmzfngz/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential/osutmzfngz/zeros_1/mul/y�
!sequential/osutmzfngz/zeros_1/mulMul,sequential/osutmzfngz/strided_slice:output:0,sequential/osutmzfngz/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/osutmzfngz/zeros_1/mul�
$sequential/osutmzfngz/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential/osutmzfngz/zeros_1/Less/y�
"sequential/osutmzfngz/zeros_1/LessLess%sequential/osutmzfngz/zeros_1/mul:z:0-sequential/osutmzfngz/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/osutmzfngz/zeros_1/Less�
&sequential/osutmzfngz/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/osutmzfngz/zeros_1/packed/1�
$sequential/osutmzfngz/zeros_1/packedPack,sequential/osutmzfngz/strided_slice:output:0/sequential/osutmzfngz/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/osutmzfngz/zeros_1/packed�
#sequential/osutmzfngz/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/osutmzfngz/zeros_1/Const�
sequential/osutmzfngz/zeros_1Fill-sequential/osutmzfngz/zeros_1/packed:output:0,sequential/osutmzfngz/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
sequential/osutmzfngz/zeros_1�
$sequential/osutmzfngz/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/osutmzfngz/transpose/perm�
sequential/osutmzfngz/transpose	Transpose&sequential/xlcvyoxoxq/Reshape:output:0-sequential/osutmzfngz/transpose/perm:output:0*
T0*+
_output_shapes
:���������2!
sequential/osutmzfngz/transpose�
sequential/osutmzfngz/Shape_1Shape#sequential/osutmzfngz/transpose:y:0*
T0*
_output_shapes
:2
sequential/osutmzfngz/Shape_1�
+sequential/osutmzfngz/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/osutmzfngz/strided_slice_1/stack�
-sequential/osutmzfngz/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/osutmzfngz/strided_slice_1/stack_1�
-sequential/osutmzfngz/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/osutmzfngz/strided_slice_1/stack_2�
%sequential/osutmzfngz/strided_slice_1StridedSlice&sequential/osutmzfngz/Shape_1:output:04sequential/osutmzfngz/strided_slice_1/stack:output:06sequential/osutmzfngz/strided_slice_1/stack_1:output:06sequential/osutmzfngz/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/osutmzfngz/strided_slice_1�
1sequential/osutmzfngz/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential/osutmzfngz/TensorArrayV2/element_shape�
#sequential/osutmzfngz/TensorArrayV2TensorListReserve:sequential/osutmzfngz/TensorArrayV2/element_shape:output:0.sequential/osutmzfngz/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/osutmzfngz/TensorArrayV2�
Ksequential/osutmzfngz/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2M
Ksequential/osutmzfngz/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential/osutmzfngz/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/osutmzfngz/transpose:y:0Tsequential/osutmzfngz/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/osutmzfngz/TensorArrayUnstack/TensorListFromTensor�
+sequential/osutmzfngz/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/osutmzfngz/strided_slice_2/stack�
-sequential/osutmzfngz/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/osutmzfngz/strided_slice_2/stack_1�
-sequential/osutmzfngz/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/osutmzfngz/strided_slice_2/stack_2�
%sequential/osutmzfngz/strided_slice_2StridedSlice#sequential/osutmzfngz/transpose:y:04sequential/osutmzfngz/strided_slice_2/stack:output:06sequential/osutmzfngz/strided_slice_2/stack_1:output:06sequential/osutmzfngz/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2'
%sequential/osutmzfngz/strided_slice_2�
6sequential/osutmzfngz/dsycfvoega/MatMul/ReadVariableOpReadVariableOp?sequential_osutmzfngz_dsycfvoega_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype028
6sequential/osutmzfngz/dsycfvoega/MatMul/ReadVariableOp�
'sequential/osutmzfngz/dsycfvoega/MatMulMatMul.sequential/osutmzfngz/strided_slice_2:output:0>sequential/osutmzfngz/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2)
'sequential/osutmzfngz/dsycfvoega/MatMul�
8sequential/osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOpAsequential_osutmzfngz_dsycfvoega_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02:
8sequential/osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp�
)sequential/osutmzfngz/dsycfvoega/MatMul_1MatMul$sequential/osutmzfngz/zeros:output:0@sequential/osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)sequential/osutmzfngz/dsycfvoega/MatMul_1�
$sequential/osutmzfngz/dsycfvoega/addAddV21sequential/osutmzfngz/dsycfvoega/MatMul:product:03sequential/osutmzfngz/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2&
$sequential/osutmzfngz/dsycfvoega/add�
7sequential/osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp@sequential_osutmzfngz_dsycfvoega_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype029
7sequential/osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp�
(sequential/osutmzfngz/dsycfvoega/BiasAddBiasAdd(sequential/osutmzfngz/dsycfvoega/add:z:0?sequential/osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2*
(sequential/osutmzfngz/dsycfvoega/BiasAdd�
0sequential/osutmzfngz/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential/osutmzfngz/dsycfvoega/split/split_dim�
&sequential/osutmzfngz/dsycfvoega/splitSplit9sequential/osutmzfngz/dsycfvoega/split/split_dim:output:01sequential/osutmzfngz/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2(
&sequential/osutmzfngz/dsycfvoega/split�
/sequential/osutmzfngz/dsycfvoega/ReadVariableOpReadVariableOp8sequential_osutmzfngz_dsycfvoega_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential/osutmzfngz/dsycfvoega/ReadVariableOp�
$sequential/osutmzfngz/dsycfvoega/mulMul7sequential/osutmzfngz/dsycfvoega/ReadVariableOp:value:0&sequential/osutmzfngz/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2&
$sequential/osutmzfngz/dsycfvoega/mul�
&sequential/osutmzfngz/dsycfvoega/add_1AddV2/sequential/osutmzfngz/dsycfvoega/split:output:0(sequential/osutmzfngz/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2(
&sequential/osutmzfngz/dsycfvoega/add_1�
(sequential/osutmzfngz/dsycfvoega/SigmoidSigmoid*sequential/osutmzfngz/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2*
(sequential/osutmzfngz/dsycfvoega/Sigmoid�
1sequential/osutmzfngz/dsycfvoega/ReadVariableOp_1ReadVariableOp:sequential_osutmzfngz_dsycfvoega_readvariableop_1_resource*
_output_shapes
: *
dtype023
1sequential/osutmzfngz/dsycfvoega/ReadVariableOp_1�
&sequential/osutmzfngz/dsycfvoega/mul_1Mul9sequential/osutmzfngz/dsycfvoega/ReadVariableOp_1:value:0&sequential/osutmzfngz/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2(
&sequential/osutmzfngz/dsycfvoega/mul_1�
&sequential/osutmzfngz/dsycfvoega/add_2AddV2/sequential/osutmzfngz/dsycfvoega/split:output:1*sequential/osutmzfngz/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2(
&sequential/osutmzfngz/dsycfvoega/add_2�
*sequential/osutmzfngz/dsycfvoega/Sigmoid_1Sigmoid*sequential/osutmzfngz/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2,
*sequential/osutmzfngz/dsycfvoega/Sigmoid_1�
&sequential/osutmzfngz/dsycfvoega/mul_2Mul.sequential/osutmzfngz/dsycfvoega/Sigmoid_1:y:0&sequential/osutmzfngz/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2(
&sequential/osutmzfngz/dsycfvoega/mul_2�
%sequential/osutmzfngz/dsycfvoega/TanhTanh/sequential/osutmzfngz/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2'
%sequential/osutmzfngz/dsycfvoega/Tanh�
&sequential/osutmzfngz/dsycfvoega/mul_3Mul,sequential/osutmzfngz/dsycfvoega/Sigmoid:y:0)sequential/osutmzfngz/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2(
&sequential/osutmzfngz/dsycfvoega/mul_3�
&sequential/osutmzfngz/dsycfvoega/add_3AddV2*sequential/osutmzfngz/dsycfvoega/mul_2:z:0*sequential/osutmzfngz/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2(
&sequential/osutmzfngz/dsycfvoega/add_3�
1sequential/osutmzfngz/dsycfvoega/ReadVariableOp_2ReadVariableOp:sequential_osutmzfngz_dsycfvoega_readvariableop_2_resource*
_output_shapes
: *
dtype023
1sequential/osutmzfngz/dsycfvoega/ReadVariableOp_2�
&sequential/osutmzfngz/dsycfvoega/mul_4Mul9sequential/osutmzfngz/dsycfvoega/ReadVariableOp_2:value:0*sequential/osutmzfngz/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2(
&sequential/osutmzfngz/dsycfvoega/mul_4�
&sequential/osutmzfngz/dsycfvoega/add_4AddV2/sequential/osutmzfngz/dsycfvoega/split:output:3*sequential/osutmzfngz/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2(
&sequential/osutmzfngz/dsycfvoega/add_4�
*sequential/osutmzfngz/dsycfvoega/Sigmoid_2Sigmoid*sequential/osutmzfngz/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2,
*sequential/osutmzfngz/dsycfvoega/Sigmoid_2�
'sequential/osutmzfngz/dsycfvoega/Tanh_1Tanh*sequential/osutmzfngz/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2)
'sequential/osutmzfngz/dsycfvoega/Tanh_1�
&sequential/osutmzfngz/dsycfvoega/mul_5Mul.sequential/osutmzfngz/dsycfvoega/Sigmoid_2:y:0+sequential/osutmzfngz/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2(
&sequential/osutmzfngz/dsycfvoega/mul_5�
3sequential/osutmzfngz/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    25
3sequential/osutmzfngz/TensorArrayV2_1/element_shape�
%sequential/osutmzfngz/TensorArrayV2_1TensorListReserve<sequential/osutmzfngz/TensorArrayV2_1/element_shape:output:0.sequential/osutmzfngz/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/osutmzfngz/TensorArrayV2_1z
sequential/osutmzfngz/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/osutmzfngz/time�
.sequential/osutmzfngz/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential/osutmzfngz/while/maximum_iterations�
(sequential/osutmzfngz/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/osutmzfngz/while/loop_counter�	
sequential/osutmzfngz/whileWhile1sequential/osutmzfngz/while/loop_counter:output:07sequential/osutmzfngz/while/maximum_iterations:output:0#sequential/osutmzfngz/time:output:0.sequential/osutmzfngz/TensorArrayV2_1:handle:0$sequential/osutmzfngz/zeros:output:0&sequential/osutmzfngz/zeros_1:output:0.sequential/osutmzfngz/strided_slice_1:output:0Msequential/osutmzfngz/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_osutmzfngz_dsycfvoega_matmul_readvariableop_resourceAsequential_osutmzfngz_dsycfvoega_matmul_1_readvariableop_resource@sequential_osutmzfngz_dsycfvoega_biasadd_readvariableop_resource8sequential_osutmzfngz_dsycfvoega_readvariableop_resource:sequential_osutmzfngz_dsycfvoega_readvariableop_1_resource:sequential_osutmzfngz_dsycfvoega_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*2
body*R(
&sequential_osutmzfngz_while_body_26797*2
cond*R(
&sequential_osutmzfngz_while_cond_26796*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
sequential/osutmzfngz/while�
Fsequential/osutmzfngz/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2H
Fsequential/osutmzfngz/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential/osutmzfngz/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/osutmzfngz/while:output:3Osequential/osutmzfngz/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02:
8sequential/osutmzfngz/TensorArrayV2Stack/TensorListStack�
+sequential/osutmzfngz/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential/osutmzfngz/strided_slice_3/stack�
-sequential/osutmzfngz/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/osutmzfngz/strided_slice_3/stack_1�
-sequential/osutmzfngz/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/osutmzfngz/strided_slice_3/stack_2�
%sequential/osutmzfngz/strided_slice_3StridedSliceAsequential/osutmzfngz/TensorArrayV2Stack/TensorListStack:tensor:04sequential/osutmzfngz/strided_slice_3/stack:output:06sequential/osutmzfngz/strided_slice_3/stack_1:output:06sequential/osutmzfngz/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2'
%sequential/osutmzfngz/strided_slice_3�
&sequential/osutmzfngz/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/osutmzfngz/transpose_1/perm�
!sequential/osutmzfngz/transpose_1	TransposeAsequential/osutmzfngz/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/osutmzfngz/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2#
!sequential/osutmzfngz/transpose_1�
sequential/owshcilvwl/ShapeShape%sequential/osutmzfngz/transpose_1:y:0*
T0*
_output_shapes
:2
sequential/owshcilvwl/Shape�
)sequential/owshcilvwl/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/owshcilvwl/strided_slice/stack�
+sequential/owshcilvwl/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/owshcilvwl/strided_slice/stack_1�
+sequential/owshcilvwl/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/owshcilvwl/strided_slice/stack_2�
#sequential/owshcilvwl/strided_sliceStridedSlice$sequential/owshcilvwl/Shape:output:02sequential/owshcilvwl/strided_slice/stack:output:04sequential/owshcilvwl/strided_slice/stack_1:output:04sequential/owshcilvwl/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/owshcilvwl/strided_slice�
!sequential/owshcilvwl/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential/owshcilvwl/zeros/mul/y�
sequential/owshcilvwl/zeros/mulMul,sequential/owshcilvwl/strided_slice:output:0*sequential/owshcilvwl/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/owshcilvwl/zeros/mul�
"sequential/owshcilvwl/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential/owshcilvwl/zeros/Less/y�
 sequential/owshcilvwl/zeros/LessLess#sequential/owshcilvwl/zeros/mul:z:0+sequential/owshcilvwl/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/owshcilvwl/zeros/Less�
$sequential/owshcilvwl/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential/owshcilvwl/zeros/packed/1�
"sequential/owshcilvwl/zeros/packedPack,sequential/owshcilvwl/strided_slice:output:0-sequential/owshcilvwl/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/owshcilvwl/zeros/packed�
!sequential/owshcilvwl/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/owshcilvwl/zeros/Const�
sequential/owshcilvwl/zerosFill+sequential/owshcilvwl/zeros/packed:output:0*sequential/owshcilvwl/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
sequential/owshcilvwl/zeros�
#sequential/owshcilvwl/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential/owshcilvwl/zeros_1/mul/y�
!sequential/owshcilvwl/zeros_1/mulMul,sequential/owshcilvwl/strided_slice:output:0,sequential/owshcilvwl/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/owshcilvwl/zeros_1/mul�
$sequential/owshcilvwl/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential/owshcilvwl/zeros_1/Less/y�
"sequential/owshcilvwl/zeros_1/LessLess%sequential/owshcilvwl/zeros_1/mul:z:0-sequential/owshcilvwl/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/owshcilvwl/zeros_1/Less�
&sequential/owshcilvwl/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/owshcilvwl/zeros_1/packed/1�
$sequential/owshcilvwl/zeros_1/packedPack,sequential/owshcilvwl/strided_slice:output:0/sequential/owshcilvwl/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/owshcilvwl/zeros_1/packed�
#sequential/owshcilvwl/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/owshcilvwl/zeros_1/Const�
sequential/owshcilvwl/zeros_1Fill-sequential/owshcilvwl/zeros_1/packed:output:0,sequential/owshcilvwl/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
sequential/owshcilvwl/zeros_1�
$sequential/owshcilvwl/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/owshcilvwl/transpose/perm�
sequential/owshcilvwl/transpose	Transpose%sequential/osutmzfngz/transpose_1:y:0-sequential/owshcilvwl/transpose/perm:output:0*
T0*+
_output_shapes
:��������� 2!
sequential/owshcilvwl/transpose�
sequential/owshcilvwl/Shape_1Shape#sequential/owshcilvwl/transpose:y:0*
T0*
_output_shapes
:2
sequential/owshcilvwl/Shape_1�
+sequential/owshcilvwl/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/owshcilvwl/strided_slice_1/stack�
-sequential/owshcilvwl/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/owshcilvwl/strided_slice_1/stack_1�
-sequential/owshcilvwl/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/owshcilvwl/strided_slice_1/stack_2�
%sequential/owshcilvwl/strided_slice_1StridedSlice&sequential/owshcilvwl/Shape_1:output:04sequential/owshcilvwl/strided_slice_1/stack:output:06sequential/owshcilvwl/strided_slice_1/stack_1:output:06sequential/owshcilvwl/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/owshcilvwl/strided_slice_1�
1sequential/owshcilvwl/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential/owshcilvwl/TensorArrayV2/element_shape�
#sequential/owshcilvwl/TensorArrayV2TensorListReserve:sequential/owshcilvwl/TensorArrayV2/element_shape:output:0.sequential/owshcilvwl/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/owshcilvwl/TensorArrayV2�
Ksequential/owshcilvwl/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2M
Ksequential/owshcilvwl/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential/owshcilvwl/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/owshcilvwl/transpose:y:0Tsequential/owshcilvwl/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/owshcilvwl/TensorArrayUnstack/TensorListFromTensor�
+sequential/owshcilvwl/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/owshcilvwl/strided_slice_2/stack�
-sequential/owshcilvwl/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/owshcilvwl/strided_slice_2/stack_1�
-sequential/owshcilvwl/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/owshcilvwl/strided_slice_2/stack_2�
%sequential/owshcilvwl/strided_slice_2StridedSlice#sequential/owshcilvwl/transpose:y:04sequential/owshcilvwl/strided_slice_2/stack:output:06sequential/owshcilvwl/strided_slice_2/stack_1:output:06sequential/owshcilvwl/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2'
%sequential/owshcilvwl/strided_slice_2�
6sequential/owshcilvwl/flzkvrshbq/MatMul/ReadVariableOpReadVariableOp?sequential_owshcilvwl_flzkvrshbq_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype028
6sequential/owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp�
'sequential/owshcilvwl/flzkvrshbq/MatMulMatMul.sequential/owshcilvwl/strided_slice_2:output:0>sequential/owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2)
'sequential/owshcilvwl/flzkvrshbq/MatMul�
8sequential/owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOpAsequential_owshcilvwl_flzkvrshbq_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02:
8sequential/owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp�
)sequential/owshcilvwl/flzkvrshbq/MatMul_1MatMul$sequential/owshcilvwl/zeros:output:0@sequential/owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)sequential/owshcilvwl/flzkvrshbq/MatMul_1�
$sequential/owshcilvwl/flzkvrshbq/addAddV21sequential/owshcilvwl/flzkvrshbq/MatMul:product:03sequential/owshcilvwl/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2&
$sequential/owshcilvwl/flzkvrshbq/add�
7sequential/owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp@sequential_owshcilvwl_flzkvrshbq_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype029
7sequential/owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp�
(sequential/owshcilvwl/flzkvrshbq/BiasAddBiasAdd(sequential/owshcilvwl/flzkvrshbq/add:z:0?sequential/owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2*
(sequential/owshcilvwl/flzkvrshbq/BiasAdd�
0sequential/owshcilvwl/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential/owshcilvwl/flzkvrshbq/split/split_dim�
&sequential/owshcilvwl/flzkvrshbq/splitSplit9sequential/owshcilvwl/flzkvrshbq/split/split_dim:output:01sequential/owshcilvwl/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2(
&sequential/owshcilvwl/flzkvrshbq/split�
/sequential/owshcilvwl/flzkvrshbq/ReadVariableOpReadVariableOp8sequential_owshcilvwl_flzkvrshbq_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential/owshcilvwl/flzkvrshbq/ReadVariableOp�
$sequential/owshcilvwl/flzkvrshbq/mulMul7sequential/owshcilvwl/flzkvrshbq/ReadVariableOp:value:0&sequential/owshcilvwl/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2&
$sequential/owshcilvwl/flzkvrshbq/mul�
&sequential/owshcilvwl/flzkvrshbq/add_1AddV2/sequential/owshcilvwl/flzkvrshbq/split:output:0(sequential/owshcilvwl/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2(
&sequential/owshcilvwl/flzkvrshbq/add_1�
(sequential/owshcilvwl/flzkvrshbq/SigmoidSigmoid*sequential/owshcilvwl/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2*
(sequential/owshcilvwl/flzkvrshbq/Sigmoid�
1sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_1ReadVariableOp:sequential_owshcilvwl_flzkvrshbq_readvariableop_1_resource*
_output_shapes
: *
dtype023
1sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_1�
&sequential/owshcilvwl/flzkvrshbq/mul_1Mul9sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_1:value:0&sequential/owshcilvwl/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2(
&sequential/owshcilvwl/flzkvrshbq/mul_1�
&sequential/owshcilvwl/flzkvrshbq/add_2AddV2/sequential/owshcilvwl/flzkvrshbq/split:output:1*sequential/owshcilvwl/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2(
&sequential/owshcilvwl/flzkvrshbq/add_2�
*sequential/owshcilvwl/flzkvrshbq/Sigmoid_1Sigmoid*sequential/owshcilvwl/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2,
*sequential/owshcilvwl/flzkvrshbq/Sigmoid_1�
&sequential/owshcilvwl/flzkvrshbq/mul_2Mul.sequential/owshcilvwl/flzkvrshbq/Sigmoid_1:y:0&sequential/owshcilvwl/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2(
&sequential/owshcilvwl/flzkvrshbq/mul_2�
%sequential/owshcilvwl/flzkvrshbq/TanhTanh/sequential/owshcilvwl/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2'
%sequential/owshcilvwl/flzkvrshbq/Tanh�
&sequential/owshcilvwl/flzkvrshbq/mul_3Mul,sequential/owshcilvwl/flzkvrshbq/Sigmoid:y:0)sequential/owshcilvwl/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2(
&sequential/owshcilvwl/flzkvrshbq/mul_3�
&sequential/owshcilvwl/flzkvrshbq/add_3AddV2*sequential/owshcilvwl/flzkvrshbq/mul_2:z:0*sequential/owshcilvwl/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2(
&sequential/owshcilvwl/flzkvrshbq/add_3�
1sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_2ReadVariableOp:sequential_owshcilvwl_flzkvrshbq_readvariableop_2_resource*
_output_shapes
: *
dtype023
1sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_2�
&sequential/owshcilvwl/flzkvrshbq/mul_4Mul9sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_2:value:0*sequential/owshcilvwl/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2(
&sequential/owshcilvwl/flzkvrshbq/mul_4�
&sequential/owshcilvwl/flzkvrshbq/add_4AddV2/sequential/owshcilvwl/flzkvrshbq/split:output:3*sequential/owshcilvwl/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2(
&sequential/owshcilvwl/flzkvrshbq/add_4�
*sequential/owshcilvwl/flzkvrshbq/Sigmoid_2Sigmoid*sequential/owshcilvwl/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2,
*sequential/owshcilvwl/flzkvrshbq/Sigmoid_2�
'sequential/owshcilvwl/flzkvrshbq/Tanh_1Tanh*sequential/owshcilvwl/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2)
'sequential/owshcilvwl/flzkvrshbq/Tanh_1�
&sequential/owshcilvwl/flzkvrshbq/mul_5Mul.sequential/owshcilvwl/flzkvrshbq/Sigmoid_2:y:0+sequential/owshcilvwl/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2(
&sequential/owshcilvwl/flzkvrshbq/mul_5�
3sequential/owshcilvwl/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    25
3sequential/owshcilvwl/TensorArrayV2_1/element_shape�
%sequential/owshcilvwl/TensorArrayV2_1TensorListReserve<sequential/owshcilvwl/TensorArrayV2_1/element_shape:output:0.sequential/owshcilvwl/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/owshcilvwl/TensorArrayV2_1z
sequential/owshcilvwl/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/owshcilvwl/time�
.sequential/owshcilvwl/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential/owshcilvwl/while/maximum_iterations�
(sequential/owshcilvwl/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/owshcilvwl/while/loop_counter�	
sequential/owshcilvwl/whileWhile1sequential/owshcilvwl/while/loop_counter:output:07sequential/owshcilvwl/while/maximum_iterations:output:0#sequential/owshcilvwl/time:output:0.sequential/owshcilvwl/TensorArrayV2_1:handle:0$sequential/owshcilvwl/zeros:output:0&sequential/owshcilvwl/zeros_1:output:0.sequential/owshcilvwl/strided_slice_1:output:0Msequential/owshcilvwl/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_owshcilvwl_flzkvrshbq_matmul_readvariableop_resourceAsequential_owshcilvwl_flzkvrshbq_matmul_1_readvariableop_resource@sequential_owshcilvwl_flzkvrshbq_biasadd_readvariableop_resource8sequential_owshcilvwl_flzkvrshbq_readvariableop_resource:sequential_owshcilvwl_flzkvrshbq_readvariableop_1_resource:sequential_owshcilvwl_flzkvrshbq_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*2
body*R(
&sequential_owshcilvwl_while_body_26973*2
cond*R(
&sequential_owshcilvwl_while_cond_26972*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
sequential/owshcilvwl/while�
Fsequential/owshcilvwl/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2H
Fsequential/owshcilvwl/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential/owshcilvwl/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/owshcilvwl/while:output:3Osequential/owshcilvwl/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02:
8sequential/owshcilvwl/TensorArrayV2Stack/TensorListStack�
+sequential/owshcilvwl/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential/owshcilvwl/strided_slice_3/stack�
-sequential/owshcilvwl/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/owshcilvwl/strided_slice_3/stack_1�
-sequential/owshcilvwl/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/owshcilvwl/strided_slice_3/stack_2�
%sequential/owshcilvwl/strided_slice_3StridedSliceAsequential/owshcilvwl/TensorArrayV2Stack/TensorListStack:tensor:04sequential/owshcilvwl/strided_slice_3/stack:output:06sequential/owshcilvwl/strided_slice_3/stack_1:output:06sequential/owshcilvwl/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2'
%sequential/owshcilvwl/strided_slice_3�
&sequential/owshcilvwl/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/owshcilvwl/transpose_1/perm�
!sequential/owshcilvwl/transpose_1	TransposeAsequential/owshcilvwl/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/owshcilvwl/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2#
!sequential/owshcilvwl/transpose_1�
+sequential/oaettnoaty/MatMul/ReadVariableOpReadVariableOp4sequential_oaettnoaty_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential/oaettnoaty/MatMul/ReadVariableOp�
sequential/oaettnoaty/MatMulMatMul.sequential/owshcilvwl/strided_slice_3:output:03sequential/oaettnoaty/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential/oaettnoaty/MatMul�
,sequential/oaettnoaty/BiasAdd/ReadVariableOpReadVariableOp5sequential_oaettnoaty_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential/oaettnoaty/BiasAdd/ReadVariableOp�
sequential/oaettnoaty/BiasAddBiasAdd&sequential/oaettnoaty/MatMul:product:04sequential/oaettnoaty/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential/oaettnoaty/BiasAdd�
IdentityIdentity&sequential/oaettnoaty/BiasAdd:output:09^sequential/bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp@^sequential/bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp-^sequential/oaettnoaty/BiasAdd/ReadVariableOp,^sequential/oaettnoaty/MatMul/ReadVariableOp8^sequential/osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp7^sequential/osutmzfngz/dsycfvoega/MatMul/ReadVariableOp9^sequential/osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp0^sequential/osutmzfngz/dsycfvoega/ReadVariableOp2^sequential/osutmzfngz/dsycfvoega/ReadVariableOp_12^sequential/osutmzfngz/dsycfvoega/ReadVariableOp_2^sequential/osutmzfngz/while8^sequential/owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp7^sequential/owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp9^sequential/owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp0^sequential/owshcilvwl/flzkvrshbq/ReadVariableOp2^sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_12^sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_2^sequential/owshcilvwl/while*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 2t
8sequential/bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp8sequential/bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp2�
?sequential/bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp?sequential/bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp2\
,sequential/oaettnoaty/BiasAdd/ReadVariableOp,sequential/oaettnoaty/BiasAdd/ReadVariableOp2Z
+sequential/oaettnoaty/MatMul/ReadVariableOp+sequential/oaettnoaty/MatMul/ReadVariableOp2r
7sequential/osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp7sequential/osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp2p
6sequential/osutmzfngz/dsycfvoega/MatMul/ReadVariableOp6sequential/osutmzfngz/dsycfvoega/MatMul/ReadVariableOp2t
8sequential/osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp8sequential/osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp2b
/sequential/osutmzfngz/dsycfvoega/ReadVariableOp/sequential/osutmzfngz/dsycfvoega/ReadVariableOp2f
1sequential/osutmzfngz/dsycfvoega/ReadVariableOp_11sequential/osutmzfngz/dsycfvoega/ReadVariableOp_12f
1sequential/osutmzfngz/dsycfvoega/ReadVariableOp_21sequential/osutmzfngz/dsycfvoega/ReadVariableOp_22:
sequential/osutmzfngz/whilesequential/osutmzfngz/while2r
7sequential/owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp7sequential/owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp2p
6sequential/owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp6sequential/owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp2t
8sequential/owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp8sequential/owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp2b
/sequential/owshcilvwl/flzkvrshbq/ReadVariableOp/sequential/owshcilvwl/flzkvrshbq/ReadVariableOp2f
1sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_11sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_12f
1sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_21sequential/owshcilvwl/flzkvrshbq/ReadVariableOp_22:
sequential/owshcilvwl/whilesequential/owshcilvwl/while:[ W
/
_output_shapes
:���������
$
_user_specified_name
jfowsgvbzw
��
�
E__inference_sequential_layer_call_and_return_conditional_losses_30640

inputsL
6bpstkcuudk_conv1d_expanddims_1_readvariableop_resource:K
=bpstkcuudk_squeeze_batch_dims_biasadd_readvariableop_resource:G
4osutmzfngz_dsycfvoega_matmul_readvariableop_resource:	�I
6osutmzfngz_dsycfvoega_matmul_1_readvariableop_resource:	 �D
5osutmzfngz_dsycfvoega_biasadd_readvariableop_resource:	�;
-osutmzfngz_dsycfvoega_readvariableop_resource: =
/osutmzfngz_dsycfvoega_readvariableop_1_resource: =
/osutmzfngz_dsycfvoega_readvariableop_2_resource: G
4owshcilvwl_flzkvrshbq_matmul_readvariableop_resource:	 �I
6owshcilvwl_flzkvrshbq_matmul_1_readvariableop_resource:	 �D
5owshcilvwl_flzkvrshbq_biasadd_readvariableop_resource:	�;
-owshcilvwl_flzkvrshbq_readvariableop_resource: =
/owshcilvwl_flzkvrshbq_readvariableop_1_resource: =
/owshcilvwl_flzkvrshbq_readvariableop_2_resource: ;
)oaettnoaty_matmul_readvariableop_resource: 8
*oaettnoaty_biasadd_readvariableop_resource:
identity��-bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp�4bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp�!oaettnoaty/BiasAdd/ReadVariableOp� oaettnoaty/MatMul/ReadVariableOp�,osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp�+osutmzfngz/dsycfvoega/MatMul/ReadVariableOp�-osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp�$osutmzfngz/dsycfvoega/ReadVariableOp�&osutmzfngz/dsycfvoega/ReadVariableOp_1�&osutmzfngz/dsycfvoega/ReadVariableOp_2�osutmzfngz/while�,owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp�+owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp�-owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp�$owshcilvwl/flzkvrshbq/ReadVariableOp�&owshcilvwl/flzkvrshbq/ReadVariableOp_1�&owshcilvwl/flzkvrshbq/ReadVariableOp_2�owshcilvwl/while�
 bpstkcuudk/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 bpstkcuudk/conv1d/ExpandDims/dim�
bpstkcuudk/conv1d/ExpandDims
ExpandDimsinputs)bpstkcuudk/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2
bpstkcuudk/conv1d/ExpandDims�
-bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6bpstkcuudk_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp�
"bpstkcuudk/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"bpstkcuudk/conv1d/ExpandDims_1/dim�
bpstkcuudk/conv1d/ExpandDims_1
ExpandDims5bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp:value:0+bpstkcuudk/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
bpstkcuudk/conv1d/ExpandDims_1�
bpstkcuudk/conv1d/ShapeShape%bpstkcuudk/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
bpstkcuudk/conv1d/Shape�
%bpstkcuudk/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%bpstkcuudk/conv1d/strided_slice/stack�
'bpstkcuudk/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2)
'bpstkcuudk/conv1d/strided_slice/stack_1�
'bpstkcuudk/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'bpstkcuudk/conv1d/strided_slice/stack_2�
bpstkcuudk/conv1d/strided_sliceStridedSlice bpstkcuudk/conv1d/Shape:output:0.bpstkcuudk/conv1d/strided_slice/stack:output:00bpstkcuudk/conv1d/strided_slice/stack_1:output:00bpstkcuudk/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
bpstkcuudk/conv1d/strided_slice�
bpstkcuudk/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2!
bpstkcuudk/conv1d/Reshape/shape�
bpstkcuudk/conv1d/ReshapeReshape%bpstkcuudk/conv1d/ExpandDims:output:0(bpstkcuudk/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
bpstkcuudk/conv1d/Reshape�
bpstkcuudk/conv1d/Conv2DConv2D"bpstkcuudk/conv1d/Reshape:output:0'bpstkcuudk/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
2
bpstkcuudk/conv1d/Conv2D�
!bpstkcuudk/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!bpstkcuudk/conv1d/concat/values_1�
bpstkcuudk/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
bpstkcuudk/conv1d/concat/axis�
bpstkcuudk/conv1d/concatConcatV2(bpstkcuudk/conv1d/strided_slice:output:0*bpstkcuudk/conv1d/concat/values_1:output:0&bpstkcuudk/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
bpstkcuudk/conv1d/concat�
bpstkcuudk/conv1d/Reshape_1Reshape!bpstkcuudk/conv1d/Conv2D:output:0!bpstkcuudk/conv1d/concat:output:0*
T0*3
_output_shapes!
:���������2
bpstkcuudk/conv1d/Reshape_1�
bpstkcuudk/conv1d/SqueezeSqueeze$bpstkcuudk/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:���������*
squeeze_dims

���������2
bpstkcuudk/conv1d/Squeeze�
#bpstkcuudk/squeeze_batch_dims/ShapeShape"bpstkcuudk/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#bpstkcuudk/squeeze_batch_dims/Shape�
1bpstkcuudk/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1bpstkcuudk/squeeze_batch_dims/strided_slice/stack�
3bpstkcuudk/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������25
3bpstkcuudk/squeeze_batch_dims/strided_slice/stack_1�
3bpstkcuudk/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3bpstkcuudk/squeeze_batch_dims/strided_slice/stack_2�
+bpstkcuudk/squeeze_batch_dims/strided_sliceStridedSlice,bpstkcuudk/squeeze_batch_dims/Shape:output:0:bpstkcuudk/squeeze_batch_dims/strided_slice/stack:output:0<bpstkcuudk/squeeze_batch_dims/strided_slice/stack_1:output:0<bpstkcuudk/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+bpstkcuudk/squeeze_batch_dims/strided_slice�
+bpstkcuudk/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2-
+bpstkcuudk/squeeze_batch_dims/Reshape/shape�
%bpstkcuudk/squeeze_batch_dims/ReshapeReshape"bpstkcuudk/conv1d/Squeeze:output:04bpstkcuudk/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:���������2'
%bpstkcuudk/squeeze_batch_dims/Reshape�
4bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=bpstkcuudk_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp�
%bpstkcuudk/squeeze_batch_dims/BiasAddBiasAdd.bpstkcuudk/squeeze_batch_dims/Reshape:output:0<bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2'
%bpstkcuudk/squeeze_batch_dims/BiasAdd�
-bpstkcuudk/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-bpstkcuudk/squeeze_batch_dims/concat/values_1�
)bpstkcuudk/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2+
)bpstkcuudk/squeeze_batch_dims/concat/axis�
$bpstkcuudk/squeeze_batch_dims/concatConcatV24bpstkcuudk/squeeze_batch_dims/strided_slice:output:06bpstkcuudk/squeeze_batch_dims/concat/values_1:output:02bpstkcuudk/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$bpstkcuudk/squeeze_batch_dims/concat�
'bpstkcuudk/squeeze_batch_dims/Reshape_1Reshape.bpstkcuudk/squeeze_batch_dims/BiasAdd:output:0-bpstkcuudk/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:���������2)
'bpstkcuudk/squeeze_batch_dims/Reshape_1�
xlcvyoxoxq/ShapeShape0bpstkcuudk/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
xlcvyoxoxq/Shape�
xlcvyoxoxq/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
xlcvyoxoxq/strided_slice/stack�
 xlcvyoxoxq/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 xlcvyoxoxq/strided_slice/stack_1�
 xlcvyoxoxq/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 xlcvyoxoxq/strided_slice/stack_2�
xlcvyoxoxq/strided_sliceStridedSlicexlcvyoxoxq/Shape:output:0'xlcvyoxoxq/strided_slice/stack:output:0)xlcvyoxoxq/strided_slice/stack_1:output:0)xlcvyoxoxq/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
xlcvyoxoxq/strided_slicez
xlcvyoxoxq/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
xlcvyoxoxq/Reshape/shape/1z
xlcvyoxoxq/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
xlcvyoxoxq/Reshape/shape/2�
xlcvyoxoxq/Reshape/shapePack!xlcvyoxoxq/strided_slice:output:0#xlcvyoxoxq/Reshape/shape/1:output:0#xlcvyoxoxq/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
xlcvyoxoxq/Reshape/shape�
xlcvyoxoxq/ReshapeReshape0bpstkcuudk/squeeze_batch_dims/Reshape_1:output:0!xlcvyoxoxq/Reshape/shape:output:0*
T0*+
_output_shapes
:���������2
xlcvyoxoxq/Reshapeo
osutmzfngz/ShapeShapexlcvyoxoxq/Reshape:output:0*
T0*
_output_shapes
:2
osutmzfngz/Shape�
osutmzfngz/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
osutmzfngz/strided_slice/stack�
 osutmzfngz/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 osutmzfngz/strided_slice/stack_1�
 osutmzfngz/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 osutmzfngz/strided_slice/stack_2�
osutmzfngz/strided_sliceStridedSliceosutmzfngz/Shape:output:0'osutmzfngz/strided_slice/stack:output:0)osutmzfngz/strided_slice/stack_1:output:0)osutmzfngz/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
osutmzfngz/strided_slicer
osutmzfngz/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/zeros/mul/y�
osutmzfngz/zeros/mulMul!osutmzfngz/strided_slice:output:0osutmzfngz/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/zeros/mulu
osutmzfngz/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
osutmzfngz/zeros/Less/y�
osutmzfngz/zeros/LessLessosutmzfngz/zeros/mul:z:0 osutmzfngz/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/zeros/Lessx
osutmzfngz/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/zeros/packed/1�
osutmzfngz/zeros/packedPack!osutmzfngz/strided_slice:output:0"osutmzfngz/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
osutmzfngz/zeros/packedu
osutmzfngz/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
osutmzfngz/zeros/Const�
osutmzfngz/zerosFill osutmzfngz/zeros/packed:output:0osutmzfngz/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/zerosv
osutmzfngz/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/zeros_1/mul/y�
osutmzfngz/zeros_1/mulMul!osutmzfngz/strided_slice:output:0!osutmzfngz/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/zeros_1/muly
osutmzfngz/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
osutmzfngz/zeros_1/Less/y�
osutmzfngz/zeros_1/LessLessosutmzfngz/zeros_1/mul:z:0"osutmzfngz/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/zeros_1/Less|
osutmzfngz/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/zeros_1/packed/1�
osutmzfngz/zeros_1/packedPack!osutmzfngz/strided_slice:output:0$osutmzfngz/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
osutmzfngz/zeros_1/packedy
osutmzfngz/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
osutmzfngz/zeros_1/Const�
osutmzfngz/zeros_1Fill"osutmzfngz/zeros_1/packed:output:0!osutmzfngz/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/zeros_1�
osutmzfngz/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
osutmzfngz/transpose/perm�
osutmzfngz/transpose	Transposexlcvyoxoxq/Reshape:output:0"osutmzfngz/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
osutmzfngz/transposep
osutmzfngz/Shape_1Shapeosutmzfngz/transpose:y:0*
T0*
_output_shapes
:2
osutmzfngz/Shape_1�
 osutmzfngz/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 osutmzfngz/strided_slice_1/stack�
"osutmzfngz/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"osutmzfngz/strided_slice_1/stack_1�
"osutmzfngz/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"osutmzfngz/strided_slice_1/stack_2�
osutmzfngz/strided_slice_1StridedSliceosutmzfngz/Shape_1:output:0)osutmzfngz/strided_slice_1/stack:output:0+osutmzfngz/strided_slice_1/stack_1:output:0+osutmzfngz/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
osutmzfngz/strided_slice_1�
&osutmzfngz/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&osutmzfngz/TensorArrayV2/element_shape�
osutmzfngz/TensorArrayV2TensorListReserve/osutmzfngz/TensorArrayV2/element_shape:output:0#osutmzfngz/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
osutmzfngz/TensorArrayV2�
@osutmzfngz/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2B
@osutmzfngz/TensorArrayUnstack/TensorListFromTensor/element_shape�
2osutmzfngz/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorosutmzfngz/transpose:y:0Iosutmzfngz/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2osutmzfngz/TensorArrayUnstack/TensorListFromTensor�
 osutmzfngz/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 osutmzfngz/strided_slice_2/stack�
"osutmzfngz/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"osutmzfngz/strided_slice_2/stack_1�
"osutmzfngz/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"osutmzfngz/strided_slice_2/stack_2�
osutmzfngz/strided_slice_2StridedSliceosutmzfngz/transpose:y:0)osutmzfngz/strided_slice_2/stack:output:0+osutmzfngz/strided_slice_2/stack_1:output:0+osutmzfngz/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
osutmzfngz/strided_slice_2�
+osutmzfngz/dsycfvoega/MatMul/ReadVariableOpReadVariableOp4osutmzfngz_dsycfvoega_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02-
+osutmzfngz/dsycfvoega/MatMul/ReadVariableOp�
osutmzfngz/dsycfvoega/MatMulMatMul#osutmzfngz/strided_slice_2:output:03osutmzfngz/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
osutmzfngz/dsycfvoega/MatMul�
-osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp6osutmzfngz_dsycfvoega_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02/
-osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp�
osutmzfngz/dsycfvoega/MatMul_1MatMulosutmzfngz/zeros:output:05osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
osutmzfngz/dsycfvoega/MatMul_1�
osutmzfngz/dsycfvoega/addAddV2&osutmzfngz/dsycfvoega/MatMul:product:0(osutmzfngz/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
osutmzfngz/dsycfvoega/add�
,osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp5osutmzfngz_dsycfvoega_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp�
osutmzfngz/dsycfvoega/BiasAddBiasAddosutmzfngz/dsycfvoega/add:z:04osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
osutmzfngz/dsycfvoega/BiasAdd�
%osutmzfngz/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%osutmzfngz/dsycfvoega/split/split_dim�
osutmzfngz/dsycfvoega/splitSplit.osutmzfngz/dsycfvoega/split/split_dim:output:0&osutmzfngz/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
osutmzfngz/dsycfvoega/split�
$osutmzfngz/dsycfvoega/ReadVariableOpReadVariableOp-osutmzfngz_dsycfvoega_readvariableop_resource*
_output_shapes
: *
dtype02&
$osutmzfngz/dsycfvoega/ReadVariableOp�
osutmzfngz/dsycfvoega/mulMul,osutmzfngz/dsycfvoega/ReadVariableOp:value:0osutmzfngz/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul�
osutmzfngz/dsycfvoega/add_1AddV2$osutmzfngz/dsycfvoega/split:output:0osutmzfngz/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/add_1�
osutmzfngz/dsycfvoega/SigmoidSigmoidosutmzfngz/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/Sigmoid�
&osutmzfngz/dsycfvoega/ReadVariableOp_1ReadVariableOp/osutmzfngz_dsycfvoega_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&osutmzfngz/dsycfvoega/ReadVariableOp_1�
osutmzfngz/dsycfvoega/mul_1Mul.osutmzfngz/dsycfvoega/ReadVariableOp_1:value:0osutmzfngz/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul_1�
osutmzfngz/dsycfvoega/add_2AddV2$osutmzfngz/dsycfvoega/split:output:1osutmzfngz/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/add_2�
osutmzfngz/dsycfvoega/Sigmoid_1Sigmoidosutmzfngz/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2!
osutmzfngz/dsycfvoega/Sigmoid_1�
osutmzfngz/dsycfvoega/mul_2Mul#osutmzfngz/dsycfvoega/Sigmoid_1:y:0osutmzfngz/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul_2�
osutmzfngz/dsycfvoega/TanhTanh$osutmzfngz/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/Tanh�
osutmzfngz/dsycfvoega/mul_3Mul!osutmzfngz/dsycfvoega/Sigmoid:y:0osutmzfngz/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul_3�
osutmzfngz/dsycfvoega/add_3AddV2osutmzfngz/dsycfvoega/mul_2:z:0osutmzfngz/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/add_3�
&osutmzfngz/dsycfvoega/ReadVariableOp_2ReadVariableOp/osutmzfngz_dsycfvoega_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&osutmzfngz/dsycfvoega/ReadVariableOp_2�
osutmzfngz/dsycfvoega/mul_4Mul.osutmzfngz/dsycfvoega/ReadVariableOp_2:value:0osutmzfngz/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul_4�
osutmzfngz/dsycfvoega/add_4AddV2$osutmzfngz/dsycfvoega/split:output:3osutmzfngz/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/add_4�
osutmzfngz/dsycfvoega/Sigmoid_2Sigmoidosutmzfngz/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2!
osutmzfngz/dsycfvoega/Sigmoid_2�
osutmzfngz/dsycfvoega/Tanh_1Tanhosutmzfngz/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/Tanh_1�
osutmzfngz/dsycfvoega/mul_5Mul#osutmzfngz/dsycfvoega/Sigmoid_2:y:0 osutmzfngz/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul_5�
(osutmzfngz/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2*
(osutmzfngz/TensorArrayV2_1/element_shape�
osutmzfngz/TensorArrayV2_1TensorListReserve1osutmzfngz/TensorArrayV2_1/element_shape:output:0#osutmzfngz/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
osutmzfngz/TensorArrayV2_1d
osutmzfngz/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/time�
#osutmzfngz/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#osutmzfngz/while/maximum_iterations�
osutmzfngz/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/while/loop_counter�
osutmzfngz/whileWhile&osutmzfngz/while/loop_counter:output:0,osutmzfngz/while/maximum_iterations:output:0osutmzfngz/time:output:0#osutmzfngz/TensorArrayV2_1:handle:0osutmzfngz/zeros:output:0osutmzfngz/zeros_1:output:0#osutmzfngz/strided_slice_1:output:0Bosutmzfngz/TensorArrayUnstack/TensorListFromTensor:output_handle:04osutmzfngz_dsycfvoega_matmul_readvariableop_resource6osutmzfngz_dsycfvoega_matmul_1_readvariableop_resource5osutmzfngz_dsycfvoega_biasadd_readvariableop_resource-osutmzfngz_dsycfvoega_readvariableop_resource/osutmzfngz_dsycfvoega_readvariableop_1_resource/osutmzfngz_dsycfvoega_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*'
bodyR
osutmzfngz_while_body_30357*'
condR
osutmzfngz_while_cond_30356*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
osutmzfngz/while�
;osutmzfngz/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2=
;osutmzfngz/TensorArrayV2Stack/TensorListStack/element_shape�
-osutmzfngz/TensorArrayV2Stack/TensorListStackTensorListStackosutmzfngz/while:output:3Dosutmzfngz/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02/
-osutmzfngz/TensorArrayV2Stack/TensorListStack�
 osutmzfngz/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2"
 osutmzfngz/strided_slice_3/stack�
"osutmzfngz/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"osutmzfngz/strided_slice_3/stack_1�
"osutmzfngz/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"osutmzfngz/strided_slice_3/stack_2�
osutmzfngz/strided_slice_3StridedSlice6osutmzfngz/TensorArrayV2Stack/TensorListStack:tensor:0)osutmzfngz/strided_slice_3/stack:output:0+osutmzfngz/strided_slice_3/stack_1:output:0+osutmzfngz/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
osutmzfngz/strided_slice_3�
osutmzfngz/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
osutmzfngz/transpose_1/perm�
osutmzfngz/transpose_1	Transpose6osutmzfngz/TensorArrayV2Stack/TensorListStack:tensor:0$osutmzfngz/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
osutmzfngz/transpose_1n
owshcilvwl/ShapeShapeosutmzfngz/transpose_1:y:0*
T0*
_output_shapes
:2
owshcilvwl/Shape�
owshcilvwl/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
owshcilvwl/strided_slice/stack�
 owshcilvwl/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 owshcilvwl/strided_slice/stack_1�
 owshcilvwl/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 owshcilvwl/strided_slice/stack_2�
owshcilvwl/strided_sliceStridedSliceowshcilvwl/Shape:output:0'owshcilvwl/strided_slice/stack:output:0)owshcilvwl/strided_slice/stack_1:output:0)owshcilvwl/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
owshcilvwl/strided_slicer
owshcilvwl/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/zeros/mul/y�
owshcilvwl/zeros/mulMul!owshcilvwl/strided_slice:output:0owshcilvwl/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/zeros/mulu
owshcilvwl/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
owshcilvwl/zeros/Less/y�
owshcilvwl/zeros/LessLessowshcilvwl/zeros/mul:z:0 owshcilvwl/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/zeros/Lessx
owshcilvwl/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/zeros/packed/1�
owshcilvwl/zeros/packedPack!owshcilvwl/strided_slice:output:0"owshcilvwl/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
owshcilvwl/zeros/packedu
owshcilvwl/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
owshcilvwl/zeros/Const�
owshcilvwl/zerosFill owshcilvwl/zeros/packed:output:0owshcilvwl/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/zerosv
owshcilvwl/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/zeros_1/mul/y�
owshcilvwl/zeros_1/mulMul!owshcilvwl/strided_slice:output:0!owshcilvwl/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/zeros_1/muly
owshcilvwl/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
owshcilvwl/zeros_1/Less/y�
owshcilvwl/zeros_1/LessLessowshcilvwl/zeros_1/mul:z:0"owshcilvwl/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/zeros_1/Less|
owshcilvwl/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/zeros_1/packed/1�
owshcilvwl/zeros_1/packedPack!owshcilvwl/strided_slice:output:0$owshcilvwl/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
owshcilvwl/zeros_1/packedy
owshcilvwl/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
owshcilvwl/zeros_1/Const�
owshcilvwl/zeros_1Fill"owshcilvwl/zeros_1/packed:output:0!owshcilvwl/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/zeros_1�
owshcilvwl/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
owshcilvwl/transpose/perm�
owshcilvwl/transpose	Transposeosutmzfngz/transpose_1:y:0"owshcilvwl/transpose/perm:output:0*
T0*+
_output_shapes
:��������� 2
owshcilvwl/transposep
owshcilvwl/Shape_1Shapeowshcilvwl/transpose:y:0*
T0*
_output_shapes
:2
owshcilvwl/Shape_1�
 owshcilvwl/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 owshcilvwl/strided_slice_1/stack�
"owshcilvwl/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"owshcilvwl/strided_slice_1/stack_1�
"owshcilvwl/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"owshcilvwl/strided_slice_1/stack_2�
owshcilvwl/strided_slice_1StridedSliceowshcilvwl/Shape_1:output:0)owshcilvwl/strided_slice_1/stack:output:0+owshcilvwl/strided_slice_1/stack_1:output:0+owshcilvwl/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
owshcilvwl/strided_slice_1�
&owshcilvwl/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&owshcilvwl/TensorArrayV2/element_shape�
owshcilvwl/TensorArrayV2TensorListReserve/owshcilvwl/TensorArrayV2/element_shape:output:0#owshcilvwl/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
owshcilvwl/TensorArrayV2�
@owshcilvwl/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2B
@owshcilvwl/TensorArrayUnstack/TensorListFromTensor/element_shape�
2owshcilvwl/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorowshcilvwl/transpose:y:0Iowshcilvwl/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2owshcilvwl/TensorArrayUnstack/TensorListFromTensor�
 owshcilvwl/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 owshcilvwl/strided_slice_2/stack�
"owshcilvwl/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"owshcilvwl/strided_slice_2/stack_1�
"owshcilvwl/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"owshcilvwl/strided_slice_2/stack_2�
owshcilvwl/strided_slice_2StridedSliceowshcilvwl/transpose:y:0)owshcilvwl/strided_slice_2/stack:output:0+owshcilvwl/strided_slice_2/stack_1:output:0+owshcilvwl/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
owshcilvwl/strided_slice_2�
+owshcilvwl/flzkvrshbq/MatMul/ReadVariableOpReadVariableOp4owshcilvwl_flzkvrshbq_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02-
+owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp�
owshcilvwl/flzkvrshbq/MatMulMatMul#owshcilvwl/strided_slice_2:output:03owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
owshcilvwl/flzkvrshbq/MatMul�
-owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp6owshcilvwl_flzkvrshbq_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02/
-owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp�
owshcilvwl/flzkvrshbq/MatMul_1MatMulowshcilvwl/zeros:output:05owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
owshcilvwl/flzkvrshbq/MatMul_1�
owshcilvwl/flzkvrshbq/addAddV2&owshcilvwl/flzkvrshbq/MatMul:product:0(owshcilvwl/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
owshcilvwl/flzkvrshbq/add�
,owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp5owshcilvwl_flzkvrshbq_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp�
owshcilvwl/flzkvrshbq/BiasAddBiasAddowshcilvwl/flzkvrshbq/add:z:04owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
owshcilvwl/flzkvrshbq/BiasAdd�
%owshcilvwl/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%owshcilvwl/flzkvrshbq/split/split_dim�
owshcilvwl/flzkvrshbq/splitSplit.owshcilvwl/flzkvrshbq/split/split_dim:output:0&owshcilvwl/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
owshcilvwl/flzkvrshbq/split�
$owshcilvwl/flzkvrshbq/ReadVariableOpReadVariableOp-owshcilvwl_flzkvrshbq_readvariableop_resource*
_output_shapes
: *
dtype02&
$owshcilvwl/flzkvrshbq/ReadVariableOp�
owshcilvwl/flzkvrshbq/mulMul,owshcilvwl/flzkvrshbq/ReadVariableOp:value:0owshcilvwl/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul�
owshcilvwl/flzkvrshbq/add_1AddV2$owshcilvwl/flzkvrshbq/split:output:0owshcilvwl/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/add_1�
owshcilvwl/flzkvrshbq/SigmoidSigmoidowshcilvwl/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/Sigmoid�
&owshcilvwl/flzkvrshbq/ReadVariableOp_1ReadVariableOp/owshcilvwl_flzkvrshbq_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&owshcilvwl/flzkvrshbq/ReadVariableOp_1�
owshcilvwl/flzkvrshbq/mul_1Mul.owshcilvwl/flzkvrshbq/ReadVariableOp_1:value:0owshcilvwl/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul_1�
owshcilvwl/flzkvrshbq/add_2AddV2$owshcilvwl/flzkvrshbq/split:output:1owshcilvwl/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/add_2�
owshcilvwl/flzkvrshbq/Sigmoid_1Sigmoidowshcilvwl/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2!
owshcilvwl/flzkvrshbq/Sigmoid_1�
owshcilvwl/flzkvrshbq/mul_2Mul#owshcilvwl/flzkvrshbq/Sigmoid_1:y:0owshcilvwl/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul_2�
owshcilvwl/flzkvrshbq/TanhTanh$owshcilvwl/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/Tanh�
owshcilvwl/flzkvrshbq/mul_3Mul!owshcilvwl/flzkvrshbq/Sigmoid:y:0owshcilvwl/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul_3�
owshcilvwl/flzkvrshbq/add_3AddV2owshcilvwl/flzkvrshbq/mul_2:z:0owshcilvwl/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/add_3�
&owshcilvwl/flzkvrshbq/ReadVariableOp_2ReadVariableOp/owshcilvwl_flzkvrshbq_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&owshcilvwl/flzkvrshbq/ReadVariableOp_2�
owshcilvwl/flzkvrshbq/mul_4Mul.owshcilvwl/flzkvrshbq/ReadVariableOp_2:value:0owshcilvwl/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul_4�
owshcilvwl/flzkvrshbq/add_4AddV2$owshcilvwl/flzkvrshbq/split:output:3owshcilvwl/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/add_4�
owshcilvwl/flzkvrshbq/Sigmoid_2Sigmoidowshcilvwl/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2!
owshcilvwl/flzkvrshbq/Sigmoid_2�
owshcilvwl/flzkvrshbq/Tanh_1Tanhowshcilvwl/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/Tanh_1�
owshcilvwl/flzkvrshbq/mul_5Mul#owshcilvwl/flzkvrshbq/Sigmoid_2:y:0 owshcilvwl/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul_5�
(owshcilvwl/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2*
(owshcilvwl/TensorArrayV2_1/element_shape�
owshcilvwl/TensorArrayV2_1TensorListReserve1owshcilvwl/TensorArrayV2_1/element_shape:output:0#owshcilvwl/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
owshcilvwl/TensorArrayV2_1d
owshcilvwl/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/time�
#owshcilvwl/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#owshcilvwl/while/maximum_iterations�
owshcilvwl/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/while/loop_counter�
owshcilvwl/whileWhile&owshcilvwl/while/loop_counter:output:0,owshcilvwl/while/maximum_iterations:output:0owshcilvwl/time:output:0#owshcilvwl/TensorArrayV2_1:handle:0owshcilvwl/zeros:output:0owshcilvwl/zeros_1:output:0#owshcilvwl/strided_slice_1:output:0Bowshcilvwl/TensorArrayUnstack/TensorListFromTensor:output_handle:04owshcilvwl_flzkvrshbq_matmul_readvariableop_resource6owshcilvwl_flzkvrshbq_matmul_1_readvariableop_resource5owshcilvwl_flzkvrshbq_biasadd_readvariableop_resource-owshcilvwl_flzkvrshbq_readvariableop_resource/owshcilvwl_flzkvrshbq_readvariableop_1_resource/owshcilvwl_flzkvrshbq_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*'
bodyR
owshcilvwl_while_body_30533*'
condR
owshcilvwl_while_cond_30532*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
owshcilvwl/while�
;owshcilvwl/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2=
;owshcilvwl/TensorArrayV2Stack/TensorListStack/element_shape�
-owshcilvwl/TensorArrayV2Stack/TensorListStackTensorListStackowshcilvwl/while:output:3Dowshcilvwl/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02/
-owshcilvwl/TensorArrayV2Stack/TensorListStack�
 owshcilvwl/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2"
 owshcilvwl/strided_slice_3/stack�
"owshcilvwl/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"owshcilvwl/strided_slice_3/stack_1�
"owshcilvwl/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"owshcilvwl/strided_slice_3/stack_2�
owshcilvwl/strided_slice_3StridedSlice6owshcilvwl/TensorArrayV2Stack/TensorListStack:tensor:0)owshcilvwl/strided_slice_3/stack:output:0+owshcilvwl/strided_slice_3/stack_1:output:0+owshcilvwl/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
owshcilvwl/strided_slice_3�
owshcilvwl/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
owshcilvwl/transpose_1/perm�
owshcilvwl/transpose_1	Transpose6owshcilvwl/TensorArrayV2Stack/TensorListStack:tensor:0$owshcilvwl/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
owshcilvwl/transpose_1�
 oaettnoaty/MatMul/ReadVariableOpReadVariableOp)oaettnoaty_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 oaettnoaty/MatMul/ReadVariableOp�
oaettnoaty/MatMulMatMul#owshcilvwl/strided_slice_3:output:0(oaettnoaty/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
oaettnoaty/MatMul�
!oaettnoaty/BiasAdd/ReadVariableOpReadVariableOp*oaettnoaty_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!oaettnoaty/BiasAdd/ReadVariableOp�
oaettnoaty/BiasAddBiasAddoaettnoaty/MatMul:product:0)oaettnoaty/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
oaettnoaty/BiasAdd�
IdentityIdentityoaettnoaty/BiasAdd:output:0.^bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp5^bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp"^oaettnoaty/BiasAdd/ReadVariableOp!^oaettnoaty/MatMul/ReadVariableOp-^osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp,^osutmzfngz/dsycfvoega/MatMul/ReadVariableOp.^osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp%^osutmzfngz/dsycfvoega/ReadVariableOp'^osutmzfngz/dsycfvoega/ReadVariableOp_1'^osutmzfngz/dsycfvoega/ReadVariableOp_2^osutmzfngz/while-^owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp,^owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp.^owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp%^owshcilvwl/flzkvrshbq/ReadVariableOp'^owshcilvwl/flzkvrshbq/ReadVariableOp_1'^owshcilvwl/flzkvrshbq/ReadVariableOp_2^owshcilvwl/while*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 2^
-bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp-bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp2l
4bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp4bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp2F
!oaettnoaty/BiasAdd/ReadVariableOp!oaettnoaty/BiasAdd/ReadVariableOp2D
 oaettnoaty/MatMul/ReadVariableOp oaettnoaty/MatMul/ReadVariableOp2\
,osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp,osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp2Z
+osutmzfngz/dsycfvoega/MatMul/ReadVariableOp+osutmzfngz/dsycfvoega/MatMul/ReadVariableOp2^
-osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp-osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp2L
$osutmzfngz/dsycfvoega/ReadVariableOp$osutmzfngz/dsycfvoega/ReadVariableOp2P
&osutmzfngz/dsycfvoega/ReadVariableOp_1&osutmzfngz/dsycfvoega/ReadVariableOp_12P
&osutmzfngz/dsycfvoega/ReadVariableOp_2&osutmzfngz/dsycfvoega/ReadVariableOp_22$
osutmzfngz/whileosutmzfngz/while2\
,owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp,owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp2Z
+owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp+owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp2^
-owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp-owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp2L
$owshcilvwl/flzkvrshbq/ReadVariableOp$owshcilvwl/flzkvrshbq/ReadVariableOp2P
&owshcilvwl/flzkvrshbq/ReadVariableOp_1&owshcilvwl/flzkvrshbq/ReadVariableOp_12P
&owshcilvwl/flzkvrshbq/ReadVariableOp_2&owshcilvwl/flzkvrshbq/ReadVariableOp_22$
owshcilvwl/whileowshcilvwl/while:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�h
�
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_30958
inputs_0<
)dsycfvoega_matmul_readvariableop_resource:	�>
+dsycfvoega_matmul_1_readvariableop_resource:	 �9
*dsycfvoega_biasadd_readvariableop_resource:	�0
"dsycfvoega_readvariableop_resource: 2
$dsycfvoega_readvariableop_1_resource: 2
$dsycfvoega_readvariableop_2_resource: 
identity��!dsycfvoega/BiasAdd/ReadVariableOp� dsycfvoega/MatMul/ReadVariableOp�"dsycfvoega/MatMul_1/ReadVariableOp�dsycfvoega/ReadVariableOp�dsycfvoega/ReadVariableOp_1�dsycfvoega/ReadVariableOp_2�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
 dsycfvoega/MatMul/ReadVariableOpReadVariableOp)dsycfvoega_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02"
 dsycfvoega/MatMul/ReadVariableOp�
dsycfvoega/MatMulMatMulstrided_slice_2:output:0(dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul�
"dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp+dsycfvoega_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"dsycfvoega/MatMul_1/ReadVariableOp�
dsycfvoega/MatMul_1MatMulzeros:output:0*dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul_1�
dsycfvoega/addAddV2dsycfvoega/MatMul:product:0dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
dsycfvoega/add�
!dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp*dsycfvoega_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!dsycfvoega/BiasAdd/ReadVariableOp�
dsycfvoega/BiasAddBiasAdddsycfvoega/add:z:0)dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/BiasAddz
dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
dsycfvoega/split/split_dim�
dsycfvoega/splitSplit#dsycfvoega/split/split_dim:output:0dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
dsycfvoega/split�
dsycfvoega/ReadVariableOpReadVariableOp"dsycfvoega_readvariableop_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp�
dsycfvoega/mulMul!dsycfvoega/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul�
dsycfvoega/add_1AddV2dsycfvoega/split:output:0dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_1{
dsycfvoega/SigmoidSigmoiddsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid�
dsycfvoega/ReadVariableOp_1ReadVariableOp$dsycfvoega_readvariableop_1_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_1�
dsycfvoega/mul_1Mul#dsycfvoega/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_1�
dsycfvoega/add_2AddV2dsycfvoega/split:output:1dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_2
dsycfvoega/Sigmoid_1Sigmoiddsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_1�
dsycfvoega/mul_2Muldsycfvoega/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_2w
dsycfvoega/TanhTanhdsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh�
dsycfvoega/mul_3Muldsycfvoega/Sigmoid:y:0dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_3�
dsycfvoega/add_3AddV2dsycfvoega/mul_2:z:0dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_3�
dsycfvoega/ReadVariableOp_2ReadVariableOp$dsycfvoega_readvariableop_2_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_2�
dsycfvoega/mul_4Mul#dsycfvoega/ReadVariableOp_2:value:0dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_4�
dsycfvoega/add_4AddV2dsycfvoega/split:output:3dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_4
dsycfvoega/Sigmoid_2Sigmoiddsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_2v
dsycfvoega/Tanh_1Tanhdsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh_1�
dsycfvoega/mul_5Muldsycfvoega/Sigmoid_2:y:0dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)dsycfvoega_matmul_readvariableop_resource+dsycfvoega_matmul_1_readvariableop_resource*dsycfvoega_biasadd_readvariableop_resource"dsycfvoega_readvariableop_resource$dsycfvoega_readvariableop_1_resource$dsycfvoega_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_30857*
condR
while_cond_30856*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitytranspose_1:y:0"^dsycfvoega/BiasAdd/ReadVariableOp!^dsycfvoega/MatMul/ReadVariableOp#^dsycfvoega/MatMul_1/ReadVariableOp^dsycfvoega/ReadVariableOp^dsycfvoega/ReadVariableOp_1^dsycfvoega/ReadVariableOp_2^while*
T0*4
_output_shapes"
 :������������������ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������: : : : : : 2F
!dsycfvoega/BiasAdd/ReadVariableOp!dsycfvoega/BiasAdd/ReadVariableOp2D
 dsycfvoega/MatMul/ReadVariableOp dsycfvoega/MatMul/ReadVariableOp2H
"dsycfvoega/MatMul_1/ReadVariableOp"dsycfvoega/MatMul_1/ReadVariableOp26
dsycfvoega/ReadVariableOpdsycfvoega/ReadVariableOp2:
dsycfvoega/ReadVariableOp_1dsycfvoega/ReadVariableOp_12:
dsycfvoega/ReadVariableOp_2dsycfvoega/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
*__inference_osutmzfngz_layer_call_fn_31549

inputs
unknown:	�
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_288402
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
while_cond_32004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_32004___redundant_placeholder03
/while_while_cond_32004___redundant_placeholder13
/while_while_cond_32004___redundant_placeholder23
/while_while_cond_32004___redundant_placeholder33
/while_while_cond_32004___redundant_placeholder43
/while_while_cond_32004___redundant_placeholder53
/while_while_cond_32004___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�Y
�
while_body_31037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_dsycfvoega_matmul_readvariableop_resource_0:	�F
3while_dsycfvoega_matmul_1_readvariableop_resource_0:	 �A
2while_dsycfvoega_biasadd_readvariableop_resource_0:	�8
*while_dsycfvoega_readvariableop_resource_0: :
,while_dsycfvoega_readvariableop_1_resource_0: :
,while_dsycfvoega_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_dsycfvoega_matmul_readvariableop_resource:	�D
1while_dsycfvoega_matmul_1_readvariableop_resource:	 �?
0while_dsycfvoega_biasadd_readvariableop_resource:	�6
(while_dsycfvoega_readvariableop_resource: 8
*while_dsycfvoega_readvariableop_1_resource: 8
*while_dsycfvoega_readvariableop_2_resource: ��'while/dsycfvoega/BiasAdd/ReadVariableOp�&while/dsycfvoega/MatMul/ReadVariableOp�(while/dsycfvoega/MatMul_1/ReadVariableOp�while/dsycfvoega/ReadVariableOp�!while/dsycfvoega/ReadVariableOp_1�!while/dsycfvoega/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/dsycfvoega/MatMul/ReadVariableOpReadVariableOp1while_dsycfvoega_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02(
&while/dsycfvoega/MatMul/ReadVariableOp�
while/dsycfvoega/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul�
(while/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp3while_dsycfvoega_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/dsycfvoega/MatMul_1/ReadVariableOp�
while/dsycfvoega/MatMul_1MatMulwhile_placeholder_20while/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul_1�
while/dsycfvoega/addAddV2!while/dsycfvoega/MatMul:product:0#while/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/add�
'while/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp2while_dsycfvoega_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/dsycfvoega/BiasAdd/ReadVariableOp�
while/dsycfvoega/BiasAddBiasAddwhile/dsycfvoega/add:z:0/while/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/BiasAdd�
 while/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/dsycfvoega/split/split_dim�
while/dsycfvoega/splitSplit)while/dsycfvoega/split/split_dim:output:0!while/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/dsycfvoega/split�
while/dsycfvoega/ReadVariableOpReadVariableOp*while_dsycfvoega_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/dsycfvoega/ReadVariableOp�
while/dsycfvoega/mulMul'while/dsycfvoega/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul�
while/dsycfvoega/add_1AddV2while/dsycfvoega/split:output:0while/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_1�
while/dsycfvoega/SigmoidSigmoidwhile/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid�
!while/dsycfvoega/ReadVariableOp_1ReadVariableOp,while_dsycfvoega_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_1�
while/dsycfvoega/mul_1Mul)while/dsycfvoega/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_1�
while/dsycfvoega/add_2AddV2while/dsycfvoega/split:output:1while/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_2�
while/dsycfvoega/Sigmoid_1Sigmoidwhile/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_1�
while/dsycfvoega/mul_2Mulwhile/dsycfvoega/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_2�
while/dsycfvoega/TanhTanhwhile/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh�
while/dsycfvoega/mul_3Mulwhile/dsycfvoega/Sigmoid:y:0while/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_3�
while/dsycfvoega/add_3AddV2while/dsycfvoega/mul_2:z:0while/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_3�
!while/dsycfvoega/ReadVariableOp_2ReadVariableOp,while_dsycfvoega_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_2�
while/dsycfvoega/mul_4Mul)while/dsycfvoega/ReadVariableOp_2:value:0while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_4�
while/dsycfvoega/add_4AddV2while/dsycfvoega/split:output:3while/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_4�
while/dsycfvoega/Sigmoid_2Sigmoidwhile/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_2�
while/dsycfvoega/Tanh_1Tanhwhile/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh_1�
while/dsycfvoega/mul_5Mulwhile/dsycfvoega/Sigmoid_2:y:0while/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/dsycfvoega/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/dsycfvoega/mul_5:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/dsycfvoega/add_3:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_dsycfvoega_biasadd_readvariableop_resource2while_dsycfvoega_biasadd_readvariableop_resource_0"h
1while_dsycfvoega_matmul_1_readvariableop_resource3while_dsycfvoega_matmul_1_readvariableop_resource_0"d
/while_dsycfvoega_matmul_readvariableop_resource1while_dsycfvoega_matmul_readvariableop_resource_0"Z
*while_dsycfvoega_readvariableop_1_resource,while_dsycfvoega_readvariableop_1_resource_0"Z
*while_dsycfvoega_readvariableop_2_resource,while_dsycfvoega_readvariableop_2_resource_0"V
(while_dsycfvoega_readvariableop_resource*while_dsycfvoega_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/dsycfvoega/BiasAdd/ReadVariableOp'while/dsycfvoega/BiasAdd/ReadVariableOp2P
&while/dsycfvoega/MatMul/ReadVariableOp&while/dsycfvoega/MatMul/ReadVariableOp2T
(while/dsycfvoega/MatMul_1/ReadVariableOp(while/dsycfvoega/MatMul_1/ReadVariableOp2B
while/dsycfvoega/ReadVariableOpwhile/dsycfvoega/ReadVariableOp2F
!while/dsycfvoega/ReadVariableOp_1!while/dsycfvoega/ReadVariableOp_12F
!while/dsycfvoega/ReadVariableOp_2!while/dsycfvoega/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_sequential_layer_call_fn_30677

inputs
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	 �
	unknown_3:	�
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:	 �
	unknown_8:	 �
	unknown_9:	�

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:
identity��StatefulPartitionedCall�
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
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_290642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�'
�
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_32551

inputs
states_0
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
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
:��������� 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:��������� 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:��������� 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:��������� 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:��������� 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:��������� 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:��������� 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:��������� 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:��������� 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
mul_5�
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:��������� :��������� :��������� : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�	
�
while_cond_28738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_28738___redundant_placeholder03
/while_while_cond_28738___redundant_placeholder13
/while_while_cond_28738___redundant_placeholder23
/while_while_cond_28738___redundant_placeholder33
/while_while_cond_28738___redundant_placeholder43
/while_while_cond_28738___redundant_placeholder53
/while_while_cond_28738___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
a
E__inference_xlcvyoxoxq_layer_call_and_return_conditional_losses_28659

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
strided_slice/stack_2�
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
Reshape/shape/2�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�Y
�
while_body_29421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_dsycfvoega_matmul_readvariableop_resource_0:	�F
3while_dsycfvoega_matmul_1_readvariableop_resource_0:	 �A
2while_dsycfvoega_biasadd_readvariableop_resource_0:	�8
*while_dsycfvoega_readvariableop_resource_0: :
,while_dsycfvoega_readvariableop_1_resource_0: :
,while_dsycfvoega_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_dsycfvoega_matmul_readvariableop_resource:	�D
1while_dsycfvoega_matmul_1_readvariableop_resource:	 �?
0while_dsycfvoega_biasadd_readvariableop_resource:	�6
(while_dsycfvoega_readvariableop_resource: 8
*while_dsycfvoega_readvariableop_1_resource: 8
*while_dsycfvoega_readvariableop_2_resource: ��'while/dsycfvoega/BiasAdd/ReadVariableOp�&while/dsycfvoega/MatMul/ReadVariableOp�(while/dsycfvoega/MatMul_1/ReadVariableOp�while/dsycfvoega/ReadVariableOp�!while/dsycfvoega/ReadVariableOp_1�!while/dsycfvoega/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/dsycfvoega/MatMul/ReadVariableOpReadVariableOp1while_dsycfvoega_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02(
&while/dsycfvoega/MatMul/ReadVariableOp�
while/dsycfvoega/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul�
(while/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp3while_dsycfvoega_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/dsycfvoega/MatMul_1/ReadVariableOp�
while/dsycfvoega/MatMul_1MatMulwhile_placeholder_20while/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul_1�
while/dsycfvoega/addAddV2!while/dsycfvoega/MatMul:product:0#while/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/add�
'while/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp2while_dsycfvoega_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/dsycfvoega/BiasAdd/ReadVariableOp�
while/dsycfvoega/BiasAddBiasAddwhile/dsycfvoega/add:z:0/while/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/BiasAdd�
 while/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/dsycfvoega/split/split_dim�
while/dsycfvoega/splitSplit)while/dsycfvoega/split/split_dim:output:0!while/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/dsycfvoega/split�
while/dsycfvoega/ReadVariableOpReadVariableOp*while_dsycfvoega_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/dsycfvoega/ReadVariableOp�
while/dsycfvoega/mulMul'while/dsycfvoega/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul�
while/dsycfvoega/add_1AddV2while/dsycfvoega/split:output:0while/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_1�
while/dsycfvoega/SigmoidSigmoidwhile/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid�
!while/dsycfvoega/ReadVariableOp_1ReadVariableOp,while_dsycfvoega_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_1�
while/dsycfvoega/mul_1Mul)while/dsycfvoega/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_1�
while/dsycfvoega/add_2AddV2while/dsycfvoega/split:output:1while/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_2�
while/dsycfvoega/Sigmoid_1Sigmoidwhile/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_1�
while/dsycfvoega/mul_2Mulwhile/dsycfvoega/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_2�
while/dsycfvoega/TanhTanhwhile/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh�
while/dsycfvoega/mul_3Mulwhile/dsycfvoega/Sigmoid:y:0while/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_3�
while/dsycfvoega/add_3AddV2while/dsycfvoega/mul_2:z:0while/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_3�
!while/dsycfvoega/ReadVariableOp_2ReadVariableOp,while_dsycfvoega_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_2�
while/dsycfvoega/mul_4Mul)while/dsycfvoega/ReadVariableOp_2:value:0while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_4�
while/dsycfvoega/add_4AddV2while/dsycfvoega/split:output:3while/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_4�
while/dsycfvoega/Sigmoid_2Sigmoidwhile/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_2�
while/dsycfvoega/Tanh_1Tanhwhile/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh_1�
while/dsycfvoega/mul_5Mulwhile/dsycfvoega/Sigmoid_2:y:0while/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/dsycfvoega/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/dsycfvoega/mul_5:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/dsycfvoega/add_3:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_dsycfvoega_biasadd_readvariableop_resource2while_dsycfvoega_biasadd_readvariableop_resource_0"h
1while_dsycfvoega_matmul_1_readvariableop_resource3while_dsycfvoega_matmul_1_readvariableop_resource_0"d
/while_dsycfvoega_matmul_readvariableop_resource1while_dsycfvoega_matmul_readvariableop_resource_0"Z
*while_dsycfvoega_readvariableop_1_resource,while_dsycfvoega_readvariableop_1_resource_0"Z
*while_dsycfvoega_readvariableop_2_resource,while_dsycfvoega_readvariableop_2_resource_0"V
(while_dsycfvoega_readvariableop_resource*while_dsycfvoega_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/dsycfvoega/BiasAdd/ReadVariableOp'while/dsycfvoega/BiasAdd/ReadVariableOp2P
&while/dsycfvoega/MatMul/ReadVariableOp&while/dsycfvoega/MatMul/ReadVariableOp2T
(while/dsycfvoega/MatMul_1/ReadVariableOp(while/dsycfvoega/MatMul_1/ReadVariableOp2B
while/dsycfvoega/ReadVariableOpwhile/dsycfvoega/ReadVariableOp2F
!while/dsycfvoega/ReadVariableOp_1!while/dsycfvoega/ReadVariableOp_12F
!while/dsycfvoega/ReadVariableOp_2!while/dsycfvoega/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�	
�
while_cond_32184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_32184___redundant_placeholder03
/while_while_cond_32184___redundant_placeholder13
/while_while_cond_32184___redundant_placeholder23
/while_while_cond_32184___redundant_placeholder33
/while_while_cond_32184___redundant_placeholder43
/while_while_cond_32184___redundant_placeholder53
/while_while_cond_32184___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�Y
�
while_body_28739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_dsycfvoega_matmul_readvariableop_resource_0:	�F
3while_dsycfvoega_matmul_1_readvariableop_resource_0:	 �A
2while_dsycfvoega_biasadd_readvariableop_resource_0:	�8
*while_dsycfvoega_readvariableop_resource_0: :
,while_dsycfvoega_readvariableop_1_resource_0: :
,while_dsycfvoega_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_dsycfvoega_matmul_readvariableop_resource:	�D
1while_dsycfvoega_matmul_1_readvariableop_resource:	 �?
0while_dsycfvoega_biasadd_readvariableop_resource:	�6
(while_dsycfvoega_readvariableop_resource: 8
*while_dsycfvoega_readvariableop_1_resource: 8
*while_dsycfvoega_readvariableop_2_resource: ��'while/dsycfvoega/BiasAdd/ReadVariableOp�&while/dsycfvoega/MatMul/ReadVariableOp�(while/dsycfvoega/MatMul_1/ReadVariableOp�while/dsycfvoega/ReadVariableOp�!while/dsycfvoega/ReadVariableOp_1�!while/dsycfvoega/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/dsycfvoega/MatMul/ReadVariableOpReadVariableOp1while_dsycfvoega_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02(
&while/dsycfvoega/MatMul/ReadVariableOp�
while/dsycfvoega/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul�
(while/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp3while_dsycfvoega_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/dsycfvoega/MatMul_1/ReadVariableOp�
while/dsycfvoega/MatMul_1MatMulwhile_placeholder_20while/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul_1�
while/dsycfvoega/addAddV2!while/dsycfvoega/MatMul:product:0#while/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/add�
'while/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp2while_dsycfvoega_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/dsycfvoega/BiasAdd/ReadVariableOp�
while/dsycfvoega/BiasAddBiasAddwhile/dsycfvoega/add:z:0/while/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/BiasAdd�
 while/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/dsycfvoega/split/split_dim�
while/dsycfvoega/splitSplit)while/dsycfvoega/split/split_dim:output:0!while/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/dsycfvoega/split�
while/dsycfvoega/ReadVariableOpReadVariableOp*while_dsycfvoega_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/dsycfvoega/ReadVariableOp�
while/dsycfvoega/mulMul'while/dsycfvoega/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul�
while/dsycfvoega/add_1AddV2while/dsycfvoega/split:output:0while/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_1�
while/dsycfvoega/SigmoidSigmoidwhile/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid�
!while/dsycfvoega/ReadVariableOp_1ReadVariableOp,while_dsycfvoega_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_1�
while/dsycfvoega/mul_1Mul)while/dsycfvoega/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_1�
while/dsycfvoega/add_2AddV2while/dsycfvoega/split:output:1while/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_2�
while/dsycfvoega/Sigmoid_1Sigmoidwhile/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_1�
while/dsycfvoega/mul_2Mulwhile/dsycfvoega/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_2�
while/dsycfvoega/TanhTanhwhile/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh�
while/dsycfvoega/mul_3Mulwhile/dsycfvoega/Sigmoid:y:0while/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_3�
while/dsycfvoega/add_3AddV2while/dsycfvoega/mul_2:z:0while/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_3�
!while/dsycfvoega/ReadVariableOp_2ReadVariableOp,while_dsycfvoega_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_2�
while/dsycfvoega/mul_4Mul)while/dsycfvoega/ReadVariableOp_2:value:0while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_4�
while/dsycfvoega/add_4AddV2while/dsycfvoega/split:output:3while/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_4�
while/dsycfvoega/Sigmoid_2Sigmoidwhile/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_2�
while/dsycfvoega/Tanh_1Tanhwhile/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh_1�
while/dsycfvoega/mul_5Mulwhile/dsycfvoega/Sigmoid_2:y:0while/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/dsycfvoega/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/dsycfvoega/mul_5:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/dsycfvoega/add_3:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_dsycfvoega_biasadd_readvariableop_resource2while_dsycfvoega_biasadd_readvariableop_resource_0"h
1while_dsycfvoega_matmul_1_readvariableop_resource3while_dsycfvoega_matmul_1_readvariableop_resource_0"d
/while_dsycfvoega_matmul_readvariableop_resource1while_dsycfvoega_matmul_readvariableop_resource_0"Z
*while_dsycfvoega_readvariableop_1_resource,while_dsycfvoega_readvariableop_1_resource_0"Z
*while_dsycfvoega_readvariableop_2_resource,while_dsycfvoega_readvariableop_2_resource_0"V
(while_dsycfvoega_readvariableop_resource*while_dsycfvoega_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/dsycfvoega/BiasAdd/ReadVariableOp'while/dsycfvoega/BiasAdd/ReadVariableOp2P
&while/dsycfvoega/MatMul/ReadVariableOp&while/dsycfvoega/MatMul/ReadVariableOp2T
(while/dsycfvoega/MatMul_1/ReadVariableOp(while/dsycfvoega/MatMul_1/ReadVariableOp2B
while/dsycfvoega/ReadVariableOpwhile/dsycfvoega/ReadVariableOp2F
!while/dsycfvoega/ReadVariableOp_1!while/dsycfvoega/ReadVariableOp_12F
!while/dsycfvoega/ReadVariableOp_2!while/dsycfvoega/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�0
�
E__inference_bpstkcuudk_layer_call_and_return_conditional_losses_28640

inputsA
+conv1d_expanddims_1_readvariableop_resource:@
2squeeze_batch_dims_biasadd_readvariableop_resource:
identity��"conv1d/ExpandDims_1/ReadVariableOp�)squeeze_batch_dims/BiasAdd/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2
conv1d/ExpandDims�
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
conv1d/ExpandDims_1/dim�
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
conv1d/Shape�
conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv1d/strided_slice/stack�
conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2
conv1d/strided_slice/stack_1�
conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv1d/strided_slice/stack_2�
conv1d/strided_sliceStridedSliceconv1d/Shape:output:0#conv1d/strided_slice/stack:output:0%conv1d/strided_slice/stack_1:output:0%conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
conv1d/strided_slice�
conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
conv1d/Reshape/shape�
conv1d/ReshapeReshapeconv1d/ExpandDims:output:0conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
conv1d/Reshape�
conv1d/Conv2DConv2Dconv1d/Reshape:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
2
conv1d/Conv2D�
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
���������2
conv1d/concat/axis�
conv1d/concatConcatV2conv1d/strided_slice:output:0conv1d/concat/values_1:output:0conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv1d/concat�
conv1d/Reshape_1Reshapeconv1d/Conv2D:output:0conv1d/concat:output:0*
T0*3
_output_shapes!
:���������2
conv1d/Reshape_1�
conv1d/SqueezeSqueezeconv1d/Reshape_1:output:0*
T0*/
_output_shapes
:���������*
squeeze_dims

���������2
conv1d/Squeeze{
squeeze_batch_dims/ShapeShapeconv1d/Squeeze:output:0*
T0*
_output_shapes
:2
squeeze_batch_dims/Shape�
&squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&squeeze_batch_dims/strided_slice/stack�
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2*
(squeeze_batch_dims/strided_slice/stack_1�
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2�
 squeeze_batch_dims/strided_sliceStridedSlice!squeeze_batch_dims/Shape:output:0/squeeze_batch_dims/strided_slice/stack:output:01squeeze_batch_dims/strided_slice/stack_1:output:01squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 squeeze_batch_dims/strided_slice�
 squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2"
 squeeze_batch_dims/Reshape/shape�
squeeze_batch_dims/ReshapeReshapeconv1d/Squeeze:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:���������2
squeeze_batch_dims/Reshape�
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp2squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp�
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2
squeeze_batch_dims/BiasAdd�
"squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"squeeze_batch_dims/concat/values_1�
squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
squeeze_batch_dims/concat/axis�
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat�
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:���������2
squeeze_batch_dims/Reshape_1�
IdentityIdentity%squeeze_batch_dims/Reshape_1:output:0#^conv1d/ExpandDims_1/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_30714

inputs
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	 �
	unknown_3:	�
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:	 �
	unknown_8:	 �
	unknown_9:	�

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:
identity��StatefulPartitionedCall�
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
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_296332
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�'
�
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_32461

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
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
:��������� 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:��������� 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:��������� 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:��������� 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:��������� 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:��������� 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:��������� 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:��������� 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:��������� 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
mul_5�
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:���������:��������� :��������� : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_29633

inputs&
bpstkcuudk_29595:
bpstkcuudk_29597:#
osutmzfngz_29601:	�#
osutmzfngz_29603:	 �
osutmzfngz_29605:	�
osutmzfngz_29607: 
osutmzfngz_29609: 
osutmzfngz_29611: #
owshcilvwl_29614:	 �#
owshcilvwl_29616:	 �
owshcilvwl_29618:	�
owshcilvwl_29620: 
owshcilvwl_29622: 
owshcilvwl_29624: "
oaettnoaty_29627: 
oaettnoaty_29629:
identity��"bpstkcuudk/StatefulPartitionedCall�"oaettnoaty/StatefulPartitionedCall�"osutmzfngz/StatefulPartitionedCall�"owshcilvwl/StatefulPartitionedCall�
"bpstkcuudk/StatefulPartitionedCallStatefulPartitionedCallinputsbpstkcuudk_29595bpstkcuudk_29597*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_bpstkcuudk_layer_call_and_return_conditional_losses_286402$
"bpstkcuudk/StatefulPartitionedCall�
xlcvyoxoxq/PartitionedCallPartitionedCall+bpstkcuudk/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_xlcvyoxoxq_layer_call_and_return_conditional_losses_286592
xlcvyoxoxq/PartitionedCall�
"osutmzfngz/StatefulPartitionedCallStatefulPartitionedCall#xlcvyoxoxq/PartitionedCall:output:0osutmzfngz_29601osutmzfngz_29603osutmzfngz_29605osutmzfngz_29607osutmzfngz_29609osutmzfngz_29611*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_295222$
"osutmzfngz/StatefulPartitionedCall�
"owshcilvwl/StatefulPartitionedCallStatefulPartitionedCall+osutmzfngz/StatefulPartitionedCall:output:0owshcilvwl_29614owshcilvwl_29616owshcilvwl_29618owshcilvwl_29620owshcilvwl_29622owshcilvwl_29624*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_293082$
"owshcilvwl/StatefulPartitionedCall�
"oaettnoaty/StatefulPartitionedCallStatefulPartitionedCall+owshcilvwl/StatefulPartitionedCall:output:0oaettnoaty_29627oaettnoaty_29629*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_oaettnoaty_layer_call_and_return_conditional_losses_290572$
"oaettnoaty/StatefulPartitionedCall�
IdentityIdentity+oaettnoaty/StatefulPartitionedCall:output:0#^bpstkcuudk/StatefulPartitionedCall#^oaettnoaty/StatefulPartitionedCall#^osutmzfngz/StatefulPartitionedCall#^owshcilvwl/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 2H
"bpstkcuudk/StatefulPartitionedCall"bpstkcuudk/StatefulPartitionedCall2H
"oaettnoaty/StatefulPartitionedCall"oaettnoaty/StatefulPartitionedCall2H
"osutmzfngz/StatefulPartitionedCall"osutmzfngz/StatefulPartitionedCall2H
"owshcilvwl/StatefulPartitionedCall"owshcilvwl/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
while_cond_31644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_31644___redundant_placeholder03
/while_while_cond_31644___redundant_placeholder13
/while_while_cond_31644___redundant_placeholder23
/while_while_cond_31644___redundant_placeholder33
/while_while_cond_31644___redundant_placeholder43
/while_while_cond_31644___redundant_placeholder53
/while_while_cond_31644___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
*__inference_owshcilvwl_layer_call_fn_32354

inputs
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_293082
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
�
while_cond_31036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_31036___redundant_placeholder03
/while_while_cond_31036___redundant_placeholder13
/while_while_cond_31036___redundant_placeholder23
/while_while_cond_31036___redundant_placeholder33
/while_while_cond_31036___redundant_placeholder43
/while_while_cond_31036___redundant_placeholder53
/while_while_cond_31036___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�h
�
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_31138
inputs_0<
)dsycfvoega_matmul_readvariableop_resource:	�>
+dsycfvoega_matmul_1_readvariableop_resource:	 �9
*dsycfvoega_biasadd_readvariableop_resource:	�0
"dsycfvoega_readvariableop_resource: 2
$dsycfvoega_readvariableop_1_resource: 2
$dsycfvoega_readvariableop_2_resource: 
identity��!dsycfvoega/BiasAdd/ReadVariableOp� dsycfvoega/MatMul/ReadVariableOp�"dsycfvoega/MatMul_1/ReadVariableOp�dsycfvoega/ReadVariableOp�dsycfvoega/ReadVariableOp_1�dsycfvoega/ReadVariableOp_2�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
 dsycfvoega/MatMul/ReadVariableOpReadVariableOp)dsycfvoega_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02"
 dsycfvoega/MatMul/ReadVariableOp�
dsycfvoega/MatMulMatMulstrided_slice_2:output:0(dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul�
"dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp+dsycfvoega_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"dsycfvoega/MatMul_1/ReadVariableOp�
dsycfvoega/MatMul_1MatMulzeros:output:0*dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul_1�
dsycfvoega/addAddV2dsycfvoega/MatMul:product:0dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
dsycfvoega/add�
!dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp*dsycfvoega_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!dsycfvoega/BiasAdd/ReadVariableOp�
dsycfvoega/BiasAddBiasAdddsycfvoega/add:z:0)dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/BiasAddz
dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
dsycfvoega/split/split_dim�
dsycfvoega/splitSplit#dsycfvoega/split/split_dim:output:0dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
dsycfvoega/split�
dsycfvoega/ReadVariableOpReadVariableOp"dsycfvoega_readvariableop_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp�
dsycfvoega/mulMul!dsycfvoega/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul�
dsycfvoega/add_1AddV2dsycfvoega/split:output:0dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_1{
dsycfvoega/SigmoidSigmoiddsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid�
dsycfvoega/ReadVariableOp_1ReadVariableOp$dsycfvoega_readvariableop_1_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_1�
dsycfvoega/mul_1Mul#dsycfvoega/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_1�
dsycfvoega/add_2AddV2dsycfvoega/split:output:1dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_2
dsycfvoega/Sigmoid_1Sigmoiddsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_1�
dsycfvoega/mul_2Muldsycfvoega/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_2w
dsycfvoega/TanhTanhdsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh�
dsycfvoega/mul_3Muldsycfvoega/Sigmoid:y:0dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_3�
dsycfvoega/add_3AddV2dsycfvoega/mul_2:z:0dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_3�
dsycfvoega/ReadVariableOp_2ReadVariableOp$dsycfvoega_readvariableop_2_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_2�
dsycfvoega/mul_4Mul#dsycfvoega/ReadVariableOp_2:value:0dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_4�
dsycfvoega/add_4AddV2dsycfvoega/split:output:3dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_4
dsycfvoega/Sigmoid_2Sigmoiddsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_2v
dsycfvoega/Tanh_1Tanhdsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh_1�
dsycfvoega/mul_5Muldsycfvoega/Sigmoid_2:y:0dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)dsycfvoega_matmul_readvariableop_resource+dsycfvoega_matmul_1_readvariableop_resource*dsycfvoega_biasadd_readvariableop_resource"dsycfvoega_readvariableop_resource$dsycfvoega_readvariableop_1_resource$dsycfvoega_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_31037*
condR
while_cond_31036*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitytranspose_1:y:0"^dsycfvoega/BiasAdd/ReadVariableOp!^dsycfvoega/MatMul/ReadVariableOp#^dsycfvoega/MatMul_1/ReadVariableOp^dsycfvoega/ReadVariableOp^dsycfvoega/ReadVariableOp_1^dsycfvoega/ReadVariableOp_2^while*
T0*4
_output_shapes"
 :������������������ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������: : : : : : 2F
!dsycfvoega/BiasAdd/ReadVariableOp!dsycfvoega/BiasAdd/ReadVariableOp2D
 dsycfvoega/MatMul/ReadVariableOp dsycfvoega/MatMul/ReadVariableOp2H
"dsycfvoega/MatMul_1/ReadVariableOp"dsycfvoega/MatMul_1/ReadVariableOp26
dsycfvoega/ReadVariableOpdsycfvoega/ReadVariableOp2:
dsycfvoega/ReadVariableOp_1dsycfvoega/ReadVariableOp_12:
dsycfvoega/ReadVariableOp_2dsycfvoega/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�)
�
while_body_28208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_flzkvrshbq_28232_0:	 �+
while_flzkvrshbq_28234_0:	 �'
while_flzkvrshbq_28236_0:	�&
while_flzkvrshbq_28238_0: &
while_flzkvrshbq_28240_0: &
while_flzkvrshbq_28242_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_flzkvrshbq_28232:	 �)
while_flzkvrshbq_28234:	 �%
while_flzkvrshbq_28236:	�$
while_flzkvrshbq_28238: $
while_flzkvrshbq_28240: $
while_flzkvrshbq_28242: ��(while/flzkvrshbq/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/flzkvrshbq/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_flzkvrshbq_28232_0while_flzkvrshbq_28234_0while_flzkvrshbq_28236_0while_flzkvrshbq_28238_0while_flzkvrshbq_28240_0while_flzkvrshbq_28242_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_281122*
(while/flzkvrshbq/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/flzkvrshbq/StatefulPartitionedCall:output:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/flzkvrshbq/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/flzkvrshbq/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/flzkvrshbq/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/flzkvrshbq/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity1while/flzkvrshbq/StatefulPartitionedCall:output:1)^while/flzkvrshbq/StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identity1while/flzkvrshbq/StatefulPartitionedCall:output:2)^while/flzkvrshbq/StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2
while/Identity_5"2
while_flzkvrshbq_28232while_flzkvrshbq_28232_0"2
while_flzkvrshbq_28234while_flzkvrshbq_28234_0"2
while_flzkvrshbq_28236while_flzkvrshbq_28236_0"2
while_flzkvrshbq_28238while_flzkvrshbq_28238_0"2
while_flzkvrshbq_28240while_flzkvrshbq_28240_0"2
while_flzkvrshbq_28242while_flzkvrshbq_28242_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2T
(while/flzkvrshbq/StatefulPartitionedCall(while/flzkvrshbq/StatefulPartitionedCall: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
��
�
E__inference_sequential_layer_call_and_return_conditional_losses_30236

inputsL
6bpstkcuudk_conv1d_expanddims_1_readvariableop_resource:K
=bpstkcuudk_squeeze_batch_dims_biasadd_readvariableop_resource:G
4osutmzfngz_dsycfvoega_matmul_readvariableop_resource:	�I
6osutmzfngz_dsycfvoega_matmul_1_readvariableop_resource:	 �D
5osutmzfngz_dsycfvoega_biasadd_readvariableop_resource:	�;
-osutmzfngz_dsycfvoega_readvariableop_resource: =
/osutmzfngz_dsycfvoega_readvariableop_1_resource: =
/osutmzfngz_dsycfvoega_readvariableop_2_resource: G
4owshcilvwl_flzkvrshbq_matmul_readvariableop_resource:	 �I
6owshcilvwl_flzkvrshbq_matmul_1_readvariableop_resource:	 �D
5owshcilvwl_flzkvrshbq_biasadd_readvariableop_resource:	�;
-owshcilvwl_flzkvrshbq_readvariableop_resource: =
/owshcilvwl_flzkvrshbq_readvariableop_1_resource: =
/owshcilvwl_flzkvrshbq_readvariableop_2_resource: ;
)oaettnoaty_matmul_readvariableop_resource: 8
*oaettnoaty_biasadd_readvariableop_resource:
identity��-bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp�4bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp�!oaettnoaty/BiasAdd/ReadVariableOp� oaettnoaty/MatMul/ReadVariableOp�,osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp�+osutmzfngz/dsycfvoega/MatMul/ReadVariableOp�-osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp�$osutmzfngz/dsycfvoega/ReadVariableOp�&osutmzfngz/dsycfvoega/ReadVariableOp_1�&osutmzfngz/dsycfvoega/ReadVariableOp_2�osutmzfngz/while�,owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp�+owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp�-owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp�$owshcilvwl/flzkvrshbq/ReadVariableOp�&owshcilvwl/flzkvrshbq/ReadVariableOp_1�&owshcilvwl/flzkvrshbq/ReadVariableOp_2�owshcilvwl/while�
 bpstkcuudk/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 bpstkcuudk/conv1d/ExpandDims/dim�
bpstkcuudk/conv1d/ExpandDims
ExpandDimsinputs)bpstkcuudk/conv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2
bpstkcuudk/conv1d/ExpandDims�
-bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6bpstkcuudk_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp�
"bpstkcuudk/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"bpstkcuudk/conv1d/ExpandDims_1/dim�
bpstkcuudk/conv1d/ExpandDims_1
ExpandDims5bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp:value:0+bpstkcuudk/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
bpstkcuudk/conv1d/ExpandDims_1�
bpstkcuudk/conv1d/ShapeShape%bpstkcuudk/conv1d/ExpandDims:output:0*
T0*
_output_shapes
:2
bpstkcuudk/conv1d/Shape�
%bpstkcuudk/conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%bpstkcuudk/conv1d/strided_slice/stack�
'bpstkcuudk/conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2)
'bpstkcuudk/conv1d/strided_slice/stack_1�
'bpstkcuudk/conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'bpstkcuudk/conv1d/strided_slice/stack_2�
bpstkcuudk/conv1d/strided_sliceStridedSlice bpstkcuudk/conv1d/Shape:output:0.bpstkcuudk/conv1d/strided_slice/stack:output:00bpstkcuudk/conv1d/strided_slice/stack_1:output:00bpstkcuudk/conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
bpstkcuudk/conv1d/strided_slice�
bpstkcuudk/conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2!
bpstkcuudk/conv1d/Reshape/shape�
bpstkcuudk/conv1d/ReshapeReshape%bpstkcuudk/conv1d/ExpandDims:output:0(bpstkcuudk/conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
bpstkcuudk/conv1d/Reshape�
bpstkcuudk/conv1d/Conv2DConv2D"bpstkcuudk/conv1d/Reshape:output:0'bpstkcuudk/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
2
bpstkcuudk/conv1d/Conv2D�
!bpstkcuudk/conv1d/concat/values_1Const*
_output_shapes
:*
dtype0*!
valueB"         2#
!bpstkcuudk/conv1d/concat/values_1�
bpstkcuudk/conv1d/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
bpstkcuudk/conv1d/concat/axis�
bpstkcuudk/conv1d/concatConcatV2(bpstkcuudk/conv1d/strided_slice:output:0*bpstkcuudk/conv1d/concat/values_1:output:0&bpstkcuudk/conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
bpstkcuudk/conv1d/concat�
bpstkcuudk/conv1d/Reshape_1Reshape!bpstkcuudk/conv1d/Conv2D:output:0!bpstkcuudk/conv1d/concat:output:0*
T0*3
_output_shapes!
:���������2
bpstkcuudk/conv1d/Reshape_1�
bpstkcuudk/conv1d/SqueezeSqueeze$bpstkcuudk/conv1d/Reshape_1:output:0*
T0*/
_output_shapes
:���������*
squeeze_dims

���������2
bpstkcuudk/conv1d/Squeeze�
#bpstkcuudk/squeeze_batch_dims/ShapeShape"bpstkcuudk/conv1d/Squeeze:output:0*
T0*
_output_shapes
:2%
#bpstkcuudk/squeeze_batch_dims/Shape�
1bpstkcuudk/squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1bpstkcuudk/squeeze_batch_dims/strided_slice/stack�
3bpstkcuudk/squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������25
3bpstkcuudk/squeeze_batch_dims/strided_slice/stack_1�
3bpstkcuudk/squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3bpstkcuudk/squeeze_batch_dims/strided_slice/stack_2�
+bpstkcuudk/squeeze_batch_dims/strided_sliceStridedSlice,bpstkcuudk/squeeze_batch_dims/Shape:output:0:bpstkcuudk/squeeze_batch_dims/strided_slice/stack:output:0<bpstkcuudk/squeeze_batch_dims/strided_slice/stack_1:output:0<bpstkcuudk/squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2-
+bpstkcuudk/squeeze_batch_dims/strided_slice�
+bpstkcuudk/squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2-
+bpstkcuudk/squeeze_batch_dims/Reshape/shape�
%bpstkcuudk/squeeze_batch_dims/ReshapeReshape"bpstkcuudk/conv1d/Squeeze:output:04bpstkcuudk/squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:���������2'
%bpstkcuudk/squeeze_batch_dims/Reshape�
4bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp=bpstkcuudk_squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp�
%bpstkcuudk/squeeze_batch_dims/BiasAddBiasAdd.bpstkcuudk/squeeze_batch_dims/Reshape:output:0<bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2'
%bpstkcuudk/squeeze_batch_dims/BiasAdd�
-bpstkcuudk/squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-bpstkcuudk/squeeze_batch_dims/concat/values_1�
)bpstkcuudk/squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2+
)bpstkcuudk/squeeze_batch_dims/concat/axis�
$bpstkcuudk/squeeze_batch_dims/concatConcatV24bpstkcuudk/squeeze_batch_dims/strided_slice:output:06bpstkcuudk/squeeze_batch_dims/concat/values_1:output:02bpstkcuudk/squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2&
$bpstkcuudk/squeeze_batch_dims/concat�
'bpstkcuudk/squeeze_batch_dims/Reshape_1Reshape.bpstkcuudk/squeeze_batch_dims/BiasAdd:output:0-bpstkcuudk/squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:���������2)
'bpstkcuudk/squeeze_batch_dims/Reshape_1�
xlcvyoxoxq/ShapeShape0bpstkcuudk/squeeze_batch_dims/Reshape_1:output:0*
T0*
_output_shapes
:2
xlcvyoxoxq/Shape�
xlcvyoxoxq/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
xlcvyoxoxq/strided_slice/stack�
 xlcvyoxoxq/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 xlcvyoxoxq/strided_slice/stack_1�
 xlcvyoxoxq/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 xlcvyoxoxq/strided_slice/stack_2�
xlcvyoxoxq/strided_sliceStridedSlicexlcvyoxoxq/Shape:output:0'xlcvyoxoxq/strided_slice/stack:output:0)xlcvyoxoxq/strided_slice/stack_1:output:0)xlcvyoxoxq/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
xlcvyoxoxq/strided_slicez
xlcvyoxoxq/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
xlcvyoxoxq/Reshape/shape/1z
xlcvyoxoxq/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
xlcvyoxoxq/Reshape/shape/2�
xlcvyoxoxq/Reshape/shapePack!xlcvyoxoxq/strided_slice:output:0#xlcvyoxoxq/Reshape/shape/1:output:0#xlcvyoxoxq/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
xlcvyoxoxq/Reshape/shape�
xlcvyoxoxq/ReshapeReshape0bpstkcuudk/squeeze_batch_dims/Reshape_1:output:0!xlcvyoxoxq/Reshape/shape:output:0*
T0*+
_output_shapes
:���������2
xlcvyoxoxq/Reshapeo
osutmzfngz/ShapeShapexlcvyoxoxq/Reshape:output:0*
T0*
_output_shapes
:2
osutmzfngz/Shape�
osutmzfngz/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
osutmzfngz/strided_slice/stack�
 osutmzfngz/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 osutmzfngz/strided_slice/stack_1�
 osutmzfngz/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 osutmzfngz/strided_slice/stack_2�
osutmzfngz/strided_sliceStridedSliceosutmzfngz/Shape:output:0'osutmzfngz/strided_slice/stack:output:0)osutmzfngz/strided_slice/stack_1:output:0)osutmzfngz/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
osutmzfngz/strided_slicer
osutmzfngz/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/zeros/mul/y�
osutmzfngz/zeros/mulMul!osutmzfngz/strided_slice:output:0osutmzfngz/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/zeros/mulu
osutmzfngz/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
osutmzfngz/zeros/Less/y�
osutmzfngz/zeros/LessLessosutmzfngz/zeros/mul:z:0 osutmzfngz/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/zeros/Lessx
osutmzfngz/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/zeros/packed/1�
osutmzfngz/zeros/packedPack!osutmzfngz/strided_slice:output:0"osutmzfngz/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
osutmzfngz/zeros/packedu
osutmzfngz/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
osutmzfngz/zeros/Const�
osutmzfngz/zerosFill osutmzfngz/zeros/packed:output:0osutmzfngz/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/zerosv
osutmzfngz/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/zeros_1/mul/y�
osutmzfngz/zeros_1/mulMul!osutmzfngz/strided_slice:output:0!osutmzfngz/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/zeros_1/muly
osutmzfngz/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
osutmzfngz/zeros_1/Less/y�
osutmzfngz/zeros_1/LessLessosutmzfngz/zeros_1/mul:z:0"osutmzfngz/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/zeros_1/Less|
osutmzfngz/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/zeros_1/packed/1�
osutmzfngz/zeros_1/packedPack!osutmzfngz/strided_slice:output:0$osutmzfngz/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
osutmzfngz/zeros_1/packedy
osutmzfngz/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
osutmzfngz/zeros_1/Const�
osutmzfngz/zeros_1Fill"osutmzfngz/zeros_1/packed:output:0!osutmzfngz/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/zeros_1�
osutmzfngz/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
osutmzfngz/transpose/perm�
osutmzfngz/transpose	Transposexlcvyoxoxq/Reshape:output:0"osutmzfngz/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
osutmzfngz/transposep
osutmzfngz/Shape_1Shapeosutmzfngz/transpose:y:0*
T0*
_output_shapes
:2
osutmzfngz/Shape_1�
 osutmzfngz/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 osutmzfngz/strided_slice_1/stack�
"osutmzfngz/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"osutmzfngz/strided_slice_1/stack_1�
"osutmzfngz/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"osutmzfngz/strided_slice_1/stack_2�
osutmzfngz/strided_slice_1StridedSliceosutmzfngz/Shape_1:output:0)osutmzfngz/strided_slice_1/stack:output:0+osutmzfngz/strided_slice_1/stack_1:output:0+osutmzfngz/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
osutmzfngz/strided_slice_1�
&osutmzfngz/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&osutmzfngz/TensorArrayV2/element_shape�
osutmzfngz/TensorArrayV2TensorListReserve/osutmzfngz/TensorArrayV2/element_shape:output:0#osutmzfngz/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
osutmzfngz/TensorArrayV2�
@osutmzfngz/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2B
@osutmzfngz/TensorArrayUnstack/TensorListFromTensor/element_shape�
2osutmzfngz/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorosutmzfngz/transpose:y:0Iosutmzfngz/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2osutmzfngz/TensorArrayUnstack/TensorListFromTensor�
 osutmzfngz/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 osutmzfngz/strided_slice_2/stack�
"osutmzfngz/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"osutmzfngz/strided_slice_2/stack_1�
"osutmzfngz/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"osutmzfngz/strided_slice_2/stack_2�
osutmzfngz/strided_slice_2StridedSliceosutmzfngz/transpose:y:0)osutmzfngz/strided_slice_2/stack:output:0+osutmzfngz/strided_slice_2/stack_1:output:0+osutmzfngz/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
osutmzfngz/strided_slice_2�
+osutmzfngz/dsycfvoega/MatMul/ReadVariableOpReadVariableOp4osutmzfngz_dsycfvoega_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02-
+osutmzfngz/dsycfvoega/MatMul/ReadVariableOp�
osutmzfngz/dsycfvoega/MatMulMatMul#osutmzfngz/strided_slice_2:output:03osutmzfngz/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
osutmzfngz/dsycfvoega/MatMul�
-osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp6osutmzfngz_dsycfvoega_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02/
-osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp�
osutmzfngz/dsycfvoega/MatMul_1MatMulosutmzfngz/zeros:output:05osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
osutmzfngz/dsycfvoega/MatMul_1�
osutmzfngz/dsycfvoega/addAddV2&osutmzfngz/dsycfvoega/MatMul:product:0(osutmzfngz/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
osutmzfngz/dsycfvoega/add�
,osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp5osutmzfngz_dsycfvoega_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp�
osutmzfngz/dsycfvoega/BiasAddBiasAddosutmzfngz/dsycfvoega/add:z:04osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
osutmzfngz/dsycfvoega/BiasAdd�
%osutmzfngz/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%osutmzfngz/dsycfvoega/split/split_dim�
osutmzfngz/dsycfvoega/splitSplit.osutmzfngz/dsycfvoega/split/split_dim:output:0&osutmzfngz/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
osutmzfngz/dsycfvoega/split�
$osutmzfngz/dsycfvoega/ReadVariableOpReadVariableOp-osutmzfngz_dsycfvoega_readvariableop_resource*
_output_shapes
: *
dtype02&
$osutmzfngz/dsycfvoega/ReadVariableOp�
osutmzfngz/dsycfvoega/mulMul,osutmzfngz/dsycfvoega/ReadVariableOp:value:0osutmzfngz/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul�
osutmzfngz/dsycfvoega/add_1AddV2$osutmzfngz/dsycfvoega/split:output:0osutmzfngz/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/add_1�
osutmzfngz/dsycfvoega/SigmoidSigmoidosutmzfngz/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/Sigmoid�
&osutmzfngz/dsycfvoega/ReadVariableOp_1ReadVariableOp/osutmzfngz_dsycfvoega_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&osutmzfngz/dsycfvoega/ReadVariableOp_1�
osutmzfngz/dsycfvoega/mul_1Mul.osutmzfngz/dsycfvoega/ReadVariableOp_1:value:0osutmzfngz/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul_1�
osutmzfngz/dsycfvoega/add_2AddV2$osutmzfngz/dsycfvoega/split:output:1osutmzfngz/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/add_2�
osutmzfngz/dsycfvoega/Sigmoid_1Sigmoidosutmzfngz/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2!
osutmzfngz/dsycfvoega/Sigmoid_1�
osutmzfngz/dsycfvoega/mul_2Mul#osutmzfngz/dsycfvoega/Sigmoid_1:y:0osutmzfngz/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul_2�
osutmzfngz/dsycfvoega/TanhTanh$osutmzfngz/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/Tanh�
osutmzfngz/dsycfvoega/mul_3Mul!osutmzfngz/dsycfvoega/Sigmoid:y:0osutmzfngz/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul_3�
osutmzfngz/dsycfvoega/add_3AddV2osutmzfngz/dsycfvoega/mul_2:z:0osutmzfngz/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/add_3�
&osutmzfngz/dsycfvoega/ReadVariableOp_2ReadVariableOp/osutmzfngz_dsycfvoega_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&osutmzfngz/dsycfvoega/ReadVariableOp_2�
osutmzfngz/dsycfvoega/mul_4Mul.osutmzfngz/dsycfvoega/ReadVariableOp_2:value:0osutmzfngz/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul_4�
osutmzfngz/dsycfvoega/add_4AddV2$osutmzfngz/dsycfvoega/split:output:3osutmzfngz/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/add_4�
osutmzfngz/dsycfvoega/Sigmoid_2Sigmoidosutmzfngz/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2!
osutmzfngz/dsycfvoega/Sigmoid_2�
osutmzfngz/dsycfvoega/Tanh_1Tanhosutmzfngz/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/Tanh_1�
osutmzfngz/dsycfvoega/mul_5Mul#osutmzfngz/dsycfvoega/Sigmoid_2:y:0 osutmzfngz/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
osutmzfngz/dsycfvoega/mul_5�
(osutmzfngz/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2*
(osutmzfngz/TensorArrayV2_1/element_shape�
osutmzfngz/TensorArrayV2_1TensorListReserve1osutmzfngz/TensorArrayV2_1/element_shape:output:0#osutmzfngz/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
osutmzfngz/TensorArrayV2_1d
osutmzfngz/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/time�
#osutmzfngz/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#osutmzfngz/while/maximum_iterations�
osutmzfngz/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
osutmzfngz/while/loop_counter�
osutmzfngz/whileWhile&osutmzfngz/while/loop_counter:output:0,osutmzfngz/while/maximum_iterations:output:0osutmzfngz/time:output:0#osutmzfngz/TensorArrayV2_1:handle:0osutmzfngz/zeros:output:0osutmzfngz/zeros_1:output:0#osutmzfngz/strided_slice_1:output:0Bosutmzfngz/TensorArrayUnstack/TensorListFromTensor:output_handle:04osutmzfngz_dsycfvoega_matmul_readvariableop_resource6osutmzfngz_dsycfvoega_matmul_1_readvariableop_resource5osutmzfngz_dsycfvoega_biasadd_readvariableop_resource-osutmzfngz_dsycfvoega_readvariableop_resource/osutmzfngz_dsycfvoega_readvariableop_1_resource/osutmzfngz_dsycfvoega_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*'
bodyR
osutmzfngz_while_body_29953*'
condR
osutmzfngz_while_cond_29952*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
osutmzfngz/while�
;osutmzfngz/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2=
;osutmzfngz/TensorArrayV2Stack/TensorListStack/element_shape�
-osutmzfngz/TensorArrayV2Stack/TensorListStackTensorListStackosutmzfngz/while:output:3Dosutmzfngz/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02/
-osutmzfngz/TensorArrayV2Stack/TensorListStack�
 osutmzfngz/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2"
 osutmzfngz/strided_slice_3/stack�
"osutmzfngz/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"osutmzfngz/strided_slice_3/stack_1�
"osutmzfngz/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"osutmzfngz/strided_slice_3/stack_2�
osutmzfngz/strided_slice_3StridedSlice6osutmzfngz/TensorArrayV2Stack/TensorListStack:tensor:0)osutmzfngz/strided_slice_3/stack:output:0+osutmzfngz/strided_slice_3/stack_1:output:0+osutmzfngz/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
osutmzfngz/strided_slice_3�
osutmzfngz/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
osutmzfngz/transpose_1/perm�
osutmzfngz/transpose_1	Transpose6osutmzfngz/TensorArrayV2Stack/TensorListStack:tensor:0$osutmzfngz/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
osutmzfngz/transpose_1n
owshcilvwl/ShapeShapeosutmzfngz/transpose_1:y:0*
T0*
_output_shapes
:2
owshcilvwl/Shape�
owshcilvwl/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
owshcilvwl/strided_slice/stack�
 owshcilvwl/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 owshcilvwl/strided_slice/stack_1�
 owshcilvwl/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 owshcilvwl/strided_slice/stack_2�
owshcilvwl/strided_sliceStridedSliceowshcilvwl/Shape:output:0'owshcilvwl/strided_slice/stack:output:0)owshcilvwl/strided_slice/stack_1:output:0)owshcilvwl/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
owshcilvwl/strided_slicer
owshcilvwl/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/zeros/mul/y�
owshcilvwl/zeros/mulMul!owshcilvwl/strided_slice:output:0owshcilvwl/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/zeros/mulu
owshcilvwl/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
owshcilvwl/zeros/Less/y�
owshcilvwl/zeros/LessLessowshcilvwl/zeros/mul:z:0 owshcilvwl/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/zeros/Lessx
owshcilvwl/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/zeros/packed/1�
owshcilvwl/zeros/packedPack!owshcilvwl/strided_slice:output:0"owshcilvwl/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
owshcilvwl/zeros/packedu
owshcilvwl/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
owshcilvwl/zeros/Const�
owshcilvwl/zerosFill owshcilvwl/zeros/packed:output:0owshcilvwl/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/zerosv
owshcilvwl/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/zeros_1/mul/y�
owshcilvwl/zeros_1/mulMul!owshcilvwl/strided_slice:output:0!owshcilvwl/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/zeros_1/muly
owshcilvwl/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
owshcilvwl/zeros_1/Less/y�
owshcilvwl/zeros_1/LessLessowshcilvwl/zeros_1/mul:z:0"owshcilvwl/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/zeros_1/Less|
owshcilvwl/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/zeros_1/packed/1�
owshcilvwl/zeros_1/packedPack!owshcilvwl/strided_slice:output:0$owshcilvwl/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
owshcilvwl/zeros_1/packedy
owshcilvwl/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
owshcilvwl/zeros_1/Const�
owshcilvwl/zeros_1Fill"owshcilvwl/zeros_1/packed:output:0!owshcilvwl/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/zeros_1�
owshcilvwl/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
owshcilvwl/transpose/perm�
owshcilvwl/transpose	Transposeosutmzfngz/transpose_1:y:0"owshcilvwl/transpose/perm:output:0*
T0*+
_output_shapes
:��������� 2
owshcilvwl/transposep
owshcilvwl/Shape_1Shapeowshcilvwl/transpose:y:0*
T0*
_output_shapes
:2
owshcilvwl/Shape_1�
 owshcilvwl/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 owshcilvwl/strided_slice_1/stack�
"owshcilvwl/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"owshcilvwl/strided_slice_1/stack_1�
"owshcilvwl/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"owshcilvwl/strided_slice_1/stack_2�
owshcilvwl/strided_slice_1StridedSliceowshcilvwl/Shape_1:output:0)owshcilvwl/strided_slice_1/stack:output:0+owshcilvwl/strided_slice_1/stack_1:output:0+owshcilvwl/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
owshcilvwl/strided_slice_1�
&owshcilvwl/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&owshcilvwl/TensorArrayV2/element_shape�
owshcilvwl/TensorArrayV2TensorListReserve/owshcilvwl/TensorArrayV2/element_shape:output:0#owshcilvwl/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
owshcilvwl/TensorArrayV2�
@owshcilvwl/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2B
@owshcilvwl/TensorArrayUnstack/TensorListFromTensor/element_shape�
2owshcilvwl/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorowshcilvwl/transpose:y:0Iowshcilvwl/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2owshcilvwl/TensorArrayUnstack/TensorListFromTensor�
 owshcilvwl/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 owshcilvwl/strided_slice_2/stack�
"owshcilvwl/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"owshcilvwl/strided_slice_2/stack_1�
"owshcilvwl/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"owshcilvwl/strided_slice_2/stack_2�
owshcilvwl/strided_slice_2StridedSliceowshcilvwl/transpose:y:0)owshcilvwl/strided_slice_2/stack:output:0+owshcilvwl/strided_slice_2/stack_1:output:0+owshcilvwl/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
owshcilvwl/strided_slice_2�
+owshcilvwl/flzkvrshbq/MatMul/ReadVariableOpReadVariableOp4owshcilvwl_flzkvrshbq_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02-
+owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp�
owshcilvwl/flzkvrshbq/MatMulMatMul#owshcilvwl/strided_slice_2:output:03owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
owshcilvwl/flzkvrshbq/MatMul�
-owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp6owshcilvwl_flzkvrshbq_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02/
-owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp�
owshcilvwl/flzkvrshbq/MatMul_1MatMulowshcilvwl/zeros:output:05owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
owshcilvwl/flzkvrshbq/MatMul_1�
owshcilvwl/flzkvrshbq/addAddV2&owshcilvwl/flzkvrshbq/MatMul:product:0(owshcilvwl/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
owshcilvwl/flzkvrshbq/add�
,owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp5owshcilvwl_flzkvrshbq_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp�
owshcilvwl/flzkvrshbq/BiasAddBiasAddowshcilvwl/flzkvrshbq/add:z:04owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
owshcilvwl/flzkvrshbq/BiasAdd�
%owshcilvwl/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%owshcilvwl/flzkvrshbq/split/split_dim�
owshcilvwl/flzkvrshbq/splitSplit.owshcilvwl/flzkvrshbq/split/split_dim:output:0&owshcilvwl/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
owshcilvwl/flzkvrshbq/split�
$owshcilvwl/flzkvrshbq/ReadVariableOpReadVariableOp-owshcilvwl_flzkvrshbq_readvariableop_resource*
_output_shapes
: *
dtype02&
$owshcilvwl/flzkvrshbq/ReadVariableOp�
owshcilvwl/flzkvrshbq/mulMul,owshcilvwl/flzkvrshbq/ReadVariableOp:value:0owshcilvwl/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul�
owshcilvwl/flzkvrshbq/add_1AddV2$owshcilvwl/flzkvrshbq/split:output:0owshcilvwl/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/add_1�
owshcilvwl/flzkvrshbq/SigmoidSigmoidowshcilvwl/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/Sigmoid�
&owshcilvwl/flzkvrshbq/ReadVariableOp_1ReadVariableOp/owshcilvwl_flzkvrshbq_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&owshcilvwl/flzkvrshbq/ReadVariableOp_1�
owshcilvwl/flzkvrshbq/mul_1Mul.owshcilvwl/flzkvrshbq/ReadVariableOp_1:value:0owshcilvwl/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul_1�
owshcilvwl/flzkvrshbq/add_2AddV2$owshcilvwl/flzkvrshbq/split:output:1owshcilvwl/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/add_2�
owshcilvwl/flzkvrshbq/Sigmoid_1Sigmoidowshcilvwl/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2!
owshcilvwl/flzkvrshbq/Sigmoid_1�
owshcilvwl/flzkvrshbq/mul_2Mul#owshcilvwl/flzkvrshbq/Sigmoid_1:y:0owshcilvwl/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul_2�
owshcilvwl/flzkvrshbq/TanhTanh$owshcilvwl/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/Tanh�
owshcilvwl/flzkvrshbq/mul_3Mul!owshcilvwl/flzkvrshbq/Sigmoid:y:0owshcilvwl/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul_3�
owshcilvwl/flzkvrshbq/add_3AddV2owshcilvwl/flzkvrshbq/mul_2:z:0owshcilvwl/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/add_3�
&owshcilvwl/flzkvrshbq/ReadVariableOp_2ReadVariableOp/owshcilvwl_flzkvrshbq_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&owshcilvwl/flzkvrshbq/ReadVariableOp_2�
owshcilvwl/flzkvrshbq/mul_4Mul.owshcilvwl/flzkvrshbq/ReadVariableOp_2:value:0owshcilvwl/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul_4�
owshcilvwl/flzkvrshbq/add_4AddV2$owshcilvwl/flzkvrshbq/split:output:3owshcilvwl/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/add_4�
owshcilvwl/flzkvrshbq/Sigmoid_2Sigmoidowshcilvwl/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2!
owshcilvwl/flzkvrshbq/Sigmoid_2�
owshcilvwl/flzkvrshbq/Tanh_1Tanhowshcilvwl/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/Tanh_1�
owshcilvwl/flzkvrshbq/mul_5Mul#owshcilvwl/flzkvrshbq/Sigmoid_2:y:0 owshcilvwl/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
owshcilvwl/flzkvrshbq/mul_5�
(owshcilvwl/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2*
(owshcilvwl/TensorArrayV2_1/element_shape�
owshcilvwl/TensorArrayV2_1TensorListReserve1owshcilvwl/TensorArrayV2_1/element_shape:output:0#owshcilvwl/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
owshcilvwl/TensorArrayV2_1d
owshcilvwl/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/time�
#owshcilvwl/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#owshcilvwl/while/maximum_iterations�
owshcilvwl/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
owshcilvwl/while/loop_counter�
owshcilvwl/whileWhile&owshcilvwl/while/loop_counter:output:0,owshcilvwl/while/maximum_iterations:output:0owshcilvwl/time:output:0#owshcilvwl/TensorArrayV2_1:handle:0owshcilvwl/zeros:output:0owshcilvwl/zeros_1:output:0#owshcilvwl/strided_slice_1:output:0Bowshcilvwl/TensorArrayUnstack/TensorListFromTensor:output_handle:04owshcilvwl_flzkvrshbq_matmul_readvariableop_resource6owshcilvwl_flzkvrshbq_matmul_1_readvariableop_resource5owshcilvwl_flzkvrshbq_biasadd_readvariableop_resource-owshcilvwl_flzkvrshbq_readvariableop_resource/owshcilvwl_flzkvrshbq_readvariableop_1_resource/owshcilvwl_flzkvrshbq_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*'
bodyR
owshcilvwl_while_body_30129*'
condR
owshcilvwl_while_cond_30128*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
owshcilvwl/while�
;owshcilvwl/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2=
;owshcilvwl/TensorArrayV2Stack/TensorListStack/element_shape�
-owshcilvwl/TensorArrayV2Stack/TensorListStackTensorListStackowshcilvwl/while:output:3Dowshcilvwl/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02/
-owshcilvwl/TensorArrayV2Stack/TensorListStack�
 owshcilvwl/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2"
 owshcilvwl/strided_slice_3/stack�
"owshcilvwl/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"owshcilvwl/strided_slice_3/stack_1�
"owshcilvwl/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"owshcilvwl/strided_slice_3/stack_2�
owshcilvwl/strided_slice_3StridedSlice6owshcilvwl/TensorArrayV2Stack/TensorListStack:tensor:0)owshcilvwl/strided_slice_3/stack:output:0+owshcilvwl/strided_slice_3/stack_1:output:0+owshcilvwl/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
owshcilvwl/strided_slice_3�
owshcilvwl/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
owshcilvwl/transpose_1/perm�
owshcilvwl/transpose_1	Transpose6owshcilvwl/TensorArrayV2Stack/TensorListStack:tensor:0$owshcilvwl/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
owshcilvwl/transpose_1�
 oaettnoaty/MatMul/ReadVariableOpReadVariableOp)oaettnoaty_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 oaettnoaty/MatMul/ReadVariableOp�
oaettnoaty/MatMulMatMul#owshcilvwl/strided_slice_3:output:0(oaettnoaty/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
oaettnoaty/MatMul�
!oaettnoaty/BiasAdd/ReadVariableOpReadVariableOp*oaettnoaty_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!oaettnoaty/BiasAdd/ReadVariableOp�
oaettnoaty/BiasAddBiasAddoaettnoaty/MatMul:product:0)oaettnoaty/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
oaettnoaty/BiasAdd�
IdentityIdentityoaettnoaty/BiasAdd:output:0.^bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp5^bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp"^oaettnoaty/BiasAdd/ReadVariableOp!^oaettnoaty/MatMul/ReadVariableOp-^osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp,^osutmzfngz/dsycfvoega/MatMul/ReadVariableOp.^osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp%^osutmzfngz/dsycfvoega/ReadVariableOp'^osutmzfngz/dsycfvoega/ReadVariableOp_1'^osutmzfngz/dsycfvoega/ReadVariableOp_2^osutmzfngz/while-^owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp,^owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp.^owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp%^owshcilvwl/flzkvrshbq/ReadVariableOp'^owshcilvwl/flzkvrshbq/ReadVariableOp_1'^owshcilvwl/flzkvrshbq/ReadVariableOp_2^owshcilvwl/while*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 2^
-bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp-bpstkcuudk/conv1d/ExpandDims_1/ReadVariableOp2l
4bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp4bpstkcuudk/squeeze_batch_dims/BiasAdd/ReadVariableOp2F
!oaettnoaty/BiasAdd/ReadVariableOp!oaettnoaty/BiasAdd/ReadVariableOp2D
 oaettnoaty/MatMul/ReadVariableOp oaettnoaty/MatMul/ReadVariableOp2\
,osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp,osutmzfngz/dsycfvoega/BiasAdd/ReadVariableOp2Z
+osutmzfngz/dsycfvoega/MatMul/ReadVariableOp+osutmzfngz/dsycfvoega/MatMul/ReadVariableOp2^
-osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp-osutmzfngz/dsycfvoega/MatMul_1/ReadVariableOp2L
$osutmzfngz/dsycfvoega/ReadVariableOp$osutmzfngz/dsycfvoega/ReadVariableOp2P
&osutmzfngz/dsycfvoega/ReadVariableOp_1&osutmzfngz/dsycfvoega/ReadVariableOp_12P
&osutmzfngz/dsycfvoega/ReadVariableOp_2&osutmzfngz/dsycfvoega/ReadVariableOp_22$
osutmzfngz/whileosutmzfngz/while2\
,owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp,owshcilvwl/flzkvrshbq/BiasAdd/ReadVariableOp2Z
+owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp+owshcilvwl/flzkvrshbq/MatMul/ReadVariableOp2^
-owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp-owshcilvwl/flzkvrshbq/MatMul_1/ReadVariableOp2L
$owshcilvwl/flzkvrshbq/ReadVariableOp$owshcilvwl/flzkvrshbq/ReadVariableOp2P
&owshcilvwl/flzkvrshbq/ReadVariableOp_1&owshcilvwl/flzkvrshbq/ReadVariableOp_12P
&owshcilvwl/flzkvrshbq/ReadVariableOp_2&owshcilvwl/flzkvrshbq/ReadVariableOp_22$
owshcilvwl/whileowshcilvwl/while:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�Y
�
while_body_29207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_flzkvrshbq_matmul_readvariableop_resource_0:	 �F
3while_flzkvrshbq_matmul_1_readvariableop_resource_0:	 �A
2while_flzkvrshbq_biasadd_readvariableop_resource_0:	�8
*while_flzkvrshbq_readvariableop_resource_0: :
,while_flzkvrshbq_readvariableop_1_resource_0: :
,while_flzkvrshbq_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_flzkvrshbq_matmul_readvariableop_resource:	 �D
1while_flzkvrshbq_matmul_1_readvariableop_resource:	 �?
0while_flzkvrshbq_biasadd_readvariableop_resource:	�6
(while_flzkvrshbq_readvariableop_resource: 8
*while_flzkvrshbq_readvariableop_1_resource: 8
*while_flzkvrshbq_readvariableop_2_resource: ��'while/flzkvrshbq/BiasAdd/ReadVariableOp�&while/flzkvrshbq/MatMul/ReadVariableOp�(while/flzkvrshbq/MatMul_1/ReadVariableOp�while/flzkvrshbq/ReadVariableOp�!while/flzkvrshbq/ReadVariableOp_1�!while/flzkvrshbq/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/flzkvrshbq/MatMul/ReadVariableOpReadVariableOp1while_flzkvrshbq_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02(
&while/flzkvrshbq/MatMul/ReadVariableOp�
while/flzkvrshbq/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul�
(while/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp3while_flzkvrshbq_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/flzkvrshbq/MatMul_1/ReadVariableOp�
while/flzkvrshbq/MatMul_1MatMulwhile_placeholder_20while/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul_1�
while/flzkvrshbq/addAddV2!while/flzkvrshbq/MatMul:product:0#while/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/add�
'while/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp2while_flzkvrshbq_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/flzkvrshbq/BiasAdd/ReadVariableOp�
while/flzkvrshbq/BiasAddBiasAddwhile/flzkvrshbq/add:z:0/while/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/BiasAdd�
 while/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/flzkvrshbq/split/split_dim�
while/flzkvrshbq/splitSplit)while/flzkvrshbq/split/split_dim:output:0!while/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/flzkvrshbq/split�
while/flzkvrshbq/ReadVariableOpReadVariableOp*while_flzkvrshbq_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/flzkvrshbq/ReadVariableOp�
while/flzkvrshbq/mulMul'while/flzkvrshbq/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul�
while/flzkvrshbq/add_1AddV2while/flzkvrshbq/split:output:0while/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_1�
while/flzkvrshbq/SigmoidSigmoidwhile/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid�
!while/flzkvrshbq/ReadVariableOp_1ReadVariableOp,while_flzkvrshbq_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_1�
while/flzkvrshbq/mul_1Mul)while/flzkvrshbq/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_1�
while/flzkvrshbq/add_2AddV2while/flzkvrshbq/split:output:1while/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_2�
while/flzkvrshbq/Sigmoid_1Sigmoidwhile/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_1�
while/flzkvrshbq/mul_2Mulwhile/flzkvrshbq/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_2�
while/flzkvrshbq/TanhTanhwhile/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh�
while/flzkvrshbq/mul_3Mulwhile/flzkvrshbq/Sigmoid:y:0while/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_3�
while/flzkvrshbq/add_3AddV2while/flzkvrshbq/mul_2:z:0while/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_3�
!while/flzkvrshbq/ReadVariableOp_2ReadVariableOp,while_flzkvrshbq_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_2�
while/flzkvrshbq/mul_4Mul)while/flzkvrshbq/ReadVariableOp_2:value:0while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_4�
while/flzkvrshbq/add_4AddV2while/flzkvrshbq/split:output:3while/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_4�
while/flzkvrshbq/Sigmoid_2Sigmoidwhile/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_2�
while/flzkvrshbq/Tanh_1Tanhwhile/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh_1�
while/flzkvrshbq/mul_5Mulwhile/flzkvrshbq/Sigmoid_2:y:0while/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/flzkvrshbq/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/flzkvrshbq/mul_5:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/flzkvrshbq/add_3:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_flzkvrshbq_biasadd_readvariableop_resource2while_flzkvrshbq_biasadd_readvariableop_resource_0"h
1while_flzkvrshbq_matmul_1_readvariableop_resource3while_flzkvrshbq_matmul_1_readvariableop_resource_0"d
/while_flzkvrshbq_matmul_readvariableop_resource1while_flzkvrshbq_matmul_readvariableop_resource_0"Z
*while_flzkvrshbq_readvariableop_1_resource,while_flzkvrshbq_readvariableop_1_resource_0"Z
*while_flzkvrshbq_readvariableop_2_resource,while_flzkvrshbq_readvariableop_2_resource_0"V
(while_flzkvrshbq_readvariableop_resource*while_flzkvrshbq_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/flzkvrshbq/BiasAdd/ReadVariableOp'while/flzkvrshbq/BiasAdd/ReadVariableOp2P
&while/flzkvrshbq/MatMul/ReadVariableOp&while/flzkvrshbq/MatMul/ReadVariableOp2T
(while/flzkvrshbq/MatMul_1/ReadVariableOp(while/flzkvrshbq/MatMul_1/ReadVariableOp2B
while/flzkvrshbq/ReadVariableOpwhile/flzkvrshbq/ReadVariableOp2F
!while/flzkvrshbq/ReadVariableOp_1!while/flzkvrshbq/ReadVariableOp_12F
!while/flzkvrshbq/ReadVariableOp_2!while/flzkvrshbq/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
#__inference_signature_wrapper_29832

jfowsgvbzw
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	 �
	unknown_3:	�
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:	 �
	unknown_8:	 �
	unknown_9:	�

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
jfowsgvbzwunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_270802
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:���������
$
_user_specified_name
jfowsgvbzw
�Y
�
while_body_31825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_flzkvrshbq_matmul_readvariableop_resource_0:	 �F
3while_flzkvrshbq_matmul_1_readvariableop_resource_0:	 �A
2while_flzkvrshbq_biasadd_readvariableop_resource_0:	�8
*while_flzkvrshbq_readvariableop_resource_0: :
,while_flzkvrshbq_readvariableop_1_resource_0: :
,while_flzkvrshbq_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_flzkvrshbq_matmul_readvariableop_resource:	 �D
1while_flzkvrshbq_matmul_1_readvariableop_resource:	 �?
0while_flzkvrshbq_biasadd_readvariableop_resource:	�6
(while_flzkvrshbq_readvariableop_resource: 8
*while_flzkvrshbq_readvariableop_1_resource: 8
*while_flzkvrshbq_readvariableop_2_resource: ��'while/flzkvrshbq/BiasAdd/ReadVariableOp�&while/flzkvrshbq/MatMul/ReadVariableOp�(while/flzkvrshbq/MatMul_1/ReadVariableOp�while/flzkvrshbq/ReadVariableOp�!while/flzkvrshbq/ReadVariableOp_1�!while/flzkvrshbq/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/flzkvrshbq/MatMul/ReadVariableOpReadVariableOp1while_flzkvrshbq_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02(
&while/flzkvrshbq/MatMul/ReadVariableOp�
while/flzkvrshbq/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul�
(while/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp3while_flzkvrshbq_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/flzkvrshbq/MatMul_1/ReadVariableOp�
while/flzkvrshbq/MatMul_1MatMulwhile_placeholder_20while/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul_1�
while/flzkvrshbq/addAddV2!while/flzkvrshbq/MatMul:product:0#while/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/add�
'while/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp2while_flzkvrshbq_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/flzkvrshbq/BiasAdd/ReadVariableOp�
while/flzkvrshbq/BiasAddBiasAddwhile/flzkvrshbq/add:z:0/while/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/BiasAdd�
 while/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/flzkvrshbq/split/split_dim�
while/flzkvrshbq/splitSplit)while/flzkvrshbq/split/split_dim:output:0!while/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/flzkvrshbq/split�
while/flzkvrshbq/ReadVariableOpReadVariableOp*while_flzkvrshbq_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/flzkvrshbq/ReadVariableOp�
while/flzkvrshbq/mulMul'while/flzkvrshbq/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul�
while/flzkvrshbq/add_1AddV2while/flzkvrshbq/split:output:0while/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_1�
while/flzkvrshbq/SigmoidSigmoidwhile/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid�
!while/flzkvrshbq/ReadVariableOp_1ReadVariableOp,while_flzkvrshbq_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_1�
while/flzkvrshbq/mul_1Mul)while/flzkvrshbq/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_1�
while/flzkvrshbq/add_2AddV2while/flzkvrshbq/split:output:1while/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_2�
while/flzkvrshbq/Sigmoid_1Sigmoidwhile/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_1�
while/flzkvrshbq/mul_2Mulwhile/flzkvrshbq/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_2�
while/flzkvrshbq/TanhTanhwhile/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh�
while/flzkvrshbq/mul_3Mulwhile/flzkvrshbq/Sigmoid:y:0while/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_3�
while/flzkvrshbq/add_3AddV2while/flzkvrshbq/mul_2:z:0while/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_3�
!while/flzkvrshbq/ReadVariableOp_2ReadVariableOp,while_flzkvrshbq_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_2�
while/flzkvrshbq/mul_4Mul)while/flzkvrshbq/ReadVariableOp_2:value:0while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_4�
while/flzkvrshbq/add_4AddV2while/flzkvrshbq/split:output:3while/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_4�
while/flzkvrshbq/Sigmoid_2Sigmoidwhile/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_2�
while/flzkvrshbq/Tanh_1Tanhwhile/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh_1�
while/flzkvrshbq/mul_5Mulwhile/flzkvrshbq/Sigmoid_2:y:0while/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/flzkvrshbq/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/flzkvrshbq/mul_5:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/flzkvrshbq/add_3:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_flzkvrshbq_biasadd_readvariableop_resource2while_flzkvrshbq_biasadd_readvariableop_resource_0"h
1while_flzkvrshbq_matmul_1_readvariableop_resource3while_flzkvrshbq_matmul_1_readvariableop_resource_0"d
/while_flzkvrshbq_matmul_readvariableop_resource1while_flzkvrshbq_matmul_readvariableop_resource_0"Z
*while_flzkvrshbq_readvariableop_1_resource,while_flzkvrshbq_readvariableop_1_resource_0"Z
*while_flzkvrshbq_readvariableop_2_resource,while_flzkvrshbq_readvariableop_2_resource_0"V
(while_flzkvrshbq_readvariableop_resource*while_flzkvrshbq_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/flzkvrshbq/BiasAdd/ReadVariableOp'while/flzkvrshbq/BiasAdd/ReadVariableOp2P
&while/flzkvrshbq/MatMul/ReadVariableOp&while/flzkvrshbq/MatMul/ReadVariableOp2T
(while/flzkvrshbq/MatMul_1/ReadVariableOp(while/flzkvrshbq/MatMul_1/ReadVariableOp2B
while/flzkvrshbq/ReadVariableOpwhile/flzkvrshbq/ReadVariableOp2F
!while/flzkvrshbq/ReadVariableOp_1!while/flzkvrshbq/ReadVariableOp_12F
!while/flzkvrshbq/ReadVariableOp_2!while/flzkvrshbq/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�'
�
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_32595

inputs
states_0
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
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
:��������� 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:��������� 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:��������� 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:��������� 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:��������� 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:��������� 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:��������� 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:��������� 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:��������� 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
mul_5�
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:��������� :��������� :��������� : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�)
�
while_body_27450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_dsycfvoega_27474_0:	�+
while_dsycfvoega_27476_0:	 �'
while_dsycfvoega_27478_0:	�&
while_dsycfvoega_27480_0: &
while_dsycfvoega_27482_0: &
while_dsycfvoega_27484_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_dsycfvoega_27474:	�)
while_dsycfvoega_27476:	 �%
while_dsycfvoega_27478:	�$
while_dsycfvoega_27480: $
while_dsycfvoega_27482: $
while_dsycfvoega_27484: ��(while/dsycfvoega/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/dsycfvoega/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_dsycfvoega_27474_0while_dsycfvoega_27476_0while_dsycfvoega_27478_0while_dsycfvoega_27480_0while_dsycfvoega_27482_0while_dsycfvoega_27484_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_273542*
(while/dsycfvoega/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/dsycfvoega/StatefulPartitionedCall:output:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/dsycfvoega/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/dsycfvoega/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/dsycfvoega/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/dsycfvoega/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity1while/dsycfvoega/StatefulPartitionedCall:output:1)^while/dsycfvoega/StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identity1while/dsycfvoega/StatefulPartitionedCall:output:2)^while/dsycfvoega/StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2
while/Identity_5"2
while_dsycfvoega_27474while_dsycfvoega_27474_0"2
while_dsycfvoega_27476while_dsycfvoega_27476_0"2
while_dsycfvoega_27478while_dsycfvoega_27478_0"2
while_dsycfvoega_27480while_dsycfvoega_27480_0"2
while_dsycfvoega_27482while_dsycfvoega_27482_0"2
while_dsycfvoega_27484while_dsycfvoega_27484_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2T
(while/dsycfvoega/StatefulPartitionedCall(while/dsycfvoega/StatefulPartitionedCall: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�	
�
while_cond_27186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_27186___redundant_placeholder03
/while_while_cond_27186___redundant_placeholder13
/while_while_cond_27186___redundant_placeholder23
/while_while_cond_27186___redundant_placeholder33
/while_while_cond_27186___redundant_placeholder43
/while_while_cond_27186___redundant_placeholder53
/while_while_cond_27186___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�Y
�
while_body_31645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_flzkvrshbq_matmul_readvariableop_resource_0:	 �F
3while_flzkvrshbq_matmul_1_readvariableop_resource_0:	 �A
2while_flzkvrshbq_biasadd_readvariableop_resource_0:	�8
*while_flzkvrshbq_readvariableop_resource_0: :
,while_flzkvrshbq_readvariableop_1_resource_0: :
,while_flzkvrshbq_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_flzkvrshbq_matmul_readvariableop_resource:	 �D
1while_flzkvrshbq_matmul_1_readvariableop_resource:	 �?
0while_flzkvrshbq_biasadd_readvariableop_resource:	�6
(while_flzkvrshbq_readvariableop_resource: 8
*while_flzkvrshbq_readvariableop_1_resource: 8
*while_flzkvrshbq_readvariableop_2_resource: ��'while/flzkvrshbq/BiasAdd/ReadVariableOp�&while/flzkvrshbq/MatMul/ReadVariableOp�(while/flzkvrshbq/MatMul_1/ReadVariableOp�while/flzkvrshbq/ReadVariableOp�!while/flzkvrshbq/ReadVariableOp_1�!while/flzkvrshbq/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/flzkvrshbq/MatMul/ReadVariableOpReadVariableOp1while_flzkvrshbq_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02(
&while/flzkvrshbq/MatMul/ReadVariableOp�
while/flzkvrshbq/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul�
(while/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp3while_flzkvrshbq_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/flzkvrshbq/MatMul_1/ReadVariableOp�
while/flzkvrshbq/MatMul_1MatMulwhile_placeholder_20while/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul_1�
while/flzkvrshbq/addAddV2!while/flzkvrshbq/MatMul:product:0#while/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/add�
'while/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp2while_flzkvrshbq_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/flzkvrshbq/BiasAdd/ReadVariableOp�
while/flzkvrshbq/BiasAddBiasAddwhile/flzkvrshbq/add:z:0/while/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/BiasAdd�
 while/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/flzkvrshbq/split/split_dim�
while/flzkvrshbq/splitSplit)while/flzkvrshbq/split/split_dim:output:0!while/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/flzkvrshbq/split�
while/flzkvrshbq/ReadVariableOpReadVariableOp*while_flzkvrshbq_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/flzkvrshbq/ReadVariableOp�
while/flzkvrshbq/mulMul'while/flzkvrshbq/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul�
while/flzkvrshbq/add_1AddV2while/flzkvrshbq/split:output:0while/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_1�
while/flzkvrshbq/SigmoidSigmoidwhile/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid�
!while/flzkvrshbq/ReadVariableOp_1ReadVariableOp,while_flzkvrshbq_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_1�
while/flzkvrshbq/mul_1Mul)while/flzkvrshbq/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_1�
while/flzkvrshbq/add_2AddV2while/flzkvrshbq/split:output:1while/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_2�
while/flzkvrshbq/Sigmoid_1Sigmoidwhile/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_1�
while/flzkvrshbq/mul_2Mulwhile/flzkvrshbq/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_2�
while/flzkvrshbq/TanhTanhwhile/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh�
while/flzkvrshbq/mul_3Mulwhile/flzkvrshbq/Sigmoid:y:0while/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_3�
while/flzkvrshbq/add_3AddV2while/flzkvrshbq/mul_2:z:0while/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_3�
!while/flzkvrshbq/ReadVariableOp_2ReadVariableOp,while_flzkvrshbq_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_2�
while/flzkvrshbq/mul_4Mul)while/flzkvrshbq/ReadVariableOp_2:value:0while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_4�
while/flzkvrshbq/add_4AddV2while/flzkvrshbq/split:output:3while/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_4�
while/flzkvrshbq/Sigmoid_2Sigmoidwhile/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_2�
while/flzkvrshbq/Tanh_1Tanhwhile/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh_1�
while/flzkvrshbq/mul_5Mulwhile/flzkvrshbq/Sigmoid_2:y:0while/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/flzkvrshbq/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/flzkvrshbq/mul_5:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/flzkvrshbq/add_3:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_flzkvrshbq_biasadd_readvariableop_resource2while_flzkvrshbq_biasadd_readvariableop_resource_0"h
1while_flzkvrshbq_matmul_1_readvariableop_resource3while_flzkvrshbq_matmul_1_readvariableop_resource_0"d
/while_flzkvrshbq_matmul_readvariableop_resource1while_flzkvrshbq_matmul_readvariableop_resource_0"Z
*while_flzkvrshbq_readvariableop_1_resource,while_flzkvrshbq_readvariableop_1_resource_0"Z
*while_flzkvrshbq_readvariableop_2_resource,while_flzkvrshbq_readvariableop_2_resource_0"V
(while_flzkvrshbq_readvariableop_resource*while_flzkvrshbq_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/flzkvrshbq/BiasAdd/ReadVariableOp'while/flzkvrshbq/BiasAdd/ReadVariableOp2P
&while/flzkvrshbq/MatMul/ReadVariableOp&while/flzkvrshbq/MatMul/ReadVariableOp2T
(while/flzkvrshbq/MatMul_1/ReadVariableOp(while/flzkvrshbq/MatMul_1/ReadVariableOp2B
while/flzkvrshbq/ReadVariableOpwhile/flzkvrshbq/ReadVariableOp2F
!while/flzkvrshbq/ReadVariableOp_1!while/flzkvrshbq/ReadVariableOp_12F
!while/flzkvrshbq/ReadVariableOp_2!while/flzkvrshbq/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�	
&sequential_owshcilvwl_while_cond_26972H
Dsequential_owshcilvwl_while_sequential_owshcilvwl_while_loop_counterN
Jsequential_owshcilvwl_while_sequential_owshcilvwl_while_maximum_iterations+
'sequential_owshcilvwl_while_placeholder-
)sequential_owshcilvwl_while_placeholder_1-
)sequential_owshcilvwl_while_placeholder_2-
)sequential_owshcilvwl_while_placeholder_3J
Fsequential_owshcilvwl_while_less_sequential_owshcilvwl_strided_slice_1_
[sequential_owshcilvwl_while_sequential_owshcilvwl_while_cond_26972___redundant_placeholder0_
[sequential_owshcilvwl_while_sequential_owshcilvwl_while_cond_26972___redundant_placeholder1_
[sequential_owshcilvwl_while_sequential_owshcilvwl_while_cond_26972___redundant_placeholder2_
[sequential_owshcilvwl_while_sequential_owshcilvwl_while_cond_26972___redundant_placeholder3_
[sequential_owshcilvwl_while_sequential_owshcilvwl_while_cond_26972___redundant_placeholder4_
[sequential_owshcilvwl_while_sequential_owshcilvwl_while_cond_26972___redundant_placeholder5_
[sequential_owshcilvwl_while_sequential_owshcilvwl_while_cond_26972___redundant_placeholder6(
$sequential_owshcilvwl_while_identity
�
 sequential/owshcilvwl/while/LessLess'sequential_owshcilvwl_while_placeholderFsequential_owshcilvwl_while_less_sequential_owshcilvwl_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/owshcilvwl/while/Less�
$sequential/owshcilvwl/while/IdentityIdentity$sequential/owshcilvwl/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/owshcilvwl/while/Identity"U
$sequential_owshcilvwl_while_identity-sequential/owshcilvwl/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�	
�
E__inference_oaettnoaty_layer_call_and_return_conditional_losses_32364

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�
!__inference__traced_restore_32908
file_prefix8
"assignvariableop_bpstkcuudk_kernel:0
"assignvariableop_1_bpstkcuudk_bias:6
$assignvariableop_2_oaettnoaty_kernel: 0
"assignvariableop_3_oaettnoaty_bias:)
assignvariableop_4_rmsprop_iter:	 *
 assignvariableop_5_rmsprop_decay: 2
(assignvariableop_6_rmsprop_learning_rate: -
#assignvariableop_7_rmsprop_momentum: (
assignvariableop_8_rmsprop_rho: B
/assignvariableop_9_osutmzfngz_dsycfvoega_kernel:	�M
:assignvariableop_10_osutmzfngz_dsycfvoega_recurrent_kernel:	 �=
.assignvariableop_11_osutmzfngz_dsycfvoega_bias:	�S
Eassignvariableop_12_osutmzfngz_dsycfvoega_input_gate_peephole_weights: T
Fassignvariableop_13_osutmzfngz_dsycfvoega_forget_gate_peephole_weights: T
Fassignvariableop_14_osutmzfngz_dsycfvoega_output_gate_peephole_weights: C
0assignvariableop_15_owshcilvwl_flzkvrshbq_kernel:	 �M
:assignvariableop_16_owshcilvwl_flzkvrshbq_recurrent_kernel:	 �=
.assignvariableop_17_owshcilvwl_flzkvrshbq_bias:	�S
Eassignvariableop_18_owshcilvwl_flzkvrshbq_input_gate_peephole_weights: T
Fassignvariableop_19_owshcilvwl_flzkvrshbq_forget_gate_peephole_weights: T
Fassignvariableop_20_owshcilvwl_flzkvrshbq_output_gate_peephole_weights: #
assignvariableop_21_total: #
assignvariableop_22_count: G
1assignvariableop_23_rmsprop_bpstkcuudk_kernel_rms:=
/assignvariableop_24_rmsprop_bpstkcuudk_bias_rms:C
1assignvariableop_25_rmsprop_oaettnoaty_kernel_rms: =
/assignvariableop_26_rmsprop_oaettnoaty_bias_rms:O
<assignvariableop_27_rmsprop_osutmzfngz_dsycfvoega_kernel_rms:	�Y
Fassignvariableop_28_rmsprop_osutmzfngz_dsycfvoega_recurrent_kernel_rms:	 �I
:assignvariableop_29_rmsprop_osutmzfngz_dsycfvoega_bias_rms:	�_
Qassignvariableop_30_rmsprop_osutmzfngz_dsycfvoega_input_gate_peephole_weights_rms: `
Rassignvariableop_31_rmsprop_osutmzfngz_dsycfvoega_forget_gate_peephole_weights_rms: `
Rassignvariableop_32_rmsprop_osutmzfngz_dsycfvoega_output_gate_peephole_weights_rms: O
<assignvariableop_33_rmsprop_owshcilvwl_flzkvrshbq_kernel_rms:	 �Y
Fassignvariableop_34_rmsprop_owshcilvwl_flzkvrshbq_recurrent_kernel_rms:	 �I
:assignvariableop_35_rmsprop_owshcilvwl_flzkvrshbq_bias_rms:	�_
Qassignvariableop_36_rmsprop_owshcilvwl_flzkvrshbq_input_gate_peephole_weights_rms: `
Rassignvariableop_37_rmsprop_owshcilvwl_flzkvrshbq_forget_gate_peephole_weights_rms: `
Rassignvariableop_38_rmsprop_owshcilvwl_flzkvrshbq_output_gate_peephole_weights_rms: 
identity_40��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp"assignvariableop_bpstkcuudk_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_bpstkcuudk_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_oaettnoaty_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_oaettnoaty_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_rmsprop_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_rmsprop_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp(assignvariableop_6_rmsprop_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp#assignvariableop_7_rmsprop_momentumIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_rmsprop_rhoIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp/assignvariableop_9_osutmzfngz_dsycfvoega_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp:assignvariableop_10_osutmzfngz_dsycfvoega_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp.assignvariableop_11_osutmzfngz_dsycfvoega_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpEassignvariableop_12_osutmzfngz_dsycfvoega_input_gate_peephole_weightsIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpFassignvariableop_13_osutmzfngz_dsycfvoega_forget_gate_peephole_weightsIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpFassignvariableop_14_osutmzfngz_dsycfvoega_output_gate_peephole_weightsIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp0assignvariableop_15_owshcilvwl_flzkvrshbq_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp:assignvariableop_16_owshcilvwl_flzkvrshbq_recurrent_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp.assignvariableop_17_owshcilvwl_flzkvrshbq_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpEassignvariableop_18_owshcilvwl_flzkvrshbq_input_gate_peephole_weightsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpFassignvariableop_19_owshcilvwl_flzkvrshbq_forget_gate_peephole_weightsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpFassignvariableop_20_owshcilvwl_flzkvrshbq_output_gate_peephole_weightsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp1assignvariableop_23_rmsprop_bpstkcuudk_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp/assignvariableop_24_rmsprop_bpstkcuudk_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp1assignvariableop_25_rmsprop_oaettnoaty_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp/assignvariableop_26_rmsprop_oaettnoaty_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp<assignvariableop_27_rmsprop_osutmzfngz_dsycfvoega_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOpFassignvariableop_28_rmsprop_osutmzfngz_dsycfvoega_recurrent_kernel_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp:assignvariableop_29_rmsprop_osutmzfngz_dsycfvoega_bias_rmsIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOpQassignvariableop_30_rmsprop_osutmzfngz_dsycfvoega_input_gate_peephole_weights_rmsIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOpRassignvariableop_31_rmsprop_osutmzfngz_dsycfvoega_forget_gate_peephole_weights_rmsIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOpRassignvariableop_32_rmsprop_osutmzfngz_dsycfvoega_output_gate_peephole_weights_rmsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp<assignvariableop_33_rmsprop_owshcilvwl_flzkvrshbq_kernel_rmsIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOpFassignvariableop_34_rmsprop_owshcilvwl_flzkvrshbq_recurrent_kernel_rmsIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp:assignvariableop_35_rmsprop_owshcilvwl_flzkvrshbq_bias_rmsIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOpQassignvariableop_36_rmsprop_owshcilvwl_flzkvrshbq_input_gate_peephole_weights_rmsIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOpRassignvariableop_37_rmsprop_owshcilvwl_flzkvrshbq_forget_gate_peephole_weights_rmsIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOpRassignvariableop_38_rmsprop_owshcilvwl_flzkvrshbq_output_gate_peephole_weights_rmsIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39�
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
�F
�
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_27530

inputs#
dsycfvoega_27431:	�#
dsycfvoega_27433:	 �
dsycfvoega_27435:	�
dsycfvoega_27437: 
dsycfvoega_27439: 
dsycfvoega_27441: 
identity��"dsycfvoega/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"dsycfvoega/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0dsycfvoega_27431dsycfvoega_27433dsycfvoega_27435dsycfvoega_27437dsycfvoega_27439dsycfvoega_27441*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_273542$
"dsycfvoega/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0dsycfvoega_27431dsycfvoega_27433dsycfvoega_27435dsycfvoega_27437dsycfvoega_27439dsycfvoega_27441*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_27450*
condR
while_cond_27449*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitytranspose_1:y:0#^dsycfvoega/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :������������������ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������: : : : : : 2H
"dsycfvoega/StatefulPartitionedCall"dsycfvoega/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�h
�
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_28840

inputs<
)dsycfvoega_matmul_readvariableop_resource:	�>
+dsycfvoega_matmul_1_readvariableop_resource:	 �9
*dsycfvoega_biasadd_readvariableop_resource:	�0
"dsycfvoega_readvariableop_resource: 2
$dsycfvoega_readvariableop_1_resource: 2
$dsycfvoega_readvariableop_2_resource: 
identity��!dsycfvoega/BiasAdd/ReadVariableOp� dsycfvoega/MatMul/ReadVariableOp�"dsycfvoega/MatMul_1/ReadVariableOp�dsycfvoega/ReadVariableOp�dsycfvoega/ReadVariableOp_1�dsycfvoega/ReadVariableOp_2�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
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
:���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
 dsycfvoega/MatMul/ReadVariableOpReadVariableOp)dsycfvoega_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02"
 dsycfvoega/MatMul/ReadVariableOp�
dsycfvoega/MatMulMatMulstrided_slice_2:output:0(dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul�
"dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp+dsycfvoega_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"dsycfvoega/MatMul_1/ReadVariableOp�
dsycfvoega/MatMul_1MatMulzeros:output:0*dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul_1�
dsycfvoega/addAddV2dsycfvoega/MatMul:product:0dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
dsycfvoega/add�
!dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp*dsycfvoega_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!dsycfvoega/BiasAdd/ReadVariableOp�
dsycfvoega/BiasAddBiasAdddsycfvoega/add:z:0)dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/BiasAddz
dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
dsycfvoega/split/split_dim�
dsycfvoega/splitSplit#dsycfvoega/split/split_dim:output:0dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
dsycfvoega/split�
dsycfvoega/ReadVariableOpReadVariableOp"dsycfvoega_readvariableop_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp�
dsycfvoega/mulMul!dsycfvoega/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul�
dsycfvoega/add_1AddV2dsycfvoega/split:output:0dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_1{
dsycfvoega/SigmoidSigmoiddsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid�
dsycfvoega/ReadVariableOp_1ReadVariableOp$dsycfvoega_readvariableop_1_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_1�
dsycfvoega/mul_1Mul#dsycfvoega/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_1�
dsycfvoega/add_2AddV2dsycfvoega/split:output:1dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_2
dsycfvoega/Sigmoid_1Sigmoiddsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_1�
dsycfvoega/mul_2Muldsycfvoega/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_2w
dsycfvoega/TanhTanhdsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh�
dsycfvoega/mul_3Muldsycfvoega/Sigmoid:y:0dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_3�
dsycfvoega/add_3AddV2dsycfvoega/mul_2:z:0dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_3�
dsycfvoega/ReadVariableOp_2ReadVariableOp$dsycfvoega_readvariableop_2_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_2�
dsycfvoega/mul_4Mul#dsycfvoega/ReadVariableOp_2:value:0dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_4�
dsycfvoega/add_4AddV2dsycfvoega/split:output:3dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_4
dsycfvoega/Sigmoid_2Sigmoiddsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_2v
dsycfvoega/Tanh_1Tanhdsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh_1�
dsycfvoega/mul_5Muldsycfvoega/Sigmoid_2:y:0dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)dsycfvoega_matmul_readvariableop_resource+dsycfvoega_matmul_1_readvariableop_resource*dsycfvoega_biasadd_readvariableop_resource"dsycfvoega_readvariableop_resource$dsycfvoega_readvariableop_1_resource$dsycfvoega_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_28739*
condR
while_cond_28738*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1�
IdentityIdentitytranspose_1:y:0"^dsycfvoega/BiasAdd/ReadVariableOp!^dsycfvoega/MatMul/ReadVariableOp#^dsycfvoega/MatMul_1/ReadVariableOp^dsycfvoega/ReadVariableOp^dsycfvoega/ReadVariableOp_1^dsycfvoega/ReadVariableOp_2^while*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2F
!dsycfvoega/BiasAdd/ReadVariableOp!dsycfvoega/BiasAdd/ReadVariableOp2D
 dsycfvoega/MatMul/ReadVariableOp dsycfvoega/MatMul/ReadVariableOp2H
"dsycfvoega/MatMul_1/ReadVariableOp"dsycfvoega/MatMul_1/ReadVariableOp26
dsycfvoega/ReadVariableOpdsycfvoega/ReadVariableOp2:
dsycfvoega/ReadVariableOp_1dsycfvoega/ReadVariableOp_12:
dsycfvoega/ReadVariableOp_2dsycfvoega/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_29705

jfowsgvbzw
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	 �
	unknown_3:	�
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:	 �
	unknown_8:	 �
	unknown_9:	�

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
jfowsgvbzwunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_296332
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:���������
$
_user_specified_name
jfowsgvbzw
�
�
owshcilvwl_while_cond_305322
.owshcilvwl_while_owshcilvwl_while_loop_counter8
4owshcilvwl_while_owshcilvwl_while_maximum_iterations 
owshcilvwl_while_placeholder"
owshcilvwl_while_placeholder_1"
owshcilvwl_while_placeholder_2"
owshcilvwl_while_placeholder_34
0owshcilvwl_while_less_owshcilvwl_strided_slice_1I
Eowshcilvwl_while_owshcilvwl_while_cond_30532___redundant_placeholder0I
Eowshcilvwl_while_owshcilvwl_while_cond_30532___redundant_placeholder1I
Eowshcilvwl_while_owshcilvwl_while_cond_30532___redundant_placeholder2I
Eowshcilvwl_while_owshcilvwl_while_cond_30532___redundant_placeholder3I
Eowshcilvwl_while_owshcilvwl_while_cond_30532___redundant_placeholder4I
Eowshcilvwl_while_owshcilvwl_while_cond_30532___redundant_placeholder5I
Eowshcilvwl_while_owshcilvwl_while_cond_30532___redundant_placeholder6
owshcilvwl_while_identity
�
owshcilvwl/while/LessLessowshcilvwl_while_placeholder0owshcilvwl_while_less_owshcilvwl_strided_slice_1*
T0*
_output_shapes
: 2
owshcilvwl/while/Less~
owshcilvwl/while/IdentityIdentityowshcilvwl/while/Less:z:0*
T0
*
_output_shapes
: 2
owshcilvwl/while/Identity"?
owshcilvwl_while_identity"owshcilvwl/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
*__inference_sequential_layer_call_fn_29099

jfowsgvbzw
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	 �
	unknown_3:	�
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7:	 �
	unknown_8:	 �
	unknown_9:	�

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
jfowsgvbzwunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_290642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:���������
$
_user_specified_name
jfowsgvbzw
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_29064

inputs&
bpstkcuudk_28641:
bpstkcuudk_28643:#
osutmzfngz_28841:	�#
osutmzfngz_28843:	 �
osutmzfngz_28845:	�
osutmzfngz_28847: 
osutmzfngz_28849: 
osutmzfngz_28851: #
owshcilvwl_29034:	 �#
owshcilvwl_29036:	 �
owshcilvwl_29038:	�
owshcilvwl_29040: 
owshcilvwl_29042: 
owshcilvwl_29044: "
oaettnoaty_29058: 
oaettnoaty_29060:
identity��"bpstkcuudk/StatefulPartitionedCall�"oaettnoaty/StatefulPartitionedCall�"osutmzfngz/StatefulPartitionedCall�"owshcilvwl/StatefulPartitionedCall�
"bpstkcuudk/StatefulPartitionedCallStatefulPartitionedCallinputsbpstkcuudk_28641bpstkcuudk_28643*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_bpstkcuudk_layer_call_and_return_conditional_losses_286402$
"bpstkcuudk/StatefulPartitionedCall�
xlcvyoxoxq/PartitionedCallPartitionedCall+bpstkcuudk/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_xlcvyoxoxq_layer_call_and_return_conditional_losses_286592
xlcvyoxoxq/PartitionedCall�
"osutmzfngz/StatefulPartitionedCallStatefulPartitionedCall#xlcvyoxoxq/PartitionedCall:output:0osutmzfngz_28841osutmzfngz_28843osutmzfngz_28845osutmzfngz_28847osutmzfngz_28849osutmzfngz_28851*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_288402$
"osutmzfngz/StatefulPartitionedCall�
"owshcilvwl/StatefulPartitionedCallStatefulPartitionedCall+osutmzfngz/StatefulPartitionedCall:output:0owshcilvwl_29034owshcilvwl_29036owshcilvwl_29038owshcilvwl_29040owshcilvwl_29042owshcilvwl_29044*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_290332$
"owshcilvwl/StatefulPartitionedCall�
"oaettnoaty/StatefulPartitionedCallStatefulPartitionedCall+owshcilvwl/StatefulPartitionedCall:output:0oaettnoaty_29058oaettnoaty_29060*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_oaettnoaty_layer_call_and_return_conditional_losses_290572$
"oaettnoaty/StatefulPartitionedCall�
IdentityIdentity+oaettnoaty/StatefulPartitionedCall:output:0#^bpstkcuudk/StatefulPartitionedCall#^oaettnoaty/StatefulPartitionedCall#^osutmzfngz/StatefulPartitionedCall#^owshcilvwl/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 2H
"bpstkcuudk/StatefulPartitionedCall"bpstkcuudk/StatefulPartitionedCall2H
"oaettnoaty/StatefulPartitionedCall"oaettnoaty/StatefulPartitionedCall2H
"osutmzfngz/StatefulPartitionedCall"osutmzfngz/StatefulPartitionedCall2H
"owshcilvwl/StatefulPartitionedCall"owshcilvwl/StatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�h
�
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_31926
inputs_0<
)flzkvrshbq_matmul_readvariableop_resource:	 �>
+flzkvrshbq_matmul_1_readvariableop_resource:	 �9
*flzkvrshbq_biasadd_readvariableop_resource:	�0
"flzkvrshbq_readvariableop_resource: 2
$flzkvrshbq_readvariableop_1_resource: 2
$flzkvrshbq_readvariableop_2_resource: 
identity��!flzkvrshbq/BiasAdd/ReadVariableOp� flzkvrshbq/MatMul/ReadVariableOp�"flzkvrshbq/MatMul_1/ReadVariableOp�flzkvrshbq/ReadVariableOp�flzkvrshbq/ReadVariableOp_1�flzkvrshbq/ReadVariableOp_2�whileF
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_2�
 flzkvrshbq/MatMul/ReadVariableOpReadVariableOp)flzkvrshbq_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02"
 flzkvrshbq/MatMul/ReadVariableOp�
flzkvrshbq/MatMulMatMulstrided_slice_2:output:0(flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul�
"flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp+flzkvrshbq_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"flzkvrshbq/MatMul_1/ReadVariableOp�
flzkvrshbq/MatMul_1MatMulzeros:output:0*flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul_1�
flzkvrshbq/addAddV2flzkvrshbq/MatMul:product:0flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/add�
!flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp*flzkvrshbq_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!flzkvrshbq/BiasAdd/ReadVariableOp�
flzkvrshbq/BiasAddBiasAddflzkvrshbq/add:z:0)flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/BiasAddz
flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
flzkvrshbq/split/split_dim�
flzkvrshbq/splitSplit#flzkvrshbq/split/split_dim:output:0flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
flzkvrshbq/split�
flzkvrshbq/ReadVariableOpReadVariableOp"flzkvrshbq_readvariableop_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp�
flzkvrshbq/mulMul!flzkvrshbq/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul�
flzkvrshbq/add_1AddV2flzkvrshbq/split:output:0flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_1{
flzkvrshbq/SigmoidSigmoidflzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid�
flzkvrshbq/ReadVariableOp_1ReadVariableOp$flzkvrshbq_readvariableop_1_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_1�
flzkvrshbq/mul_1Mul#flzkvrshbq/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_1�
flzkvrshbq/add_2AddV2flzkvrshbq/split:output:1flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_2
flzkvrshbq/Sigmoid_1Sigmoidflzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_1�
flzkvrshbq/mul_2Mulflzkvrshbq/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_2w
flzkvrshbq/TanhTanhflzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh�
flzkvrshbq/mul_3Mulflzkvrshbq/Sigmoid:y:0flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_3�
flzkvrshbq/add_3AddV2flzkvrshbq/mul_2:z:0flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_3�
flzkvrshbq/ReadVariableOp_2ReadVariableOp$flzkvrshbq_readvariableop_2_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_2�
flzkvrshbq/mul_4Mul#flzkvrshbq/ReadVariableOp_2:value:0flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_4�
flzkvrshbq/add_4AddV2flzkvrshbq/split:output:3flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_4
flzkvrshbq/Sigmoid_2Sigmoidflzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_2v
flzkvrshbq/Tanh_1Tanhflzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh_1�
flzkvrshbq/mul_5Mulflzkvrshbq/Sigmoid_2:y:0flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)flzkvrshbq_matmul_readvariableop_resource+flzkvrshbq_matmul_1_readvariableop_resource*flzkvrshbq_biasadd_readvariableop_resource"flzkvrshbq_readvariableop_resource$flzkvrshbq_readvariableop_1_resource$flzkvrshbq_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_31825*
condR
while_cond_31824*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0"^flzkvrshbq/BiasAdd/ReadVariableOp!^flzkvrshbq/MatMul/ReadVariableOp#^flzkvrshbq/MatMul_1/ReadVariableOp^flzkvrshbq/ReadVariableOp^flzkvrshbq/ReadVariableOp_1^flzkvrshbq/ReadVariableOp_2^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������ : : : : : : 2F
!flzkvrshbq/BiasAdd/ReadVariableOp!flzkvrshbq/BiasAdd/ReadVariableOp2D
 flzkvrshbq/MatMul/ReadVariableOp flzkvrshbq/MatMul/ReadVariableOp2H
"flzkvrshbq/MatMul_1/ReadVariableOp"flzkvrshbq/MatMul_1/ReadVariableOp26
flzkvrshbq/ReadVariableOpflzkvrshbq/ReadVariableOp2:
flzkvrshbq/ReadVariableOp_1flzkvrshbq/ReadVariableOp_12:
flzkvrshbq/ReadVariableOp_2flzkvrshbq/ReadVariableOp_22
whilewhile:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
�'
�
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_28112

inputs

states
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
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
:��������� 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:��������� 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:��������� 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:��������� 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:��������� 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:��������� 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:��������� 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:��������� 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:��������� 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
mul_5�
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:��������� :��������� :��������� : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�	
�
while_cond_30856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_30856___redundant_placeholder03
/while_while_cond_30856___redundant_placeholder13
/while_while_cond_30856___redundant_placeholder23
/while_while_cond_30856___redundant_placeholder33
/while_while_cond_30856___redundant_placeholder43
/while_while_cond_30856___redundant_placeholder53
/while_while_cond_30856___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�	
�
while_cond_29206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_29206___redundant_placeholder03
/while_while_cond_29206___redundant_placeholder13
/while_while_cond_29206___redundant_placeholder23
/while_while_cond_29206___redundant_placeholder33
/while_while_cond_29206___redundant_placeholder43
/while_while_cond_29206___redundant_placeholder53
/while_while_cond_29206___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�Y
�
while_body_31217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_dsycfvoega_matmul_readvariableop_resource_0:	�F
3while_dsycfvoega_matmul_1_readvariableop_resource_0:	 �A
2while_dsycfvoega_biasadd_readvariableop_resource_0:	�8
*while_dsycfvoega_readvariableop_resource_0: :
,while_dsycfvoega_readvariableop_1_resource_0: :
,while_dsycfvoega_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_dsycfvoega_matmul_readvariableop_resource:	�D
1while_dsycfvoega_matmul_1_readvariableop_resource:	 �?
0while_dsycfvoega_biasadd_readvariableop_resource:	�6
(while_dsycfvoega_readvariableop_resource: 8
*while_dsycfvoega_readvariableop_1_resource: 8
*while_dsycfvoega_readvariableop_2_resource: ��'while/dsycfvoega/BiasAdd/ReadVariableOp�&while/dsycfvoega/MatMul/ReadVariableOp�(while/dsycfvoega/MatMul_1/ReadVariableOp�while/dsycfvoega/ReadVariableOp�!while/dsycfvoega/ReadVariableOp_1�!while/dsycfvoega/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/dsycfvoega/MatMul/ReadVariableOpReadVariableOp1while_dsycfvoega_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02(
&while/dsycfvoega/MatMul/ReadVariableOp�
while/dsycfvoega/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul�
(while/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp3while_dsycfvoega_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/dsycfvoega/MatMul_1/ReadVariableOp�
while/dsycfvoega/MatMul_1MatMulwhile_placeholder_20while/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul_1�
while/dsycfvoega/addAddV2!while/dsycfvoega/MatMul:product:0#while/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/add�
'while/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp2while_dsycfvoega_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/dsycfvoega/BiasAdd/ReadVariableOp�
while/dsycfvoega/BiasAddBiasAddwhile/dsycfvoega/add:z:0/while/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/BiasAdd�
 while/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/dsycfvoega/split/split_dim�
while/dsycfvoega/splitSplit)while/dsycfvoega/split/split_dim:output:0!while/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/dsycfvoega/split�
while/dsycfvoega/ReadVariableOpReadVariableOp*while_dsycfvoega_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/dsycfvoega/ReadVariableOp�
while/dsycfvoega/mulMul'while/dsycfvoega/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul�
while/dsycfvoega/add_1AddV2while/dsycfvoega/split:output:0while/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_1�
while/dsycfvoega/SigmoidSigmoidwhile/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid�
!while/dsycfvoega/ReadVariableOp_1ReadVariableOp,while_dsycfvoega_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_1�
while/dsycfvoega/mul_1Mul)while/dsycfvoega/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_1�
while/dsycfvoega/add_2AddV2while/dsycfvoega/split:output:1while/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_2�
while/dsycfvoega/Sigmoid_1Sigmoidwhile/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_1�
while/dsycfvoega/mul_2Mulwhile/dsycfvoega/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_2�
while/dsycfvoega/TanhTanhwhile/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh�
while/dsycfvoega/mul_3Mulwhile/dsycfvoega/Sigmoid:y:0while/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_3�
while/dsycfvoega/add_3AddV2while/dsycfvoega/mul_2:z:0while/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_3�
!while/dsycfvoega/ReadVariableOp_2ReadVariableOp,while_dsycfvoega_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_2�
while/dsycfvoega/mul_4Mul)while/dsycfvoega/ReadVariableOp_2:value:0while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_4�
while/dsycfvoega/add_4AddV2while/dsycfvoega/split:output:3while/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_4�
while/dsycfvoega/Sigmoid_2Sigmoidwhile/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_2�
while/dsycfvoega/Tanh_1Tanhwhile/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh_1�
while/dsycfvoega/mul_5Mulwhile/dsycfvoega/Sigmoid_2:y:0while/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/dsycfvoega/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/dsycfvoega/mul_5:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/dsycfvoega/add_3:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_dsycfvoega_biasadd_readvariableop_resource2while_dsycfvoega_biasadd_readvariableop_resource_0"h
1while_dsycfvoega_matmul_1_readvariableop_resource3while_dsycfvoega_matmul_1_readvariableop_resource_0"d
/while_dsycfvoega_matmul_readvariableop_resource1while_dsycfvoega_matmul_readvariableop_resource_0"Z
*while_dsycfvoega_readvariableop_1_resource,while_dsycfvoega_readvariableop_1_resource_0"Z
*while_dsycfvoega_readvariableop_2_resource,while_dsycfvoega_readvariableop_2_resource_0"V
(while_dsycfvoega_readvariableop_resource*while_dsycfvoega_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/dsycfvoega/BiasAdd/ReadVariableOp'while/dsycfvoega/BiasAdd/ReadVariableOp2P
&while/dsycfvoega/MatMul/ReadVariableOp&while/dsycfvoega/MatMul/ReadVariableOp2T
(while/dsycfvoega/MatMul_1/ReadVariableOp(while/dsycfvoega/MatMul_1/ReadVariableOp2B
while/dsycfvoega/ReadVariableOpwhile/dsycfvoega/ReadVariableOp2F
!while/dsycfvoega/ReadVariableOp_1!while/dsycfvoega/ReadVariableOp_12F
!while/dsycfvoega/ReadVariableOp_2!while/dsycfvoega/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
osutmzfngz_while_cond_303562
.osutmzfngz_while_osutmzfngz_while_loop_counter8
4osutmzfngz_while_osutmzfngz_while_maximum_iterations 
osutmzfngz_while_placeholder"
osutmzfngz_while_placeholder_1"
osutmzfngz_while_placeholder_2"
osutmzfngz_while_placeholder_34
0osutmzfngz_while_less_osutmzfngz_strided_slice_1I
Eosutmzfngz_while_osutmzfngz_while_cond_30356___redundant_placeholder0I
Eosutmzfngz_while_osutmzfngz_while_cond_30356___redundant_placeholder1I
Eosutmzfngz_while_osutmzfngz_while_cond_30356___redundant_placeholder2I
Eosutmzfngz_while_osutmzfngz_while_cond_30356___redundant_placeholder3I
Eosutmzfngz_while_osutmzfngz_while_cond_30356___redundant_placeholder4I
Eosutmzfngz_while_osutmzfngz_while_cond_30356___redundant_placeholder5I
Eosutmzfngz_while_osutmzfngz_while_cond_30356___redundant_placeholder6
osutmzfngz_while_identity
�
osutmzfngz/while/LessLessosutmzfngz_while_placeholder0osutmzfngz_while_less_osutmzfngz_strided_slice_1*
T0*
_output_shapes
: 2
osutmzfngz/while/Less~
osutmzfngz/while/IdentityIdentityosutmzfngz/while/Less:z:0*
T0
*
_output_shapes
: 2
osutmzfngz/while/Identity"?
osutmzfngz_while_identity"osutmzfngz/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�h
�
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_31318

inputs<
)dsycfvoega_matmul_readvariableop_resource:	�>
+dsycfvoega_matmul_1_readvariableop_resource:	 �9
*dsycfvoega_biasadd_readvariableop_resource:	�0
"dsycfvoega_readvariableop_resource: 2
$dsycfvoega_readvariableop_1_resource: 2
$dsycfvoega_readvariableop_2_resource: 
identity��!dsycfvoega/BiasAdd/ReadVariableOp� dsycfvoega/MatMul/ReadVariableOp�"dsycfvoega/MatMul_1/ReadVariableOp�dsycfvoega/ReadVariableOp�dsycfvoega/ReadVariableOp_1�dsycfvoega/ReadVariableOp_2�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
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
:���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
 dsycfvoega/MatMul/ReadVariableOpReadVariableOp)dsycfvoega_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02"
 dsycfvoega/MatMul/ReadVariableOp�
dsycfvoega/MatMulMatMulstrided_slice_2:output:0(dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul�
"dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp+dsycfvoega_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"dsycfvoega/MatMul_1/ReadVariableOp�
dsycfvoega/MatMul_1MatMulzeros:output:0*dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul_1�
dsycfvoega/addAddV2dsycfvoega/MatMul:product:0dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
dsycfvoega/add�
!dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp*dsycfvoega_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!dsycfvoega/BiasAdd/ReadVariableOp�
dsycfvoega/BiasAddBiasAdddsycfvoega/add:z:0)dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/BiasAddz
dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
dsycfvoega/split/split_dim�
dsycfvoega/splitSplit#dsycfvoega/split/split_dim:output:0dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
dsycfvoega/split�
dsycfvoega/ReadVariableOpReadVariableOp"dsycfvoega_readvariableop_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp�
dsycfvoega/mulMul!dsycfvoega/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul�
dsycfvoega/add_1AddV2dsycfvoega/split:output:0dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_1{
dsycfvoega/SigmoidSigmoiddsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid�
dsycfvoega/ReadVariableOp_1ReadVariableOp$dsycfvoega_readvariableop_1_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_1�
dsycfvoega/mul_1Mul#dsycfvoega/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_1�
dsycfvoega/add_2AddV2dsycfvoega/split:output:1dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_2
dsycfvoega/Sigmoid_1Sigmoiddsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_1�
dsycfvoega/mul_2Muldsycfvoega/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_2w
dsycfvoega/TanhTanhdsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh�
dsycfvoega/mul_3Muldsycfvoega/Sigmoid:y:0dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_3�
dsycfvoega/add_3AddV2dsycfvoega/mul_2:z:0dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_3�
dsycfvoega/ReadVariableOp_2ReadVariableOp$dsycfvoega_readvariableop_2_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_2�
dsycfvoega/mul_4Mul#dsycfvoega/ReadVariableOp_2:value:0dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_4�
dsycfvoega/add_4AddV2dsycfvoega/split:output:3dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_4
dsycfvoega/Sigmoid_2Sigmoiddsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_2v
dsycfvoega/Tanh_1Tanhdsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh_1�
dsycfvoega/mul_5Muldsycfvoega/Sigmoid_2:y:0dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)dsycfvoega_matmul_readvariableop_resource+dsycfvoega_matmul_1_readvariableop_resource*dsycfvoega_biasadd_readvariableop_resource"dsycfvoega_readvariableop_resource$dsycfvoega_readvariableop_1_resource$dsycfvoega_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_31217*
condR
while_cond_31216*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1�
IdentityIdentitytranspose_1:y:0"^dsycfvoega/BiasAdd/ReadVariableOp!^dsycfvoega/MatMul/ReadVariableOp#^dsycfvoega/MatMul_1/ReadVariableOp^dsycfvoega/ReadVariableOp^dsycfvoega/ReadVariableOp_1^dsycfvoega/ReadVariableOp_2^while*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2F
!dsycfvoega/BiasAdd/ReadVariableOp!dsycfvoega/BiasAdd/ReadVariableOp2D
 dsycfvoega/MatMul/ReadVariableOp dsycfvoega/MatMul/ReadVariableOp2H
"dsycfvoega/MatMul_1/ReadVariableOp"dsycfvoega/MatMul_1/ReadVariableOp26
dsycfvoega/ReadVariableOpdsycfvoega/ReadVariableOp2:
dsycfvoega/ReadVariableOp_1dsycfvoega/ReadVariableOp_12:
dsycfvoega/ReadVariableOp_2dsycfvoega/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
owshcilvwl_while_cond_301282
.owshcilvwl_while_owshcilvwl_while_loop_counter8
4owshcilvwl_while_owshcilvwl_while_maximum_iterations 
owshcilvwl_while_placeholder"
owshcilvwl_while_placeholder_1"
owshcilvwl_while_placeholder_2"
owshcilvwl_while_placeholder_34
0owshcilvwl_while_less_owshcilvwl_strided_slice_1I
Eowshcilvwl_while_owshcilvwl_while_cond_30128___redundant_placeholder0I
Eowshcilvwl_while_owshcilvwl_while_cond_30128___redundant_placeholder1I
Eowshcilvwl_while_owshcilvwl_while_cond_30128___redundant_placeholder2I
Eowshcilvwl_while_owshcilvwl_while_cond_30128___redundant_placeholder3I
Eowshcilvwl_while_owshcilvwl_while_cond_30128___redundant_placeholder4I
Eowshcilvwl_while_owshcilvwl_while_cond_30128___redundant_placeholder5I
Eowshcilvwl_while_owshcilvwl_while_cond_30128___redundant_placeholder6
owshcilvwl_while_identity
�
owshcilvwl/while/LessLessowshcilvwl_while_placeholder0owshcilvwl_while_less_owshcilvwl_strided_slice_1*
T0*
_output_shapes
: 2
owshcilvwl/while/Less~
owshcilvwl/while/IdentityIdentityowshcilvwl/while/Less:z:0*
T0
*
_output_shapes
: 2
owshcilvwl/while/Identity"?
owshcilvwl_while_identity"owshcilvwl/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
osutmzfngz_while_cond_299522
.osutmzfngz_while_osutmzfngz_while_loop_counter8
4osutmzfngz_while_osutmzfngz_while_maximum_iterations 
osutmzfngz_while_placeholder"
osutmzfngz_while_placeholder_1"
osutmzfngz_while_placeholder_2"
osutmzfngz_while_placeholder_34
0osutmzfngz_while_less_osutmzfngz_strided_slice_1I
Eosutmzfngz_while_osutmzfngz_while_cond_29952___redundant_placeholder0I
Eosutmzfngz_while_osutmzfngz_while_cond_29952___redundant_placeholder1I
Eosutmzfngz_while_osutmzfngz_while_cond_29952___redundant_placeholder2I
Eosutmzfngz_while_osutmzfngz_while_cond_29952___redundant_placeholder3I
Eosutmzfngz_while_osutmzfngz_while_cond_29952___redundant_placeholder4I
Eosutmzfngz_while_osutmzfngz_while_cond_29952___redundant_placeholder5I
Eosutmzfngz_while_osutmzfngz_while_cond_29952___redundant_placeholder6
osutmzfngz_while_identity
�
osutmzfngz/while/LessLessosutmzfngz_while_placeholder0osutmzfngz_while_less_osutmzfngz_strided_slice_1*
T0*
_output_shapes
: 2
osutmzfngz/while/Less~
osutmzfngz/while/IdentityIdentityosutmzfngz/while/Less:z:0*
T0
*
_output_shapes
: 2
osutmzfngz/while/Identity"?
osutmzfngz_while_identity"osutmzfngz/while/Identity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�h
�
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_32106

inputs<
)flzkvrshbq_matmul_readvariableop_resource:	 �>
+flzkvrshbq_matmul_1_readvariableop_resource:	 �9
*flzkvrshbq_biasadd_readvariableop_resource:	�0
"flzkvrshbq_readvariableop_resource: 2
$flzkvrshbq_readvariableop_1_resource: 2
$flzkvrshbq_readvariableop_2_resource: 
identity��!flzkvrshbq/BiasAdd/ReadVariableOp� flzkvrshbq/MatMul/ReadVariableOp�"flzkvrshbq/MatMul_1/ReadVariableOp�flzkvrshbq/ReadVariableOp�flzkvrshbq/ReadVariableOp_1�flzkvrshbq/ReadVariableOp_2�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
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
:��������� 2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_2�
 flzkvrshbq/MatMul/ReadVariableOpReadVariableOp)flzkvrshbq_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02"
 flzkvrshbq/MatMul/ReadVariableOp�
flzkvrshbq/MatMulMatMulstrided_slice_2:output:0(flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul�
"flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp+flzkvrshbq_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"flzkvrshbq/MatMul_1/ReadVariableOp�
flzkvrshbq/MatMul_1MatMulzeros:output:0*flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul_1�
flzkvrshbq/addAddV2flzkvrshbq/MatMul:product:0flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/add�
!flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp*flzkvrshbq_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!flzkvrshbq/BiasAdd/ReadVariableOp�
flzkvrshbq/BiasAddBiasAddflzkvrshbq/add:z:0)flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/BiasAddz
flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
flzkvrshbq/split/split_dim�
flzkvrshbq/splitSplit#flzkvrshbq/split/split_dim:output:0flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
flzkvrshbq/split�
flzkvrshbq/ReadVariableOpReadVariableOp"flzkvrshbq_readvariableop_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp�
flzkvrshbq/mulMul!flzkvrshbq/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul�
flzkvrshbq/add_1AddV2flzkvrshbq/split:output:0flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_1{
flzkvrshbq/SigmoidSigmoidflzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid�
flzkvrshbq/ReadVariableOp_1ReadVariableOp$flzkvrshbq_readvariableop_1_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_1�
flzkvrshbq/mul_1Mul#flzkvrshbq/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_1�
flzkvrshbq/add_2AddV2flzkvrshbq/split:output:1flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_2
flzkvrshbq/Sigmoid_1Sigmoidflzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_1�
flzkvrshbq/mul_2Mulflzkvrshbq/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_2w
flzkvrshbq/TanhTanhflzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh�
flzkvrshbq/mul_3Mulflzkvrshbq/Sigmoid:y:0flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_3�
flzkvrshbq/add_3AddV2flzkvrshbq/mul_2:z:0flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_3�
flzkvrshbq/ReadVariableOp_2ReadVariableOp$flzkvrshbq_readvariableop_2_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_2�
flzkvrshbq/mul_4Mul#flzkvrshbq/ReadVariableOp_2:value:0flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_4�
flzkvrshbq/add_4AddV2flzkvrshbq/split:output:3flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_4
flzkvrshbq/Sigmoid_2Sigmoidflzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_2v
flzkvrshbq/Tanh_1Tanhflzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh_1�
flzkvrshbq/mul_5Mulflzkvrshbq/Sigmoid_2:y:0flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)flzkvrshbq_matmul_readvariableop_resource+flzkvrshbq_matmul_1_readvariableop_resource*flzkvrshbq_biasadd_readvariableop_resource"flzkvrshbq_readvariableop_resource$flzkvrshbq_readvariableop_1_resource$flzkvrshbq_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_32005*
condR
while_cond_32004*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0"^flzkvrshbq/BiasAdd/ReadVariableOp!^flzkvrshbq/MatMul/ReadVariableOp#^flzkvrshbq/MatMul_1/ReadVariableOp^flzkvrshbq/ReadVariableOp^flzkvrshbq/ReadVariableOp_1^flzkvrshbq/ReadVariableOp_2^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� : : : : : : 2F
!flzkvrshbq/BiasAdd/ReadVariableOp!flzkvrshbq/BiasAdd/ReadVariableOp2D
 flzkvrshbq/MatMul/ReadVariableOp flzkvrshbq/MatMul/ReadVariableOp2H
"flzkvrshbq/MatMul_1/ReadVariableOp"flzkvrshbq/MatMul_1/ReadVariableOp26
flzkvrshbq/ReadVariableOpflzkvrshbq/ReadVariableOp2:
flzkvrshbq/ReadVariableOp_1flzkvrshbq/ReadVariableOp_12:
flzkvrshbq/ReadVariableOp_2flzkvrshbq/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
*__inference_owshcilvwl_layer_call_fn_32337

inputs
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_290332
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�)
�
while_body_27945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_flzkvrshbq_27969_0:	 �+
while_flzkvrshbq_27971_0:	 �'
while_flzkvrshbq_27973_0:	�&
while_flzkvrshbq_27975_0: &
while_flzkvrshbq_27977_0: &
while_flzkvrshbq_27979_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_flzkvrshbq_27969:	 �)
while_flzkvrshbq_27971:	 �%
while_flzkvrshbq_27973:	�$
while_flzkvrshbq_27975: $
while_flzkvrshbq_27977: $
while_flzkvrshbq_27979: ��(while/flzkvrshbq/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/flzkvrshbq/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_flzkvrshbq_27969_0while_flzkvrshbq_27971_0while_flzkvrshbq_27973_0while_flzkvrshbq_27975_0while_flzkvrshbq_27977_0while_flzkvrshbq_27979_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_279252*
(while/flzkvrshbq/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/flzkvrshbq/StatefulPartitionedCall:output:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/flzkvrshbq/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/flzkvrshbq/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/flzkvrshbq/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/flzkvrshbq/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity1while/flzkvrshbq/StatefulPartitionedCall:output:1)^while/flzkvrshbq/StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identity1while/flzkvrshbq/StatefulPartitionedCall:output:2)^while/flzkvrshbq/StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2
while/Identity_5"2
while_flzkvrshbq_27969while_flzkvrshbq_27969_0"2
while_flzkvrshbq_27971while_flzkvrshbq_27971_0"2
while_flzkvrshbq_27973while_flzkvrshbq_27973_0"2
while_flzkvrshbq_27975while_flzkvrshbq_27975_0"2
while_flzkvrshbq_27977while_flzkvrshbq_27977_0"2
while_flzkvrshbq_27979while_flzkvrshbq_27979_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2T
(while/flzkvrshbq/StatefulPartitionedCall(while/flzkvrshbq/StatefulPartitionedCall: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_owshcilvwl_layer_call_fn_32320
inputs_0
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_282882
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
�[
�
__inference__traced_save_32781
file_prefix0
,savev2_bpstkcuudk_kernel_read_readvariableop.
*savev2_bpstkcuudk_bias_read_readvariableop0
,savev2_oaettnoaty_kernel_read_readvariableop.
*savev2_oaettnoaty_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop;
7savev2_osutmzfngz_dsycfvoega_kernel_read_readvariableopE
Asavev2_osutmzfngz_dsycfvoega_recurrent_kernel_read_readvariableop9
5savev2_osutmzfngz_dsycfvoega_bias_read_readvariableopP
Lsavev2_osutmzfngz_dsycfvoega_input_gate_peephole_weights_read_readvariableopQ
Msavev2_osutmzfngz_dsycfvoega_forget_gate_peephole_weights_read_readvariableopQ
Msavev2_osutmzfngz_dsycfvoega_output_gate_peephole_weights_read_readvariableop;
7savev2_owshcilvwl_flzkvrshbq_kernel_read_readvariableopE
Asavev2_owshcilvwl_flzkvrshbq_recurrent_kernel_read_readvariableop9
5savev2_owshcilvwl_flzkvrshbq_bias_read_readvariableopP
Lsavev2_owshcilvwl_flzkvrshbq_input_gate_peephole_weights_read_readvariableopQ
Msavev2_owshcilvwl_flzkvrshbq_forget_gate_peephole_weights_read_readvariableopQ
Msavev2_owshcilvwl_flzkvrshbq_output_gate_peephole_weights_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop<
8savev2_rmsprop_bpstkcuudk_kernel_rms_read_readvariableop:
6savev2_rmsprop_bpstkcuudk_bias_rms_read_readvariableop<
8savev2_rmsprop_oaettnoaty_kernel_rms_read_readvariableop:
6savev2_rmsprop_oaettnoaty_bias_rms_read_readvariableopG
Csavev2_rmsprop_osutmzfngz_dsycfvoega_kernel_rms_read_readvariableopQ
Msavev2_rmsprop_osutmzfngz_dsycfvoega_recurrent_kernel_rms_read_readvariableopE
Asavev2_rmsprop_osutmzfngz_dsycfvoega_bias_rms_read_readvariableop\
Xsavev2_rmsprop_osutmzfngz_dsycfvoega_input_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_osutmzfngz_dsycfvoega_forget_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_osutmzfngz_dsycfvoega_output_gate_peephole_weights_rms_read_readvariableopG
Csavev2_rmsprop_owshcilvwl_flzkvrshbq_kernel_rms_read_readvariableopQ
Msavev2_rmsprop_owshcilvwl_flzkvrshbq_recurrent_kernel_rms_read_readvariableopE
Asavev2_rmsprop_owshcilvwl_flzkvrshbq_bias_rms_read_readvariableop\
Xsavev2_rmsprop_owshcilvwl_flzkvrshbq_input_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_owshcilvwl_flzkvrshbq_forget_gate_peephole_weights_rms_read_readvariableop]
Ysavev2_rmsprop_owshcilvwl_flzkvrshbq_output_gate_peephole_weights_rms_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBOtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_bpstkcuudk_kernel_read_readvariableop*savev2_bpstkcuudk_bias_read_readvariableop,savev2_oaettnoaty_kernel_read_readvariableop*savev2_oaettnoaty_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop7savev2_osutmzfngz_dsycfvoega_kernel_read_readvariableopAsavev2_osutmzfngz_dsycfvoega_recurrent_kernel_read_readvariableop5savev2_osutmzfngz_dsycfvoega_bias_read_readvariableopLsavev2_osutmzfngz_dsycfvoega_input_gate_peephole_weights_read_readvariableopMsavev2_osutmzfngz_dsycfvoega_forget_gate_peephole_weights_read_readvariableopMsavev2_osutmzfngz_dsycfvoega_output_gate_peephole_weights_read_readvariableop7savev2_owshcilvwl_flzkvrshbq_kernel_read_readvariableopAsavev2_owshcilvwl_flzkvrshbq_recurrent_kernel_read_readvariableop5savev2_owshcilvwl_flzkvrshbq_bias_read_readvariableopLsavev2_owshcilvwl_flzkvrshbq_input_gate_peephole_weights_read_readvariableopMsavev2_owshcilvwl_flzkvrshbq_forget_gate_peephole_weights_read_readvariableopMsavev2_owshcilvwl_flzkvrshbq_output_gate_peephole_weights_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop8savev2_rmsprop_bpstkcuudk_kernel_rms_read_readvariableop6savev2_rmsprop_bpstkcuudk_bias_rms_read_readvariableop8savev2_rmsprop_oaettnoaty_kernel_rms_read_readvariableop6savev2_rmsprop_oaettnoaty_bias_rms_read_readvariableopCsavev2_rmsprop_osutmzfngz_dsycfvoega_kernel_rms_read_readvariableopMsavev2_rmsprop_osutmzfngz_dsycfvoega_recurrent_kernel_rms_read_readvariableopAsavev2_rmsprop_osutmzfngz_dsycfvoega_bias_rms_read_readvariableopXsavev2_rmsprop_osutmzfngz_dsycfvoega_input_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_osutmzfngz_dsycfvoega_forget_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_osutmzfngz_dsycfvoega_output_gate_peephole_weights_rms_read_readvariableopCsavev2_rmsprop_owshcilvwl_flzkvrshbq_kernel_rms_read_readvariableopMsavev2_rmsprop_owshcilvwl_flzkvrshbq_recurrent_kernel_rms_read_readvariableopAsavev2_rmsprop_owshcilvwl_flzkvrshbq_bias_rms_read_readvariableopXsavev2_rmsprop_owshcilvwl_flzkvrshbq_input_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_owshcilvwl_flzkvrshbq_forget_gate_peephole_weights_rms_read_readvariableopYsavev2_rmsprop_owshcilvwl_flzkvrshbq_output_gate_peephole_weights_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: ::: :: : : : : :	�:	 �:�: : : :	 �:	 �:�: : : : : ::: ::	�:	 �:�: : : :	 �:	 �:�: : : : 2(
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
:	�:%!

_output_shapes
:	 �:!

_output_shapes	
:�: 
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
:	 �:%!

_output_shapes
:	 �:!

_output_shapes	
:�: 
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
:	�:%!

_output_shapes
:	 �:!

_output_shapes	
:�: 
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
:	 �:%#!

_output_shapes
:	 �:!$

_output_shapes	
:�: %
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
�	
�
while_cond_31396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_31396___redundant_placeholder03
/while_while_cond_31396___redundant_placeholder13
/while_while_cond_31396___redundant_placeholder23
/while_while_cond_31396___redundant_placeholder33
/while_while_cond_31396___redundant_placeholder43
/while_while_cond_31396___redundant_placeholder53
/while_while_cond_31396___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�	
�
*__inference_osutmzfngz_layer_call_fn_31532
inputs_0
unknown:	�
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_275302
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�	
�
while_cond_27449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_27449___redundant_placeholder03
/while_while_cond_27449___redundant_placeholder13
/while_while_cond_27449___redundant_placeholder23
/while_while_cond_27449___redundant_placeholder33
/while_while_cond_27449___redundant_placeholder43
/while_while_cond_27449___redundant_placeholder53
/while_while_cond_27449___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�h
�
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_29522

inputs<
)dsycfvoega_matmul_readvariableop_resource:	�>
+dsycfvoega_matmul_1_readvariableop_resource:	 �9
*dsycfvoega_biasadd_readvariableop_resource:	�0
"dsycfvoega_readvariableop_resource: 2
$dsycfvoega_readvariableop_1_resource: 2
$dsycfvoega_readvariableop_2_resource: 
identity��!dsycfvoega/BiasAdd/ReadVariableOp� dsycfvoega/MatMul/ReadVariableOp�"dsycfvoega/MatMul_1/ReadVariableOp�dsycfvoega/ReadVariableOp�dsycfvoega/ReadVariableOp_1�dsycfvoega/ReadVariableOp_2�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
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
:���������2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
 dsycfvoega/MatMul/ReadVariableOpReadVariableOp)dsycfvoega_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02"
 dsycfvoega/MatMul/ReadVariableOp�
dsycfvoega/MatMulMatMulstrided_slice_2:output:0(dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul�
"dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp+dsycfvoega_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"dsycfvoega/MatMul_1/ReadVariableOp�
dsycfvoega/MatMul_1MatMulzeros:output:0*dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/MatMul_1�
dsycfvoega/addAddV2dsycfvoega/MatMul:product:0dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
dsycfvoega/add�
!dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp*dsycfvoega_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!dsycfvoega/BiasAdd/ReadVariableOp�
dsycfvoega/BiasAddBiasAdddsycfvoega/add:z:0)dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dsycfvoega/BiasAddz
dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
dsycfvoega/split/split_dim�
dsycfvoega/splitSplit#dsycfvoega/split/split_dim:output:0dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
dsycfvoega/split�
dsycfvoega/ReadVariableOpReadVariableOp"dsycfvoega_readvariableop_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp�
dsycfvoega/mulMul!dsycfvoega/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul�
dsycfvoega/add_1AddV2dsycfvoega/split:output:0dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_1{
dsycfvoega/SigmoidSigmoiddsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid�
dsycfvoega/ReadVariableOp_1ReadVariableOp$dsycfvoega_readvariableop_1_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_1�
dsycfvoega/mul_1Mul#dsycfvoega/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_1�
dsycfvoega/add_2AddV2dsycfvoega/split:output:1dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_2
dsycfvoega/Sigmoid_1Sigmoiddsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_1�
dsycfvoega/mul_2Muldsycfvoega/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_2w
dsycfvoega/TanhTanhdsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh�
dsycfvoega/mul_3Muldsycfvoega/Sigmoid:y:0dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_3�
dsycfvoega/add_3AddV2dsycfvoega/mul_2:z:0dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_3�
dsycfvoega/ReadVariableOp_2ReadVariableOp$dsycfvoega_readvariableop_2_resource*
_output_shapes
: *
dtype02
dsycfvoega/ReadVariableOp_2�
dsycfvoega/mul_4Mul#dsycfvoega/ReadVariableOp_2:value:0dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_4�
dsycfvoega/add_4AddV2dsycfvoega/split:output:3dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/add_4
dsycfvoega/Sigmoid_2Sigmoiddsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Sigmoid_2v
dsycfvoega/Tanh_1Tanhdsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/Tanh_1�
dsycfvoega/mul_5Muldsycfvoega/Sigmoid_2:y:0dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
dsycfvoega/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)dsycfvoega_matmul_readvariableop_resource+dsycfvoega_matmul_1_readvariableop_resource*dsycfvoega_biasadd_readvariableop_resource"dsycfvoega_readvariableop_resource$dsycfvoega_readvariableop_1_resource$dsycfvoega_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_29421*
condR
while_cond_29420*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1�
IdentityIdentitytranspose_1:y:0"^dsycfvoega/BiasAdd/ReadVariableOp!^dsycfvoega/MatMul/ReadVariableOp#^dsycfvoega/MatMul_1/ReadVariableOp^dsycfvoega/ReadVariableOp^dsycfvoega/ReadVariableOp_1^dsycfvoega/ReadVariableOp_2^while*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2F
!dsycfvoega/BiasAdd/ReadVariableOp!dsycfvoega/BiasAdd/ReadVariableOp2D
 dsycfvoega/MatMul/ReadVariableOp dsycfvoega/MatMul/ReadVariableOp2H
"dsycfvoega/MatMul_1/ReadVariableOp"dsycfvoega/MatMul_1/ReadVariableOp26
dsycfvoega/ReadVariableOpdsycfvoega/ReadVariableOp2:
dsycfvoega/ReadVariableOp_1dsycfvoega/ReadVariableOp_12:
dsycfvoega/ReadVariableOp_2dsycfvoega/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�Y
�
while_body_31397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_dsycfvoega_matmul_readvariableop_resource_0:	�F
3while_dsycfvoega_matmul_1_readvariableop_resource_0:	 �A
2while_dsycfvoega_biasadd_readvariableop_resource_0:	�8
*while_dsycfvoega_readvariableop_resource_0: :
,while_dsycfvoega_readvariableop_1_resource_0: :
,while_dsycfvoega_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_dsycfvoega_matmul_readvariableop_resource:	�D
1while_dsycfvoega_matmul_1_readvariableop_resource:	 �?
0while_dsycfvoega_biasadd_readvariableop_resource:	�6
(while_dsycfvoega_readvariableop_resource: 8
*while_dsycfvoega_readvariableop_1_resource: 8
*while_dsycfvoega_readvariableop_2_resource: ��'while/dsycfvoega/BiasAdd/ReadVariableOp�&while/dsycfvoega/MatMul/ReadVariableOp�(while/dsycfvoega/MatMul_1/ReadVariableOp�while/dsycfvoega/ReadVariableOp�!while/dsycfvoega/ReadVariableOp_1�!while/dsycfvoega/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/dsycfvoega/MatMul/ReadVariableOpReadVariableOp1while_dsycfvoega_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02(
&while/dsycfvoega/MatMul/ReadVariableOp�
while/dsycfvoega/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul�
(while/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp3while_dsycfvoega_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/dsycfvoega/MatMul_1/ReadVariableOp�
while/dsycfvoega/MatMul_1MatMulwhile_placeholder_20while/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul_1�
while/dsycfvoega/addAddV2!while/dsycfvoega/MatMul:product:0#while/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/add�
'while/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp2while_dsycfvoega_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/dsycfvoega/BiasAdd/ReadVariableOp�
while/dsycfvoega/BiasAddBiasAddwhile/dsycfvoega/add:z:0/while/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/BiasAdd�
 while/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/dsycfvoega/split/split_dim�
while/dsycfvoega/splitSplit)while/dsycfvoega/split/split_dim:output:0!while/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/dsycfvoega/split�
while/dsycfvoega/ReadVariableOpReadVariableOp*while_dsycfvoega_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/dsycfvoega/ReadVariableOp�
while/dsycfvoega/mulMul'while/dsycfvoega/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul�
while/dsycfvoega/add_1AddV2while/dsycfvoega/split:output:0while/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_1�
while/dsycfvoega/SigmoidSigmoidwhile/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid�
!while/dsycfvoega/ReadVariableOp_1ReadVariableOp,while_dsycfvoega_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_1�
while/dsycfvoega/mul_1Mul)while/dsycfvoega/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_1�
while/dsycfvoega/add_2AddV2while/dsycfvoega/split:output:1while/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_2�
while/dsycfvoega/Sigmoid_1Sigmoidwhile/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_1�
while/dsycfvoega/mul_2Mulwhile/dsycfvoega/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_2�
while/dsycfvoega/TanhTanhwhile/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh�
while/dsycfvoega/mul_3Mulwhile/dsycfvoega/Sigmoid:y:0while/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_3�
while/dsycfvoega/add_3AddV2while/dsycfvoega/mul_2:z:0while/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_3�
!while/dsycfvoega/ReadVariableOp_2ReadVariableOp,while_dsycfvoega_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_2�
while/dsycfvoega/mul_4Mul)while/dsycfvoega/ReadVariableOp_2:value:0while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_4�
while/dsycfvoega/add_4AddV2while/dsycfvoega/split:output:3while/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_4�
while/dsycfvoega/Sigmoid_2Sigmoidwhile/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_2�
while/dsycfvoega/Tanh_1Tanhwhile/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh_1�
while/dsycfvoega/mul_5Mulwhile/dsycfvoega/Sigmoid_2:y:0while/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/dsycfvoega/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/dsycfvoega/mul_5:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/dsycfvoega/add_3:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_dsycfvoega_biasadd_readvariableop_resource2while_dsycfvoega_biasadd_readvariableop_resource_0"h
1while_dsycfvoega_matmul_1_readvariableop_resource3while_dsycfvoega_matmul_1_readvariableop_resource_0"d
/while_dsycfvoega_matmul_readvariableop_resource1while_dsycfvoega_matmul_readvariableop_resource_0"Z
*while_dsycfvoega_readvariableop_1_resource,while_dsycfvoega_readvariableop_1_resource_0"Z
*while_dsycfvoega_readvariableop_2_resource,while_dsycfvoega_readvariableop_2_resource_0"V
(while_dsycfvoega_readvariableop_resource*while_dsycfvoega_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/dsycfvoega/BiasAdd/ReadVariableOp'while/dsycfvoega/BiasAdd/ReadVariableOp2P
&while/dsycfvoega/MatMul/ReadVariableOp&while/dsycfvoega/MatMul/ReadVariableOp2T
(while/dsycfvoega/MatMul_1/ReadVariableOp(while/dsycfvoega/MatMul_1/ReadVariableOp2B
while/dsycfvoega/ReadVariableOpwhile/dsycfvoega/ReadVariableOp2F
!while/dsycfvoega/ReadVariableOp_1!while/dsycfvoega/ReadVariableOp_12F
!while/dsycfvoega/ReadVariableOp_2!while/dsycfvoega/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�Y
�
while_body_32005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_flzkvrshbq_matmul_readvariableop_resource_0:	 �F
3while_flzkvrshbq_matmul_1_readvariableop_resource_0:	 �A
2while_flzkvrshbq_biasadd_readvariableop_resource_0:	�8
*while_flzkvrshbq_readvariableop_resource_0: :
,while_flzkvrshbq_readvariableop_1_resource_0: :
,while_flzkvrshbq_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_flzkvrshbq_matmul_readvariableop_resource:	 �D
1while_flzkvrshbq_matmul_1_readvariableop_resource:	 �?
0while_flzkvrshbq_biasadd_readvariableop_resource:	�6
(while_flzkvrshbq_readvariableop_resource: 8
*while_flzkvrshbq_readvariableop_1_resource: 8
*while_flzkvrshbq_readvariableop_2_resource: ��'while/flzkvrshbq/BiasAdd/ReadVariableOp�&while/flzkvrshbq/MatMul/ReadVariableOp�(while/flzkvrshbq/MatMul_1/ReadVariableOp�while/flzkvrshbq/ReadVariableOp�!while/flzkvrshbq/ReadVariableOp_1�!while/flzkvrshbq/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/flzkvrshbq/MatMul/ReadVariableOpReadVariableOp1while_flzkvrshbq_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02(
&while/flzkvrshbq/MatMul/ReadVariableOp�
while/flzkvrshbq/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul�
(while/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp3while_flzkvrshbq_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/flzkvrshbq/MatMul_1/ReadVariableOp�
while/flzkvrshbq/MatMul_1MatMulwhile_placeholder_20while/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul_1�
while/flzkvrshbq/addAddV2!while/flzkvrshbq/MatMul:product:0#while/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/add�
'while/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp2while_flzkvrshbq_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/flzkvrshbq/BiasAdd/ReadVariableOp�
while/flzkvrshbq/BiasAddBiasAddwhile/flzkvrshbq/add:z:0/while/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/BiasAdd�
 while/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/flzkvrshbq/split/split_dim�
while/flzkvrshbq/splitSplit)while/flzkvrshbq/split/split_dim:output:0!while/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/flzkvrshbq/split�
while/flzkvrshbq/ReadVariableOpReadVariableOp*while_flzkvrshbq_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/flzkvrshbq/ReadVariableOp�
while/flzkvrshbq/mulMul'while/flzkvrshbq/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul�
while/flzkvrshbq/add_1AddV2while/flzkvrshbq/split:output:0while/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_1�
while/flzkvrshbq/SigmoidSigmoidwhile/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid�
!while/flzkvrshbq/ReadVariableOp_1ReadVariableOp,while_flzkvrshbq_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_1�
while/flzkvrshbq/mul_1Mul)while/flzkvrshbq/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_1�
while/flzkvrshbq/add_2AddV2while/flzkvrshbq/split:output:1while/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_2�
while/flzkvrshbq/Sigmoid_1Sigmoidwhile/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_1�
while/flzkvrshbq/mul_2Mulwhile/flzkvrshbq/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_2�
while/flzkvrshbq/TanhTanhwhile/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh�
while/flzkvrshbq/mul_3Mulwhile/flzkvrshbq/Sigmoid:y:0while/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_3�
while/flzkvrshbq/add_3AddV2while/flzkvrshbq/mul_2:z:0while/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_3�
!while/flzkvrshbq/ReadVariableOp_2ReadVariableOp,while_flzkvrshbq_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_2�
while/flzkvrshbq/mul_4Mul)while/flzkvrshbq/ReadVariableOp_2:value:0while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_4�
while/flzkvrshbq/add_4AddV2while/flzkvrshbq/split:output:3while/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_4�
while/flzkvrshbq/Sigmoid_2Sigmoidwhile/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_2�
while/flzkvrshbq/Tanh_1Tanhwhile/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh_1�
while/flzkvrshbq/mul_5Mulwhile/flzkvrshbq/Sigmoid_2:y:0while/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/flzkvrshbq/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/flzkvrshbq/mul_5:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/flzkvrshbq/add_3:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_flzkvrshbq_biasadd_readvariableop_resource2while_flzkvrshbq_biasadd_readvariableop_resource_0"h
1while_flzkvrshbq_matmul_1_readvariableop_resource3while_flzkvrshbq_matmul_1_readvariableop_resource_0"d
/while_flzkvrshbq_matmul_readvariableop_resource1while_flzkvrshbq_matmul_readvariableop_resource_0"Z
*while_flzkvrshbq_readvariableop_1_resource,while_flzkvrshbq_readvariableop_1_resource_0"Z
*while_flzkvrshbq_readvariableop_2_resource,while_flzkvrshbq_readvariableop_2_resource_0"V
(while_flzkvrshbq_readvariableop_resource*while_flzkvrshbq_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/flzkvrshbq/BiasAdd/ReadVariableOp'while/flzkvrshbq/BiasAdd/ReadVariableOp2P
&while/flzkvrshbq/MatMul/ReadVariableOp&while/flzkvrshbq/MatMul/ReadVariableOp2T
(while/flzkvrshbq/MatMul_1/ReadVariableOp(while/flzkvrshbq/MatMul_1/ReadVariableOp2B
while/flzkvrshbq/ReadVariableOpwhile/flzkvrshbq/ReadVariableOp2F
!while/flzkvrshbq/ReadVariableOp_1!while/flzkvrshbq/ReadVariableOp_12F
!while/flzkvrshbq/ReadVariableOp_2!while/flzkvrshbq/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�	
�
while_cond_28931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_28931___redundant_placeholder03
/while_while_cond_28931___redundant_placeholder13
/while_while_cond_28931___redundant_placeholder23
/while_while_cond_28931___redundant_placeholder33
/while_while_cond_28931___redundant_placeholder43
/while_while_cond_28931___redundant_placeholder53
/while_while_cond_28931___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�h
�
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_32286

inputs<
)flzkvrshbq_matmul_readvariableop_resource:	 �>
+flzkvrshbq_matmul_1_readvariableop_resource:	 �9
*flzkvrshbq_biasadd_readvariableop_resource:	�0
"flzkvrshbq_readvariableop_resource: 2
$flzkvrshbq_readvariableop_1_resource: 2
$flzkvrshbq_readvariableop_2_resource: 
identity��!flzkvrshbq/BiasAdd/ReadVariableOp� flzkvrshbq/MatMul/ReadVariableOp�"flzkvrshbq/MatMul_1/ReadVariableOp�flzkvrshbq/ReadVariableOp�flzkvrshbq/ReadVariableOp_1�flzkvrshbq/ReadVariableOp_2�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
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
:��������� 2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_2�
 flzkvrshbq/MatMul/ReadVariableOpReadVariableOp)flzkvrshbq_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02"
 flzkvrshbq/MatMul/ReadVariableOp�
flzkvrshbq/MatMulMatMulstrided_slice_2:output:0(flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul�
"flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp+flzkvrshbq_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02$
"flzkvrshbq/MatMul_1/ReadVariableOp�
flzkvrshbq/MatMul_1MatMulzeros:output:0*flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/MatMul_1�
flzkvrshbq/addAddV2flzkvrshbq/MatMul:product:0flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/add�
!flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp*flzkvrshbq_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!flzkvrshbq/BiasAdd/ReadVariableOp�
flzkvrshbq/BiasAddBiasAddflzkvrshbq/add:z:0)flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
flzkvrshbq/BiasAddz
flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
flzkvrshbq/split/split_dim�
flzkvrshbq/splitSplit#flzkvrshbq/split/split_dim:output:0flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
flzkvrshbq/split�
flzkvrshbq/ReadVariableOpReadVariableOp"flzkvrshbq_readvariableop_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp�
flzkvrshbq/mulMul!flzkvrshbq/ReadVariableOp:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul�
flzkvrshbq/add_1AddV2flzkvrshbq/split:output:0flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_1{
flzkvrshbq/SigmoidSigmoidflzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid�
flzkvrshbq/ReadVariableOp_1ReadVariableOp$flzkvrshbq_readvariableop_1_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_1�
flzkvrshbq/mul_1Mul#flzkvrshbq/ReadVariableOp_1:value:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_1�
flzkvrshbq/add_2AddV2flzkvrshbq/split:output:1flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_2
flzkvrshbq/Sigmoid_1Sigmoidflzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_1�
flzkvrshbq/mul_2Mulflzkvrshbq/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_2w
flzkvrshbq/TanhTanhflzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh�
flzkvrshbq/mul_3Mulflzkvrshbq/Sigmoid:y:0flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_3�
flzkvrshbq/add_3AddV2flzkvrshbq/mul_2:z:0flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_3�
flzkvrshbq/ReadVariableOp_2ReadVariableOp$flzkvrshbq_readvariableop_2_resource*
_output_shapes
: *
dtype02
flzkvrshbq/ReadVariableOp_2�
flzkvrshbq/mul_4Mul#flzkvrshbq/ReadVariableOp_2:value:0flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_4�
flzkvrshbq/add_4AddV2flzkvrshbq/split:output:3flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/add_4
flzkvrshbq/Sigmoid_2Sigmoidflzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Sigmoid_2v
flzkvrshbq/Tanh_1Tanhflzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/Tanh_1�
flzkvrshbq/mul_5Mulflzkvrshbq/Sigmoid_2:y:0flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
flzkvrshbq/mul_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)flzkvrshbq_matmul_readvariableop_resource+flzkvrshbq_matmul_1_readvariableop_resource*flzkvrshbq_biasadd_readvariableop_resource"flzkvrshbq_readvariableop_resource$flzkvrshbq_readvariableop_1_resource$flzkvrshbq_readvariableop_2_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_32185*
condR
while_cond_32184*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0"^flzkvrshbq/BiasAdd/ReadVariableOp!^flzkvrshbq/MatMul/ReadVariableOp#^flzkvrshbq/MatMul_1/ReadVariableOp^flzkvrshbq/ReadVariableOp^flzkvrshbq/ReadVariableOp_1^flzkvrshbq/ReadVariableOp_2^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:��������� : : : : : : 2F
!flzkvrshbq/BiasAdd/ReadVariableOp!flzkvrshbq/BiasAdd/ReadVariableOp2D
 flzkvrshbq/MatMul/ReadVariableOp flzkvrshbq/MatMul/ReadVariableOp2H
"flzkvrshbq/MatMul_1/ReadVariableOp"flzkvrshbq/MatMul_1/ReadVariableOp26
flzkvrshbq/ReadVariableOpflzkvrshbq/ReadVariableOp2:
flzkvrshbq/ReadVariableOp_1flzkvrshbq/ReadVariableOp_12:
flzkvrshbq/ReadVariableOp_2flzkvrshbq/ReadVariableOp_22
whilewhile:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�p
�
osutmzfngz_while_body_303572
.osutmzfngz_while_osutmzfngz_while_loop_counter8
4osutmzfngz_while_osutmzfngz_while_maximum_iterations 
osutmzfngz_while_placeholder"
osutmzfngz_while_placeholder_1"
osutmzfngz_while_placeholder_2"
osutmzfngz_while_placeholder_31
-osutmzfngz_while_osutmzfngz_strided_slice_1_0m
iosutmzfngz_while_tensorarrayv2read_tensorlistgetitem_osutmzfngz_tensorarrayunstack_tensorlistfromtensor_0O
<osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource_0:	�Q
>osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource_0:	 �L
=osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource_0:	�C
5osutmzfngz_while_dsycfvoega_readvariableop_resource_0: E
7osutmzfngz_while_dsycfvoega_readvariableop_1_resource_0: E
7osutmzfngz_while_dsycfvoega_readvariableop_2_resource_0: 
osutmzfngz_while_identity
osutmzfngz_while_identity_1
osutmzfngz_while_identity_2
osutmzfngz_while_identity_3
osutmzfngz_while_identity_4
osutmzfngz_while_identity_5/
+osutmzfngz_while_osutmzfngz_strided_slice_1k
gosutmzfngz_while_tensorarrayv2read_tensorlistgetitem_osutmzfngz_tensorarrayunstack_tensorlistfromtensorM
:osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource:	�O
<osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource:	 �J
;osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource:	�A
3osutmzfngz_while_dsycfvoega_readvariableop_resource: C
5osutmzfngz_while_dsycfvoega_readvariableop_1_resource: C
5osutmzfngz_while_dsycfvoega_readvariableop_2_resource: ��2osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp�1osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp�3osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp�*osutmzfngz/while/dsycfvoega/ReadVariableOp�,osutmzfngz/while/dsycfvoega/ReadVariableOp_1�,osutmzfngz/while/dsycfvoega/ReadVariableOp_2�
Bosutmzfngz/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2D
Bosutmzfngz/while/TensorArrayV2Read/TensorListGetItem/element_shape�
4osutmzfngz/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemiosutmzfngz_while_tensorarrayv2read_tensorlistgetitem_osutmzfngz_tensorarrayunstack_tensorlistfromtensor_0osutmzfngz_while_placeholderKosutmzfngz/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype026
4osutmzfngz/while/TensorArrayV2Read/TensorListGetItem�
1osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOpReadVariableOp<osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype023
1osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp�
"osutmzfngz/while/dsycfvoega/MatMulMatMul;osutmzfngz/while/TensorArrayV2Read/TensorListGetItem:item:09osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"osutmzfngz/while/dsycfvoega/MatMul�
3osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp>osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype025
3osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp�
$osutmzfngz/while/dsycfvoega/MatMul_1MatMulosutmzfngz_while_placeholder_2;osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$osutmzfngz/while/dsycfvoega/MatMul_1�
osutmzfngz/while/dsycfvoega/addAddV2,osutmzfngz/while/dsycfvoega/MatMul:product:0.osutmzfngz/while/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2!
osutmzfngz/while/dsycfvoega/add�
2osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp=osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype024
2osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp�
#osutmzfngz/while/dsycfvoega/BiasAddBiasAdd#osutmzfngz/while/dsycfvoega/add:z:0:osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#osutmzfngz/while/dsycfvoega/BiasAdd�
+osutmzfngz/while/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+osutmzfngz/while/dsycfvoega/split/split_dim�
!osutmzfngz/while/dsycfvoega/splitSplit4osutmzfngz/while/dsycfvoega/split/split_dim:output:0,osutmzfngz/while/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2#
!osutmzfngz/while/dsycfvoega/split�
*osutmzfngz/while/dsycfvoega/ReadVariableOpReadVariableOp5osutmzfngz_while_dsycfvoega_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*osutmzfngz/while/dsycfvoega/ReadVariableOp�
osutmzfngz/while/dsycfvoega/mulMul2osutmzfngz/while/dsycfvoega/ReadVariableOp:value:0osutmzfngz_while_placeholder_3*
T0*'
_output_shapes
:��������� 2!
osutmzfngz/while/dsycfvoega/mul�
!osutmzfngz/while/dsycfvoega/add_1AddV2*osutmzfngz/while/dsycfvoega/split:output:0#osutmzfngz/while/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/add_1�
#osutmzfngz/while/dsycfvoega/SigmoidSigmoid%osutmzfngz/while/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2%
#osutmzfngz/while/dsycfvoega/Sigmoid�
,osutmzfngz/while/dsycfvoega/ReadVariableOp_1ReadVariableOp7osutmzfngz_while_dsycfvoega_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,osutmzfngz/while/dsycfvoega/ReadVariableOp_1�
!osutmzfngz/while/dsycfvoega/mul_1Mul4osutmzfngz/while/dsycfvoega/ReadVariableOp_1:value:0osutmzfngz_while_placeholder_3*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/mul_1�
!osutmzfngz/while/dsycfvoega/add_2AddV2*osutmzfngz/while/dsycfvoega/split:output:1%osutmzfngz/while/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/add_2�
%osutmzfngz/while/dsycfvoega/Sigmoid_1Sigmoid%osutmzfngz/while/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2'
%osutmzfngz/while/dsycfvoega/Sigmoid_1�
!osutmzfngz/while/dsycfvoega/mul_2Mul)osutmzfngz/while/dsycfvoega/Sigmoid_1:y:0osutmzfngz_while_placeholder_3*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/mul_2�
 osutmzfngz/while/dsycfvoega/TanhTanh*osutmzfngz/while/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2"
 osutmzfngz/while/dsycfvoega/Tanh�
!osutmzfngz/while/dsycfvoega/mul_3Mul'osutmzfngz/while/dsycfvoega/Sigmoid:y:0$osutmzfngz/while/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/mul_3�
!osutmzfngz/while/dsycfvoega/add_3AddV2%osutmzfngz/while/dsycfvoega/mul_2:z:0%osutmzfngz/while/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/add_3�
,osutmzfngz/while/dsycfvoega/ReadVariableOp_2ReadVariableOp7osutmzfngz_while_dsycfvoega_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,osutmzfngz/while/dsycfvoega/ReadVariableOp_2�
!osutmzfngz/while/dsycfvoega/mul_4Mul4osutmzfngz/while/dsycfvoega/ReadVariableOp_2:value:0%osutmzfngz/while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/mul_4�
!osutmzfngz/while/dsycfvoega/add_4AddV2*osutmzfngz/while/dsycfvoega/split:output:3%osutmzfngz/while/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/add_4�
%osutmzfngz/while/dsycfvoega/Sigmoid_2Sigmoid%osutmzfngz/while/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2'
%osutmzfngz/while/dsycfvoega/Sigmoid_2�
"osutmzfngz/while/dsycfvoega/Tanh_1Tanh%osutmzfngz/while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2$
"osutmzfngz/while/dsycfvoega/Tanh_1�
!osutmzfngz/while/dsycfvoega/mul_5Mul)osutmzfngz/while/dsycfvoega/Sigmoid_2:y:0&osutmzfngz/while/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2#
!osutmzfngz/while/dsycfvoega/mul_5�
5osutmzfngz/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemosutmzfngz_while_placeholder_1osutmzfngz_while_placeholder%osutmzfngz/while/dsycfvoega/mul_5:z:0*
_output_shapes
: *
element_dtype027
5osutmzfngz/while/TensorArrayV2Write/TensorListSetItemr
osutmzfngz/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
osutmzfngz/while/add/y�
osutmzfngz/while/addAddV2osutmzfngz_while_placeholderosutmzfngz/while/add/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/while/addv
osutmzfngz/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
osutmzfngz/while/add_1/y�
osutmzfngz/while/add_1AddV2.osutmzfngz_while_osutmzfngz_while_loop_counter!osutmzfngz/while/add_1/y:output:0*
T0*
_output_shapes
: 2
osutmzfngz/while/add_1�
osutmzfngz/while/IdentityIdentityosutmzfngz/while/add_1:z:03^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
osutmzfngz/while/Identity�
osutmzfngz/while/Identity_1Identity4osutmzfngz_while_osutmzfngz_while_maximum_iterations3^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
osutmzfngz/while/Identity_1�
osutmzfngz/while/Identity_2Identityosutmzfngz/while/add:z:03^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
osutmzfngz/while/Identity_2�
osutmzfngz/while/Identity_3IdentityEosutmzfngz/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
osutmzfngz/while/Identity_3�
osutmzfngz/while/Identity_4Identity%osutmzfngz/while/dsycfvoega/mul_5:z:03^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
osutmzfngz/while/Identity_4�
osutmzfngz/while/Identity_5Identity%osutmzfngz/while/dsycfvoega/add_3:z:03^osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2^osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp4^osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp+^osutmzfngz/while/dsycfvoega/ReadVariableOp-^osutmzfngz/while/dsycfvoega/ReadVariableOp_1-^osutmzfngz/while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
osutmzfngz/while/Identity_5"|
;osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource=osutmzfngz_while_dsycfvoega_biasadd_readvariableop_resource_0"~
<osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource>osutmzfngz_while_dsycfvoega_matmul_1_readvariableop_resource_0"z
:osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource<osutmzfngz_while_dsycfvoega_matmul_readvariableop_resource_0"p
5osutmzfngz_while_dsycfvoega_readvariableop_1_resource7osutmzfngz_while_dsycfvoega_readvariableop_1_resource_0"p
5osutmzfngz_while_dsycfvoega_readvariableop_2_resource7osutmzfngz_while_dsycfvoega_readvariableop_2_resource_0"l
3osutmzfngz_while_dsycfvoega_readvariableop_resource5osutmzfngz_while_dsycfvoega_readvariableop_resource_0"?
osutmzfngz_while_identity"osutmzfngz/while/Identity:output:0"C
osutmzfngz_while_identity_1$osutmzfngz/while/Identity_1:output:0"C
osutmzfngz_while_identity_2$osutmzfngz/while/Identity_2:output:0"C
osutmzfngz_while_identity_3$osutmzfngz/while/Identity_3:output:0"C
osutmzfngz_while_identity_4$osutmzfngz/while/Identity_4:output:0"C
osutmzfngz_while_identity_5$osutmzfngz/while/Identity_5:output:0"\
+osutmzfngz_while_osutmzfngz_strided_slice_1-osutmzfngz_while_osutmzfngz_strided_slice_1_0"�
gosutmzfngz_while_tensorarrayv2read_tensorlistgetitem_osutmzfngz_tensorarrayunstack_tensorlistfromtensoriosutmzfngz_while_tensorarrayv2read_tensorlistgetitem_osutmzfngz_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2h
2osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2osutmzfngz/while/dsycfvoega/BiasAdd/ReadVariableOp2f
1osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp1osutmzfngz/while/dsycfvoega/MatMul/ReadVariableOp2j
3osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp3osutmzfngz/while/dsycfvoega/MatMul_1/ReadVariableOp2X
*osutmzfngz/while/dsycfvoega/ReadVariableOp*osutmzfngz/while/dsycfvoega/ReadVariableOp2\
,osutmzfngz/while/dsycfvoega/ReadVariableOp_1,osutmzfngz/while/dsycfvoega/ReadVariableOp_12\
,osutmzfngz/while/dsycfvoega/ReadVariableOp_2,osutmzfngz/while/dsycfvoega/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�0
�
E__inference_bpstkcuudk_layer_call_and_return_conditional_losses_30751

inputsA
+conv1d_expanddims_1_readvariableop_resource:@
2squeeze_batch_dims_biasadd_readvariableop_resource:
identity��"conv1d/ExpandDims_1/ReadVariableOp�)squeeze_batch_dims/BiasAdd/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2
conv1d/ExpandDims�
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
conv1d/ExpandDims_1/dim�
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
conv1d/Shape�
conv1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
conv1d/strided_slice/stack�
conv1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2
conv1d/strided_slice/stack_1�
conv1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
conv1d/strided_slice/stack_2�
conv1d/strided_sliceStridedSliceconv1d/Shape:output:0#conv1d/strided_slice/stack:output:0%conv1d/strided_slice/stack_1:output:0%conv1d/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
conv1d/strided_slice�
conv1d/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2
conv1d/Reshape/shape�
conv1d/ReshapeReshapeconv1d/ExpandDims:output:0conv1d/Reshape/shape:output:0*
T0*/
_output_shapes
:���������2
conv1d/Reshape�
conv1d/Conv2DConv2Dconv1d/Reshape:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
2
conv1d/Conv2D�
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
���������2
conv1d/concat/axis�
conv1d/concatConcatV2conv1d/strided_slice:output:0conv1d/concat/values_1:output:0conv1d/concat/axis:output:0*
N*
T0*
_output_shapes
:2
conv1d/concat�
conv1d/Reshape_1Reshapeconv1d/Conv2D:output:0conv1d/concat:output:0*
T0*3
_output_shapes!
:���������2
conv1d/Reshape_1�
conv1d/SqueezeSqueezeconv1d/Reshape_1:output:0*
T0*/
_output_shapes
:���������*
squeeze_dims

���������2
conv1d/Squeeze{
squeeze_batch_dims/ShapeShapeconv1d/Squeeze:output:0*
T0*
_output_shapes
:2
squeeze_batch_dims/Shape�
&squeeze_batch_dims/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&squeeze_batch_dims/strided_slice/stack�
(squeeze_batch_dims/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������2*
(squeeze_batch_dims/strided_slice/stack_1�
(squeeze_batch_dims/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(squeeze_batch_dims/strided_slice/stack_2�
 squeeze_batch_dims/strided_sliceStridedSlice!squeeze_batch_dims/Shape:output:0/squeeze_batch_dims/strided_slice/stack:output:01squeeze_batch_dims/strided_slice/stack_1:output:01squeeze_batch_dims/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 squeeze_batch_dims/strided_slice�
 squeeze_batch_dims/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2"
 squeeze_batch_dims/Reshape/shape�
squeeze_batch_dims/ReshapeReshapeconv1d/Squeeze:output:0)squeeze_batch_dims/Reshape/shape:output:0*
T0*+
_output_shapes
:���������2
squeeze_batch_dims/Reshape�
)squeeze_batch_dims/BiasAdd/ReadVariableOpReadVariableOp2squeeze_batch_dims_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)squeeze_batch_dims/BiasAdd/ReadVariableOp�
squeeze_batch_dims/BiasAddBiasAdd#squeeze_batch_dims/Reshape:output:01squeeze_batch_dims/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2
squeeze_batch_dims/BiasAdd�
"squeeze_batch_dims/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"squeeze_batch_dims/concat/values_1�
squeeze_batch_dims/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
squeeze_batch_dims/concat/axis�
squeeze_batch_dims/concatConcatV2)squeeze_batch_dims/strided_slice:output:0+squeeze_batch_dims/concat/values_1:output:0'squeeze_batch_dims/concat/axis:output:0*
N*
T0*
_output_shapes
:2
squeeze_batch_dims/concat�
squeeze_batch_dims/Reshape_1Reshape#squeeze_batch_dims/BiasAdd:output:0"squeeze_batch_dims/concat:output:0*
T0*/
_output_shapes
:���������2
squeeze_batch_dims/Reshape_1�
IdentityIdentity%squeeze_batch_dims/Reshape_1:output:0#^conv1d/ExpandDims_1/ReadVariableOp*^squeeze_batch_dims/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2V
)squeeze_batch_dims/BiasAdd/ReadVariableOp)squeeze_batch_dims/BiasAdd/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�Y
�
while_body_30857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_dsycfvoega_matmul_readvariableop_resource_0:	�F
3while_dsycfvoega_matmul_1_readvariableop_resource_0:	 �A
2while_dsycfvoega_biasadd_readvariableop_resource_0:	�8
*while_dsycfvoega_readvariableop_resource_0: :
,while_dsycfvoega_readvariableop_1_resource_0: :
,while_dsycfvoega_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_dsycfvoega_matmul_readvariableop_resource:	�D
1while_dsycfvoega_matmul_1_readvariableop_resource:	 �?
0while_dsycfvoega_biasadd_readvariableop_resource:	�6
(while_dsycfvoega_readvariableop_resource: 8
*while_dsycfvoega_readvariableop_1_resource: 8
*while_dsycfvoega_readvariableop_2_resource: ��'while/dsycfvoega/BiasAdd/ReadVariableOp�&while/dsycfvoega/MatMul/ReadVariableOp�(while/dsycfvoega/MatMul_1/ReadVariableOp�while/dsycfvoega/ReadVariableOp�!while/dsycfvoega/ReadVariableOp_1�!while/dsycfvoega/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/dsycfvoega/MatMul/ReadVariableOpReadVariableOp1while_dsycfvoega_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02(
&while/dsycfvoega/MatMul/ReadVariableOp�
while/dsycfvoega/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/dsycfvoega/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul�
(while/dsycfvoega/MatMul_1/ReadVariableOpReadVariableOp3while_dsycfvoega_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/dsycfvoega/MatMul_1/ReadVariableOp�
while/dsycfvoega/MatMul_1MatMulwhile_placeholder_20while/dsycfvoega/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/MatMul_1�
while/dsycfvoega/addAddV2!while/dsycfvoega/MatMul:product:0#while/dsycfvoega/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/add�
'while/dsycfvoega/BiasAdd/ReadVariableOpReadVariableOp2while_dsycfvoega_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/dsycfvoega/BiasAdd/ReadVariableOp�
while/dsycfvoega/BiasAddBiasAddwhile/dsycfvoega/add:z:0/while/dsycfvoega/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/dsycfvoega/BiasAdd�
 while/dsycfvoega/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/dsycfvoega/split/split_dim�
while/dsycfvoega/splitSplit)while/dsycfvoega/split/split_dim:output:0!while/dsycfvoega/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/dsycfvoega/split�
while/dsycfvoega/ReadVariableOpReadVariableOp*while_dsycfvoega_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/dsycfvoega/ReadVariableOp�
while/dsycfvoega/mulMul'while/dsycfvoega/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul�
while/dsycfvoega/add_1AddV2while/dsycfvoega/split:output:0while/dsycfvoega/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_1�
while/dsycfvoega/SigmoidSigmoidwhile/dsycfvoega/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid�
!while/dsycfvoega/ReadVariableOp_1ReadVariableOp,while_dsycfvoega_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_1�
while/dsycfvoega/mul_1Mul)while/dsycfvoega/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_1�
while/dsycfvoega/add_2AddV2while/dsycfvoega/split:output:1while/dsycfvoega/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_2�
while/dsycfvoega/Sigmoid_1Sigmoidwhile/dsycfvoega/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_1�
while/dsycfvoega/mul_2Mulwhile/dsycfvoega/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_2�
while/dsycfvoega/TanhTanhwhile/dsycfvoega/split:output:2*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh�
while/dsycfvoega/mul_3Mulwhile/dsycfvoega/Sigmoid:y:0while/dsycfvoega/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_3�
while/dsycfvoega/add_3AddV2while/dsycfvoega/mul_2:z:0while/dsycfvoega/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_3�
!while/dsycfvoega/ReadVariableOp_2ReadVariableOp,while_dsycfvoega_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/dsycfvoega/ReadVariableOp_2�
while/dsycfvoega/mul_4Mul)while/dsycfvoega/ReadVariableOp_2:value:0while/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_4�
while/dsycfvoega/add_4AddV2while/dsycfvoega/split:output:3while/dsycfvoega/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/add_4�
while/dsycfvoega/Sigmoid_2Sigmoidwhile/dsycfvoega/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Sigmoid_2�
while/dsycfvoega/Tanh_1Tanhwhile/dsycfvoega/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/Tanh_1�
while/dsycfvoega/mul_5Mulwhile/dsycfvoega/Sigmoid_2:y:0while/dsycfvoega/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/dsycfvoega/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/dsycfvoega/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/dsycfvoega/mul_5:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/dsycfvoega/add_3:z:0(^while/dsycfvoega/BiasAdd/ReadVariableOp'^while/dsycfvoega/MatMul/ReadVariableOp)^while/dsycfvoega/MatMul_1/ReadVariableOp ^while/dsycfvoega/ReadVariableOp"^while/dsycfvoega/ReadVariableOp_1"^while/dsycfvoega/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_dsycfvoega_biasadd_readvariableop_resource2while_dsycfvoega_biasadd_readvariableop_resource_0"h
1while_dsycfvoega_matmul_1_readvariableop_resource3while_dsycfvoega_matmul_1_readvariableop_resource_0"d
/while_dsycfvoega_matmul_readvariableop_resource1while_dsycfvoega_matmul_readvariableop_resource_0"Z
*while_dsycfvoega_readvariableop_1_resource,while_dsycfvoega_readvariableop_1_resource_0"Z
*while_dsycfvoega_readvariableop_2_resource,while_dsycfvoega_readvariableop_2_resource_0"V
(while_dsycfvoega_readvariableop_resource*while_dsycfvoega_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/dsycfvoega/BiasAdd/ReadVariableOp'while/dsycfvoega/BiasAdd/ReadVariableOp2P
&while/dsycfvoega/MatMul/ReadVariableOp&while/dsycfvoega/MatMul/ReadVariableOp2T
(while/dsycfvoega/MatMul_1/ReadVariableOp(while/dsycfvoega/MatMul_1/ReadVariableOp2B
while/dsycfvoega/ReadVariableOpwhile/dsycfvoega/ReadVariableOp2F
!while/dsycfvoega/ReadVariableOp_1!while/dsycfvoega/ReadVariableOp_12F
!while/dsycfvoega/ReadVariableOp_2!while/dsycfvoega/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
a
E__inference_xlcvyoxoxq_layer_call_and_return_conditional_losses_30773

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
strided_slice/stack_2�
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
Reshape/shape/2�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_29787

jfowsgvbzw&
bpstkcuudk_29749:
bpstkcuudk_29751:#
osutmzfngz_29755:	�#
osutmzfngz_29757:	 �
osutmzfngz_29759:	�
osutmzfngz_29761: 
osutmzfngz_29763: 
osutmzfngz_29765: #
owshcilvwl_29768:	 �#
owshcilvwl_29770:	 �
owshcilvwl_29772:	�
owshcilvwl_29774: 
owshcilvwl_29776: 
owshcilvwl_29778: "
oaettnoaty_29781: 
oaettnoaty_29783:
identity��"bpstkcuudk/StatefulPartitionedCall�"oaettnoaty/StatefulPartitionedCall�"osutmzfngz/StatefulPartitionedCall�"owshcilvwl/StatefulPartitionedCall�
"bpstkcuudk/StatefulPartitionedCallStatefulPartitionedCall
jfowsgvbzwbpstkcuudk_29749bpstkcuudk_29751*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_bpstkcuudk_layer_call_and_return_conditional_losses_286402$
"bpstkcuudk/StatefulPartitionedCall�
xlcvyoxoxq/PartitionedCallPartitionedCall+bpstkcuudk/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_xlcvyoxoxq_layer_call_and_return_conditional_losses_286592
xlcvyoxoxq/PartitionedCall�
"osutmzfngz/StatefulPartitionedCallStatefulPartitionedCall#xlcvyoxoxq/PartitionedCall:output:0osutmzfngz_29755osutmzfngz_29757osutmzfngz_29759osutmzfngz_29761osutmzfngz_29763osutmzfngz_29765*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_295222$
"osutmzfngz/StatefulPartitionedCall�
"owshcilvwl/StatefulPartitionedCallStatefulPartitionedCall+osutmzfngz/StatefulPartitionedCall:output:0owshcilvwl_29768owshcilvwl_29770owshcilvwl_29772owshcilvwl_29774owshcilvwl_29776owshcilvwl_29778*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_293082$
"owshcilvwl/StatefulPartitionedCall�
"oaettnoaty/StatefulPartitionedCallStatefulPartitionedCall+owshcilvwl/StatefulPartitionedCall:output:0oaettnoaty_29781oaettnoaty_29783*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_oaettnoaty_layer_call_and_return_conditional_losses_290572$
"oaettnoaty/StatefulPartitionedCall�
IdentityIdentity+oaettnoaty/StatefulPartitionedCall:output:0#^bpstkcuudk/StatefulPartitionedCall#^oaettnoaty/StatefulPartitionedCall#^osutmzfngz/StatefulPartitionedCall#^owshcilvwl/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 2H
"bpstkcuudk/StatefulPartitionedCall"bpstkcuudk/StatefulPartitionedCall2H
"oaettnoaty/StatefulPartitionedCall"oaettnoaty/StatefulPartitionedCall2H
"osutmzfngz/StatefulPartitionedCall"osutmzfngz/StatefulPartitionedCall2H
"owshcilvwl/StatefulPartitionedCall"owshcilvwl/StatefulPartitionedCall:[ W
/
_output_shapes
:���������
$
_user_specified_name
jfowsgvbzw
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_29746

jfowsgvbzw&
bpstkcuudk_29708:
bpstkcuudk_29710:#
osutmzfngz_29714:	�#
osutmzfngz_29716:	 �
osutmzfngz_29718:	�
osutmzfngz_29720: 
osutmzfngz_29722: 
osutmzfngz_29724: #
owshcilvwl_29727:	 �#
owshcilvwl_29729:	 �
owshcilvwl_29731:	�
owshcilvwl_29733: 
owshcilvwl_29735: 
owshcilvwl_29737: "
oaettnoaty_29740: 
oaettnoaty_29742:
identity��"bpstkcuudk/StatefulPartitionedCall�"oaettnoaty/StatefulPartitionedCall�"osutmzfngz/StatefulPartitionedCall�"owshcilvwl/StatefulPartitionedCall�
"bpstkcuudk/StatefulPartitionedCallStatefulPartitionedCall
jfowsgvbzwbpstkcuudk_29708bpstkcuudk_29710*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_bpstkcuudk_layer_call_and_return_conditional_losses_286402$
"bpstkcuudk/StatefulPartitionedCall�
xlcvyoxoxq/PartitionedCallPartitionedCall+bpstkcuudk/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_xlcvyoxoxq_layer_call_and_return_conditional_losses_286592
xlcvyoxoxq/PartitionedCall�
"osutmzfngz/StatefulPartitionedCallStatefulPartitionedCall#xlcvyoxoxq/PartitionedCall:output:0osutmzfngz_29714osutmzfngz_29716osutmzfngz_29718osutmzfngz_29720osutmzfngz_29722osutmzfngz_29724*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_288402$
"osutmzfngz/StatefulPartitionedCall�
"owshcilvwl/StatefulPartitionedCallStatefulPartitionedCall+osutmzfngz/StatefulPartitionedCall:output:0owshcilvwl_29727owshcilvwl_29729owshcilvwl_29731owshcilvwl_29733owshcilvwl_29735owshcilvwl_29737*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_290332$
"owshcilvwl/StatefulPartitionedCall�
"oaettnoaty/StatefulPartitionedCallStatefulPartitionedCall+owshcilvwl/StatefulPartitionedCall:output:0oaettnoaty_29740oaettnoaty_29742*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_oaettnoaty_layer_call_and_return_conditional_losses_290572$
"oaettnoaty/StatefulPartitionedCall�
IdentityIdentity+oaettnoaty/StatefulPartitionedCall:output:0#^bpstkcuudk/StatefulPartitionedCall#^oaettnoaty/StatefulPartitionedCall#^osutmzfngz/StatefulPartitionedCall#^owshcilvwl/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������: : : : : : : : : : : : : : : : 2H
"bpstkcuudk/StatefulPartitionedCall"bpstkcuudk/StatefulPartitionedCall2H
"oaettnoaty/StatefulPartitionedCall"oaettnoaty/StatefulPartitionedCall2H
"osutmzfngz/StatefulPartitionedCall"osutmzfngz/StatefulPartitionedCall2H
"owshcilvwl/StatefulPartitionedCall"owshcilvwl/StatefulPartitionedCall:[ W
/
_output_shapes
:���������
$
_user_specified_name
jfowsgvbzw
�	
�
while_cond_31216
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_31216___redundant_placeholder03
/while_while_cond_31216___redundant_placeholder13
/while_while_cond_31216___redundant_placeholder23
/while_while_cond_31216___redundant_placeholder33
/while_while_cond_31216___redundant_placeholder43
/while_while_cond_31216___redundant_placeholder53
/while_while_cond_31216___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�	
�
while_cond_27944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_27944___redundant_placeholder03
/while_while_cond_27944___redundant_placeholder13
/while_while_cond_27944___redundant_placeholder23
/while_while_cond_27944___redundant_placeholder33
/while_while_cond_27944___redundant_placeholder43
/while_while_cond_27944___redundant_placeholder53
/while_while_cond_27944___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�	
�
*__inference_osutmzfngz_layer_call_fn_31515
inputs_0
unknown:	�
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������ *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_272672
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�'
�
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_27925

inputs

states
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
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
:��������� 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:��������� 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:��������� 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:��������� 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:��������� 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:��������� 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:��������� 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:��������� 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:��������� 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
mul_5�
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:��������� :��������� :��������� : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�p
�
owshcilvwl_while_body_301292
.owshcilvwl_while_owshcilvwl_while_loop_counter8
4owshcilvwl_while_owshcilvwl_while_maximum_iterations 
owshcilvwl_while_placeholder"
owshcilvwl_while_placeholder_1"
owshcilvwl_while_placeholder_2"
owshcilvwl_while_placeholder_31
-owshcilvwl_while_owshcilvwl_strided_slice_1_0m
iowshcilvwl_while_tensorarrayv2read_tensorlistgetitem_owshcilvwl_tensorarrayunstack_tensorlistfromtensor_0O
<owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource_0:	 �Q
>owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource_0:	 �L
=owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource_0:	�C
5owshcilvwl_while_flzkvrshbq_readvariableop_resource_0: E
7owshcilvwl_while_flzkvrshbq_readvariableop_1_resource_0: E
7owshcilvwl_while_flzkvrshbq_readvariableop_2_resource_0: 
owshcilvwl_while_identity
owshcilvwl_while_identity_1
owshcilvwl_while_identity_2
owshcilvwl_while_identity_3
owshcilvwl_while_identity_4
owshcilvwl_while_identity_5/
+owshcilvwl_while_owshcilvwl_strided_slice_1k
gowshcilvwl_while_tensorarrayv2read_tensorlistgetitem_owshcilvwl_tensorarrayunstack_tensorlistfromtensorM
:owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource:	 �O
<owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource:	 �J
;owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource:	�A
3owshcilvwl_while_flzkvrshbq_readvariableop_resource: C
5owshcilvwl_while_flzkvrshbq_readvariableop_1_resource: C
5owshcilvwl_while_flzkvrshbq_readvariableop_2_resource: ��2owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp�1owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp�3owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp�*owshcilvwl/while/flzkvrshbq/ReadVariableOp�,owshcilvwl/while/flzkvrshbq/ReadVariableOp_1�,owshcilvwl/while/flzkvrshbq/ReadVariableOp_2�
Bowshcilvwl/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2D
Bowshcilvwl/while/TensorArrayV2Read/TensorListGetItem/element_shape�
4owshcilvwl/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemiowshcilvwl_while_tensorarrayv2read_tensorlistgetitem_owshcilvwl_tensorarrayunstack_tensorlistfromtensor_0owshcilvwl_while_placeholderKowshcilvwl/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype026
4owshcilvwl/while/TensorArrayV2Read/TensorListGetItem�
1owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOpReadVariableOp<owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype023
1owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp�
"owshcilvwl/while/flzkvrshbq/MatMulMatMul;owshcilvwl/while/TensorArrayV2Read/TensorListGetItem:item:09owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"owshcilvwl/while/flzkvrshbq/MatMul�
3owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp>owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype025
3owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp�
$owshcilvwl/while/flzkvrshbq/MatMul_1MatMulowshcilvwl_while_placeholder_2;owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$owshcilvwl/while/flzkvrshbq/MatMul_1�
owshcilvwl/while/flzkvrshbq/addAddV2,owshcilvwl/while/flzkvrshbq/MatMul:product:0.owshcilvwl/while/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2!
owshcilvwl/while/flzkvrshbq/add�
2owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp=owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype024
2owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp�
#owshcilvwl/while/flzkvrshbq/BiasAddBiasAdd#owshcilvwl/while/flzkvrshbq/add:z:0:owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#owshcilvwl/while/flzkvrshbq/BiasAdd�
+owshcilvwl/while/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+owshcilvwl/while/flzkvrshbq/split/split_dim�
!owshcilvwl/while/flzkvrshbq/splitSplit4owshcilvwl/while/flzkvrshbq/split/split_dim:output:0,owshcilvwl/while/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2#
!owshcilvwl/while/flzkvrshbq/split�
*owshcilvwl/while/flzkvrshbq/ReadVariableOpReadVariableOp5owshcilvwl_while_flzkvrshbq_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*owshcilvwl/while/flzkvrshbq/ReadVariableOp�
owshcilvwl/while/flzkvrshbq/mulMul2owshcilvwl/while/flzkvrshbq/ReadVariableOp:value:0owshcilvwl_while_placeholder_3*
T0*'
_output_shapes
:��������� 2!
owshcilvwl/while/flzkvrshbq/mul�
!owshcilvwl/while/flzkvrshbq/add_1AddV2*owshcilvwl/while/flzkvrshbq/split:output:0#owshcilvwl/while/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/add_1�
#owshcilvwl/while/flzkvrshbq/SigmoidSigmoid%owshcilvwl/while/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2%
#owshcilvwl/while/flzkvrshbq/Sigmoid�
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_1ReadVariableOp7owshcilvwl_while_flzkvrshbq_readvariableop_1_resource_0*
_output_shapes
: *
dtype02.
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_1�
!owshcilvwl/while/flzkvrshbq/mul_1Mul4owshcilvwl/while/flzkvrshbq/ReadVariableOp_1:value:0owshcilvwl_while_placeholder_3*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/mul_1�
!owshcilvwl/while/flzkvrshbq/add_2AddV2*owshcilvwl/while/flzkvrshbq/split:output:1%owshcilvwl/while/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/add_2�
%owshcilvwl/while/flzkvrshbq/Sigmoid_1Sigmoid%owshcilvwl/while/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2'
%owshcilvwl/while/flzkvrshbq/Sigmoid_1�
!owshcilvwl/while/flzkvrshbq/mul_2Mul)owshcilvwl/while/flzkvrshbq/Sigmoid_1:y:0owshcilvwl_while_placeholder_3*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/mul_2�
 owshcilvwl/while/flzkvrshbq/TanhTanh*owshcilvwl/while/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2"
 owshcilvwl/while/flzkvrshbq/Tanh�
!owshcilvwl/while/flzkvrshbq/mul_3Mul'owshcilvwl/while/flzkvrshbq/Sigmoid:y:0$owshcilvwl/while/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/mul_3�
!owshcilvwl/while/flzkvrshbq/add_3AddV2%owshcilvwl/while/flzkvrshbq/mul_2:z:0%owshcilvwl/while/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/add_3�
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_2ReadVariableOp7owshcilvwl_while_flzkvrshbq_readvariableop_2_resource_0*
_output_shapes
: *
dtype02.
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_2�
!owshcilvwl/while/flzkvrshbq/mul_4Mul4owshcilvwl/while/flzkvrshbq/ReadVariableOp_2:value:0%owshcilvwl/while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/mul_4�
!owshcilvwl/while/flzkvrshbq/add_4AddV2*owshcilvwl/while/flzkvrshbq/split:output:3%owshcilvwl/while/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/add_4�
%owshcilvwl/while/flzkvrshbq/Sigmoid_2Sigmoid%owshcilvwl/while/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2'
%owshcilvwl/while/flzkvrshbq/Sigmoid_2�
"owshcilvwl/while/flzkvrshbq/Tanh_1Tanh%owshcilvwl/while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2$
"owshcilvwl/while/flzkvrshbq/Tanh_1�
!owshcilvwl/while/flzkvrshbq/mul_5Mul)owshcilvwl/while/flzkvrshbq/Sigmoid_2:y:0&owshcilvwl/while/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2#
!owshcilvwl/while/flzkvrshbq/mul_5�
5owshcilvwl/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemowshcilvwl_while_placeholder_1owshcilvwl_while_placeholder%owshcilvwl/while/flzkvrshbq/mul_5:z:0*
_output_shapes
: *
element_dtype027
5owshcilvwl/while/TensorArrayV2Write/TensorListSetItemr
owshcilvwl/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
owshcilvwl/while/add/y�
owshcilvwl/while/addAddV2owshcilvwl_while_placeholderowshcilvwl/while/add/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/while/addv
owshcilvwl/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
owshcilvwl/while/add_1/y�
owshcilvwl/while/add_1AddV2.owshcilvwl_while_owshcilvwl_while_loop_counter!owshcilvwl/while/add_1/y:output:0*
T0*
_output_shapes
: 2
owshcilvwl/while/add_1�
owshcilvwl/while/IdentityIdentityowshcilvwl/while/add_1:z:03^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
owshcilvwl/while/Identity�
owshcilvwl/while/Identity_1Identity4owshcilvwl_while_owshcilvwl_while_maximum_iterations3^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
owshcilvwl/while/Identity_1�
owshcilvwl/while/Identity_2Identityowshcilvwl/while/add:z:03^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
owshcilvwl/while/Identity_2�
owshcilvwl/while/Identity_3IdentityEowshcilvwl/while/TensorArrayV2Write/TensorListSetItem:output_handle:03^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
owshcilvwl/while/Identity_3�
owshcilvwl/while/Identity_4Identity%owshcilvwl/while/flzkvrshbq/mul_5:z:03^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
owshcilvwl/while/Identity_4�
owshcilvwl/while/Identity_5Identity%owshcilvwl/while/flzkvrshbq/add_3:z:03^owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2^owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp4^owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp+^owshcilvwl/while/flzkvrshbq/ReadVariableOp-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_1-^owshcilvwl/while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
owshcilvwl/while/Identity_5"|
;owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource=owshcilvwl_while_flzkvrshbq_biasadd_readvariableop_resource_0"~
<owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource>owshcilvwl_while_flzkvrshbq_matmul_1_readvariableop_resource_0"z
:owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource<owshcilvwl_while_flzkvrshbq_matmul_readvariableop_resource_0"p
5owshcilvwl_while_flzkvrshbq_readvariableop_1_resource7owshcilvwl_while_flzkvrshbq_readvariableop_1_resource_0"p
5owshcilvwl_while_flzkvrshbq_readvariableop_2_resource7owshcilvwl_while_flzkvrshbq_readvariableop_2_resource_0"l
3owshcilvwl_while_flzkvrshbq_readvariableop_resource5owshcilvwl_while_flzkvrshbq_readvariableop_resource_0"?
owshcilvwl_while_identity"owshcilvwl/while/Identity:output:0"C
owshcilvwl_while_identity_1$owshcilvwl/while/Identity_1:output:0"C
owshcilvwl_while_identity_2$owshcilvwl/while/Identity_2:output:0"C
owshcilvwl_while_identity_3$owshcilvwl/while/Identity_3:output:0"C
owshcilvwl_while_identity_4$owshcilvwl/while/Identity_4:output:0"C
owshcilvwl_while_identity_5$owshcilvwl/while/Identity_5:output:0"\
+owshcilvwl_while_owshcilvwl_strided_slice_1-owshcilvwl_while_owshcilvwl_strided_slice_1_0"�
gowshcilvwl_while_tensorarrayv2read_tensorlistgetitem_owshcilvwl_tensorarrayunstack_tensorlistfromtensoriowshcilvwl_while_tensorarrayv2read_tensorlistgetitem_owshcilvwl_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2h
2owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2owshcilvwl/while/flzkvrshbq/BiasAdd/ReadVariableOp2f
1owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp1owshcilvwl/while/flzkvrshbq/MatMul/ReadVariableOp2j
3owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp3owshcilvwl/while/flzkvrshbq/MatMul_1/ReadVariableOp2X
*owshcilvwl/while/flzkvrshbq/ReadVariableOp*owshcilvwl/while/flzkvrshbq/ReadVariableOp2\
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_1,owshcilvwl/while/flzkvrshbq/ReadVariableOp_12\
,owshcilvwl/while/flzkvrshbq/ReadVariableOp_2,owshcilvwl/while/flzkvrshbq/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�'
�
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_27167

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
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
:��������� 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:��������� 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:��������� 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:��������� 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:��������� 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:��������� 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:��������� 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:��������� 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:��������� 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
mul_5�
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:���������:��������� :��������� : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�
�
*__inference_osutmzfngz_layer_call_fn_31566

inputs
unknown:	�
	unknown_0:	 �
	unknown_1:	�
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_295222
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�Y
�
while_body_32185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_flzkvrshbq_matmul_readvariableop_resource_0:	 �F
3while_flzkvrshbq_matmul_1_readvariableop_resource_0:	 �A
2while_flzkvrshbq_biasadd_readvariableop_resource_0:	�8
*while_flzkvrshbq_readvariableop_resource_0: :
,while_flzkvrshbq_readvariableop_1_resource_0: :
,while_flzkvrshbq_readvariableop_2_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_flzkvrshbq_matmul_readvariableop_resource:	 �D
1while_flzkvrshbq_matmul_1_readvariableop_resource:	 �?
0while_flzkvrshbq_biasadd_readvariableop_resource:	�6
(while_flzkvrshbq_readvariableop_resource: 8
*while_flzkvrshbq_readvariableop_1_resource: 8
*while_flzkvrshbq_readvariableop_2_resource: ��'while/flzkvrshbq/BiasAdd/ReadVariableOp�&while/flzkvrshbq/MatMul/ReadVariableOp�(while/flzkvrshbq/MatMul_1/ReadVariableOp�while/flzkvrshbq/ReadVariableOp�!while/flzkvrshbq/ReadVariableOp_1�!while/flzkvrshbq/ReadVariableOp_2�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
&while/flzkvrshbq/MatMul/ReadVariableOpReadVariableOp1while_flzkvrshbq_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02(
&while/flzkvrshbq/MatMul/ReadVariableOp�
while/flzkvrshbq/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/flzkvrshbq/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul�
(while/flzkvrshbq/MatMul_1/ReadVariableOpReadVariableOp3while_flzkvrshbq_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02*
(while/flzkvrshbq/MatMul_1/ReadVariableOp�
while/flzkvrshbq/MatMul_1MatMulwhile_placeholder_20while/flzkvrshbq/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/MatMul_1�
while/flzkvrshbq/addAddV2!while/flzkvrshbq/MatMul:product:0#while/flzkvrshbq/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/add�
'while/flzkvrshbq/BiasAdd/ReadVariableOpReadVariableOp2while_flzkvrshbq_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02)
'while/flzkvrshbq/BiasAdd/ReadVariableOp�
while/flzkvrshbq/BiasAddBiasAddwhile/flzkvrshbq/add:z:0/while/flzkvrshbq/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/flzkvrshbq/BiasAdd�
 while/flzkvrshbq/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 while/flzkvrshbq/split/split_dim�
while/flzkvrshbq/splitSplit)while/flzkvrshbq/split/split_dim:output:0!while/flzkvrshbq/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/flzkvrshbq/split�
while/flzkvrshbq/ReadVariableOpReadVariableOp*while_flzkvrshbq_readvariableop_resource_0*
_output_shapes
: *
dtype02!
while/flzkvrshbq/ReadVariableOp�
while/flzkvrshbq/mulMul'while/flzkvrshbq/ReadVariableOp:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul�
while/flzkvrshbq/add_1AddV2while/flzkvrshbq/split:output:0while/flzkvrshbq/mul:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_1�
while/flzkvrshbq/SigmoidSigmoidwhile/flzkvrshbq/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid�
!while/flzkvrshbq/ReadVariableOp_1ReadVariableOp,while_flzkvrshbq_readvariableop_1_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_1�
while/flzkvrshbq/mul_1Mul)while/flzkvrshbq/ReadVariableOp_1:value:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_1�
while/flzkvrshbq/add_2AddV2while/flzkvrshbq/split:output:1while/flzkvrshbq/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_2�
while/flzkvrshbq/Sigmoid_1Sigmoidwhile/flzkvrshbq/add_2:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_1�
while/flzkvrshbq/mul_2Mulwhile/flzkvrshbq/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_2�
while/flzkvrshbq/TanhTanhwhile/flzkvrshbq/split:output:2*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh�
while/flzkvrshbq/mul_3Mulwhile/flzkvrshbq/Sigmoid:y:0while/flzkvrshbq/Tanh:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_3�
while/flzkvrshbq/add_3AddV2while/flzkvrshbq/mul_2:z:0while/flzkvrshbq/mul_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_3�
!while/flzkvrshbq/ReadVariableOp_2ReadVariableOp,while_flzkvrshbq_readvariableop_2_resource_0*
_output_shapes
: *
dtype02#
!while/flzkvrshbq/ReadVariableOp_2�
while/flzkvrshbq/mul_4Mul)while/flzkvrshbq/ReadVariableOp_2:value:0while/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_4�
while/flzkvrshbq/add_4AddV2while/flzkvrshbq/split:output:3while/flzkvrshbq/mul_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/add_4�
while/flzkvrshbq/Sigmoid_2Sigmoidwhile/flzkvrshbq/add_4:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Sigmoid_2�
while/flzkvrshbq/Tanh_1Tanhwhile/flzkvrshbq/add_3:z:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/Tanh_1�
while/flzkvrshbq/mul_5Mulwhile/flzkvrshbq/Sigmoid_2:y:0while/flzkvrshbq/Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
while/flzkvrshbq/mul_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/flzkvrshbq/mul_5:z:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/flzkvrshbq/mul_5:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/flzkvrshbq/add_3:z:0(^while/flzkvrshbq/BiasAdd/ReadVariableOp'^while/flzkvrshbq/MatMul/ReadVariableOp)^while/flzkvrshbq/MatMul_1/ReadVariableOp ^while/flzkvrshbq/ReadVariableOp"^while/flzkvrshbq/ReadVariableOp_1"^while/flzkvrshbq/ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2
while/Identity_5"f
0while_flzkvrshbq_biasadd_readvariableop_resource2while_flzkvrshbq_biasadd_readvariableop_resource_0"h
1while_flzkvrshbq_matmul_1_readvariableop_resource3while_flzkvrshbq_matmul_1_readvariableop_resource_0"d
/while_flzkvrshbq_matmul_readvariableop_resource1while_flzkvrshbq_matmul_readvariableop_resource_0"Z
*while_flzkvrshbq_readvariableop_1_resource,while_flzkvrshbq_readvariableop_1_resource_0"Z
*while_flzkvrshbq_readvariableop_2_resource,while_flzkvrshbq_readvariableop_2_resource_0"V
(while_flzkvrshbq_readvariableop_resource*while_flzkvrshbq_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2R
'while/flzkvrshbq/BiasAdd/ReadVariableOp'while/flzkvrshbq/BiasAdd/ReadVariableOp2P
&while/flzkvrshbq/MatMul/ReadVariableOp&while/flzkvrshbq/MatMul/ReadVariableOp2T
(while/flzkvrshbq/MatMul_1/ReadVariableOp(while/flzkvrshbq/MatMul_1/ReadVariableOp2B
while/flzkvrshbq/ReadVariableOpwhile/flzkvrshbq/ReadVariableOp2F
!while/flzkvrshbq/ReadVariableOp_1!while/flzkvrshbq/ReadVariableOp_12F
!while/flzkvrshbq/ReadVariableOp_2!while/flzkvrshbq/ReadVariableOp_2: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�	
�
while_cond_29420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_29420___redundant_placeholder03
/while_while_cond_29420___redundant_placeholder13
/while_while_cond_29420___redundant_placeholder23
/while_while_cond_29420___redundant_placeholder33
/while_while_cond_29420___redundant_placeholder43
/while_while_cond_29420___redundant_placeholder53
/while_while_cond_29420___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�'
�
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_32417

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
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
:��������� 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:��������� 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:��������� 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:��������� 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:��������� 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:��������� 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:��������� 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:��������� 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:��������� 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
mul_5�
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:���������:��������� :��������� : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�)
�
while_body_27187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_dsycfvoega_27211_0:	�+
while_dsycfvoega_27213_0:	 �'
while_dsycfvoega_27215_0:	�&
while_dsycfvoega_27217_0: &
while_dsycfvoega_27219_0: &
while_dsycfvoega_27221_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_dsycfvoega_27211:	�)
while_dsycfvoega_27213:	 �%
while_dsycfvoega_27215:	�$
while_dsycfvoega_27217: $
while_dsycfvoega_27219: $
while_dsycfvoega_27221: ��(while/dsycfvoega/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/dsycfvoega/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_dsycfvoega_27211_0while_dsycfvoega_27213_0while_dsycfvoega_27215_0while_dsycfvoega_27217_0while_dsycfvoega_27219_0while_dsycfvoega_27221_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_271672*
(while/dsycfvoega/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/dsycfvoega/StatefulPartitionedCall:output:0*
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
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/dsycfvoega/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/dsycfvoega/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/dsycfvoega/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/dsycfvoega/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity1while/dsycfvoega/StatefulPartitionedCall:output:1)^while/dsycfvoega/StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identity1while/dsycfvoega/StatefulPartitionedCall:output:2)^while/dsycfvoega/StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2
while/Identity_5"2
while_dsycfvoega_27211while_dsycfvoega_27211_0"2
while_dsycfvoega_27213while_dsycfvoega_27213_0"2
while_dsycfvoega_27215while_dsycfvoega_27215_0"2
while_dsycfvoega_27217while_dsycfvoega_27217_0"2
while_dsycfvoega_27219while_dsycfvoega_27219_0"2
while_dsycfvoega_27221while_dsycfvoega_27221_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : :��������� :��������� : : : : : : : : 2T
(while/dsycfvoega/StatefulPartitionedCall(while/dsycfvoega/StatefulPartitionedCall: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�	
�
while_cond_31824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_31824___redundant_placeholder03
/while_while_cond_31824___redundant_placeholder13
/while_while_cond_31824___redundant_placeholder23
/while_while_cond_31824___redundant_placeholder33
/while_while_cond_31824___redundant_placeholder43
/while_while_cond_31824___redundant_placeholder53
/while_while_cond_31824___redundant_placeholder6
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
L: : : : :��������� :��������� : :::::::: 
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
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�F
�
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_28025

inputs#
flzkvrshbq_27926:	 �#
flzkvrshbq_27928:	 �
flzkvrshbq_27930:	�
flzkvrshbq_27932: 
flzkvrshbq_27934: 
flzkvrshbq_27936: 
identity��"flzkvrshbq/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
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
B :�2
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
zeros/packed/1�
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
:��������� 2
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
B :�2
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
zeros_1/packed/1�
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
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
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
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_2�
"flzkvrshbq/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0flzkvrshbq_27926flzkvrshbq_27928flzkvrshbq_27930flzkvrshbq_27932flzkvrshbq_27934flzkvrshbq_27936*
Tin
2	*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_279252$
"flzkvrshbq/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0flzkvrshbq_27926flzkvrshbq_27928flzkvrshbq_27930flzkvrshbq_27932flzkvrshbq_27934flzkvrshbq_27936*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*R
_output_shapes@
>: : : : :��������� :��������� : : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_27945*
condR
while_cond_27944*Q
output_shapes@
>: : : : :��������� :��������� : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
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
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0#^flzkvrshbq/StatefulPartitionedCall^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:������������������ : : : : : : 2H
"flzkvrshbq/StatefulPartitionedCall"flzkvrshbq/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������ 
 
_user_specified_nameinputs
�'
�
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_27354

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�%
readvariableop_resource: '
readvariableop_1_resource: '
readvariableop_2_resource: 
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
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
:��������� 2
mulb
add_1AddV2split:output:0mul:z:0*
T0*'
_output_shapes
:��������� 2
add_1Z
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1k
mul_1MulReadVariableOp_1:value:0states_1*
T0*'
_output_shapes
:��������� 2
mul_1d
add_2AddV2split:output:1	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_2^
	Sigmoid_1Sigmoid	add_2:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1`
mul_2MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mul_2V
TanhTanhsplit:output:2*
T0*'
_output_shapes
:��������� 2
Tanh^
mul_3MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:��������� 2
mul_3_
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*'
_output_shapes
:��������� 2
add_3z
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype02
ReadVariableOp_2l
mul_4MulReadVariableOp_2:value:0	add_3:z:0*
T0*'
_output_shapes
:��������� 2
mul_4d
add_4AddV2split:output:3	mul_4:z:0*
T0*'
_output_shapes
:��������� 2
add_4^
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:��������� 2
Tanh_1b
mul_5MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:��������� 2
mul_5�
IdentityIdentity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity	mul_5:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_1�

Identity_2Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:��������� 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:���������:��������� :��������� : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
I

jfowsgvbzw;
serving_default_jfowsgvbzw:0���������>

oaettnoaty0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�D
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

signatures
#_self_saveable_object_factories
	trainable_variables

regularization_losses
	variables
	keras_api
�_default_save_signature
+�&call_and_return_all_conditional_losses
�__call__"�A
_tf_keras_sequential�A{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "jfowsgvbzw"}}, {"class_name": "Conv1D", "config": {"name": "bpstkcuudk", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "xlcvyoxoxq", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}}, {"class_name": "RNN", "config": {"name": "osutmzfngz", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "dsycfvoega", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}}, {"class_name": "RNN", "config": {"name": "owshcilvwl", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "flzkvrshbq", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}}}, {"class_name": "Dense", "config": {"name": "oaettnoaty", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 13}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 5, 13]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 3, 5, 13]}, "float32", "jfowsgvbzw"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "jfowsgvbzw"}, "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "bpstkcuudk", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Reshape", "config": {"name": "xlcvyoxoxq", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}, "shared_object_id": 4}, {"class_name": "RNN", "config": {"name": "osutmzfngz", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "dsycfvoega", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}}, "shared_object_id": 9}, {"class_name": "RNN", "config": {"name": "owshcilvwl", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "flzkvrshbq", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "oaettnoaty", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": "mean_squared_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
�

kernel
bias
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�

_tf_keras_layer�
{"name": "bpstkcuudk", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "bpstkcuudk", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 5, 13]}, "dtype": "float32", "filters": 20, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 13}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 5, 13]}}
�
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "xlcvyoxoxq", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "xlcvyoxoxq", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [3, 20]}}, "shared_object_id": 4}
�
cell

state_spec
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_rnn_layer�{"name": "osutmzfngz", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RNN", "config": {"name": "osutmzfngz", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "dsycfvoega", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}}, "shared_object_id": 9, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 20]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 20]}}
�
 cell
!
state_spec
#"_self_saveable_object_factories
#trainable_variables
$regularization_losses
%	variables
&	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_rnn_layer�{"name": "owshcilvwl", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "RNN", "config": {"name": "owshcilvwl", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Addons>PeepholeLSTMCell", "config": {"name": "flzkvrshbq", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}}, "shared_object_id": 14, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 32]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 21}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 32]}}
�

'kernel
(bias
#)_self_saveable_object_factories
*trainable_variables
+regularization_losses
,	variables
-	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "oaettnoaty", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "oaettnoaty", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
�
.iter
	/decay
0learning_rate
1momentum
2rho	rmsz	rms{	'rms|	(rms}	3rms~	4rms
5rms�
6rms�
7rms�
8rms�
9rms�
:rms�
;rms�
<rms�
=rms�
>rms�"
	optimizer
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
�
0
1
32
43
54
65
76
87
98
:9
;10
<11
=12
>13
'14
(15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
32
43
54
65
76
87
98
:9
;10
<11
=12
>13
'14
(15"
trackable_list_wrapper
�
	trainable_variables
?non_trainable_variables
@layer_regularization_losses

regularization_losses
	variables
Ametrics
Blayer_metrics

Clayers
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
':%2bpstkcuudk/kernel
:2bpstkcuudk/bias
 "
trackable_dict_wrapper
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
�
trainable_variables
Dnon_trainable_variables
Elayer_regularization_losses
regularization_losses
	variables
Fmetrics
Glayer_metrics

Hlayers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
trainable_variables
Inon_trainable_variables
Jlayer_regularization_losses
regularization_losses
	variables
Kmetrics
Llayer_metrics

Mlayers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

N
state_size

3kernel
4recurrent_kernel
5bias
6input_gate_peephole_weights
 7forget_gate_peephole_weights
 8output_gate_peephole_weights
#O_self_saveable_object_factories
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dsycfvoega", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Addons>PeepholeLSTMCell", "config": {"name": "dsycfvoega", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 8}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
�
trainable_variables
Tnon_trainable_variables

Ustates
Vlayer_regularization_losses
regularization_losses
	variables
Wmetrics
Xlayer_metrics

Ylayers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

Z
state_size

9kernel
:recurrent_kernel
;bias
<input_gate_peephole_weights
 =forget_gate_peephole_weights
 >output_gate_peephole_weights
#[_self_saveable_object_factories
\trainable_variables
]regularization_losses
^	variables
_	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "flzkvrshbq", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Addons>PeepholeLSTMCell", "config": {"name": "flzkvrshbq", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 13}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
J
90
:1
;2
<3
=4
>5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
90
:1
;2
<3
=4
>5"
trackable_list_wrapper
�
#trainable_variables
`non_trainable_variables

astates
blayer_regularization_losses
$regularization_losses
%	variables
cmetrics
dlayer_metrics

elayers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:! 2oaettnoaty/kernel
:2oaettnoaty/bias
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
�
*trainable_variables
fnon_trainable_variables
glayer_regularization_losses
+regularization_losses
,	variables
hmetrics
ilayer_metrics

jlayers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
/:-	�2osutmzfngz/dsycfvoega/kernel
9:7	 �2&osutmzfngz/dsycfvoega/recurrent_kernel
):'�2osutmzfngz/dsycfvoega/bias
?:= 21osutmzfngz/dsycfvoega/input_gate_peephole_weights
@:> 22osutmzfngz/dsycfvoega/forget_gate_peephole_weights
@:> 22osutmzfngz/dsycfvoega/output_gate_peephole_weights
/:-	 �2owshcilvwl/flzkvrshbq/kernel
9:7	 �2&owshcilvwl/flzkvrshbq/recurrent_kernel
):'�2owshcilvwl/flzkvrshbq/bias
?:= 21owshcilvwl/flzkvrshbq/input_gate_peephole_weights
@:> 22owshcilvwl/flzkvrshbq/forget_gate_peephole_weights
@:> 22owshcilvwl/flzkvrshbq/output_gate_peephole_weights
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
k0"
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
trackable_dict_wrapper
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
�
Ptrainable_variables
lnon_trainable_variables
mlayer_regularization_losses
Qregularization_losses
R	variables
nmetrics
olayer_metrics

players
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
J
90
:1
;2
<3
=4
>5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
90
:1
;2
<3
=4
>5"
trackable_list_wrapper
�
\trainable_variables
qnon_trainable_variables
rlayer_regularization_losses
]regularization_losses
^	variables
smetrics
tlayer_metrics

ulayers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
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
'
 0"
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
�
	vtotal
	wcount
x	variables
y	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 23}
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
:  (2total
:  (2count
.
v0
w1"
trackable_list_wrapper
-
x	variables"
_generic_user_object
1:/2RMSprop/bpstkcuudk/kernel/rms
':%2RMSprop/bpstkcuudk/bias/rms
-:+ 2RMSprop/oaettnoaty/kernel/rms
':%2RMSprop/oaettnoaty/bias/rms
9:7	�2(RMSprop/osutmzfngz/dsycfvoega/kernel/rms
C:A	 �22RMSprop/osutmzfngz/dsycfvoega/recurrent_kernel/rms
3:1�2&RMSprop/osutmzfngz/dsycfvoega/bias/rms
I:G 2=RMSprop/osutmzfngz/dsycfvoega/input_gate_peephole_weights/rms
J:H 2>RMSprop/osutmzfngz/dsycfvoega/forget_gate_peephole_weights/rms
J:H 2>RMSprop/osutmzfngz/dsycfvoega/output_gate_peephole_weights/rms
9:7	 �2(RMSprop/owshcilvwl/flzkvrshbq/kernel/rms
C:A	 �22RMSprop/owshcilvwl/flzkvrshbq/recurrent_kernel/rms
3:1�2&RMSprop/owshcilvwl/flzkvrshbq/bias/rms
I:G 2=RMSprop/owshcilvwl/flzkvrshbq/input_gate_peephole_weights/rms
J:H 2>RMSprop/owshcilvwl/flzkvrshbq/forget_gate_peephole_weights/rms
J:H 2>RMSprop/owshcilvwl/flzkvrshbq/output_gate_peephole_weights/rms
�2�
 __inference__wrapped_model_27080�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *1�.
,�)

jfowsgvbzw���������
�2�
E__inference_sequential_layer_call_and_return_conditional_losses_30236
E__inference_sequential_layer_call_and_return_conditional_losses_30640
E__inference_sequential_layer_call_and_return_conditional_losses_29746
E__inference_sequential_layer_call_and_return_conditional_losses_29787�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_sequential_layer_call_fn_29099
*__inference_sequential_layer_call_fn_30677
*__inference_sequential_layer_call_fn_30714
*__inference_sequential_layer_call_fn_29705�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_bpstkcuudk_layer_call_and_return_conditional_losses_30751�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_bpstkcuudk_layer_call_fn_30760�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_xlcvyoxoxq_layer_call_and_return_conditional_losses_30773�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_xlcvyoxoxq_layer_call_fn_30778�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_30958
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_31138
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_31318
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_31498�
���
FullArgSpecO
argsG�D
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
defaults�

 
p 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_osutmzfngz_layer_call_fn_31515
*__inference_osutmzfngz_layer_call_fn_31532
*__inference_osutmzfngz_layer_call_fn_31549
*__inference_osutmzfngz_layer_call_fn_31566�
���
FullArgSpecO
argsG�D
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
defaults�

 
p 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_31746
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_31926
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_32106
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_32286�
���
FullArgSpecO
argsG�D
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
defaults�

 
p 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_owshcilvwl_layer_call_fn_32303
*__inference_owshcilvwl_layer_call_fn_32320
*__inference_owshcilvwl_layer_call_fn_32337
*__inference_owshcilvwl_layer_call_fn_32354�
���
FullArgSpecO
argsG�D
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
defaults�

 
p 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_oaettnoaty_layer_call_and_return_conditional_losses_32364�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_oaettnoaty_layer_call_fn_32373�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_29832
jfowsgvbzw"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_32417
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_32461�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_dsycfvoega_layer_call_fn_32484
*__inference_dsycfvoega_layer_call_fn_32507�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_32551
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_32595�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_flzkvrshbq_layer_call_fn_32618
*__inference_flzkvrshbq_layer_call_fn_32641�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
 __inference__wrapped_model_27080�3456789:;<=>'(;�8
1�.
,�)

jfowsgvbzw���������
� "7�4
2

oaettnoaty$�!

oaettnoaty����������
E__inference_bpstkcuudk_layer_call_and_return_conditional_losses_30751l7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
*__inference_bpstkcuudk_layer_call_fn_30760_7�4
-�*
(�%
inputs���������
� " �����������
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_32417�345678��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
E__inference_dsycfvoega_layer_call_and_return_conditional_losses_32461�345678��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
*__inference_dsycfvoega_layer_call_fn_32484�345678��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
*__inference_dsycfvoega_layer_call_fn_32507�345678��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_32551�9:;<=>��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
E__inference_flzkvrshbq_layer_call_and_return_conditional_losses_32595�9:;<=>��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
*__inference_flzkvrshbq_layer_call_fn_32618�9:;<=>��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
*__inference_flzkvrshbq_layer_call_fn_32641�9:;<=>��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
E__inference_oaettnoaty_layer_call_and_return_conditional_losses_32364\'(/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� }
*__inference_oaettnoaty_layer_call_fn_32373O'(/�,
%�"
 �
inputs��������� 
� "�����������
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_30958�345678S�P
I�F
4�1
/�,
inputs/0������������������

 
p 

 

 
� "2�/
(�%
0������������������ 
� �
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_31138�345678S�P
I�F
4�1
/�,
inputs/0������������������

 
p

 

 
� "2�/
(�%
0������������������ 
� �
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_31318x345678C�@
9�6
$�!
inputs���������

 
p 

 

 
� ")�&
�
0��������� 
� �
E__inference_osutmzfngz_layer_call_and_return_conditional_losses_31498x345678C�@
9�6
$�!
inputs���������

 
p

 

 
� ")�&
�
0��������� 
� �
*__inference_osutmzfngz_layer_call_fn_31515�345678S�P
I�F
4�1
/�,
inputs/0������������������

 
p 

 

 
� "%�"������������������ �
*__inference_osutmzfngz_layer_call_fn_31532�345678S�P
I�F
4�1
/�,
inputs/0������������������

 
p

 

 
� "%�"������������������ �
*__inference_osutmzfngz_layer_call_fn_31549k345678C�@
9�6
$�!
inputs���������

 
p 

 

 
� "���������� �
*__inference_osutmzfngz_layer_call_fn_31566k345678C�@
9�6
$�!
inputs���������

 
p

 

 
� "���������� �
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_31746�9:;<=>S�P
I�F
4�1
/�,
inputs/0������������������ 

 
p 

 

 
� "%�"
�
0��������� 
� �
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_31926�9:;<=>S�P
I�F
4�1
/�,
inputs/0������������������ 

 
p

 

 
� "%�"
�
0��������� 
� �
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_32106t9:;<=>C�@
9�6
$�!
inputs��������� 

 
p 

 

 
� "%�"
�
0��������� 
� �
E__inference_owshcilvwl_layer_call_and_return_conditional_losses_32286t9:;<=>C�@
9�6
$�!
inputs��������� 

 
p

 

 
� "%�"
�
0��������� 
� �
*__inference_owshcilvwl_layer_call_fn_32303w9:;<=>S�P
I�F
4�1
/�,
inputs/0������������������ 

 
p 

 

 
� "���������� �
*__inference_owshcilvwl_layer_call_fn_32320w9:;<=>S�P
I�F
4�1
/�,
inputs/0������������������ 

 
p

 

 
� "���������� �
*__inference_owshcilvwl_layer_call_fn_32337g9:;<=>C�@
9�6
$�!
inputs��������� 

 
p 

 

 
� "���������� �
*__inference_owshcilvwl_layer_call_fn_32354g9:;<=>C�@
9�6
$�!
inputs��������� 

 
p

 

 
� "���������� �
E__inference_sequential_layer_call_and_return_conditional_losses_29746~3456789:;<=>'(C�@
9�6
,�)

jfowsgvbzw���������
p 

 
� "%�"
�
0���������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_29787~3456789:;<=>'(C�@
9�6
,�)

jfowsgvbzw���������
p

 
� "%�"
�
0���������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_30236z3456789:;<=>'(?�<
5�2
(�%
inputs���������
p 

 
� "%�"
�
0���������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_30640z3456789:;<=>'(?�<
5�2
(�%
inputs���������
p

 
� "%�"
�
0���������
� �
*__inference_sequential_layer_call_fn_29099q3456789:;<=>'(C�@
9�6
,�)

jfowsgvbzw���������
p 

 
� "�����������
*__inference_sequential_layer_call_fn_29705q3456789:;<=>'(C�@
9�6
,�)

jfowsgvbzw���������
p

 
� "�����������
*__inference_sequential_layer_call_fn_30677m3456789:;<=>'(?�<
5�2
(�%
inputs���������
p 

 
� "�����������
*__inference_sequential_layer_call_fn_30714m3456789:;<=>'(?�<
5�2
(�%
inputs���������
p

 
� "�����������
#__inference_signature_wrapper_29832�3456789:;<=>'(I�F
� 
?�<
:

jfowsgvbzw,�)

jfowsgvbzw���������"7�4
2

oaettnoaty$�!

oaettnoaty����������
E__inference_xlcvyoxoxq_layer_call_and_return_conditional_losses_30773d7�4
-�*
(�%
inputs���������
� ")�&
�
0���������
� �
*__inference_xlcvyoxoxq_layer_call_fn_30778W7�4
-�*
(�%
inputs���������
� "����������