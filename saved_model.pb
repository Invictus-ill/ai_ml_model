¡.
ì
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
«
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.6.42v2.6.3-62-g9ef160463d18´Ý,

embedding_4/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
^ *'
shared_nameembedding_4/embeddings

*embedding_4/embeddings/Read/ReadVariableOpReadVariableOpembedding_4/embeddings* 
_output_shapes
:
^ *
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	ú*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_4/lstm_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 è**
shared_namelstm_4/lstm_cell_5/kernel

-lstm_4/lstm_cell_5/kernel/Read/ReadVariableOpReadVariableOplstm_4/lstm_cell_5/kernel* 
_output_shapes
:
 è*
dtype0
¤
#lstm_4/lstm_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
úè*4
shared_name%#lstm_4/lstm_cell_5/recurrent_kernel

7lstm_4/lstm_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_4/lstm_cell_5/recurrent_kernel* 
_output_shapes
:
úè*
dtype0

lstm_4/lstm_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:è*(
shared_namelstm_4/lstm_cell_5/bias

+lstm_4/lstm_cell_5/bias/Read/ReadVariableOpReadVariableOplstm_4/lstm_cell_5/bias*
_output_shapes	
:è*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/embedding_4/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
^ *.
shared_nameAdam/embedding_4/embeddings/m

1Adam/embedding_4/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_4/embeddings/m* 
_output_shapes
:
^ *
dtype0

Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	ú*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:*
dtype0

 Adam/lstm_4/lstm_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 è*1
shared_name" Adam/lstm_4/lstm_cell_5/kernel/m

4Adam/lstm_4/lstm_cell_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_4/lstm_cell_5/kernel/m* 
_output_shapes
:
 è*
dtype0
²
*Adam/lstm_4/lstm_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
úè*;
shared_name,*Adam/lstm_4/lstm_cell_5/recurrent_kernel/m
«
>Adam/lstm_4/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_4/lstm_cell_5/recurrent_kernel/m* 
_output_shapes
:
úè*
dtype0

Adam/lstm_4/lstm_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:è*/
shared_name Adam/lstm_4/lstm_cell_5/bias/m

2Adam/lstm_4/lstm_cell_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_4/lstm_cell_5/bias/m*
_output_shapes	
:è*
dtype0

Adam/embedding_4/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
^ *.
shared_nameAdam/embedding_4/embeddings/v

1Adam/embedding_4/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_4/embeddings/v* 
_output_shapes
:
^ *
dtype0

Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	ú*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:*
dtype0

 Adam/lstm_4/lstm_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 è*1
shared_name" Adam/lstm_4/lstm_cell_5/kernel/v

4Adam/lstm_4/lstm_cell_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_4/lstm_cell_5/kernel/v* 
_output_shapes
:
 è*
dtype0
²
*Adam/lstm_4/lstm_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
úè*;
shared_name,*Adam/lstm_4/lstm_cell_5/recurrent_kernel/v
«
>Adam/lstm_4/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_4/lstm_cell_5/recurrent_kernel/v* 
_output_shapes
:
úè*
dtype0

Adam/lstm_4/lstm_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:è*/
shared_name Adam/lstm_4/lstm_cell_5/bias/v

2Adam/lstm_4/lstm_cell_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_4/lstm_cell_5/bias/v*
_output_shapes	
:è*
dtype0

NoOpNoOp
ó*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*®*
value¤*B¡* B*
ó
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
¬
 iter

!beta_1

"beta_2
	#decay
$learning_ratemWmXmY%mZ&m['m\v]v^v_%v`&va'vb
*
0
%1
&2
'3
4
5
*
0
%1
&2
'3
4
5
 
­
(layer_metrics
	variables
)layer_regularization_losses
*metrics

+layers
trainable_variables
,non_trainable_variables
regularization_losses
 
fd
VARIABLE_VALUEembedding_4/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
-layer_metrics
	variables
.layer_regularization_losses
/metrics

0layers
trainable_variables
1non_trainable_variables
regularization_losses
 
 
 
­
2layer_metrics
	variables
3layer_regularization_losses
4metrics

5layers
trainable_variables
6non_trainable_variables
regularization_losses

7
state_size

%kernel
&recurrent_kernel
'bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
 

%0
&1
'2

%0
&1
'2
 
¹

<states
=layer_metrics
	variables
>layer_regularization_losses
?metrics

@layers
trainable_variables
Anon_trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Blayer_metrics
	variables
Clayer_regularization_losses
Dmetrics

Elayers
trainable_variables
Fnon_trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_4/lstm_cell_5/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_4/lstm_cell_5/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_4/lstm_cell_5/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 
 

G0
H1

0
1
2
3
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

%0
&1
'2

%0
&1
'2
 
­
Ilayer_metrics
8	variables
Jlayer_regularization_losses
Kmetrics

Llayers
9trainable_variables
Mnon_trainable_variables
:regularization_losses
 
 
 
 

0
 
 
 
 
 
 
4
	Ntotal
	Ocount
P	variables
Q	keras_api
D
	Rtotal
	Scount
T
_fn_kwargs
U	variables
V	keras_api
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
N0
O1

P	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

U	variables

VARIABLE_VALUEAdam/embedding_4/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_4/lstm_cell_5/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_4/lstm_cell_5/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_4/lstm_cell_5/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/embedding_4/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_4/lstm_cell_5/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_4/lstm_cell_5/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_4/lstm_cell_5/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_embedding_4_inputPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ 
Ö
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_4_inputembedding_4/embeddingslstm_4/lstm_cell_5/kernellstm_4/lstm_cell_5/bias#lstm_4/lstm_cell_5/recurrent_kerneldense_4/kerneldense_4/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_41631
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
·
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_4/embeddings/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_4/lstm_cell_5/kernel/Read/ReadVariableOp7lstm_4/lstm_cell_5/recurrent_kernel/Read/ReadVariableOp+lstm_4/lstm_cell_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_4/embeddings/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp4Adam/lstm_4/lstm_cell_5/kernel/m/Read/ReadVariableOp>Adam/lstm_4/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_4/lstm_cell_5/bias/m/Read/ReadVariableOp1Adam/embedding_4/embeddings/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp4Adam/lstm_4/lstm_cell_5/kernel/v/Read/ReadVariableOp>Adam/lstm_4/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_4/lstm_cell_5/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_44361

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_4/embeddingsdense_4/kerneldense_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_4/lstm_cell_5/kernel#lstm_4/lstm_cell_5/recurrent_kernellstm_4/lstm_cell_5/biastotalcounttotal_1count_1Adam/embedding_4/embeddings/mAdam/dense_4/kernel/mAdam/dense_4/bias/m Adam/lstm_4/lstm_cell_5/kernel/m*Adam/lstm_4/lstm_cell_5/recurrent_kernel/mAdam/lstm_4/lstm_cell_5/bias/mAdam/embedding_4/embeddings/vAdam/dense_4/kernel/vAdam/dense_4/bias/v Adam/lstm_4/lstm_cell_5/kernel/v*Adam/lstm_4/lstm_cell_5/recurrent_kernel/vAdam/lstm_4/lstm_cell_5/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_44452¼ã+
¼%
Ù
while_body_40012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_5_40036_0:
 è(
while_lstm_cell_5_40038_0:	è-
while_lstm_cell_5_40040_0:
úè
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_5_40036:
 è&
while_lstm_cell_5_40038:	è+
while_lstm_cell_5_40040:
úè¢)while/lstm_cell_5/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_40036_0while_lstm_cell_5_40038_0while_lstm_cell_5_40040_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_399982+
)while/lstm_cell_5/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¤
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_4¤
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_5

while/NoOpNoOp*^while/lstm_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_5_40036while_lstm_cell_5_40036_0"4
while_lstm_cell_5_40038while_lstm_cell_5_40038_0"4
while_lstm_cell_5_40040while_lstm_cell_5_40040_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : 2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
: 
­	

,__inference_sequential_4_layer_call_fn_42406

inputs
unknown:
^ 
	unknown_0:
 è
	unknown_1:	è
	unknown_2:
úè
	unknown_3:	ú
	unknown_4:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_415342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
©
«
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_44223

inputs
states_0
states_11
split_readvariableop_resource:
 è.
split_1_readvariableop_resource:	è+
readvariableop_resource:
úè
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÔ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¨®·2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÚ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Ýà2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_1/GreaterEqual/yÇ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÚ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2§¬2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_2/GreaterEqual/yÇ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÚ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ì±ë2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_3/GreaterEqual/yÇ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeÚ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2ð¯2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_4/GreaterEqual/yÇ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÙ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2Èñ2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_5/GreaterEqual/yÇ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/ShapeÚ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2ê­³2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_6/GreaterEqual/yÇ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/ShapeÚ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2»µ2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_7/GreaterEqual/yÇ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
 è*
dtype02
split/ReadVariableOp¯
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:è*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_3g
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_4g
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_5g
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_6g
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1a
Mul_8Muladd:z:0Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_8g
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_5r
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3e
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_9g
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_1i
mul_10Mulclip_by_value_1:z:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_10~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_6r
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_4R
TanhTanh	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Tanhg
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_11b
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_5~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_7r
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5g
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_12h
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_2/Minimum/y
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_2V
Tanh_1Tanh	add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Tanh_1k
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_13f
IdentityIdentity
mul_13:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identityj

Identity_1Identity
mul_13:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_1i

Identity_2Identity	add_5:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_2È
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
"
_user_specified_name
states/1
Ô
¾
while_cond_40815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_40815___redundant_placeholder03
/while_while_cond_40815___redundant_placeholder13
/while_while_cond_40815___redundant_placeholder23
/while_while_cond_40815___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: ::::: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
:
¤¯
Þ
A__inference_lstm_4_layer_call_and_return_conditional_losses_40970

inputs=
)lstm_cell_5_split_readvariableop_resource:
 è:
+lstm_cell_5_split_1_readvariableop_resource:	è7
#lstm_cell_5_readvariableop_resource:
úè
identity¢lstm_cell_5/ReadVariableOp¢lstm_cell_5/ReadVariableOp_1¢lstm_cell_5/ReadVariableOp_2¢lstm_cell_5/ReadVariableOp_3¢ lstm_cell_5/split/ReadVariableOp¢"lstm_cell_5/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros/packed/1
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
zerosg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros_1/packed/1
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿ 2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/Constµ
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/ones_like|
lstm_cell_5/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like_1/Shape
lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like_1/Const½
lstm_cell_5/ones_like_1Fill&lstm_cell_5/ones_like_1/Shape:output:0&lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/ones_like_1
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul
lstm_cell_5/mul_1Mulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_1
lstm_cell_5/mul_2Mulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_2
lstm_cell_5/mul_3Mulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_3|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim°
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource* 
_output_shapes
:
 è*
dtype02"
 lstm_cell_5/split/ReadVariableOpß
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
lstm_cell_5/split
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul
lstm_cell_5/MatMul_1MatMullstm_cell_5/mul_1:z:0lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_1
lstm_cell_5/MatMul_2MatMullstm_cell_5/mul_2:z:0lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_2
lstm_cell_5/MatMul_3MatMullstm_cell_5/mul_3:z:0lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_3
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim±
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:è*
dtype02$
"lstm_cell_5/split_1/ReadVariableOpÓ
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
lstm_cell_5/split_1¤
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAddª
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_1ª
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_2ª
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_3
lstm_cell_5/mul_4Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_4
lstm_cell_5/mul_5Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_5
lstm_cell_5/mul_6Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_6
lstm_cell_5/mul_7Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_7
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice/stack_1
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2Æ
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice¤
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul_4:z:0"lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_4
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/addk
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Consto
lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_1
lstm_cell_5/Mul_8Mullstm_cell_5/add:z:0lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_8
lstm_cell_5/Add_1AddV2lstm_cell_5/Mul_8:z:0lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_1
#lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_5/clip_by_value/Minimum/yÉ
!lstm_cell_5/clip_by_value/MinimumMinimumlstm_cell_5/Add_1:z:0,lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_cell_5/clip_by_value/Minimum
lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value/yÁ
lstm_cell_5/clip_by_valueMaximum%lstm_cell_5/clip_by_value/Minimum:z:0$lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value¢
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_1
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice_1/stack
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2%
#lstm_cell_5/strided_slice_1/stack_1
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2Ò
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1¦
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_5:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_5¢
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_2o
lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_2o
lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_3
lstm_cell_5/Mul_9Mullstm_cell_5/add_2:z:0lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_9
lstm_cell_5/Add_3AddV2lstm_cell_5/Mul_9:z:0lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_3
%lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_1/Minimum/yÏ
#lstm_cell_5/clip_by_value_1/MinimumMinimumlstm_cell_5/Add_3:z:0.lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_1/Minimum
lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_1/yÉ
lstm_cell_5/clip_by_value_1Maximum'lstm_cell_5/clip_by_value_1/Minimum:z:0&lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_1
lstm_cell_5/mul_10Mullstm_cell_5/clip_by_value_1:z:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_10¢
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_2
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2#
!lstm_cell_5/strided_slice_2/stack
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2%
#lstm_cell_5/strided_slice_2/stack_1
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2Ò
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2¦
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_6:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_6¢
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_4v
lstm_cell_5/TanhTanhlstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh
lstm_cell_5/mul_11Mullstm_cell_5/clip_by_value:z:0lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_11
lstm_cell_5/add_5AddV2lstm_cell_5/mul_10:z:0lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_5¢
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_3
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2#
!lstm_cell_5/strided_slice_3/stack
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2Ò
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3¦
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_7:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_7¢
lstm_cell_5/add_6AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_6o
lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_4o
lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_5
lstm_cell_5/Mul_12Mullstm_cell_5/add_6:z:0lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_12
lstm_cell_5/Add_7AddV2lstm_cell_5/Mul_12:z:0lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_7
%lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_2/Minimum/yÏ
#lstm_cell_5/clip_by_value_2/MinimumMinimumlstm_cell_5/Add_7:z:0.lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_2/Minimum
lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_2/yÉ
lstm_cell_5/clip_by_value_2Maximum'lstm_cell_5/clip_by_value_2/Minimum:z:0&lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_2z
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh_1
lstm_cell_5/mul_13Mullstm_cell_5/clip_by_value_2:z:0lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_13
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_40816*
condR
while_cond_40815*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   22
0TensorArrayV2Stack/TensorListStack/element_shapeê
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿú*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm§
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ú2
transpose_1t
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity
NoOpNoOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ  : : : 28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
é`
©
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_39998

inputs

states
states_11
split_readvariableop_resource:
 è.
split_1_readvariableop_resource:	è+
readvariableop_resource:
úè
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
 è*
dtype02
split/ReadVariableOp¯
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:è*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_3f
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_4f
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_5f
mul_6Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_6f
mul_7Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1a
Mul_8Muladd:z:0Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_8g
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_5r
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3e
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_9g
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_1i
mul_10Mulclip_by_value_1:z:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_10~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_6r
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_4R
TanhTanh	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Tanhg
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_11b
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_5~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_7r
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5g
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_12h
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_2/Minimum/y
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_2V
Tanh_1Tanh	add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Tanh_1k
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_13f
IdentityIdentity
mul_13:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identityj

Identity_1Identity
mul_13:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_1i

Identity_2Identity	add_5:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_2È
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_namestates
£

G__inference_sequential_4_layer_call_and_return_conditional_losses_40996

inputs%
embedding_4_40678:
^  
lstm_4_40971:
 è
lstm_4_40973:	è 
lstm_4_40975:
úè 
dense_4_40990:	ú
dense_4_40992:
identity¢dense_4/StatefulPartitionedCall¢#embedding_4/StatefulPartitionedCall¢lstm_4/StatefulPartitionedCall
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_4_40678*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_4_layer_call_and_return_conditional_losses_406772%
#embedding_4/StatefulPartitionedCall 
#spatial_dropout1d_4/PartitionedCallPartitionedCall,embedding_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_406852%
#spatial_dropout1d_4/PartitionedCall¾
lstm_4/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_4/PartitionedCall:output:0lstm_4_40971lstm_4_40973lstm_4_40975*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_4_layer_call_and_return_conditional_losses_409702 
lstm_4/StatefulPartitionedCall­
dense_4/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_4_40990dense_4_40992*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_409892!
dense_4/StatefulPartitionedCall
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
NoOpNoOp ^dense_4/StatefulPartitionedCall$^embedding_4/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ù`
«
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_44056

inputs
states_0
states_11
split_readvariableop_resource:
 è.
split_1_readvariableop_resource:	è+
readvariableop_resource:
úè
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
 è*
dtype02
split/ReadVariableOp¯
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:è*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_3h
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_4h
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_5h
mul_6Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_6h
mul_7Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1a
Mul_8Muladd:z:0Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_8g
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_5r
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3e
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_9g
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_1i
mul_10Mulclip_by_value_1:z:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_10~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_6r
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_4R
TanhTanh	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Tanhg
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_11b
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_5~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_7r
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5g
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_12h
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_2/Minimum/y
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_2V
Tanh_1Tanh	add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Tanh_1k
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_13f
IdentityIdentity
mul_13:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identityj

Identity_1Identity
mul_13:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_1i

Identity_2Identity	add_5:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_2È
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
"
_user_specified_name
states/1
Ô
¾
while_cond_42626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_42626___redundant_placeholder03
/while_while_cond_42626___redundant_placeholder13
/while_while_cond_42626___redundant_placeholder23
/while_while_cond_42626___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: ::::: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
:
Ô
¾
while_cond_40347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_40347___redundant_placeholder03
/while_while_cond_40347___redundant_placeholder13
/while_while_cond_40347___redundant_placeholder23
/while_while_cond_40347___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: ::::: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
:
Ó
l
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_39793

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

m
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_41484

inputs
identityD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consty
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Mul_1k
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
è>
þ
A__inference_lstm_4_layer_call_and_return_conditional_losses_40416

inputs%
lstm_cell_5_40335:
 è 
lstm_cell_5_40337:	è%
lstm_cell_5_40339:
úè
identity¢#lstm_cell_5/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros/packed/1
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
zerosg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros_1/packed/1
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_40335lstm_cell_5_40337lstm_cell_5_40339*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_402782%
#lstm_cell_5/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_40335lstm_cell_5_40337lstm_cell_5_40339*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_40348*
condR
while_cond_40347*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿú*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿú2
transpose_1t
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity|
NoOpNoOp$^lstm_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

Ï
G__inference_sequential_4_layer_call_and_return_conditional_losses_41606
embedding_4_input%
embedding_4_41589:
^  
lstm_4_41593:
 è
lstm_4_41595:	è 
lstm_4_41597:
úè 
dense_4_41600:	ú
dense_4_41602:
identity¢dense_4/StatefulPartitionedCall¢#embedding_4/StatefulPartitionedCall¢lstm_4/StatefulPartitionedCall¢+spatial_dropout1d_4/StatefulPartitionedCall
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputembedding_4_41589*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_4_layer_call_and_return_conditional_losses_406772%
#embedding_4/StatefulPartitionedCall¸
+spatial_dropout1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_414842-
+spatial_dropout1d_4/StatefulPartitionedCallÆ
lstm_4/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_4/StatefulPartitionedCall:output:0lstm_4_41593lstm_4_41595lstm_4_41597*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_4_layer_call_and_return_conditional_losses_414462 
lstm_4/StatefulPartitionedCall­
dense_4/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_4_41600dense_4_41602*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_409892!
dense_4/StatefulPartitionedCall
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityå
NoOpNoOp ^dense_4/StatefulPartitionedCall$^embedding_4/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall,^spatial_dropout1d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall2Z
+spatial_dropout1d_4/StatefulPartitionedCall+spatial_dropout1d_4/StatefulPartitionedCall:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+
_user_specified_nameembedding_4_input
Ô
m
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42450

inputs
identityD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð«

lstm_4_while_body_42147*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3)
%lstm_4_while_lstm_4_strided_slice_1_0e
alstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0L
8lstm_4_while_lstm_cell_5_split_readvariableop_resource_0:
 èI
:lstm_4_while_lstm_cell_5_split_1_readvariableop_resource_0:	èF
2lstm_4_while_lstm_cell_5_readvariableop_resource_0:
úè
lstm_4_while_identity
lstm_4_while_identity_1
lstm_4_while_identity_2
lstm_4_while_identity_3
lstm_4_while_identity_4
lstm_4_while_identity_5'
#lstm_4_while_lstm_4_strided_slice_1c
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensorJ
6lstm_4_while_lstm_cell_5_split_readvariableop_resource:
 èG
8lstm_4_while_lstm_cell_5_split_1_readvariableop_resource:	èD
0lstm_4_while_lstm_cell_5_readvariableop_resource:
úè¢'lstm_4/while/lstm_cell_5/ReadVariableOp¢)lstm_4/while/lstm_cell_5/ReadVariableOp_1¢)lstm_4/while/lstm_cell_5/ReadVariableOp_2¢)lstm_4/while/lstm_cell_5/ReadVariableOp_3¢-lstm_4/while/lstm_cell_5/split/ReadVariableOp¢/lstm_4/while/lstm_cell_5/split_1/ReadVariableOpÑ
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2@
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeþ
0lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0lstm_4_while_placeholderGlstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype022
0lstm_4/while/TensorArrayV2Read/TensorListGetItem»
(lstm_4/while/lstm_cell_5/ones_like/ShapeShape7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_4/while/lstm_cell_5/ones_like/Shape
(lstm_4/while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_4/while/lstm_cell_5/ones_like/Consté
"lstm_4/while/lstm_cell_5/ones_likeFill1lstm_4/while/lstm_cell_5/ones_like/Shape:output:01lstm_4/while/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_4/while/lstm_cell_5/ones_like
&lstm_4/while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&lstm_4/while/lstm_cell_5/dropout/Constä
$lstm_4/while/lstm_cell_5/dropout/MulMul+lstm_4/while/lstm_cell_5/ones_like:output:0/lstm_4/while/lstm_cell_5/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_4/while/lstm_cell_5/dropout/Mul«
&lstm_4/while/lstm_cell_5/dropout/ShapeShape+lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_4/while/lstm_cell_5/dropout/Shape
=lstm_4/while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform/lstm_4/while/lstm_cell_5/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2úü2?
=lstm_4/while/lstm_cell_5/dropout/random_uniform/RandomUniform§
/lstm_4/while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>21
/lstm_4/while/lstm_cell_5/dropout/GreaterEqual/y£
-lstm_4/while/lstm_cell_5/dropout/GreaterEqualGreaterEqualFlstm_4/while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:08lstm_4/while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-lstm_4/while/lstm_cell_5/dropout/GreaterEqualË
%lstm_4/while/lstm_cell_5/dropout/CastCast1lstm_4/while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_4/while/lstm_cell_5/dropout/Castß
&lstm_4/while/lstm_cell_5/dropout/Mul_1Mul(lstm_4/while/lstm_cell_5/dropout/Mul:z:0)lstm_4/while/lstm_cell_5/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_4/while/lstm_cell_5/dropout/Mul_1
(lstm_4/while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_4/while/lstm_cell_5/dropout_1/Constê
&lstm_4/while/lstm_cell_5/dropout_1/MulMul+lstm_4/while/lstm_cell_5/ones_like:output:01lstm_4/while/lstm_cell_5/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_4/while/lstm_cell_5/dropout_1/Mul¯
(lstm_4/while/lstm_cell_5/dropout_1/ShapeShape+lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_4/while/lstm_cell_5/dropout_1/Shape¥
?lstm_4/while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_4/while/lstm_cell_5/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ç¾2A
?lstm_4/while/lstm_cell_5/dropout_1/random_uniform/RandomUniform«
1lstm_4/while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_4/while/lstm_cell_5/dropout_1/GreaterEqual/y«
/lstm_4/while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualHlstm_4/while/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0:lstm_4/while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/lstm_4/while/lstm_cell_5/dropout_1/GreaterEqualÑ
'lstm_4/while/lstm_cell_5/dropout_1/CastCast3lstm_4/while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_4/while/lstm_cell_5/dropout_1/Castç
(lstm_4/while/lstm_cell_5/dropout_1/Mul_1Mul*lstm_4/while/lstm_cell_5/dropout_1/Mul:z:0+lstm_4/while/lstm_cell_5/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_4/while/lstm_cell_5/dropout_1/Mul_1
(lstm_4/while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_4/while/lstm_cell_5/dropout_2/Constê
&lstm_4/while/lstm_cell_5/dropout_2/MulMul+lstm_4/while/lstm_cell_5/ones_like:output:01lstm_4/while/lstm_cell_5/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_4/while/lstm_cell_5/dropout_2/Mul¯
(lstm_4/while/lstm_cell_5/dropout_2/ShapeShape+lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_4/while/lstm_cell_5/dropout_2/Shape¥
?lstm_4/while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_4/while/lstm_cell_5/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Â2A
?lstm_4/while/lstm_cell_5/dropout_2/random_uniform/RandomUniform«
1lstm_4/while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_4/while/lstm_cell_5/dropout_2/GreaterEqual/y«
/lstm_4/while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualHlstm_4/while/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0:lstm_4/while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/lstm_4/while/lstm_cell_5/dropout_2/GreaterEqualÑ
'lstm_4/while/lstm_cell_5/dropout_2/CastCast3lstm_4/while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_4/while/lstm_cell_5/dropout_2/Castç
(lstm_4/while/lstm_cell_5/dropout_2/Mul_1Mul*lstm_4/while/lstm_cell_5/dropout_2/Mul:z:0+lstm_4/while/lstm_cell_5/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_4/while/lstm_cell_5/dropout_2/Mul_1
(lstm_4/while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_4/while/lstm_cell_5/dropout_3/Constê
&lstm_4/while/lstm_cell_5/dropout_3/MulMul+lstm_4/while/lstm_cell_5/ones_like:output:01lstm_4/while/lstm_cell_5/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&lstm_4/while/lstm_cell_5/dropout_3/Mul¯
(lstm_4/while/lstm_cell_5/dropout_3/ShapeShape+lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_4/while/lstm_cell_5/dropout_3/Shape¤
?lstm_4/while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_4/while/lstm_cell_5/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2È¸p2A
?lstm_4/while/lstm_cell_5/dropout_3/random_uniform/RandomUniform«
1lstm_4/while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_4/while/lstm_cell_5/dropout_3/GreaterEqual/y«
/lstm_4/while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualHlstm_4/while/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0:lstm_4/while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/lstm_4/while/lstm_cell_5/dropout_3/GreaterEqualÑ
'lstm_4/while/lstm_cell_5/dropout_3/CastCast3lstm_4/while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_4/while/lstm_cell_5/dropout_3/Castç
(lstm_4/while/lstm_cell_5/dropout_3/Mul_1Mul*lstm_4/while/lstm_cell_5/dropout_3/Mul:z:0+lstm_4/while/lstm_cell_5/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(lstm_4/while/lstm_cell_5/dropout_3/Mul_1¢
*lstm_4/while/lstm_cell_5/ones_like_1/ShapeShapelstm_4_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_4/while/lstm_cell_5/ones_like_1/Shape
*lstm_4/while/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_4/while/lstm_cell_5/ones_like_1/Constñ
$lstm_4/while/lstm_cell_5/ones_like_1Fill3lstm_4/while/lstm_cell_5/ones_like_1/Shape:output:03lstm_4/while/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2&
$lstm_4/while/lstm_cell_5/ones_like_1
(lstm_4/while/lstm_cell_5/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_4/while/lstm_cell_5/dropout_4/Constì
&lstm_4/while/lstm_cell_5/dropout_4/MulMul-lstm_4/while/lstm_cell_5/ones_like_1:output:01lstm_4/while/lstm_cell_5/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&lstm_4/while/lstm_cell_5/dropout_4/Mul±
(lstm_4/while/lstm_cell_5/dropout_4/ShapeShape-lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_4/while/lstm_cell_5/dropout_4/Shape¤
?lstm_4/while/lstm_cell_5/dropout_4/random_uniform/RandomUniformRandomUniform1lstm_4/while/lstm_cell_5/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2ªX2A
?lstm_4/while/lstm_cell_5/dropout_4/random_uniform/RandomUniform«
1lstm_4/while/lstm_cell_5/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_4/while/lstm_cell_5/dropout_4/GreaterEqual/y«
/lstm_4/while/lstm_cell_5/dropout_4/GreaterEqualGreaterEqualHlstm_4/while/lstm_cell_5/dropout_4/random_uniform/RandomUniform:output:0:lstm_4/while/lstm_cell_5/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú21
/lstm_4/while/lstm_cell_5/dropout_4/GreaterEqualÑ
'lstm_4/while/lstm_cell_5/dropout_4/CastCast3lstm_4/while/lstm_cell_5/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2)
'lstm_4/while/lstm_cell_5/dropout_4/Castç
(lstm_4/while/lstm_cell_5/dropout_4/Mul_1Mul*lstm_4/while/lstm_cell_5/dropout_4/Mul:z:0+lstm_4/while/lstm_cell_5/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(lstm_4/while/lstm_cell_5/dropout_4/Mul_1
(lstm_4/while/lstm_cell_5/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_4/while/lstm_cell_5/dropout_5/Constì
&lstm_4/while/lstm_cell_5/dropout_5/MulMul-lstm_4/while/lstm_cell_5/ones_like_1:output:01lstm_4/while/lstm_cell_5/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&lstm_4/while/lstm_cell_5/dropout_5/Mul±
(lstm_4/while/lstm_cell_5/dropout_5/ShapeShape-lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_4/while/lstm_cell_5/dropout_5/Shape¥
?lstm_4/while/lstm_cell_5/dropout_5/random_uniform/RandomUniformRandomUniform1lstm_4/while/lstm_cell_5/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2³ÿ2A
?lstm_4/while/lstm_cell_5/dropout_5/random_uniform/RandomUniform«
1lstm_4/while/lstm_cell_5/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_4/while/lstm_cell_5/dropout_5/GreaterEqual/y«
/lstm_4/while/lstm_cell_5/dropout_5/GreaterEqualGreaterEqualHlstm_4/while/lstm_cell_5/dropout_5/random_uniform/RandomUniform:output:0:lstm_4/while/lstm_cell_5/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú21
/lstm_4/while/lstm_cell_5/dropout_5/GreaterEqualÑ
'lstm_4/while/lstm_cell_5/dropout_5/CastCast3lstm_4/while/lstm_cell_5/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2)
'lstm_4/while/lstm_cell_5/dropout_5/Castç
(lstm_4/while/lstm_cell_5/dropout_5/Mul_1Mul*lstm_4/while/lstm_cell_5/dropout_5/Mul:z:0+lstm_4/while/lstm_cell_5/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(lstm_4/while/lstm_cell_5/dropout_5/Mul_1
(lstm_4/while/lstm_cell_5/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_4/while/lstm_cell_5/dropout_6/Constì
&lstm_4/while/lstm_cell_5/dropout_6/MulMul-lstm_4/while/lstm_cell_5/ones_like_1:output:01lstm_4/while/lstm_cell_5/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&lstm_4/while/lstm_cell_5/dropout_6/Mul±
(lstm_4/while/lstm_cell_5/dropout_6/ShapeShape-lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_4/while/lstm_cell_5/dropout_6/Shape¥
?lstm_4/while/lstm_cell_5/dropout_6/random_uniform/RandomUniformRandomUniform1lstm_4/while/lstm_cell_5/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2©ä2A
?lstm_4/while/lstm_cell_5/dropout_6/random_uniform/RandomUniform«
1lstm_4/while/lstm_cell_5/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_4/while/lstm_cell_5/dropout_6/GreaterEqual/y«
/lstm_4/while/lstm_cell_5/dropout_6/GreaterEqualGreaterEqualHlstm_4/while/lstm_cell_5/dropout_6/random_uniform/RandomUniform:output:0:lstm_4/while/lstm_cell_5/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú21
/lstm_4/while/lstm_cell_5/dropout_6/GreaterEqualÑ
'lstm_4/while/lstm_cell_5/dropout_6/CastCast3lstm_4/while/lstm_cell_5/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2)
'lstm_4/while/lstm_cell_5/dropout_6/Castç
(lstm_4/while/lstm_cell_5/dropout_6/Mul_1Mul*lstm_4/while/lstm_cell_5/dropout_6/Mul:z:0+lstm_4/while/lstm_cell_5/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(lstm_4/while/lstm_cell_5/dropout_6/Mul_1
(lstm_4/while/lstm_cell_5/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_4/while/lstm_cell_5/dropout_7/Constì
&lstm_4/while/lstm_cell_5/dropout_7/MulMul-lstm_4/while/lstm_cell_5/ones_like_1:output:01lstm_4/while/lstm_cell_5/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&lstm_4/while/lstm_cell_5/dropout_7/Mul±
(lstm_4/while/lstm_cell_5/dropout_7/ShapeShape-lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_4/while/lstm_cell_5/dropout_7/Shape¥
?lstm_4/while/lstm_cell_5/dropout_7/random_uniform/RandomUniformRandomUniform1lstm_4/while/lstm_cell_5/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2Ñî§2A
?lstm_4/while/lstm_cell_5/dropout_7/random_uniform/RandomUniform«
1lstm_4/while/lstm_cell_5/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_4/while/lstm_cell_5/dropout_7/GreaterEqual/y«
/lstm_4/while/lstm_cell_5/dropout_7/GreaterEqualGreaterEqualHlstm_4/while/lstm_cell_5/dropout_7/random_uniform/RandomUniform:output:0:lstm_4/while/lstm_cell_5/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú21
/lstm_4/while/lstm_cell_5/dropout_7/GreaterEqualÑ
'lstm_4/while/lstm_cell_5/dropout_7/CastCast3lstm_4/while/lstm_cell_5/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2)
'lstm_4/while/lstm_cell_5/dropout_7/Castç
(lstm_4/while/lstm_cell_5/dropout_7/Mul_1Mul*lstm_4/while/lstm_cell_5/dropout_7/Mul:z:0+lstm_4/while/lstm_cell_5/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(lstm_4/while/lstm_cell_5/dropout_7/Mul_1Û
lstm_4/while/lstm_cell_5/mulMul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm_4/while/lstm_cell_5/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/while/lstm_cell_5/mulá
lstm_4/while/lstm_cell_5/mul_1Mul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_4/while/lstm_cell_5/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_4/while/lstm_cell_5/mul_1á
lstm_4/while/lstm_cell_5/mul_2Mul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_4/while/lstm_cell_5/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_4/while/lstm_cell_5/mul_2á
lstm_4/while/lstm_cell_5/mul_3Mul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_4/while/lstm_cell_5/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_4/while/lstm_cell_5/mul_3
(lstm_4/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_4/while/lstm_cell_5/split/split_dimÙ
-lstm_4/while/lstm_cell_5/split/ReadVariableOpReadVariableOp8lstm_4_while_lstm_cell_5_split_readvariableop_resource_0* 
_output_shapes
:
 è*
dtype02/
-lstm_4/while/lstm_cell_5/split/ReadVariableOp
lstm_4/while/lstm_cell_5/splitSplit1lstm_4/while/lstm_cell_5/split/split_dim:output:05lstm_4/while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2 
lstm_4/while/lstm_cell_5/splitÊ
lstm_4/while/lstm_cell_5/MatMulMatMul lstm_4/while/lstm_cell_5/mul:z:0'lstm_4/while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/MatMulÐ
!lstm_4/while/lstm_cell_5/MatMul_1MatMul"lstm_4/while/lstm_cell_5/mul_1:z:0'lstm_4/while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_1Ð
!lstm_4/while/lstm_cell_5/MatMul_2MatMul"lstm_4/while/lstm_cell_5/mul_2:z:0'lstm_4/while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_2Ð
!lstm_4/while/lstm_cell_5/MatMul_3MatMul"lstm_4/while/lstm_cell_5/mul_3:z:0'lstm_4/while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_3
*lstm_4/while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_4/while/lstm_cell_5/split_1/split_dimÚ
/lstm_4/while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp:lstm_4_while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:è*
dtype021
/lstm_4/while/lstm_cell_5/split_1/ReadVariableOp
 lstm_4/while/lstm_cell_5/split_1Split3lstm_4/while/lstm_cell_5/split_1/split_dim:output:07lstm_4/while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2"
 lstm_4/while/lstm_cell_5/split_1Ø
 lstm_4/while/lstm_cell_5/BiasAddBiasAdd)lstm_4/while/lstm_cell_5/MatMul:product:0)lstm_4/while/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 lstm_4/while/lstm_cell_5/BiasAddÞ
"lstm_4/while/lstm_cell_5/BiasAdd_1BiasAdd+lstm_4/while/lstm_cell_5/MatMul_1:product:0)lstm_4/while/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/while/lstm_cell_5/BiasAdd_1Þ
"lstm_4/while/lstm_cell_5/BiasAdd_2BiasAdd+lstm_4/while/lstm_cell_5/MatMul_2:product:0)lstm_4/while/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/while/lstm_cell_5/BiasAdd_2Þ
"lstm_4/while/lstm_cell_5/BiasAdd_3BiasAdd+lstm_4/while/lstm_cell_5/MatMul_3:product:0)lstm_4/while/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/while/lstm_cell_5/BiasAdd_3Ä
lstm_4/while/lstm_cell_5/mul_4Mullstm_4_while_placeholder_2,lstm_4/while/lstm_cell_5/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/mul_4Ä
lstm_4/while/lstm_cell_5/mul_5Mullstm_4_while_placeholder_2,lstm_4/while/lstm_cell_5/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/mul_5Ä
lstm_4/while/lstm_cell_5/mul_6Mullstm_4_while_placeholder_2,lstm_4/while/lstm_cell_5/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/mul_6Ä
lstm_4/while/lstm_cell_5/mul_7Mullstm_4_while_placeholder_2,lstm_4/while/lstm_cell_5/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/mul_7Ç
'lstm_4/while/lstm_cell_5/ReadVariableOpReadVariableOp2lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02)
'lstm_4/while/lstm_cell_5/ReadVariableOp­
,lstm_4/while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_4/while/lstm_cell_5/strided_slice/stack±
.lstm_4/while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   20
.lstm_4/while/lstm_cell_5/strided_slice/stack_1±
.lstm_4/while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_4/while/lstm_cell_5/strided_slice/stack_2
&lstm_4/while/lstm_cell_5/strided_sliceStridedSlice/lstm_4/while/lstm_cell_5/ReadVariableOp:value:05lstm_4/while/lstm_cell_5/strided_slice/stack:output:07lstm_4/while/lstm_cell_5/strided_slice/stack_1:output:07lstm_4/while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2(
&lstm_4/while/lstm_cell_5/strided_sliceØ
!lstm_4/while/lstm_cell_5/MatMul_4MatMul"lstm_4/while/lstm_cell_5/mul_4:z:0/lstm_4/while/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_4Ð
lstm_4/while/lstm_cell_5/addAddV2)lstm_4/while/lstm_cell_5/BiasAdd:output:0+lstm_4/while/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/while/lstm_cell_5/add
lstm_4/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2 
lstm_4/while/lstm_cell_5/Const
 lstm_4/while/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_4/while/lstm_cell_5/Const_1Å
lstm_4/while/lstm_cell_5/Mul_8Mul lstm_4/while/lstm_cell_5/add:z:0'lstm_4/while/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/Mul_8Ë
lstm_4/while/lstm_cell_5/Add_1AddV2"lstm_4/while/lstm_cell_5/Mul_8:z:0)lstm_4/while/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/Add_1©
0lstm_4/while/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?22
0lstm_4/while/lstm_cell_5/clip_by_value/Minimum/yý
.lstm_4/while/lstm_cell_5/clip_by_value/MinimumMinimum"lstm_4/while/lstm_cell_5/Add_1:z:09lstm_4/while/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú20
.lstm_4/while/lstm_cell_5/clip_by_value/Minimum
(lstm_4/while/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(lstm_4/while/lstm_cell_5/clip_by_value/yõ
&lstm_4/while/lstm_cell_5/clip_by_valueMaximum2lstm_4/while/lstm_cell_5/clip_by_value/Minimum:z:01lstm_4/while/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&lstm_4/while/lstm_cell_5/clip_by_valueË
)lstm_4/while/lstm_cell_5/ReadVariableOp_1ReadVariableOp2lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02+
)lstm_4/while/lstm_cell_5/ReadVariableOp_1±
.lstm_4/while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   20
.lstm_4/while/lstm_cell_5/strided_slice_1/stackµ
0lstm_4/while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  22
0lstm_4/while/lstm_cell_5/strided_slice_1/stack_1µ
0lstm_4/while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_4/while/lstm_cell_5/strided_slice_1/stack_2 
(lstm_4/while/lstm_cell_5/strided_slice_1StridedSlice1lstm_4/while/lstm_cell_5/ReadVariableOp_1:value:07lstm_4/while/lstm_cell_5/strided_slice_1/stack:output:09lstm_4/while/lstm_cell_5/strided_slice_1/stack_1:output:09lstm_4/while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2*
(lstm_4/while/lstm_cell_5/strided_slice_1Ú
!lstm_4/while/lstm_cell_5/MatMul_5MatMul"lstm_4/while/lstm_cell_5/mul_5:z:01lstm_4/while/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_5Ö
lstm_4/while/lstm_cell_5/add_2AddV2+lstm_4/while/lstm_cell_5/BiasAdd_1:output:0+lstm_4/while/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/add_2
 lstm_4/while/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2"
 lstm_4/while/lstm_cell_5/Const_2
 lstm_4/while/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_4/while/lstm_cell_5/Const_3É
lstm_4/while/lstm_cell_5/Mul_9Mul"lstm_4/while/lstm_cell_5/add_2:z:0)lstm_4/while/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/Mul_9Ë
lstm_4/while/lstm_cell_5/Add_3AddV2"lstm_4/while/lstm_cell_5/Mul_9:z:0)lstm_4/while/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/Add_3­
2lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum/y
0lstm_4/while/lstm_cell_5/clip_by_value_1/MinimumMinimum"lstm_4/while/lstm_cell_5/Add_3:z:0;lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú22
0lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum
*lstm_4/while/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*lstm_4/while/lstm_cell_5/clip_by_value_1/yý
(lstm_4/while/lstm_cell_5/clip_by_value_1Maximum4lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum:z:03lstm_4/while/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(lstm_4/while/lstm_cell_5/clip_by_value_1Æ
lstm_4/while/lstm_cell_5/mul_10Mul,lstm_4/while/lstm_cell_5/clip_by_value_1:z:0lstm_4_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/mul_10Ë
)lstm_4/while/lstm_cell_5/ReadVariableOp_2ReadVariableOp2lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02+
)lstm_4/while/lstm_cell_5/ReadVariableOp_2±
.lstm_4/while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  20
.lstm_4/while/lstm_cell_5/strided_slice_2/stackµ
0lstm_4/while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  22
0lstm_4/while/lstm_cell_5/strided_slice_2/stack_1µ
0lstm_4/while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_4/while/lstm_cell_5/strided_slice_2/stack_2 
(lstm_4/while/lstm_cell_5/strided_slice_2StridedSlice1lstm_4/while/lstm_cell_5/ReadVariableOp_2:value:07lstm_4/while/lstm_cell_5/strided_slice_2/stack:output:09lstm_4/while/lstm_cell_5/strided_slice_2/stack_1:output:09lstm_4/while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2*
(lstm_4/while/lstm_cell_5/strided_slice_2Ú
!lstm_4/while/lstm_cell_5/MatMul_6MatMul"lstm_4/while/lstm_cell_5/mul_6:z:01lstm_4/while/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_6Ö
lstm_4/while/lstm_cell_5/add_4AddV2+lstm_4/while/lstm_cell_5/BiasAdd_2:output:0+lstm_4/while/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/add_4
lstm_4/while/lstm_cell_5/TanhTanh"lstm_4/while/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/while/lstm_cell_5/TanhË
lstm_4/while/lstm_cell_5/mul_11Mul*lstm_4/while/lstm_cell_5/clip_by_value:z:0!lstm_4/while/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/mul_11Æ
lstm_4/while/lstm_cell_5/add_5AddV2#lstm_4/while/lstm_cell_5/mul_10:z:0#lstm_4/while/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/add_5Ë
)lstm_4/while/lstm_cell_5/ReadVariableOp_3ReadVariableOp2lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02+
)lstm_4/while/lstm_cell_5/ReadVariableOp_3±
.lstm_4/while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  20
.lstm_4/while/lstm_cell_5/strided_slice_3/stackµ
0lstm_4/while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_4/while/lstm_cell_5/strided_slice_3/stack_1µ
0lstm_4/while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_4/while/lstm_cell_5/strided_slice_3/stack_2 
(lstm_4/while/lstm_cell_5/strided_slice_3StridedSlice1lstm_4/while/lstm_cell_5/ReadVariableOp_3:value:07lstm_4/while/lstm_cell_5/strided_slice_3/stack:output:09lstm_4/while/lstm_cell_5/strided_slice_3/stack_1:output:09lstm_4/while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2*
(lstm_4/while/lstm_cell_5/strided_slice_3Ú
!lstm_4/while/lstm_cell_5/MatMul_7MatMul"lstm_4/while/lstm_cell_5/mul_7:z:01lstm_4/while/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_7Ö
lstm_4/while/lstm_cell_5/add_6AddV2+lstm_4/while/lstm_cell_5/BiasAdd_3:output:0+lstm_4/while/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/add_6
 lstm_4/while/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2"
 lstm_4/while/lstm_cell_5/Const_4
 lstm_4/while/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_4/while/lstm_cell_5/Const_5Ë
lstm_4/while/lstm_cell_5/Mul_12Mul"lstm_4/while/lstm_cell_5/add_6:z:0)lstm_4/while/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/Mul_12Ì
lstm_4/while/lstm_cell_5/Add_7AddV2#lstm_4/while/lstm_cell_5/Mul_12:z:0)lstm_4/while/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/Add_7­
2lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum/y
0lstm_4/while/lstm_cell_5/clip_by_value_2/MinimumMinimum"lstm_4/while/lstm_cell_5/Add_7:z:0;lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú22
0lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum
*lstm_4/while/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*lstm_4/while/lstm_cell_5/clip_by_value_2/yý
(lstm_4/while/lstm_cell_5/clip_by_value_2Maximum4lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum:z:03lstm_4/while/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(lstm_4/while/lstm_cell_5/clip_by_value_2¡
lstm_4/while/lstm_cell_5/Tanh_1Tanh"lstm_4/while/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/Tanh_1Ï
lstm_4/while/lstm_cell_5/mul_13Mul,lstm_4/while/lstm_cell_5/clip_by_value_2:z:0#lstm_4/while/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/mul_13
1lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_4_while_placeholder_1lstm_4_while_placeholder#lstm_4/while/lstm_cell_5/mul_13:z:0*
_output_shapes
: *
element_dtype023
1lstm_4/while/TensorArrayV2Write/TensorListSetItemj
lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add/y
lstm_4/while/addAddV2lstm_4_while_placeholderlstm_4/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/addn
lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add_1/y
lstm_4/while/add_1AddV2&lstm_4_while_lstm_4_while_loop_counterlstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/add_1
lstm_4/while/IdentityIdentitylstm_4/while/add_1:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity¡
lstm_4/while/Identity_1Identity,lstm_4_while_lstm_4_while_maximum_iterations^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_1
lstm_4/while/Identity_2Identitylstm_4/while/add:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_2¶
lstm_4/while/Identity_3IdentityAlstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_3ª
lstm_4/while/Identity_4Identity#lstm_4/while/lstm_cell_5/mul_13:z:0^lstm_4/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/while/Identity_4©
lstm_4/while/Identity_5Identity"lstm_4/while/lstm_cell_5/add_5:z:0^lstm_4/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/while/Identity_5ø
lstm_4/while/NoOpNoOp(^lstm_4/while/lstm_cell_5/ReadVariableOp*^lstm_4/while/lstm_cell_5/ReadVariableOp_1*^lstm_4/while/lstm_cell_5/ReadVariableOp_2*^lstm_4/while/lstm_cell_5/ReadVariableOp_3.^lstm_4/while/lstm_cell_5/split/ReadVariableOp0^lstm_4/while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_4/while/NoOp"7
lstm_4_while_identitylstm_4/while/Identity:output:0";
lstm_4_while_identity_1 lstm_4/while/Identity_1:output:0";
lstm_4_while_identity_2 lstm_4/while/Identity_2:output:0";
lstm_4_while_identity_3 lstm_4/while/Identity_3:output:0";
lstm_4_while_identity_4 lstm_4/while/Identity_4:output:0";
lstm_4_while_identity_5 lstm_4/while/Identity_5:output:0"L
#lstm_4_while_lstm_4_strided_slice_1%lstm_4_while_lstm_4_strided_slice_1_0"f
0lstm_4_while_lstm_cell_5_readvariableop_resource2lstm_4_while_lstm_cell_5_readvariableop_resource_0"v
8lstm_4_while_lstm_cell_5_split_1_readvariableop_resource:lstm_4_while_lstm_cell_5_split_1_readvariableop_resource_0"r
6lstm_4_while_lstm_cell_5_split_readvariableop_resource8lstm_4_while_lstm_cell_5_split_readvariableop_resource_0"Ä
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensoralstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : 2R
'lstm_4/while/lstm_cell_5/ReadVariableOp'lstm_4/while/lstm_cell_5/ReadVariableOp2V
)lstm_4/while/lstm_cell_5/ReadVariableOp_1)lstm_4/while/lstm_cell_5/ReadVariableOp_12V
)lstm_4/while/lstm_cell_5/ReadVariableOp_2)lstm_4/while/lstm_cell_5/ReadVariableOp_22V
)lstm_4/while/lstm_cell_5/ReadVariableOp_3)lstm_4/while/lstm_cell_5/ReadVariableOp_32^
-lstm_4/while/lstm_cell_5/split/ReadVariableOp-lstm_4/while/lstm_cell_5/split/ReadVariableOp2b
/lstm_4/while/lstm_cell_5/split_1/ReadVariableOp/lstm_4/while/lstm_cell_5/split_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
: 
	

#__inference_signature_wrapper_41631
embedding_4_input
unknown:
^ 
	unknown_0:
 è
	unknown_1:	è
	unknown_2:
úè
	unknown_3:	ú
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_397842
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+
_user_specified_nameembedding_4_input
±¥
	
while_body_43323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_5_split_readvariableop_resource_0:
 èB
3while_lstm_cell_5_split_1_readvariableop_resource_0:	è?
+while_lstm_cell_5_readvariableop_resource_0:
úè
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_5_split_readvariableop_resource:
 è@
1while_lstm_cell_5_split_1_readvariableop_resource:	è=
)while_lstm_cell_5_readvariableop_resource:
úè¢ while/lstm_cell_5/ReadVariableOp¢"while/lstm_cell_5/ReadVariableOp_1¢"while/lstm_cell_5/ReadVariableOp_2¢"while/lstm_cell_5/ReadVariableOp_3¢&while/lstm_cell_5/split/ReadVariableOp¢(while/lstm_cell_5/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstÍ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/ones_like
#while/lstm_cell_5/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_5/ones_like_1/Shape
#while/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_5/ones_like_1/ConstÕ
while/lstm_cell_5/ones_like_1Fill,while/lstm_cell_5/ones_like_1/Shape:output:0,while/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/ones_like_1À
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mulÄ
while/lstm_cell_5/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_1Ä
while/lstm_cell_5/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_2Ä
while/lstm_cell_5/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_3
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dimÄ
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0* 
_output_shapes
:
 è*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp÷
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
while/lstm_cell_5/split®
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0 while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul´
while/lstm_cell_5/MatMul_1MatMulwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_1´
while/lstm_cell_5/MatMul_2MatMulwhile/lstm_cell_5/mul_2:z:0 while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_2´
while/lstm_cell_5/MatMul_3MatMulwhile/lstm_cell_5/mul_3:z:0 while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_3
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dimÅ
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:è*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOpë
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
while/lstm_cell_5/split_1¼
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAddÂ
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_1Â
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_2Â
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_3©
while/lstm_cell_5/mul_4Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_4©
while/lstm_cell_5/mul_5Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_5©
while/lstm_cell_5/mul_6Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_6©
while/lstm_cell_5/mul_7Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_7²
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02"
 while/lstm_cell_5/ReadVariableOp
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack£
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice/stack_1£
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2ê
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice¼
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul_4:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_4´
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/addw
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const{
while/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_1©
while/lstm_cell_5/Mul_8Mulwhile/lstm_cell_5/add:z:0 while/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_8¯
while/lstm_cell_5/Add_1AddV2while/lstm_cell_5/Mul_8:z:0"while/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_1
)while/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_5/clip_by_value/Minimum/yá
'while/lstm_cell_5/clip_by_value/MinimumMinimumwhile/lstm_cell_5/Add_1:z:02while/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2)
'while/lstm_cell_5/clip_by_value/Minimum
!while/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_5/clip_by_value/yÙ
while/lstm_cell_5/clip_by_valueMaximum+while/lstm_cell_5/clip_by_value/Minimum:z:0*while/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/clip_by_value¶
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1£
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice_1/stack§
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2+
)while/lstm_cell_5/strided_slice_1/stack_1§
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2ö
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1¾
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_5:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_5º
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_2{
while/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_2{
while/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_3­
while/lstm_cell_5/Mul_9Mulwhile/lstm_cell_5/add_2:z:0"while/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_9¯
while/lstm_cell_5/Add_3AddV2while/lstm_cell_5/Mul_9:z:0"while/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_3
+while/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_1/Minimum/yç
)while/lstm_cell_5/clip_by_value_1/MinimumMinimumwhile/lstm_cell_5/Add_3:z:04while/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_1/Minimum
#while/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_1/yá
!while/lstm_cell_5/clip_by_value_1Maximum-while/lstm_cell_5/clip_by_value_1/Minimum:z:0,while/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_1ª
while/lstm_cell_5/mul_10Mul%while/lstm_cell_5/clip_by_value_1:z:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_10¶
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2£
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2)
'while/lstm_cell_5/strided_slice_2/stack§
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2+
)while/lstm_cell_5/strided_slice_2/stack_1§
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2ö
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2¾
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_6:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_6º
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_4
while/lstm_cell_5/TanhTanhwhile/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh¯
while/lstm_cell_5/mul_11Mul#while/lstm_cell_5/clip_by_value:z:0while/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_11ª
while/lstm_cell_5/add_5AddV2while/lstm_cell_5/mul_10:z:0while/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_5¶
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3£
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2)
'while/lstm_cell_5/strided_slice_3/stack§
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1§
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2ö
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3¾
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_7:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_7º
while/lstm_cell_5/add_6AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_6{
while/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_4{
while/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_5¯
while/lstm_cell_5/Mul_12Mulwhile/lstm_cell_5/add_6:z:0"while/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_12°
while/lstm_cell_5/Add_7AddV2while/lstm_cell_5/Mul_12:z:0"while/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_7
+while/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_2/Minimum/yç
)while/lstm_cell_5/clip_by_value_2/MinimumMinimumwhile/lstm_cell_5/Add_7:z:04while/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_2/Minimum
#while/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_2/yá
!while/lstm_cell_5/clip_by_value_2Maximum-while/lstm_cell_5/clip_by_value_2/Minimum:z:0,while/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_2
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh_1³
while/lstm_cell_5/mul_13Mul%while/lstm_cell_5/clip_by_value_2:z:0while/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_13à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_13:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_13:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_5:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_5À

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
: 

l
3__inference_spatial_dropout1d_4_layer_call_fn_42487

inputs
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_398252
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
Î
$sequential_4_lstm_4_while_cond_39622D
@sequential_4_lstm_4_while_sequential_4_lstm_4_while_loop_counterJ
Fsequential_4_lstm_4_while_sequential_4_lstm_4_while_maximum_iterations)
%sequential_4_lstm_4_while_placeholder+
'sequential_4_lstm_4_while_placeholder_1+
'sequential_4_lstm_4_while_placeholder_2+
'sequential_4_lstm_4_while_placeholder_3F
Bsequential_4_lstm_4_while_less_sequential_4_lstm_4_strided_slice_1[
Wsequential_4_lstm_4_while_sequential_4_lstm_4_while_cond_39622___redundant_placeholder0[
Wsequential_4_lstm_4_while_sequential_4_lstm_4_while_cond_39622___redundant_placeholder1[
Wsequential_4_lstm_4_while_sequential_4_lstm_4_while_cond_39622___redundant_placeholder2[
Wsequential_4_lstm_4_while_sequential_4_lstm_4_while_cond_39622___redundant_placeholder3&
"sequential_4_lstm_4_while_identity
Ô
sequential_4/lstm_4/while/LessLess%sequential_4_lstm_4_while_placeholderBsequential_4_lstm_4_while_less_sequential_4_lstm_4_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_4/lstm_4/while/Less
"sequential_4/lstm_4/while/IdentityIdentity"sequential_4/lstm_4/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_4/lstm_4/while/Identity"Q
"sequential_4_lstm_4_while_identity+sequential_4/lstm_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: ::::: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
:
ÜÛ
´
G__inference_sequential_4_layer_call_and_return_conditional_losses_41929

inputs6
"embedding_4_embedding_lookup_41635:
^ D
0lstm_4_lstm_cell_5_split_readvariableop_resource:
 èA
2lstm_4_lstm_cell_5_split_1_readvariableop_resource:	è>
*lstm_4_lstm_cell_5_readvariableop_resource:
úè9
&dense_4_matmul_readvariableop_resource:	ú5
'dense_4_biasadd_readvariableop_resource:
identity¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp¢embedding_4/embedding_lookup¢!lstm_4/lstm_cell_5/ReadVariableOp¢#lstm_4/lstm_cell_5/ReadVariableOp_1¢#lstm_4/lstm_cell_5/ReadVariableOp_2¢#lstm_4/lstm_cell_5/ReadVariableOp_3¢'lstm_4/lstm_cell_5/split/ReadVariableOp¢)lstm_4/lstm_cell_5/split_1/ReadVariableOp¢lstm_4/whilev
embedding_4/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
embedding_4/Cast¹
embedding_4/embedding_lookupResourceGather"embedding_4_embedding_lookup_41635embedding_4/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_4/embedding_lookup/41635*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype02
embedding_4/embedding_lookup
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_4/embedding_lookup/41635*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2'
%embedding_4/embedding_lookup/IdentityÆ
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2)
'embedding_4/embedding_lookup/Identity_1²
spatial_dropout1d_4/IdentityIdentity0embedding_4/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
spatial_dropout1d_4/Identityq
lstm_4/ShapeShape%spatial_dropout1d_4/Identity:output:0*
T0*
_output_shapes
:2
lstm_4/Shape
lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice/stack
lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_1
lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_2
lstm_4/strided_sliceStridedSlicelstm_4/Shape:output:0#lstm_4/strided_slice/stack:output:0%lstm_4/strided_slice/stack_1:output:0%lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_sliceq
lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
lstm_4/zeros/packed/1
lstm_4/zeros/packedPacklstm_4/strided_slice:output:0lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros/packedm
lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros/Const
lstm_4/zerosFilllstm_4/zeros/packed:output:0lstm_4/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/zerosu
lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
lstm_4/zeros_1/packed/1¥
lstm_4/zeros_1/packedPacklstm_4/strided_slice:output:0 lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros_1/packedq
lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros_1/Const
lstm_4/zeros_1Filllstm_4/zeros_1/packed:output:0lstm_4/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/zeros_1
lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose/perm°
lstm_4/transpose	Transpose%spatial_dropout1d_4/Identity:output:0lstm_4/transpose/perm:output:0*
T0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿ 2
lstm_4/transposed
lstm_4/Shape_1Shapelstm_4/transpose:y:0*
T0*
_output_shapes
:2
lstm_4/Shape_1
lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_1/stack
lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_1
lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_2
lstm_4/strided_slice_1StridedSlicelstm_4/Shape_1:output:0%lstm_4/strided_slice_1/stack:output:0'lstm_4/strided_slice_1/stack_1:output:0'lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_slice_1
"lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_4/TensorArrayV2/element_shapeÎ
lstm_4/TensorArrayV2TensorListReserve+lstm_4/TensorArrayV2/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2Í
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2>
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_4/transpose:y:0Elstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_4/TensorArrayUnstack/TensorListFromTensor
lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_2/stack
lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_1
lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_2§
lstm_4/strided_slice_2StridedSlicelstm_4/transpose:y:0%lstm_4/strided_slice_2/stack:output:0'lstm_4/strided_slice_2/stack_1:output:0'lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_4/strided_slice_2
"lstm_4/lstm_cell_5/ones_like/ShapeShapelstm_4/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_4/lstm_cell_5/ones_like/Shape
"lstm_4/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_4/lstm_cell_5/ones_like/ConstÑ
lstm_4/lstm_cell_5/ones_likeFill+lstm_4/lstm_cell_5/ones_like/Shape:output:0+lstm_4/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/lstm_cell_5/ones_like
$lstm_4/lstm_cell_5/ones_like_1/ShapeShapelstm_4/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_4/lstm_cell_5/ones_like_1/Shape
$lstm_4/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_4/lstm_cell_5/ones_like_1/ConstÙ
lstm_4/lstm_cell_5/ones_like_1Fill-lstm_4/lstm_cell_5/ones_like_1/Shape:output:0-lstm_4/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/lstm_cell_5/ones_like_1²
lstm_4/lstm_cell_5/mulMullstm_4/strided_slice_2:output:0%lstm_4/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/lstm_cell_5/mul¶
lstm_4/lstm_cell_5/mul_1Mullstm_4/strided_slice_2:output:0%lstm_4/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/lstm_cell_5/mul_1¶
lstm_4/lstm_cell_5/mul_2Mullstm_4/strided_slice_2:output:0%lstm_4/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/lstm_cell_5/mul_2¶
lstm_4/lstm_cell_5/mul_3Mullstm_4/strided_slice_2:output:0%lstm_4/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/lstm_cell_5/mul_3
"lstm_4/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_4/lstm_cell_5/split/split_dimÅ
'lstm_4/lstm_cell_5/split/ReadVariableOpReadVariableOp0lstm_4_lstm_cell_5_split_readvariableop_resource* 
_output_shapes
:
 è*
dtype02)
'lstm_4/lstm_cell_5/split/ReadVariableOpû
lstm_4/lstm_cell_5/splitSplit+lstm_4/lstm_cell_5/split/split_dim:output:0/lstm_4/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
lstm_4/lstm_cell_5/split²
lstm_4/lstm_cell_5/MatMulMatMullstm_4/lstm_cell_5/mul:z:0!lstm_4/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul¸
lstm_4/lstm_cell_5/MatMul_1MatMullstm_4/lstm_cell_5/mul_1:z:0!lstm_4/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_1¸
lstm_4/lstm_cell_5/MatMul_2MatMullstm_4/lstm_cell_5/mul_2:z:0!lstm_4/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_2¸
lstm_4/lstm_cell_5/MatMul_3MatMullstm_4/lstm_cell_5/mul_3:z:0!lstm_4/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_3
$lstm_4/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_4/lstm_cell_5/split_1/split_dimÆ
)lstm_4/lstm_cell_5/split_1/ReadVariableOpReadVariableOp2lstm_4_lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:è*
dtype02+
)lstm_4/lstm_cell_5/split_1/ReadVariableOpï
lstm_4/lstm_cell_5/split_1Split-lstm_4/lstm_cell_5/split_1/split_dim:output:01lstm_4/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
lstm_4/lstm_cell_5/split_1À
lstm_4/lstm_cell_5/BiasAddBiasAdd#lstm_4/lstm_cell_5/MatMul:product:0#lstm_4/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/BiasAddÆ
lstm_4/lstm_cell_5/BiasAdd_1BiasAdd%lstm_4/lstm_cell_5/MatMul_1:product:0#lstm_4/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/BiasAdd_1Æ
lstm_4/lstm_cell_5/BiasAdd_2BiasAdd%lstm_4/lstm_cell_5/MatMul_2:product:0#lstm_4/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/BiasAdd_2Æ
lstm_4/lstm_cell_5/BiasAdd_3BiasAdd%lstm_4/lstm_cell_5/MatMul_3:product:0#lstm_4/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/BiasAdd_3®
lstm_4/lstm_cell_5/mul_4Mullstm_4/zeros:output:0'lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_4®
lstm_4/lstm_cell_5/mul_5Mullstm_4/zeros:output:0'lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_5®
lstm_4/lstm_cell_5/mul_6Mullstm_4/zeros:output:0'lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_6®
lstm_4/lstm_cell_5/mul_7Mullstm_4/zeros:output:0'lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_7³
!lstm_4/lstm_cell_5/ReadVariableOpReadVariableOp*lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02#
!lstm_4/lstm_cell_5/ReadVariableOp¡
&lstm_4/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_4/lstm_cell_5/strided_slice/stack¥
(lstm_4/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2*
(lstm_4/lstm_cell_5/strided_slice/stack_1¥
(lstm_4/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_4/lstm_cell_5/strided_slice/stack_2ð
 lstm_4/lstm_cell_5/strided_sliceStridedSlice)lstm_4/lstm_cell_5/ReadVariableOp:value:0/lstm_4/lstm_cell_5/strided_slice/stack:output:01lstm_4/lstm_cell_5/strided_slice/stack_1:output:01lstm_4/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2"
 lstm_4/lstm_cell_5/strided_sliceÀ
lstm_4/lstm_cell_5/MatMul_4MatMullstm_4/lstm_cell_5/mul_4:z:0)lstm_4/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_4¸
lstm_4/lstm_cell_5/addAddV2#lstm_4/lstm_cell_5/BiasAdd:output:0%lstm_4/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/addy
lstm_4/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_4/lstm_cell_5/Const}
lstm_4/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_4/lstm_cell_5/Const_1­
lstm_4/lstm_cell_5/Mul_8Mullstm_4/lstm_cell_5/add:z:0!lstm_4/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Mul_8³
lstm_4/lstm_cell_5/Add_1AddV2lstm_4/lstm_cell_5/Mul_8:z:0#lstm_4/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Add_1
*lstm_4/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_4/lstm_cell_5/clip_by_value/Minimum/yå
(lstm_4/lstm_cell_5/clip_by_value/MinimumMinimumlstm_4/lstm_cell_5/Add_1:z:03lstm_4/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(lstm_4/lstm_cell_5/clip_by_value/Minimum
"lstm_4/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"lstm_4/lstm_cell_5/clip_by_value/yÝ
 lstm_4/lstm_cell_5/clip_by_valueMaximum,lstm_4/lstm_cell_5/clip_by_value/Minimum:z:0+lstm_4/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 lstm_4/lstm_cell_5/clip_by_value·
#lstm_4/lstm_cell_5/ReadVariableOp_1ReadVariableOp*lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02%
#lstm_4/lstm_cell_5/ReadVariableOp_1¥
(lstm_4/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2*
(lstm_4/lstm_cell_5/strided_slice_1/stack©
*lstm_4/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2,
*lstm_4/lstm_cell_5/strided_slice_1/stack_1©
*lstm_4/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_4/lstm_cell_5/strided_slice_1/stack_2ü
"lstm_4/lstm_cell_5/strided_slice_1StridedSlice+lstm_4/lstm_cell_5/ReadVariableOp_1:value:01lstm_4/lstm_cell_5/strided_slice_1/stack:output:03lstm_4/lstm_cell_5/strided_slice_1/stack_1:output:03lstm_4/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2$
"lstm_4/lstm_cell_5/strided_slice_1Â
lstm_4/lstm_cell_5/MatMul_5MatMullstm_4/lstm_cell_5/mul_5:z:0+lstm_4/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_5¾
lstm_4/lstm_cell_5/add_2AddV2%lstm_4/lstm_cell_5/BiasAdd_1:output:0%lstm_4/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/add_2}
lstm_4/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_4/lstm_cell_5/Const_2}
lstm_4/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_4/lstm_cell_5/Const_3±
lstm_4/lstm_cell_5/Mul_9Mullstm_4/lstm_cell_5/add_2:z:0#lstm_4/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Mul_9³
lstm_4/lstm_cell_5/Add_3AddV2lstm_4/lstm_cell_5/Mul_9:z:0#lstm_4/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Add_3¡
,lstm_4/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_4/lstm_cell_5/clip_by_value_1/Minimum/yë
*lstm_4/lstm_cell_5/clip_by_value_1/MinimumMinimumlstm_4/lstm_cell_5/Add_3:z:05lstm_4/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2,
*lstm_4/lstm_cell_5/clip_by_value_1/Minimum
$lstm_4/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$lstm_4/lstm_cell_5/clip_by_value_1/yå
"lstm_4/lstm_cell_5/clip_by_value_1Maximum.lstm_4/lstm_cell_5/clip_by_value_1/Minimum:z:0-lstm_4/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/lstm_cell_5/clip_by_value_1±
lstm_4/lstm_cell_5/mul_10Mul&lstm_4/lstm_cell_5/clip_by_value_1:z:0lstm_4/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_10·
#lstm_4/lstm_cell_5/ReadVariableOp_2ReadVariableOp*lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02%
#lstm_4/lstm_cell_5/ReadVariableOp_2¥
(lstm_4/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2*
(lstm_4/lstm_cell_5/strided_slice_2/stack©
*lstm_4/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2,
*lstm_4/lstm_cell_5/strided_slice_2/stack_1©
*lstm_4/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_4/lstm_cell_5/strided_slice_2/stack_2ü
"lstm_4/lstm_cell_5/strided_slice_2StridedSlice+lstm_4/lstm_cell_5/ReadVariableOp_2:value:01lstm_4/lstm_cell_5/strided_slice_2/stack:output:03lstm_4/lstm_cell_5/strided_slice_2/stack_1:output:03lstm_4/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2$
"lstm_4/lstm_cell_5/strided_slice_2Â
lstm_4/lstm_cell_5/MatMul_6MatMullstm_4/lstm_cell_5/mul_6:z:0+lstm_4/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_6¾
lstm_4/lstm_cell_5/add_4AddV2%lstm_4/lstm_cell_5/BiasAdd_2:output:0%lstm_4/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/add_4
lstm_4/lstm_cell_5/TanhTanhlstm_4/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Tanh³
lstm_4/lstm_cell_5/mul_11Mul$lstm_4/lstm_cell_5/clip_by_value:z:0lstm_4/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_11®
lstm_4/lstm_cell_5/add_5AddV2lstm_4/lstm_cell_5/mul_10:z:0lstm_4/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/add_5·
#lstm_4/lstm_cell_5/ReadVariableOp_3ReadVariableOp*lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02%
#lstm_4/lstm_cell_5/ReadVariableOp_3¥
(lstm_4/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2*
(lstm_4/lstm_cell_5/strided_slice_3/stack©
*lstm_4/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_4/lstm_cell_5/strided_slice_3/stack_1©
*lstm_4/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_4/lstm_cell_5/strided_slice_3/stack_2ü
"lstm_4/lstm_cell_5/strided_slice_3StridedSlice+lstm_4/lstm_cell_5/ReadVariableOp_3:value:01lstm_4/lstm_cell_5/strided_slice_3/stack:output:03lstm_4/lstm_cell_5/strided_slice_3/stack_1:output:03lstm_4/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2$
"lstm_4/lstm_cell_5/strided_slice_3Â
lstm_4/lstm_cell_5/MatMul_7MatMullstm_4/lstm_cell_5/mul_7:z:0+lstm_4/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_7¾
lstm_4/lstm_cell_5/add_6AddV2%lstm_4/lstm_cell_5/BiasAdd_3:output:0%lstm_4/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/add_6}
lstm_4/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_4/lstm_cell_5/Const_4}
lstm_4/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_4/lstm_cell_5/Const_5³
lstm_4/lstm_cell_5/Mul_12Mullstm_4/lstm_cell_5/add_6:z:0#lstm_4/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Mul_12´
lstm_4/lstm_cell_5/Add_7AddV2lstm_4/lstm_cell_5/Mul_12:z:0#lstm_4/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Add_7¡
,lstm_4/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_4/lstm_cell_5/clip_by_value_2/Minimum/yë
*lstm_4/lstm_cell_5/clip_by_value_2/MinimumMinimumlstm_4/lstm_cell_5/Add_7:z:05lstm_4/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2,
*lstm_4/lstm_cell_5/clip_by_value_2/Minimum
$lstm_4/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$lstm_4/lstm_cell_5/clip_by_value_2/yå
"lstm_4/lstm_cell_5/clip_by_value_2Maximum.lstm_4/lstm_cell_5/clip_by_value_2/Minimum:z:0-lstm_4/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/lstm_cell_5/clip_by_value_2
lstm_4/lstm_cell_5/Tanh_1Tanhlstm_4/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Tanh_1·
lstm_4/lstm_cell_5/mul_13Mul&lstm_4/lstm_cell_5/clip_by_value_2:z:0lstm_4/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_13
$lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   2&
$lstm_4/TensorArrayV2_1/element_shapeÔ
lstm_4/TensorArrayV2_1TensorListReserve-lstm_4/TensorArrayV2_1/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2_1\
lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/time
lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_4/while/maximum_iterationsx
lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/while/loop_counteré
lstm_4/whileWhile"lstm_4/while/loop_counter:output:0(lstm_4/while/maximum_iterations:output:0lstm_4/time:output:0lstm_4/TensorArrayV2_1:handle:0lstm_4/zeros:output:0lstm_4/zeros_1:output:0lstm_4/strided_slice_1:output:0>lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_4_lstm_cell_5_split_readvariableop_resource2lstm_4_lstm_cell_5_split_1_readvariableop_resource*lstm_4_lstm_cell_5_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_4_while_body_41768*#
condR
lstm_4_while_cond_41767*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *
parallel_iterations 2
lstm_4/whileÃ
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   29
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_4/TensorArrayV2Stack/TensorListStackTensorListStacklstm_4/while:output:3@lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿú*
element_dtype02+
)lstm_4/TensorArrayV2Stack/TensorListStack
lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_4/strided_slice_3/stack
lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_4/strided_slice_3/stack_1
lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_3/stack_2Å
lstm_4/strided_slice_3StridedSlice2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_4/strided_slice_3/stack:output:0'lstm_4/strided_slice_3/stack_1:output:0'lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
shrink_axis_mask2
lstm_4/strided_slice_3
lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose_1/permÃ
lstm_4/transpose_1	Transpose2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_4/transpose_1/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ú2
lstm_4/transpose_1¦
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	ú*
dtype02
dense_4/MatMul/ReadVariableOp¤
dense_4/MatMulMatMullstm_4/strided_slice_3:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_4/MatMul¤
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp¡
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_4/BiasAddy
dense_4/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_4/Softmaxt
IdentityIdentitydense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity©
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^embedding_4/embedding_lookup"^lstm_4/lstm_cell_5/ReadVariableOp$^lstm_4/lstm_cell_5/ReadVariableOp_1$^lstm_4/lstm_cell_5/ReadVariableOp_2$^lstm_4/lstm_cell_5/ReadVariableOp_3(^lstm_4/lstm_cell_5/split/ReadVariableOp*^lstm_4/lstm_cell_5/split_1/ReadVariableOp^lstm_4/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2F
!lstm_4/lstm_cell_5/ReadVariableOp!lstm_4/lstm_cell_5/ReadVariableOp2J
#lstm_4/lstm_cell_5/ReadVariableOp_1#lstm_4/lstm_cell_5/ReadVariableOp_12J
#lstm_4/lstm_cell_5/ReadVariableOp_2#lstm_4/lstm_cell_5/ReadVariableOp_22J
#lstm_4/lstm_cell_5/ReadVariableOp_3#lstm_4/lstm_cell_5/ReadVariableOp_32R
'lstm_4/lstm_cell_5/split/ReadVariableOp'lstm_4/lstm_cell_5/split/ReadVariableOp2V
)lstm_4/lstm_cell_5/split_1/ReadVariableOp)lstm_4/lstm_cell_5/split_1/ReadVariableOp2
lstm_4/whilelstm_4/while:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

ô
B__inference_dense_4_layer_call_and_return_conditional_losses_40989

inputs1
matmul_readvariableop_resource:	ú-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ú*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿú: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
û
Ä
G__inference_sequential_4_layer_call_and_return_conditional_losses_41534

inputs%
embedding_4_41517:
^  
lstm_4_41521:
 è
lstm_4_41523:	è 
lstm_4_41525:
úè 
dense_4_41528:	ú
dense_4_41530:
identity¢dense_4/StatefulPartitionedCall¢#embedding_4/StatefulPartitionedCall¢lstm_4/StatefulPartitionedCall¢+spatial_dropout1d_4/StatefulPartitionedCall
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_4_41517*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_4_layer_call_and_return_conditional_losses_406772%
#embedding_4/StatefulPartitionedCall¸
+spatial_dropout1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_414842-
+spatial_dropout1d_4/StatefulPartitionedCallÆ
lstm_4/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_4/StatefulPartitionedCall:output:0lstm_4_41521lstm_4_41523lstm_4_41525*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_4_layer_call_and_return_conditional_losses_414462 
lstm_4/StatefulPartitionedCall­
dense_4/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_4_41528dense_4_41530*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_409892!
dense_4/StatefulPartitionedCall
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityå
NoOpNoOp ^dense_4/StatefulPartitionedCall$^embedding_4/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall,^spatial_dropout1d_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall2Z
+spatial_dropout1d_4/StatefulPartitionedCall+spatial_dropout1d_4/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

l
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42455

inputs

identity_1`
IdentityIdentityinputs*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityo

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs

ô
B__inference_dense_4_layer_call_and_return_conditional_losses_43944

inputs1
matmul_readvariableop_resource:	ú-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ú*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿú: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
Ë
l
3__inference_spatial_dropout1d_4_layer_call_fn_42497

inputs
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_414842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ív
¢
!__inference__traced_restore_44452
file_prefix;
'assignvariableop_embedding_4_embeddings:
^ 4
!assignvariableop_1_dense_4_kernel:	ú-
assignvariableop_2_dense_4_bias:&
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: @
,assignvariableop_8_lstm_4_lstm_cell_5_kernel:
 èJ
6assignvariableop_9_lstm_4_lstm_cell_5_recurrent_kernel:
úè:
+assignvariableop_10_lstm_4_lstm_cell_5_bias:	è#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: E
1assignvariableop_15_adam_embedding_4_embeddings_m:
^ <
)assignvariableop_16_adam_dense_4_kernel_m:	ú5
'assignvariableop_17_adam_dense_4_bias_m:H
4assignvariableop_18_adam_lstm_4_lstm_cell_5_kernel_m:
 èR
>assignvariableop_19_adam_lstm_4_lstm_cell_5_recurrent_kernel_m:
úèA
2assignvariableop_20_adam_lstm_4_lstm_cell_5_bias_m:	èE
1assignvariableop_21_adam_embedding_4_embeddings_v:
^ <
)assignvariableop_22_adam_dense_4_kernel_v:	ú5
'assignvariableop_23_adam_dense_4_bias_v:H
4assignvariableop_24_adam_lstm_4_lstm_cell_5_kernel_v:
 èR
>assignvariableop_25_adam_lstm_4_lstm_cell_5_recurrent_kernel_v:
úèA
2assignvariableop_26_adam_lstm_4_lstm_cell_5_bias_v:	è
identity_28¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¦
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¸
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¦
AssignVariableOpAssignVariableOp'assignvariableop_embedding_4_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_4_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¤
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_4_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3¡
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¢
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ª
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8±
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_4_lstm_cell_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9»
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_4_lstm_cell_5_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10³
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_4_lstm_cell_5_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¡
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¹
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_embedding_4_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16±
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_4_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¯
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_4_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¼
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_lstm_4_lstm_cell_5_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Æ
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_lstm_4_lstm_cell_5_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20º
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_lstm_4_lstm_cell_5_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¹
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_embedding_4_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_4_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¯
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_4_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¼
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_4_lstm_cell_5_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Æ
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_4_lstm_cell_5_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26º
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_4_lstm_cell_5_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp°
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27f
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_28
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
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
±¥
	
while_body_40816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_5_split_readvariableop_resource_0:
 èB
3while_lstm_cell_5_split_1_readvariableop_resource_0:	è?
+while_lstm_cell_5_readvariableop_resource_0:
úè
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_5_split_readvariableop_resource:
 è@
1while_lstm_cell_5_split_1_readvariableop_resource:	è=
)while_lstm_cell_5_readvariableop_resource:
úè¢ while/lstm_cell_5/ReadVariableOp¢"while/lstm_cell_5/ReadVariableOp_1¢"while/lstm_cell_5/ReadVariableOp_2¢"while/lstm_cell_5/ReadVariableOp_3¢&while/lstm_cell_5/split/ReadVariableOp¢(while/lstm_cell_5/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstÍ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/ones_like
#while/lstm_cell_5/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_5/ones_like_1/Shape
#while/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_5/ones_like_1/ConstÕ
while/lstm_cell_5/ones_like_1Fill,while/lstm_cell_5/ones_like_1/Shape:output:0,while/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/ones_like_1À
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mulÄ
while/lstm_cell_5/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_1Ä
while/lstm_cell_5/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_2Ä
while/lstm_cell_5/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_3
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dimÄ
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0* 
_output_shapes
:
 è*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp÷
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
while/lstm_cell_5/split®
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0 while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul´
while/lstm_cell_5/MatMul_1MatMulwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_1´
while/lstm_cell_5/MatMul_2MatMulwhile/lstm_cell_5/mul_2:z:0 while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_2´
while/lstm_cell_5/MatMul_3MatMulwhile/lstm_cell_5/mul_3:z:0 while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_3
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dimÅ
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:è*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOpë
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
while/lstm_cell_5/split_1¼
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAddÂ
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_1Â
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_2Â
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_3©
while/lstm_cell_5/mul_4Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_4©
while/lstm_cell_5/mul_5Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_5©
while/lstm_cell_5/mul_6Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_6©
while/lstm_cell_5/mul_7Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_7²
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02"
 while/lstm_cell_5/ReadVariableOp
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack£
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice/stack_1£
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2ê
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice¼
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul_4:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_4´
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/addw
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const{
while/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_1©
while/lstm_cell_5/Mul_8Mulwhile/lstm_cell_5/add:z:0 while/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_8¯
while/lstm_cell_5/Add_1AddV2while/lstm_cell_5/Mul_8:z:0"while/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_1
)while/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_5/clip_by_value/Minimum/yá
'while/lstm_cell_5/clip_by_value/MinimumMinimumwhile/lstm_cell_5/Add_1:z:02while/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2)
'while/lstm_cell_5/clip_by_value/Minimum
!while/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_5/clip_by_value/yÙ
while/lstm_cell_5/clip_by_valueMaximum+while/lstm_cell_5/clip_by_value/Minimum:z:0*while/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/clip_by_value¶
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1£
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice_1/stack§
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2+
)while/lstm_cell_5/strided_slice_1/stack_1§
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2ö
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1¾
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_5:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_5º
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_2{
while/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_2{
while/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_3­
while/lstm_cell_5/Mul_9Mulwhile/lstm_cell_5/add_2:z:0"while/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_9¯
while/lstm_cell_5/Add_3AddV2while/lstm_cell_5/Mul_9:z:0"while/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_3
+while/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_1/Minimum/yç
)while/lstm_cell_5/clip_by_value_1/MinimumMinimumwhile/lstm_cell_5/Add_3:z:04while/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_1/Minimum
#while/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_1/yá
!while/lstm_cell_5/clip_by_value_1Maximum-while/lstm_cell_5/clip_by_value_1/Minimum:z:0,while/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_1ª
while/lstm_cell_5/mul_10Mul%while/lstm_cell_5/clip_by_value_1:z:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_10¶
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2£
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2)
'while/lstm_cell_5/strided_slice_2/stack§
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2+
)while/lstm_cell_5/strided_slice_2/stack_1§
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2ö
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2¾
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_6:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_6º
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_4
while/lstm_cell_5/TanhTanhwhile/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh¯
while/lstm_cell_5/mul_11Mul#while/lstm_cell_5/clip_by_value:z:0while/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_11ª
while/lstm_cell_5/add_5AddV2while/lstm_cell_5/mul_10:z:0while/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_5¶
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3£
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2)
'while/lstm_cell_5/strided_slice_3/stack§
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1§
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2ö
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3¾
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_7:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_7º
while/lstm_cell_5/add_6AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_6{
while/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_4{
while/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_5¯
while/lstm_cell_5/Mul_12Mulwhile/lstm_cell_5/add_6:z:0"while/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_12°
while/lstm_cell_5/Add_7AddV2while/lstm_cell_5/Mul_12:z:0"while/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_7
+while/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_2/Minimum/yç
)while/lstm_cell_5/clip_by_value_2/MinimumMinimumwhile/lstm_cell_5/Add_7:z:04while/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_2/Minimum
#while/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_2/yá
!while/lstm_cell_5/clip_by_value_2Maximum-while/lstm_cell_5/clip_by_value_2/Minimum:z:0,while/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_2
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh_1³
while/lstm_cell_5/mul_13Mul%while/lstm_cell_5/clip_by_value_2:z:0while/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_13à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_13:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_13:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_5:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_5À

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
: 
ô

¤
F__inference_embedding_4_layer_call_and_return_conditional_losses_40677

inputs*
embedding_lookup_40671:
^ 
identity¢embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Castý
embedding_lookupResourceGatherembedding_lookup_40671Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/40671*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype02
embedding_lookupî
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/40671*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
embedding_lookup/Identity¢
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
À
·
&__inference_lstm_4_layer_call_fn_43911
inputs_0
unknown:
 è
	unknown_0:	è
	unknown_1:
úè
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_4_layer_call_and_return_conditional_losses_404162
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
º
Þ
A__inference_lstm_4_layer_call_and_return_conditional_losses_41446

inputs=
)lstm_cell_5_split_readvariableop_resource:
 è:
+lstm_cell_5_split_1_readvariableop_resource:	è7
#lstm_cell_5_readvariableop_resource:
úè
identity¢lstm_cell_5/ReadVariableOp¢lstm_cell_5/ReadVariableOp_1¢lstm_cell_5/ReadVariableOp_2¢lstm_cell_5/ReadVariableOp_3¢ lstm_cell_5/split/ReadVariableOp¢"lstm_cell_5/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros/packed/1
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
zerosg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros_1/packed/1
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿ 2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/Constµ
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/ones_like{
lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout/Const°
lstm_cell_5/dropout/MulMullstm_cell_5/ones_like:output:0"lstm_cell_5/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout/Mul
lstm_cell_5/dropout/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout/Shapeø
0lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_5/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÈêÊ22
0lstm_cell_5/dropout/random_uniform/RandomUniform
"lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2$
"lstm_cell_5/dropout/GreaterEqual/yï
 lstm_cell_5/dropout/GreaterEqualGreaterEqual9lstm_cell_5/dropout/random_uniform/RandomUniform:output:0+lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_cell_5/dropout/GreaterEqual¤
lstm_cell_5/dropout/CastCast$lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout/Cast«
lstm_cell_5/dropout/Mul_1Mullstm_cell_5/dropout/Mul:z:0lstm_cell_5/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout/Mul_1
lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_1/Const¶
lstm_cell_5/dropout_1/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_1/Mul
lstm_cell_5/dropout_1/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_1/Shapeþ
2lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2·ò24
2lstm_cell_5/dropout_1/random_uniform/RandomUniform
$lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_1/GreaterEqual/y÷
"lstm_cell_5/dropout_1/GreaterEqualGreaterEqual;lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_5/dropout_1/GreaterEqualª
lstm_cell_5/dropout_1/CastCast&lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_1/Cast³
lstm_cell_5/dropout_1/Mul_1Mullstm_cell_5/dropout_1/Mul:z:0lstm_cell_5/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_1/Mul_1
lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_2/Const¶
lstm_cell_5/dropout_2/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_2/Mul
lstm_cell_5/dropout_2/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_2/Shapeþ
2lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÎØ24
2lstm_cell_5/dropout_2/random_uniform/RandomUniform
$lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_2/GreaterEqual/y÷
"lstm_cell_5/dropout_2/GreaterEqualGreaterEqual;lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_5/dropout_2/GreaterEqualª
lstm_cell_5/dropout_2/CastCast&lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_2/Cast³
lstm_cell_5/dropout_2/Mul_1Mullstm_cell_5/dropout_2/Mul:z:0lstm_cell_5/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_2/Mul_1
lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_3/Const¶
lstm_cell_5/dropout_3/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_3/Mul
lstm_cell_5/dropout_3/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_3/Shapeþ
2lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¾µ24
2lstm_cell_5/dropout_3/random_uniform/RandomUniform
$lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_3/GreaterEqual/y÷
"lstm_cell_5/dropout_3/GreaterEqualGreaterEqual;lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_5/dropout_3/GreaterEqualª
lstm_cell_5/dropout_3/CastCast&lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_3/Cast³
lstm_cell_5/dropout_3/Mul_1Mullstm_cell_5/dropout_3/Mul:z:0lstm_cell_5/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_3/Mul_1|
lstm_cell_5/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like_1/Shape
lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like_1/Const½
lstm_cell_5/ones_like_1Fill&lstm_cell_5/ones_like_1/Shape:output:0&lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/ones_like_1
lstm_cell_5/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_4/Const¸
lstm_cell_5/dropout_4/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_4/Mul
lstm_cell_5/dropout_4/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_4/Shapeþ
2lstm_cell_5/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2®ÄÐ24
2lstm_cell_5/dropout_4/random_uniform/RandomUniform
$lstm_cell_5/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_4/GreaterEqual/y÷
"lstm_cell_5/dropout_4/GreaterEqualGreaterEqual;lstm_cell_5/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_4/GreaterEqualª
lstm_cell_5/dropout_4/CastCast&lstm_cell_5/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_4/Cast³
lstm_cell_5/dropout_4/Mul_1Mullstm_cell_5/dropout_4/Mul:z:0lstm_cell_5/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_4/Mul_1
lstm_cell_5/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_5/Const¸
lstm_cell_5/dropout_5/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_5/Mul
lstm_cell_5/dropout_5/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_5/Shapeý
2lstm_cell_5/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2¾Y24
2lstm_cell_5/dropout_5/random_uniform/RandomUniform
$lstm_cell_5/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_5/GreaterEqual/y÷
"lstm_cell_5/dropout_5/GreaterEqualGreaterEqual;lstm_cell_5/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_5/GreaterEqualª
lstm_cell_5/dropout_5/CastCast&lstm_cell_5/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_5/Cast³
lstm_cell_5/dropout_5/Mul_1Mullstm_cell_5/dropout_5/Mul:z:0lstm_cell_5/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_5/Mul_1
lstm_cell_5/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_6/Const¸
lstm_cell_5/dropout_6/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_6/Mul
lstm_cell_5/dropout_6/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_6/Shapeý
2lstm_cell_5/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2÷[24
2lstm_cell_5/dropout_6/random_uniform/RandomUniform
$lstm_cell_5/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_6/GreaterEqual/y÷
"lstm_cell_5/dropout_6/GreaterEqualGreaterEqual;lstm_cell_5/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_6/GreaterEqualª
lstm_cell_5/dropout_6/CastCast&lstm_cell_5/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_6/Cast³
lstm_cell_5/dropout_6/Mul_1Mullstm_cell_5/dropout_6/Mul:z:0lstm_cell_5/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_6/Mul_1
lstm_cell_5/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_7/Const¸
lstm_cell_5/dropout_7/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_7/Mul
lstm_cell_5/dropout_7/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_7/Shapeþ
2lstm_cell_5/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2®24
2lstm_cell_5/dropout_7/random_uniform/RandomUniform
$lstm_cell_5/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_7/GreaterEqual/y÷
"lstm_cell_5/dropout_7/GreaterEqualGreaterEqual;lstm_cell_5/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_7/GreaterEqualª
lstm_cell_5/dropout_7/CastCast&lstm_cell_5/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_7/Cast³
lstm_cell_5/dropout_7/Mul_1Mullstm_cell_5/dropout_7/Mul:z:0lstm_cell_5/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_7/Mul_1
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul
lstm_cell_5/mul_1Mulstrided_slice_2:output:0lstm_cell_5/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_1
lstm_cell_5/mul_2Mulstrided_slice_2:output:0lstm_cell_5/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_2
lstm_cell_5/mul_3Mulstrided_slice_2:output:0lstm_cell_5/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_3|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim°
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource* 
_output_shapes
:
 è*
dtype02"
 lstm_cell_5/split/ReadVariableOpß
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
lstm_cell_5/split
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul
lstm_cell_5/MatMul_1MatMullstm_cell_5/mul_1:z:0lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_1
lstm_cell_5/MatMul_2MatMullstm_cell_5/mul_2:z:0lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_2
lstm_cell_5/MatMul_3MatMullstm_cell_5/mul_3:z:0lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_3
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim±
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:è*
dtype02$
"lstm_cell_5/split_1/ReadVariableOpÓ
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
lstm_cell_5/split_1¤
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAddª
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_1ª
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_2ª
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_3
lstm_cell_5/mul_4Mulzeros:output:0lstm_cell_5/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_4
lstm_cell_5/mul_5Mulzeros:output:0lstm_cell_5/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_5
lstm_cell_5/mul_6Mulzeros:output:0lstm_cell_5/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_6
lstm_cell_5/mul_7Mulzeros:output:0lstm_cell_5/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_7
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice/stack_1
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2Æ
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice¤
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul_4:z:0"lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_4
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/addk
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Consto
lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_1
lstm_cell_5/Mul_8Mullstm_cell_5/add:z:0lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_8
lstm_cell_5/Add_1AddV2lstm_cell_5/Mul_8:z:0lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_1
#lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_5/clip_by_value/Minimum/yÉ
!lstm_cell_5/clip_by_value/MinimumMinimumlstm_cell_5/Add_1:z:0,lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_cell_5/clip_by_value/Minimum
lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value/yÁ
lstm_cell_5/clip_by_valueMaximum%lstm_cell_5/clip_by_value/Minimum:z:0$lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value¢
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_1
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice_1/stack
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2%
#lstm_cell_5/strided_slice_1/stack_1
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2Ò
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1¦
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_5:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_5¢
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_2o
lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_2o
lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_3
lstm_cell_5/Mul_9Mullstm_cell_5/add_2:z:0lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_9
lstm_cell_5/Add_3AddV2lstm_cell_5/Mul_9:z:0lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_3
%lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_1/Minimum/yÏ
#lstm_cell_5/clip_by_value_1/MinimumMinimumlstm_cell_5/Add_3:z:0.lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_1/Minimum
lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_1/yÉ
lstm_cell_5/clip_by_value_1Maximum'lstm_cell_5/clip_by_value_1/Minimum:z:0&lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_1
lstm_cell_5/mul_10Mullstm_cell_5/clip_by_value_1:z:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_10¢
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_2
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2#
!lstm_cell_5/strided_slice_2/stack
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2%
#lstm_cell_5/strided_slice_2/stack_1
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2Ò
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2¦
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_6:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_6¢
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_4v
lstm_cell_5/TanhTanhlstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh
lstm_cell_5/mul_11Mullstm_cell_5/clip_by_value:z:0lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_11
lstm_cell_5/add_5AddV2lstm_cell_5/mul_10:z:0lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_5¢
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_3
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2#
!lstm_cell_5/strided_slice_3/stack
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2Ò
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3¦
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_7:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_7¢
lstm_cell_5/add_6AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_6o
lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_4o
lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_5
lstm_cell_5/Mul_12Mullstm_cell_5/add_6:z:0lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_12
lstm_cell_5/Add_7AddV2lstm_cell_5/Mul_12:z:0lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_7
%lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_2/Minimum/yÏ
#lstm_cell_5/clip_by_value_2/MinimumMinimumlstm_cell_5/Add_7:z:0.lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_2/Minimum
lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_2/yÉ
lstm_cell_5/clip_by_value_2Maximum'lstm_cell_5/clip_by_value_2/Minimum:z:0&lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_2z
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh_1
lstm_cell_5/mul_13Mullstm_cell_5/clip_by_value_2:z:0lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_13
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_41228*
condR
while_cond_41227*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   22
0TensorArrayV2Stack/TensorListStack/element_shapeê
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿú*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm§
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ú2
transpose_1t
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity
NoOpNoOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ  : : : 28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Ä
¡
G__inference_sequential_4_layer_call_and_return_conditional_losses_41586
embedding_4_input%
embedding_4_41569:
^  
lstm_4_41573:
 è
lstm_4_41575:	è 
lstm_4_41577:
úè 
dense_4_41580:	ú
dense_4_41582:
identity¢dense_4/StatefulPartitionedCall¢#embedding_4/StatefulPartitionedCall¢lstm_4/StatefulPartitionedCall
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputembedding_4_41569*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_4_layer_call_and_return_conditional_losses_406772%
#embedding_4/StatefulPartitionedCall 
#spatial_dropout1d_4/PartitionedCallPartitionedCall,embedding_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_406852%
#spatial_dropout1d_4/PartitionedCall¾
lstm_4/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_4/PartitionedCall:output:0lstm_4_41573lstm_4_41575lstm_4_41577*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_4_layer_call_and_return_conditional_losses_409702 
lstm_4/StatefulPartitionedCall­
dense_4/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_4_41580dense_4_41582*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_409892!
dense_4/StatefulPartitionedCall
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·
NoOpNoOp ^dense_4/StatefulPartitionedCall$^embedding_4/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+
_user_specified_nameembedding_4_input
Õ¯
à
A__inference_lstm_4_layer_call_and_return_conditional_losses_42781
inputs_0=
)lstm_cell_5_split_readvariableop_resource:
 è:
+lstm_cell_5_split_1_readvariableop_resource:	è7
#lstm_cell_5_readvariableop_resource:
úè
identity¢lstm_cell_5/ReadVariableOp¢lstm_cell_5/ReadVariableOp_1¢lstm_cell_5/ReadVariableOp_2¢lstm_cell_5/ReadVariableOp_3¢ lstm_cell_5/split/ReadVariableOp¢"lstm_cell_5/split_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros/packed/1
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
zerosg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros_1/packed/1
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/Constµ
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/ones_like|
lstm_cell_5/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like_1/Shape
lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like_1/Const½
lstm_cell_5/ones_like_1Fill&lstm_cell_5/ones_like_1/Shape:output:0&lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/ones_like_1
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul
lstm_cell_5/mul_1Mulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_1
lstm_cell_5/mul_2Mulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_2
lstm_cell_5/mul_3Mulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_3|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim°
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource* 
_output_shapes
:
 è*
dtype02"
 lstm_cell_5/split/ReadVariableOpß
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
lstm_cell_5/split
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul
lstm_cell_5/MatMul_1MatMullstm_cell_5/mul_1:z:0lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_1
lstm_cell_5/MatMul_2MatMullstm_cell_5/mul_2:z:0lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_2
lstm_cell_5/MatMul_3MatMullstm_cell_5/mul_3:z:0lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_3
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim±
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:è*
dtype02$
"lstm_cell_5/split_1/ReadVariableOpÓ
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
lstm_cell_5/split_1¤
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAddª
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_1ª
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_2ª
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_3
lstm_cell_5/mul_4Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_4
lstm_cell_5/mul_5Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_5
lstm_cell_5/mul_6Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_6
lstm_cell_5/mul_7Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_7
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice/stack_1
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2Æ
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice¤
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul_4:z:0"lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_4
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/addk
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Consto
lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_1
lstm_cell_5/Mul_8Mullstm_cell_5/add:z:0lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_8
lstm_cell_5/Add_1AddV2lstm_cell_5/Mul_8:z:0lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_1
#lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_5/clip_by_value/Minimum/yÉ
!lstm_cell_5/clip_by_value/MinimumMinimumlstm_cell_5/Add_1:z:0,lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_cell_5/clip_by_value/Minimum
lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value/yÁ
lstm_cell_5/clip_by_valueMaximum%lstm_cell_5/clip_by_value/Minimum:z:0$lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value¢
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_1
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice_1/stack
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2%
#lstm_cell_5/strided_slice_1/stack_1
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2Ò
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1¦
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_5:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_5¢
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_2o
lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_2o
lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_3
lstm_cell_5/Mul_9Mullstm_cell_5/add_2:z:0lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_9
lstm_cell_5/Add_3AddV2lstm_cell_5/Mul_9:z:0lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_3
%lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_1/Minimum/yÏ
#lstm_cell_5/clip_by_value_1/MinimumMinimumlstm_cell_5/Add_3:z:0.lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_1/Minimum
lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_1/yÉ
lstm_cell_5/clip_by_value_1Maximum'lstm_cell_5/clip_by_value_1/Minimum:z:0&lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_1
lstm_cell_5/mul_10Mullstm_cell_5/clip_by_value_1:z:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_10¢
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_2
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2#
!lstm_cell_5/strided_slice_2/stack
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2%
#lstm_cell_5/strided_slice_2/stack_1
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2Ò
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2¦
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_6:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_6¢
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_4v
lstm_cell_5/TanhTanhlstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh
lstm_cell_5/mul_11Mullstm_cell_5/clip_by_value:z:0lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_11
lstm_cell_5/add_5AddV2lstm_cell_5/mul_10:z:0lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_5¢
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_3
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2#
!lstm_cell_5/strided_slice_3/stack
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2Ò
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3¦
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_7:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_7¢
lstm_cell_5/add_6AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_6o
lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_4o
lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_5
lstm_cell_5/Mul_12Mullstm_cell_5/add_6:z:0lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_12
lstm_cell_5/Add_7AddV2lstm_cell_5/Mul_12:z:0lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_7
%lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_2/Minimum/yÏ
#lstm_cell_5/clip_by_value_2/MinimumMinimumlstm_cell_5/Add_7:z:0.lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_2/Minimum
lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_2/yÉ
lstm_cell_5/clip_by_value_2Maximum'lstm_cell_5/clip_by_value_2/Minimum:z:0&lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_2z
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh_1
lstm_cell_5/mul_13Mullstm_cell_5/clip_by_value_2:z:0lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_13
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_42627*
condR
while_cond_42626*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿú*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿú2
transpose_1t
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity
NoOpNoOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0

l
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_40685

inputs

identity_1`
IdentityIdentityinputs*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityo

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
è
O
3__inference_spatial_dropout1d_4_layer_call_fn_42492

inputs
identityÒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_406852
PartitionedCallr
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
©
©
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_40278

inputs

states
states_11
split_readvariableop_resource:
 è.
split_1_readvariableop_resource:	è+
readvariableop_resource:
úè
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÔ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ßÿ2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÙ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÃÞW2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_1/GreaterEqual/yÇ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÚ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2îÖ¦2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_2/GreaterEqual/yÇ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÚ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Ï2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_3/GreaterEqual/yÇ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dropout_3/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeÚ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2¾Â¦2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_4/GreaterEqual/yÇ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÚ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2¬Ü2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_5/GreaterEqual/yÇ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/ShapeÚ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2ºï2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_6/GreaterEqual/yÇ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/ShapeÚ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2¶ß2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_7/GreaterEqual/yÇ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
 è*
dtype02
split/ReadVariableOp¯
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:è*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
	BiasAdd_3e
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_4e
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_5e
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_6e
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1a
Mul_8Muladd:z:0Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_8g
Add_1AddV2	Mul_8:z:0Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_5r
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3e
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_9g
Add_3AddV2	Mul_9:z:0Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_1/Minimum/y
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_1i
mul_10Mulclip_by_value_1:z:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_10~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_6r
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_4R
TanhTanh	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Tanhg
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_11b
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_5~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
úè*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

MatMul_7r
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5g
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Mul_12h
Add_7AddV2
Mul_12:z:0Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value_2/Minimum/y
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
clip_by_value_2V
Tanh_1Tanh	add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Tanh_1k
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
mul_13f
IdentityIdentity
mul_13:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identityj

Identity_1Identity
mul_13:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_1i

Identity_2Identity	add_5:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_2È
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_namestates
þ
	
while_body_43671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_5_split_readvariableop_resource_0:
 èB
3while_lstm_cell_5_split_1_readvariableop_resource_0:	è?
+while_lstm_cell_5_readvariableop_resource_0:
úè
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_5_split_readvariableop_resource:
 è@
1while_lstm_cell_5_split_1_readvariableop_resource:	è=
)while_lstm_cell_5_readvariableop_resource:
úè¢ while/lstm_cell_5/ReadVariableOp¢"while/lstm_cell_5/ReadVariableOp_1¢"while/lstm_cell_5/ReadVariableOp_2¢"while/lstm_cell_5/ReadVariableOp_3¢&while/lstm_cell_5/split/ReadVariableOp¢(while/lstm_cell_5/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstÍ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/ones_like
while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_5/dropout/ConstÈ
while/lstm_cell_5/dropout/MulMul$while/lstm_cell_5/ones_like:output:0(while/lstm_cell_5/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/dropout/Mul
while/lstm_cell_5/dropout/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_5/dropout/Shape
6while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_5/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¾­è28
6while/lstm_cell_5/dropout/random_uniform/RandomUniform
(while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2*
(while/lstm_cell_5/dropout/GreaterEqual/y
&while/lstm_cell_5/dropout/GreaterEqualGreaterEqual?while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&while/lstm_cell_5/dropout/GreaterEqual¶
while/lstm_cell_5/dropout/CastCast*while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_5/dropout/CastÃ
while/lstm_cell_5/dropout/Mul_1Mul!while/lstm_cell_5/dropout/Mul:z:0"while/lstm_cell_5/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout/Mul_1
!while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_1/ConstÎ
while/lstm_cell_5/dropout_1/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout_1/Mul
!while/lstm_cell_5/dropout_1/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_1/Shape
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¹Öà2:
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_1/GreaterEqual/y
(while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_5/dropout_1/GreaterEqual¼
 while/lstm_cell_5/dropout_1/CastCast,while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_5/dropout_1/CastË
!while/lstm_cell_5/dropout_1/Mul_1Mul#while/lstm_cell_5/dropout_1/Mul:z:0$while/lstm_cell_5/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_5/dropout_1/Mul_1
!while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_2/ConstÎ
while/lstm_cell_5/dropout_2/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout_2/Mul
!while/lstm_cell_5/dropout_2/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_2/Shape
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¿¤Ê2:
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_2/GreaterEqual/y
(while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_5/dropout_2/GreaterEqual¼
 while/lstm_cell_5/dropout_2/CastCast,while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_5/dropout_2/CastË
!while/lstm_cell_5/dropout_2/Mul_1Mul#while/lstm_cell_5/dropout_2/Mul:z:0$while/lstm_cell_5/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_5/dropout_2/Mul_1
!while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_3/ConstÎ
while/lstm_cell_5/dropout_3/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout_3/Mul
!while/lstm_cell_5/dropout_3/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_3/Shape
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2éÊ¤2:
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_3/GreaterEqual/y
(while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_5/dropout_3/GreaterEqual¼
 while/lstm_cell_5/dropout_3/CastCast,while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_5/dropout_3/CastË
!while/lstm_cell_5/dropout_3/Mul_1Mul#while/lstm_cell_5/dropout_3/Mul:z:0$while/lstm_cell_5/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_5/dropout_3/Mul_1
#while/lstm_cell_5/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_5/ones_like_1/Shape
#while/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_5/ones_like_1/ConstÕ
while/lstm_cell_5/ones_like_1Fill,while/lstm_cell_5/ones_like_1/Shape:output:0,while/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/ones_like_1
!while/lstm_cell_5/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_4/ConstÐ
while/lstm_cell_5/dropout_4/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_4/Mul
!while/lstm_cell_5/dropout_4/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_4/Shape
8while/lstm_cell_5/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2Å2:
8while/lstm_cell_5/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_4/GreaterEqual/y
(while/lstm_cell_5/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_4/GreaterEqual¼
 while/lstm_cell_5/dropout_4/CastCast,while/lstm_cell_5/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_4/CastË
!while/lstm_cell_5/dropout_4/Mul_1Mul#while/lstm_cell_5/dropout_4/Mul:z:0$while/lstm_cell_5/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_4/Mul_1
!while/lstm_cell_5/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_5/ConstÐ
while/lstm_cell_5/dropout_5/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_5/Mul
!while/lstm_cell_5/dropout_5/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_5/Shape
8while/lstm_cell_5/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2²à2:
8while/lstm_cell_5/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_5/GreaterEqual/y
(while/lstm_cell_5/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_5/GreaterEqual¼
 while/lstm_cell_5/dropout_5/CastCast,while/lstm_cell_5/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_5/CastË
!while/lstm_cell_5/dropout_5/Mul_1Mul#while/lstm_cell_5/dropout_5/Mul:z:0$while/lstm_cell_5/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_5/Mul_1
!while/lstm_cell_5/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_6/ConstÐ
while/lstm_cell_5/dropout_6/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_6/Mul
!while/lstm_cell_5/dropout_6/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_6/Shape
8while/lstm_cell_5/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2Ã2:
8while/lstm_cell_5/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_6/GreaterEqual/y
(while/lstm_cell_5/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_6/GreaterEqual¼
 while/lstm_cell_5/dropout_6/CastCast,while/lstm_cell_5/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_6/CastË
!while/lstm_cell_5/dropout_6/Mul_1Mul#while/lstm_cell_5/dropout_6/Mul:z:0$while/lstm_cell_5/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_6/Mul_1
!while/lstm_cell_5/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_7/ConstÐ
while/lstm_cell_5/dropout_7/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_7/Mul
!while/lstm_cell_5/dropout_7/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_7/Shape
8while/lstm_cell_5/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2ôÊã2:
8while/lstm_cell_5/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_7/GreaterEqual/y
(while/lstm_cell_5/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_7/GreaterEqual¼
 while/lstm_cell_5/dropout_7/CastCast,while/lstm_cell_5/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_7/CastË
!while/lstm_cell_5/dropout_7/Mul_1Mul#while/lstm_cell_5/dropout_7/Mul:z:0$while/lstm_cell_5/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_7/Mul_1¿
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_5/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mulÅ
while/lstm_cell_5/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_5/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_1Å
while/lstm_cell_5/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_5/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_2Å
while/lstm_cell_5/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_5/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_3
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dimÄ
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0* 
_output_shapes
:
 è*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp÷
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
while/lstm_cell_5/split®
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0 while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul´
while/lstm_cell_5/MatMul_1MatMulwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_1´
while/lstm_cell_5/MatMul_2MatMulwhile/lstm_cell_5/mul_2:z:0 while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_2´
while/lstm_cell_5/MatMul_3MatMulwhile/lstm_cell_5/mul_3:z:0 while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_3
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dimÅ
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:è*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOpë
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
while/lstm_cell_5/split_1¼
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAddÂ
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_1Â
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_2Â
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_3¨
while/lstm_cell_5/mul_4Mulwhile_placeholder_2%while/lstm_cell_5/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_4¨
while/lstm_cell_5/mul_5Mulwhile_placeholder_2%while/lstm_cell_5/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_5¨
while/lstm_cell_5/mul_6Mulwhile_placeholder_2%while/lstm_cell_5/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_6¨
while/lstm_cell_5/mul_7Mulwhile_placeholder_2%while/lstm_cell_5/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_7²
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02"
 while/lstm_cell_5/ReadVariableOp
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack£
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice/stack_1£
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2ê
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice¼
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul_4:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_4´
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/addw
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const{
while/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_1©
while/lstm_cell_5/Mul_8Mulwhile/lstm_cell_5/add:z:0 while/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_8¯
while/lstm_cell_5/Add_1AddV2while/lstm_cell_5/Mul_8:z:0"while/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_1
)while/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_5/clip_by_value/Minimum/yá
'while/lstm_cell_5/clip_by_value/MinimumMinimumwhile/lstm_cell_5/Add_1:z:02while/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2)
'while/lstm_cell_5/clip_by_value/Minimum
!while/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_5/clip_by_value/yÙ
while/lstm_cell_5/clip_by_valueMaximum+while/lstm_cell_5/clip_by_value/Minimum:z:0*while/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/clip_by_value¶
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1£
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice_1/stack§
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2+
)while/lstm_cell_5/strided_slice_1/stack_1§
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2ö
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1¾
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_5:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_5º
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_2{
while/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_2{
while/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_3­
while/lstm_cell_5/Mul_9Mulwhile/lstm_cell_5/add_2:z:0"while/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_9¯
while/lstm_cell_5/Add_3AddV2while/lstm_cell_5/Mul_9:z:0"while/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_3
+while/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_1/Minimum/yç
)while/lstm_cell_5/clip_by_value_1/MinimumMinimumwhile/lstm_cell_5/Add_3:z:04while/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_1/Minimum
#while/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_1/yá
!while/lstm_cell_5/clip_by_value_1Maximum-while/lstm_cell_5/clip_by_value_1/Minimum:z:0,while/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_1ª
while/lstm_cell_5/mul_10Mul%while/lstm_cell_5/clip_by_value_1:z:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_10¶
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2£
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2)
'while/lstm_cell_5/strided_slice_2/stack§
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2+
)while/lstm_cell_5/strided_slice_2/stack_1§
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2ö
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2¾
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_6:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_6º
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_4
while/lstm_cell_5/TanhTanhwhile/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh¯
while/lstm_cell_5/mul_11Mul#while/lstm_cell_5/clip_by_value:z:0while/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_11ª
while/lstm_cell_5/add_5AddV2while/lstm_cell_5/mul_10:z:0while/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_5¶
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3£
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2)
'while/lstm_cell_5/strided_slice_3/stack§
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1§
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2ö
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3¾
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_7:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_7º
while/lstm_cell_5/add_6AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_6{
while/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_4{
while/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_5¯
while/lstm_cell_5/Mul_12Mulwhile/lstm_cell_5/add_6:z:0"while/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_12°
while/lstm_cell_5/Add_7AddV2while/lstm_cell_5/Mul_12:z:0"while/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_7
+while/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_2/Minimum/yç
)while/lstm_cell_5/clip_by_value_2/MinimumMinimumwhile/lstm_cell_5/Add_7:z:04while/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_2/Minimum
#while/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_2/yá
!while/lstm_cell_5/clip_by_value_2Maximum-while/lstm_cell_5/clip_by_value_2/Minimum:z:0,while/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_2
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh_1³
while/lstm_cell_5/mul_13Mul%while/lstm_cell_5/clip_by_value_2:z:0while/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_13à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_13:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_13:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_5:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_5À

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
: 
Â
ö
+__inference_lstm_cell_5_layer_call_fn_44257

inputs
states_0
states_1
unknown:
 è
	unknown_0:	è
	unknown_1:
úè
identity

identity_1

identity_2¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_402782
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
"
_user_specified_name
states/1
ý
	
while_body_42975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_5_split_readvariableop_resource_0:
 èB
3while_lstm_cell_5_split_1_readvariableop_resource_0:	è?
+while_lstm_cell_5_readvariableop_resource_0:
úè
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_5_split_readvariableop_resource:
 è@
1while_lstm_cell_5_split_1_readvariableop_resource:	è=
)while_lstm_cell_5_readvariableop_resource:
úè¢ while/lstm_cell_5/ReadVariableOp¢"while/lstm_cell_5/ReadVariableOp_1¢"while/lstm_cell_5/ReadVariableOp_2¢"while/lstm_cell_5/ReadVariableOp_3¢&while/lstm_cell_5/split/ReadVariableOp¢(while/lstm_cell_5/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstÍ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/ones_like
while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_5/dropout/ConstÈ
while/lstm_cell_5/dropout/MulMul$while/lstm_cell_5/ones_like:output:0(while/lstm_cell_5/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/dropout/Mul
while/lstm_cell_5/dropout/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_5/dropout/Shape
6while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_5/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Çµ28
6while/lstm_cell_5/dropout/random_uniform/RandomUniform
(while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2*
(while/lstm_cell_5/dropout/GreaterEqual/y
&while/lstm_cell_5/dropout/GreaterEqualGreaterEqual?while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&while/lstm_cell_5/dropout/GreaterEqual¶
while/lstm_cell_5/dropout/CastCast*while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_5/dropout/CastÃ
while/lstm_cell_5/dropout/Mul_1Mul!while/lstm_cell_5/dropout/Mul:z:0"while/lstm_cell_5/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout/Mul_1
!while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_1/ConstÎ
while/lstm_cell_5/dropout_1/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout_1/Mul
!while/lstm_cell_5/dropout_1/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_1/Shape
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¡·2:
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_1/GreaterEqual/y
(while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_5/dropout_1/GreaterEqual¼
 while/lstm_cell_5/dropout_1/CastCast,while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_5/dropout_1/CastË
!while/lstm_cell_5/dropout_1/Mul_1Mul#while/lstm_cell_5/dropout_1/Mul:z:0$while/lstm_cell_5/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_5/dropout_1/Mul_1
!while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_2/ConstÎ
while/lstm_cell_5/dropout_2/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout_2/Mul
!while/lstm_cell_5/dropout_2/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_2/Shape
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2­à2:
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_2/GreaterEqual/y
(while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_5/dropout_2/GreaterEqual¼
 while/lstm_cell_5/dropout_2/CastCast,while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_5/dropout_2/CastË
!while/lstm_cell_5/dropout_2/Mul_1Mul#while/lstm_cell_5/dropout_2/Mul:z:0$while/lstm_cell_5/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_5/dropout_2/Mul_1
!while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_3/ConstÎ
while/lstm_cell_5/dropout_3/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout_3/Mul
!while/lstm_cell_5/dropout_3/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_3/Shape
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÌÄ2:
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_3/GreaterEqual/y
(while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_5/dropout_3/GreaterEqual¼
 while/lstm_cell_5/dropout_3/CastCast,while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_5/dropout_3/CastË
!while/lstm_cell_5/dropout_3/Mul_1Mul#while/lstm_cell_5/dropout_3/Mul:z:0$while/lstm_cell_5/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_5/dropout_3/Mul_1
#while/lstm_cell_5/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_5/ones_like_1/Shape
#while/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_5/ones_like_1/ConstÕ
while/lstm_cell_5/ones_like_1Fill,while/lstm_cell_5/ones_like_1/Shape:output:0,while/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/ones_like_1
!while/lstm_cell_5/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_4/ConstÐ
while/lstm_cell_5/dropout_4/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_4/Mul
!while/lstm_cell_5/dropout_4/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_4/Shape
8while/lstm_cell_5/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2¾$2:
8while/lstm_cell_5/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_4/GreaterEqual/y
(while/lstm_cell_5/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_4/GreaterEqual¼
 while/lstm_cell_5/dropout_4/CastCast,while/lstm_cell_5/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_4/CastË
!while/lstm_cell_5/dropout_4/Mul_1Mul#while/lstm_cell_5/dropout_4/Mul:z:0$while/lstm_cell_5/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_4/Mul_1
!while/lstm_cell_5/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_5/ConstÐ
while/lstm_cell_5/dropout_5/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_5/Mul
!while/lstm_cell_5/dropout_5/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_5/Shape
8while/lstm_cell_5/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2³¿2:
8while/lstm_cell_5/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_5/GreaterEqual/y
(while/lstm_cell_5/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_5/GreaterEqual¼
 while/lstm_cell_5/dropout_5/CastCast,while/lstm_cell_5/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_5/CastË
!while/lstm_cell_5/dropout_5/Mul_1Mul#while/lstm_cell_5/dropout_5/Mul:z:0$while/lstm_cell_5/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_5/Mul_1
!while/lstm_cell_5/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_6/ConstÐ
while/lstm_cell_5/dropout_6/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_6/Mul
!while/lstm_cell_5/dropout_6/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_6/Shape
8while/lstm_cell_5/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2àå2:
8while/lstm_cell_5/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_6/GreaterEqual/y
(while/lstm_cell_5/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_6/GreaterEqual¼
 while/lstm_cell_5/dropout_6/CastCast,while/lstm_cell_5/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_6/CastË
!while/lstm_cell_5/dropout_6/Mul_1Mul#while/lstm_cell_5/dropout_6/Mul:z:0$while/lstm_cell_5/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_6/Mul_1
!while/lstm_cell_5/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_7/ConstÐ
while/lstm_cell_5/dropout_7/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_7/Mul
!while/lstm_cell_5/dropout_7/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_7/Shape
8while/lstm_cell_5/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2Ç'2:
8while/lstm_cell_5/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_7/GreaterEqual/y
(while/lstm_cell_5/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_7/GreaterEqual¼
 while/lstm_cell_5/dropout_7/CastCast,while/lstm_cell_5/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_7/CastË
!while/lstm_cell_5/dropout_7/Mul_1Mul#while/lstm_cell_5/dropout_7/Mul:z:0$while/lstm_cell_5/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_7/Mul_1¿
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_5/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mulÅ
while/lstm_cell_5/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_5/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_1Å
while/lstm_cell_5/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_5/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_2Å
while/lstm_cell_5/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_5/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_3
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dimÄ
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0* 
_output_shapes
:
 è*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp÷
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
while/lstm_cell_5/split®
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0 while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul´
while/lstm_cell_5/MatMul_1MatMulwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_1´
while/lstm_cell_5/MatMul_2MatMulwhile/lstm_cell_5/mul_2:z:0 while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_2´
while/lstm_cell_5/MatMul_3MatMulwhile/lstm_cell_5/mul_3:z:0 while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_3
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dimÅ
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:è*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOpë
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
while/lstm_cell_5/split_1¼
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAddÂ
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_1Â
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_2Â
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_3¨
while/lstm_cell_5/mul_4Mulwhile_placeholder_2%while/lstm_cell_5/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_4¨
while/lstm_cell_5/mul_5Mulwhile_placeholder_2%while/lstm_cell_5/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_5¨
while/lstm_cell_5/mul_6Mulwhile_placeholder_2%while/lstm_cell_5/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_6¨
while/lstm_cell_5/mul_7Mulwhile_placeholder_2%while/lstm_cell_5/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_7²
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02"
 while/lstm_cell_5/ReadVariableOp
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack£
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice/stack_1£
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2ê
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice¼
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul_4:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_4´
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/addw
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const{
while/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_1©
while/lstm_cell_5/Mul_8Mulwhile/lstm_cell_5/add:z:0 while/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_8¯
while/lstm_cell_5/Add_1AddV2while/lstm_cell_5/Mul_8:z:0"while/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_1
)while/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_5/clip_by_value/Minimum/yá
'while/lstm_cell_5/clip_by_value/MinimumMinimumwhile/lstm_cell_5/Add_1:z:02while/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2)
'while/lstm_cell_5/clip_by_value/Minimum
!while/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_5/clip_by_value/yÙ
while/lstm_cell_5/clip_by_valueMaximum+while/lstm_cell_5/clip_by_value/Minimum:z:0*while/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/clip_by_value¶
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1£
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice_1/stack§
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2+
)while/lstm_cell_5/strided_slice_1/stack_1§
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2ö
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1¾
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_5:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_5º
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_2{
while/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_2{
while/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_3­
while/lstm_cell_5/Mul_9Mulwhile/lstm_cell_5/add_2:z:0"while/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_9¯
while/lstm_cell_5/Add_3AddV2while/lstm_cell_5/Mul_9:z:0"while/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_3
+while/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_1/Minimum/yç
)while/lstm_cell_5/clip_by_value_1/MinimumMinimumwhile/lstm_cell_5/Add_3:z:04while/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_1/Minimum
#while/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_1/yá
!while/lstm_cell_5/clip_by_value_1Maximum-while/lstm_cell_5/clip_by_value_1/Minimum:z:0,while/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_1ª
while/lstm_cell_5/mul_10Mul%while/lstm_cell_5/clip_by_value_1:z:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_10¶
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2£
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2)
'while/lstm_cell_5/strided_slice_2/stack§
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2+
)while/lstm_cell_5/strided_slice_2/stack_1§
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2ö
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2¾
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_6:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_6º
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_4
while/lstm_cell_5/TanhTanhwhile/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh¯
while/lstm_cell_5/mul_11Mul#while/lstm_cell_5/clip_by_value:z:0while/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_11ª
while/lstm_cell_5/add_5AddV2while/lstm_cell_5/mul_10:z:0while/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_5¶
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3£
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2)
'while/lstm_cell_5/strided_slice_3/stack§
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1§
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2ö
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3¾
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_7:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_7º
while/lstm_cell_5/add_6AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_6{
while/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_4{
while/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_5¯
while/lstm_cell_5/Mul_12Mulwhile/lstm_cell_5/add_6:z:0"while/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_12°
while/lstm_cell_5/Add_7AddV2while/lstm_cell_5/Mul_12:z:0"while/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_7
+while/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_2/Minimum/yç
)while/lstm_cell_5/clip_by_value_2/MinimumMinimumwhile/lstm_cell_5/Add_7:z:04while/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_2/Minimum
#while/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_2/yá
!while/lstm_cell_5/clip_by_value_2Maximum-while/lstm_cell_5/clip_by_value_2/Minimum:z:0,while/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_2
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh_1³
while/lstm_cell_5/mul_13Mul%while/lstm_cell_5/clip_by_value_2:z:0while/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_13à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_13:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_13:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_5:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_5À

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
: 
ä
è
 __inference__wrapped_model_39784
embedding_4_inputC
/sequential_4_embedding_4_embedding_lookup_39490:
^ Q
=sequential_4_lstm_4_lstm_cell_5_split_readvariableop_resource:
 èN
?sequential_4_lstm_4_lstm_cell_5_split_1_readvariableop_resource:	èK
7sequential_4_lstm_4_lstm_cell_5_readvariableop_resource:
úèF
3sequential_4_dense_4_matmul_readvariableop_resource:	úB
4sequential_4_dense_4_biasadd_readvariableop_resource:
identity¢+sequential_4/dense_4/BiasAdd/ReadVariableOp¢*sequential_4/dense_4/MatMul/ReadVariableOp¢)sequential_4/embedding_4/embedding_lookup¢.sequential_4/lstm_4/lstm_cell_5/ReadVariableOp¢0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_1¢0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_2¢0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_3¢4sequential_4/lstm_4/lstm_cell_5/split/ReadVariableOp¢6sequential_4/lstm_4/lstm_cell_5/split_1/ReadVariableOp¢sequential_4/lstm_4/while
sequential_4/embedding_4/CastCastembedding_4_input*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
sequential_4/embedding_4/Castú
)sequential_4/embedding_4/embedding_lookupResourceGather/sequential_4_embedding_4_embedding_lookup_39490!sequential_4/embedding_4/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*B
_class8
64loc:@sequential_4/embedding_4/embedding_lookup/39490*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype02+
)sequential_4/embedding_4/embedding_lookupÒ
2sequential_4/embedding_4/embedding_lookup/IdentityIdentity2sequential_4/embedding_4/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@sequential_4/embedding_4/embedding_lookup/39490*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  24
2sequential_4/embedding_4/embedding_lookup/Identityí
4sequential_4/embedding_4/embedding_lookup/Identity_1Identity;sequential_4/embedding_4/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  26
4sequential_4/embedding_4/embedding_lookup/Identity_1Ù
)sequential_4/spatial_dropout1d_4/IdentityIdentity=sequential_4/embedding_4/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2+
)sequential_4/spatial_dropout1d_4/Identity
sequential_4/lstm_4/ShapeShape2sequential_4/spatial_dropout1d_4/Identity:output:0*
T0*
_output_shapes
:2
sequential_4/lstm_4/Shape
'sequential_4/lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/lstm_4/strided_slice/stack 
)sequential_4/lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_4/lstm_4/strided_slice/stack_1 
)sequential_4/lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_4/lstm_4/strided_slice/stack_2Ú
!sequential_4/lstm_4/strided_sliceStridedSlice"sequential_4/lstm_4/Shape:output:00sequential_4/lstm_4/strided_slice/stack:output:02sequential_4/lstm_4/strided_slice/stack_1:output:02sequential_4/lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_4/lstm_4/strided_slice
"sequential_4/lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2$
"sequential_4/lstm_4/zeros/packed/1Ó
 sequential_4/lstm_4/zeros/packedPack*sequential_4/lstm_4/strided_slice:output:0+sequential_4/lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_4/lstm_4/zeros/packed
sequential_4/lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_4/lstm_4/zeros/ConstÆ
sequential_4/lstm_4/zerosFill)sequential_4/lstm_4/zeros/packed:output:0(sequential_4/lstm_4/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
sequential_4/lstm_4/zeros
$sequential_4/lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2&
$sequential_4/lstm_4/zeros_1/packed/1Ù
"sequential_4/lstm_4/zeros_1/packedPack*sequential_4/lstm_4/strided_slice:output:0-sequential_4/lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_4/lstm_4/zeros_1/packed
!sequential_4/lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_4/lstm_4/zeros_1/ConstÎ
sequential_4/lstm_4/zeros_1Fill+sequential_4/lstm_4/zeros_1/packed:output:0*sequential_4/lstm_4/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
sequential_4/lstm_4/zeros_1
"sequential_4/lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_4/lstm_4/transpose/permä
sequential_4/lstm_4/transpose	Transpose2sequential_4/spatial_dropout1d_4/Identity:output:0+sequential_4/lstm_4/transpose/perm:output:0*
T0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿ 2
sequential_4/lstm_4/transpose
sequential_4/lstm_4/Shape_1Shape!sequential_4/lstm_4/transpose:y:0*
T0*
_output_shapes
:2
sequential_4/lstm_4/Shape_1 
)sequential_4/lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_4/lstm_4/strided_slice_1/stack¤
+sequential_4/lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_4/strided_slice_1/stack_1¤
+sequential_4/lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_4/strided_slice_1/stack_2æ
#sequential_4/lstm_4/strided_slice_1StridedSlice$sequential_4/lstm_4/Shape_1:output:02sequential_4/lstm_4/strided_slice_1/stack:output:04sequential_4/lstm_4/strided_slice_1/stack_1:output:04sequential_4/lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_4/lstm_4/strided_slice_1­
/sequential_4/lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/sequential_4/lstm_4/TensorArrayV2/element_shape
!sequential_4/lstm_4/TensorArrayV2TensorListReserve8sequential_4/lstm_4/TensorArrayV2/element_shape:output:0,sequential_4/lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_4/lstm_4/TensorArrayV2ç
Isequential_4/lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2K
Isequential_4/lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeÈ
;sequential_4/lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_4/lstm_4/transpose:y:0Rsequential_4/lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_4/lstm_4/TensorArrayUnstack/TensorListFromTensor 
)sequential_4/lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_4/lstm_4/strided_slice_2/stack¤
+sequential_4/lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_4/strided_slice_2/stack_1¤
+sequential_4/lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_4/strided_slice_2/stack_2õ
#sequential_4/lstm_4/strided_slice_2StridedSlice!sequential_4/lstm_4/transpose:y:02sequential_4/lstm_4/strided_slice_2/stack:output:04sequential_4/lstm_4/strided_slice_2/stack_1:output:04sequential_4/lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2%
#sequential_4/lstm_4/strided_slice_2¾
/sequential_4/lstm_4/lstm_cell_5/ones_like/ShapeShape,sequential_4/lstm_4/strided_slice_2:output:0*
T0*
_output_shapes
:21
/sequential_4/lstm_4/lstm_cell_5/ones_like/Shape§
/sequential_4/lstm_4/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?21
/sequential_4/lstm_4/lstm_cell_5/ones_like/Const
)sequential_4/lstm_4/lstm_cell_5/ones_likeFill8sequential_4/lstm_4/lstm_cell_5/ones_like/Shape:output:08sequential_4/lstm_4/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_4/lstm_4/lstm_cell_5/ones_like¸
1sequential_4/lstm_4/lstm_cell_5/ones_like_1/ShapeShape"sequential_4/lstm_4/zeros:output:0*
T0*
_output_shapes
:23
1sequential_4/lstm_4/lstm_cell_5/ones_like_1/Shape«
1sequential_4/lstm_4/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?23
1sequential_4/lstm_4/lstm_cell_5/ones_like_1/Const
+sequential_4/lstm_4/lstm_cell_5/ones_like_1Fill:sequential_4/lstm_4/lstm_cell_5/ones_like_1/Shape:output:0:sequential_4/lstm_4/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/lstm_cell_5/ones_like_1æ
#sequential_4/lstm_4/lstm_cell_5/mulMul,sequential_4/lstm_4/strided_slice_2:output:02sequential_4/lstm_4/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#sequential_4/lstm_4/lstm_cell_5/mulê
%sequential_4/lstm_4/lstm_cell_5/mul_1Mul,sequential_4/lstm_4/strided_slice_2:output:02sequential_4/lstm_4/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_4/lstm_4/lstm_cell_5/mul_1ê
%sequential_4/lstm_4/lstm_cell_5/mul_2Mul,sequential_4/lstm_4/strided_slice_2:output:02sequential_4/lstm_4/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_4/lstm_4/lstm_cell_5/mul_2ê
%sequential_4/lstm_4/lstm_cell_5/mul_3Mul,sequential_4/lstm_4/strided_slice_2:output:02sequential_4/lstm_4/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%sequential_4/lstm_4/lstm_cell_5/mul_3¤
/sequential_4/lstm_4/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_4/lstm_4/lstm_cell_5/split/split_dimì
4sequential_4/lstm_4/lstm_cell_5/split/ReadVariableOpReadVariableOp=sequential_4_lstm_4_lstm_cell_5_split_readvariableop_resource* 
_output_shapes
:
 è*
dtype026
4sequential_4/lstm_4/lstm_cell_5/split/ReadVariableOp¯
%sequential_4/lstm_4/lstm_cell_5/splitSplit8sequential_4/lstm_4/lstm_cell_5/split/split_dim:output:0<sequential_4/lstm_4/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2'
%sequential_4/lstm_4/lstm_cell_5/splitæ
&sequential_4/lstm_4/lstm_cell_5/MatMulMatMul'sequential_4/lstm_4/lstm_cell_5/mul:z:0.sequential_4/lstm_4/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&sequential_4/lstm_4/lstm_cell_5/MatMulì
(sequential_4/lstm_4/lstm_cell_5/MatMul_1MatMul)sequential_4/lstm_4/lstm_cell_5/mul_1:z:0.sequential_4/lstm_4/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(sequential_4/lstm_4/lstm_cell_5/MatMul_1ì
(sequential_4/lstm_4/lstm_cell_5/MatMul_2MatMul)sequential_4/lstm_4/lstm_cell_5/mul_2:z:0.sequential_4/lstm_4/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(sequential_4/lstm_4/lstm_cell_5/MatMul_2ì
(sequential_4/lstm_4/lstm_cell_5/MatMul_3MatMul)sequential_4/lstm_4/lstm_cell_5/mul_3:z:0.sequential_4/lstm_4/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(sequential_4/lstm_4/lstm_cell_5/MatMul_3¨
1sequential_4/lstm_4/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_4/lstm_4/lstm_cell_5/split_1/split_dimí
6sequential_4/lstm_4/lstm_cell_5/split_1/ReadVariableOpReadVariableOp?sequential_4_lstm_4_lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:è*
dtype028
6sequential_4/lstm_4/lstm_cell_5/split_1/ReadVariableOp£
'sequential_4/lstm_4/lstm_cell_5/split_1Split:sequential_4/lstm_4/lstm_cell_5/split_1/split_dim:output:0>sequential_4/lstm_4/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2)
'sequential_4/lstm_4/lstm_cell_5/split_1ô
'sequential_4/lstm_4/lstm_cell_5/BiasAddBiasAdd0sequential_4/lstm_4/lstm_cell_5/MatMul:product:00sequential_4/lstm_4/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2)
'sequential_4/lstm_4/lstm_cell_5/BiasAddú
)sequential_4/lstm_4/lstm_cell_5/BiasAdd_1BiasAdd2sequential_4/lstm_4/lstm_cell_5/MatMul_1:product:00sequential_4/lstm_4/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)sequential_4/lstm_4/lstm_cell_5/BiasAdd_1ú
)sequential_4/lstm_4/lstm_cell_5/BiasAdd_2BiasAdd2sequential_4/lstm_4/lstm_cell_5/MatMul_2:product:00sequential_4/lstm_4/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)sequential_4/lstm_4/lstm_cell_5/BiasAdd_2ú
)sequential_4/lstm_4/lstm_cell_5/BiasAdd_3BiasAdd2sequential_4/lstm_4/lstm_cell_5/MatMul_3:product:00sequential_4/lstm_4/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)sequential_4/lstm_4/lstm_cell_5/BiasAdd_3â
%sequential_4/lstm_4/lstm_cell_5/mul_4Mul"sequential_4/lstm_4/zeros:output:04sequential_4/lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/mul_4â
%sequential_4/lstm_4/lstm_cell_5/mul_5Mul"sequential_4/lstm_4/zeros:output:04sequential_4/lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/mul_5â
%sequential_4/lstm_4/lstm_cell_5/mul_6Mul"sequential_4/lstm_4/zeros:output:04sequential_4/lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/mul_6â
%sequential_4/lstm_4/lstm_cell_5/mul_7Mul"sequential_4/lstm_4/zeros:output:04sequential_4/lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/mul_7Ú
.sequential_4/lstm_4/lstm_cell_5/ReadVariableOpReadVariableOp7sequential_4_lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype020
.sequential_4/lstm_4/lstm_cell_5/ReadVariableOp»
3sequential_4/lstm_4/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential_4/lstm_4/lstm_cell_5/strided_slice/stack¿
5sequential_4/lstm_4/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   27
5sequential_4/lstm_4/lstm_cell_5/strided_slice/stack_1¿
5sequential_4/lstm_4/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_4/lstm_4/lstm_cell_5/strided_slice/stack_2¾
-sequential_4/lstm_4/lstm_cell_5/strided_sliceStridedSlice6sequential_4/lstm_4/lstm_cell_5/ReadVariableOp:value:0<sequential_4/lstm_4/lstm_cell_5/strided_slice/stack:output:0>sequential_4/lstm_4/lstm_cell_5/strided_slice/stack_1:output:0>sequential_4/lstm_4/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2/
-sequential_4/lstm_4/lstm_cell_5/strided_sliceô
(sequential_4/lstm_4/lstm_cell_5/MatMul_4MatMul)sequential_4/lstm_4/lstm_cell_5/mul_4:z:06sequential_4/lstm_4/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(sequential_4/lstm_4/lstm_cell_5/MatMul_4ì
#sequential_4/lstm_4/lstm_cell_5/addAddV20sequential_4/lstm_4/lstm_cell_5/BiasAdd:output:02sequential_4/lstm_4/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#sequential_4/lstm_4/lstm_cell_5/add
%sequential_4/lstm_4/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2'
%sequential_4/lstm_4/lstm_cell_5/Const
'sequential_4/lstm_4/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'sequential_4/lstm_4/lstm_cell_5/Const_1á
%sequential_4/lstm_4/lstm_cell_5/Mul_8Mul'sequential_4/lstm_4/lstm_cell_5/add:z:0.sequential_4/lstm_4/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/Mul_8ç
%sequential_4/lstm_4/lstm_cell_5/Add_1AddV2)sequential_4/lstm_4/lstm_cell_5/Mul_8:z:00sequential_4/lstm_4/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/Add_1·
7sequential_4/lstm_4/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_4/lstm_4/lstm_cell_5/clip_by_value/Minimum/y
5sequential_4/lstm_4/lstm_cell_5/clip_by_value/MinimumMinimum)sequential_4/lstm_4/lstm_cell_5/Add_1:z:0@sequential_4/lstm_4/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú27
5sequential_4/lstm_4/lstm_cell_5/clip_by_value/Minimum§
/sequential_4/lstm_4/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/sequential_4/lstm_4/lstm_cell_5/clip_by_value/y
-sequential_4/lstm_4/lstm_cell_5/clip_by_valueMaximum9sequential_4/lstm_4/lstm_cell_5/clip_by_value/Minimum:z:08sequential_4/lstm_4/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2/
-sequential_4/lstm_4/lstm_cell_5/clip_by_valueÞ
0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_1ReadVariableOp7sequential_4_lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype022
0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_1¿
5sequential_4/lstm_4/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   27
5sequential_4/lstm_4/lstm_cell_5/strided_slice_1/stackÃ
7sequential_4/lstm_4/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  29
7sequential_4/lstm_4/lstm_cell_5/strided_slice_1/stack_1Ã
7sequential_4/lstm_4/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_4/lstm_4/lstm_cell_5/strided_slice_1/stack_2Ê
/sequential_4/lstm_4/lstm_cell_5/strided_slice_1StridedSlice8sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_1:value:0>sequential_4/lstm_4/lstm_cell_5/strided_slice_1/stack:output:0@sequential_4/lstm_4/lstm_cell_5/strided_slice_1/stack_1:output:0@sequential_4/lstm_4/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask21
/sequential_4/lstm_4/lstm_cell_5/strided_slice_1ö
(sequential_4/lstm_4/lstm_cell_5/MatMul_5MatMul)sequential_4/lstm_4/lstm_cell_5/mul_5:z:08sequential_4/lstm_4/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(sequential_4/lstm_4/lstm_cell_5/MatMul_5ò
%sequential_4/lstm_4/lstm_cell_5/add_2AddV22sequential_4/lstm_4/lstm_cell_5/BiasAdd_1:output:02sequential_4/lstm_4/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/add_2
'sequential_4/lstm_4/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2)
'sequential_4/lstm_4/lstm_cell_5/Const_2
'sequential_4/lstm_4/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'sequential_4/lstm_4/lstm_cell_5/Const_3å
%sequential_4/lstm_4/lstm_cell_5/Mul_9Mul)sequential_4/lstm_4/lstm_cell_5/add_2:z:00sequential_4/lstm_4/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/Mul_9ç
%sequential_4/lstm_4/lstm_cell_5/Add_3AddV2)sequential_4/lstm_4/lstm_cell_5/Mul_9:z:00sequential_4/lstm_4/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/Add_3»
9sequential_4/lstm_4/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2;
9sequential_4/lstm_4/lstm_cell_5/clip_by_value_1/Minimum/y
7sequential_4/lstm_4/lstm_cell_5/clip_by_value_1/MinimumMinimum)sequential_4/lstm_4/lstm_cell_5/Add_3:z:0Bsequential_4/lstm_4/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú29
7sequential_4/lstm_4/lstm_cell_5/clip_by_value_1/Minimum«
1sequential_4/lstm_4/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1sequential_4/lstm_4/lstm_cell_5/clip_by_value_1/y
/sequential_4/lstm_4/lstm_cell_5/clip_by_value_1Maximum;sequential_4/lstm_4/lstm_cell_5/clip_by_value_1/Minimum:z:0:sequential_4/lstm_4/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú21
/sequential_4/lstm_4/lstm_cell_5/clip_by_value_1å
&sequential_4/lstm_4/lstm_cell_5/mul_10Mul3sequential_4/lstm_4/lstm_cell_5/clip_by_value_1:z:0$sequential_4/lstm_4/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&sequential_4/lstm_4/lstm_cell_5/mul_10Þ
0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_2ReadVariableOp7sequential_4_lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype022
0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_2¿
5sequential_4/lstm_4/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  27
5sequential_4/lstm_4/lstm_cell_5/strided_slice_2/stackÃ
7sequential_4/lstm_4/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  29
7sequential_4/lstm_4/lstm_cell_5/strided_slice_2/stack_1Ã
7sequential_4/lstm_4/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_4/lstm_4/lstm_cell_5/strided_slice_2/stack_2Ê
/sequential_4/lstm_4/lstm_cell_5/strided_slice_2StridedSlice8sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_2:value:0>sequential_4/lstm_4/lstm_cell_5/strided_slice_2/stack:output:0@sequential_4/lstm_4/lstm_cell_5/strided_slice_2/stack_1:output:0@sequential_4/lstm_4/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask21
/sequential_4/lstm_4/lstm_cell_5/strided_slice_2ö
(sequential_4/lstm_4/lstm_cell_5/MatMul_6MatMul)sequential_4/lstm_4/lstm_cell_5/mul_6:z:08sequential_4/lstm_4/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(sequential_4/lstm_4/lstm_cell_5/MatMul_6ò
%sequential_4/lstm_4/lstm_cell_5/add_4AddV22sequential_4/lstm_4/lstm_cell_5/BiasAdd_2:output:02sequential_4/lstm_4/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/add_4²
$sequential_4/lstm_4/lstm_cell_5/TanhTanh)sequential_4/lstm_4/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2&
$sequential_4/lstm_4/lstm_cell_5/Tanhç
&sequential_4/lstm_4/lstm_cell_5/mul_11Mul1sequential_4/lstm_4/lstm_cell_5/clip_by_value:z:0(sequential_4/lstm_4/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&sequential_4/lstm_4/lstm_cell_5/mul_11â
%sequential_4/lstm_4/lstm_cell_5/add_5AddV2*sequential_4/lstm_4/lstm_cell_5/mul_10:z:0*sequential_4/lstm_4/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/add_5Þ
0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_3ReadVariableOp7sequential_4_lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype022
0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_3¿
5sequential_4/lstm_4/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  27
5sequential_4/lstm_4/lstm_cell_5/strided_slice_3/stackÃ
7sequential_4/lstm_4/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_4/lstm_4/lstm_cell_5/strided_slice_3/stack_1Ã
7sequential_4/lstm_4/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_4/lstm_4/lstm_cell_5/strided_slice_3/stack_2Ê
/sequential_4/lstm_4/lstm_cell_5/strided_slice_3StridedSlice8sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_3:value:0>sequential_4/lstm_4/lstm_cell_5/strided_slice_3/stack:output:0@sequential_4/lstm_4/lstm_cell_5/strided_slice_3/stack_1:output:0@sequential_4/lstm_4/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask21
/sequential_4/lstm_4/lstm_cell_5/strided_slice_3ö
(sequential_4/lstm_4/lstm_cell_5/MatMul_7MatMul)sequential_4/lstm_4/lstm_cell_5/mul_7:z:08sequential_4/lstm_4/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(sequential_4/lstm_4/lstm_cell_5/MatMul_7ò
%sequential_4/lstm_4/lstm_cell_5/add_6AddV22sequential_4/lstm_4/lstm_cell_5/BiasAdd_3:output:02sequential_4/lstm_4/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/add_6
'sequential_4/lstm_4/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2)
'sequential_4/lstm_4/lstm_cell_5/Const_4
'sequential_4/lstm_4/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'sequential_4/lstm_4/lstm_cell_5/Const_5ç
&sequential_4/lstm_4/lstm_cell_5/Mul_12Mul)sequential_4/lstm_4/lstm_cell_5/add_6:z:00sequential_4/lstm_4/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&sequential_4/lstm_4/lstm_cell_5/Mul_12è
%sequential_4/lstm_4/lstm_cell_5/Add_7AddV2*sequential_4/lstm_4/lstm_cell_5/Mul_12:z:00sequential_4/lstm_4/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_4/lstm_4/lstm_cell_5/Add_7»
9sequential_4/lstm_4/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2;
9sequential_4/lstm_4/lstm_cell_5/clip_by_value_2/Minimum/y
7sequential_4/lstm_4/lstm_cell_5/clip_by_value_2/MinimumMinimum)sequential_4/lstm_4/lstm_cell_5/Add_7:z:0Bsequential_4/lstm_4/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú29
7sequential_4/lstm_4/lstm_cell_5/clip_by_value_2/Minimum«
1sequential_4/lstm_4/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1sequential_4/lstm_4/lstm_cell_5/clip_by_value_2/y
/sequential_4/lstm_4/lstm_cell_5/clip_by_value_2Maximum;sequential_4/lstm_4/lstm_cell_5/clip_by_value_2/Minimum:z:0:sequential_4/lstm_4/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú21
/sequential_4/lstm_4/lstm_cell_5/clip_by_value_2¶
&sequential_4/lstm_4/lstm_cell_5/Tanh_1Tanh)sequential_4/lstm_4/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&sequential_4/lstm_4/lstm_cell_5/Tanh_1ë
&sequential_4/lstm_4/lstm_cell_5/mul_13Mul3sequential_4/lstm_4/lstm_cell_5/clip_by_value_2:z:0*sequential_4/lstm_4/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&sequential_4/lstm_4/lstm_cell_5/mul_13·
1sequential_4/lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   23
1sequential_4/lstm_4/TensorArrayV2_1/element_shape
#sequential_4/lstm_4/TensorArrayV2_1TensorListReserve:sequential_4/lstm_4/TensorArrayV2_1/element_shape:output:0,sequential_4/lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_4/lstm_4/TensorArrayV2_1v
sequential_4/lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_4/lstm_4/time§
,sequential_4/lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,sequential_4/lstm_4/while/maximum_iterations
&sequential_4/lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_4/lstm_4/while/loop_counter¬
sequential_4/lstm_4/whileWhile/sequential_4/lstm_4/while/loop_counter:output:05sequential_4/lstm_4/while/maximum_iterations:output:0!sequential_4/lstm_4/time:output:0,sequential_4/lstm_4/TensorArrayV2_1:handle:0"sequential_4/lstm_4/zeros:output:0$sequential_4/lstm_4/zeros_1:output:0,sequential_4/lstm_4/strided_slice_1:output:0Ksequential_4/lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_4_lstm_4_lstm_cell_5_split_readvariableop_resource?sequential_4_lstm_4_lstm_cell_5_split_1_readvariableop_resource7sequential_4_lstm_4_lstm_cell_5_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *0
body(R&
$sequential_4_lstm_4_while_body_39623*0
cond(R&
$sequential_4_lstm_4_while_cond_39622*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *
parallel_iterations 2
sequential_4/lstm_4/whileÝ
Dsequential_4/lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   2F
Dsequential_4/lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeº
6sequential_4/lstm_4/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_4/lstm_4/while:output:3Msequential_4/lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿú*
element_dtype028
6sequential_4/lstm_4/TensorArrayV2Stack/TensorListStack©
)sequential_4/lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2+
)sequential_4/lstm_4/strided_slice_3/stack¤
+sequential_4/lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_4/lstm_4/strided_slice_3/stack_1¤
+sequential_4/lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_4/strided_slice_3/stack_2
#sequential_4/lstm_4/strided_slice_3StridedSlice?sequential_4/lstm_4/TensorArrayV2Stack/TensorListStack:tensor:02sequential_4/lstm_4/strided_slice_3/stack:output:04sequential_4/lstm_4/strided_slice_3/stack_1:output:04sequential_4/lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
shrink_axis_mask2%
#sequential_4/lstm_4/strided_slice_3¡
$sequential_4/lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_4/lstm_4/transpose_1/perm÷
sequential_4/lstm_4/transpose_1	Transpose?sequential_4/lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_4/lstm_4/transpose_1/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ú2!
sequential_4/lstm_4/transpose_1Í
*sequential_4/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_4_matmul_readvariableop_resource*
_output_shapes
:	ú*
dtype02,
*sequential_4/dense_4/MatMul/ReadVariableOpØ
sequential_4/dense_4/MatMulMatMul,sequential_4/lstm_4/strided_slice_3:output:02sequential_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_4/MatMulË
+sequential_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_4/dense_4/BiasAdd/ReadVariableOpÕ
sequential_4/dense_4/BiasAddBiasAdd%sequential_4/dense_4/MatMul:product:03sequential_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_4/BiasAdd 
sequential_4/dense_4/SoftmaxSoftmax%sequential_4/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_4/Softmax
IdentityIdentity&sequential_4/dense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity«
NoOpNoOp,^sequential_4/dense_4/BiasAdd/ReadVariableOp+^sequential_4/dense_4/MatMul/ReadVariableOp*^sequential_4/embedding_4/embedding_lookup/^sequential_4/lstm_4/lstm_cell_5/ReadVariableOp1^sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_11^sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_21^sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_35^sequential_4/lstm_4/lstm_cell_5/split/ReadVariableOp7^sequential_4/lstm_4/lstm_cell_5/split_1/ReadVariableOp^sequential_4/lstm_4/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 2Z
+sequential_4/dense_4/BiasAdd/ReadVariableOp+sequential_4/dense_4/BiasAdd/ReadVariableOp2X
*sequential_4/dense_4/MatMul/ReadVariableOp*sequential_4/dense_4/MatMul/ReadVariableOp2V
)sequential_4/embedding_4/embedding_lookup)sequential_4/embedding_4/embedding_lookup2`
.sequential_4/lstm_4/lstm_cell_5/ReadVariableOp.sequential_4/lstm_4/lstm_cell_5/ReadVariableOp2d
0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_10sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_12d
0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_20sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_22d
0sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_30sequential_4/lstm_4/lstm_cell_5/ReadVariableOp_32l
4sequential_4/lstm_4/lstm_cell_5/split/ReadVariableOp4sequential_4/lstm_4/lstm_cell_5/split/ReadVariableOp2p
6sequential_4/lstm_4/lstm_cell_5/split_1/ReadVariableOp6sequential_4/lstm_4/lstm_cell_5/split_1/ReadVariableOp26
sequential_4/lstm_4/whilesequential_4/lstm_4/while:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+
_user_specified_nameembedding_4_input
ª
µ
&__inference_lstm_4_layer_call_fn_43933

inputs
unknown:
 è
	unknown_0:	è
	unknown_1:
úè
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_4_layer_call_and_return_conditional_losses_414462
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Ô
¾
while_cond_40011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_40011___redundant_placeholder03
/while_while_cond_40011___redundant_placeholder13
/while_while_cond_40011___redundant_placeholder23
/while_while_cond_40011___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: ::::: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
:
Â
ö
+__inference_lstm_cell_5_layer_call_fn_44240

inputs
states_0
states_1
unknown:
 è
	unknown_0:	è
	unknown_1:
úè
identity

identity_1

identity_2¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_399982
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
"
_user_specified_name
states/1
ð

'__inference_dense_4_layer_call_fn_43953

inputs
unknown:	ú
	unknown_0:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_409892
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿú: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
§

Ê
lstm_4_while_cond_42146*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3,
(lstm_4_while_less_lstm_4_strided_slice_1A
=lstm_4_while_lstm_4_while_cond_42146___redundant_placeholder0A
=lstm_4_while_lstm_4_while_cond_42146___redundant_placeholder1A
=lstm_4_while_lstm_4_while_cond_42146___redundant_placeholder2A
=lstm_4_while_lstm_4_while_cond_42146___redundant_placeholder3
lstm_4_while_identity

lstm_4/while/LessLesslstm_4_while_placeholder(lstm_4_while_less_lstm_4_strided_slice_1*
T0*
_output_shapes
: 2
lstm_4/while/Lessr
lstm_4/while/IdentityIdentitylstm_4/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_4/while/Identity"7
lstm_4_while_identitylstm_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: ::::: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
:
ô

¤
F__inference_embedding_4_layer_call_and_return_conditional_losses_42416

inputs*
embedding_lookup_42410:
^ 
identity¢embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Castý
embedding_lookupResourceGatherembedding_lookup_42410Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/42410*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype02
embedding_lookupî
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/42410*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
embedding_lookup/Identity¢
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
§

Ê
lstm_4_while_cond_41767*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3,
(lstm_4_while_less_lstm_4_strided_slice_1A
=lstm_4_while_lstm_4_while_cond_41767___redundant_placeholder0A
=lstm_4_while_lstm_4_while_cond_41767___redundant_placeholder1A
=lstm_4_while_lstm_4_while_cond_41767___redundant_placeholder2A
=lstm_4_while_lstm_4_while_cond_41767___redundant_placeholder3
lstm_4_while_identity

lstm_4/while/LessLesslstm_4_while_placeholder(lstm_4_while_less_lstm_4_strided_slice_1*
T0*
_output_shapes
: 2
lstm_4/while/Lessr
lstm_4/while/IdentityIdentitylstm_4/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_4/while/Identity"7
lstm_4_while_identitylstm_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: ::::: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
:
Î	

,__inference_sequential_4_layer_call_fn_41011
embedding_4_input
unknown:
^ 
	unknown_0:
 è
	unknown_1:	è
	unknown_2:
úè
	unknown_3:	ú
	unknown_4:
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_409962
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+
_user_specified_nameembedding_4_input
¹
Þ
A__inference_lstm_4_layer_call_and_return_conditional_losses_43889

inputs=
)lstm_cell_5_split_readvariableop_resource:
 è:
+lstm_cell_5_split_1_readvariableop_resource:	è7
#lstm_cell_5_readvariableop_resource:
úè
identity¢lstm_cell_5/ReadVariableOp¢lstm_cell_5/ReadVariableOp_1¢lstm_cell_5/ReadVariableOp_2¢lstm_cell_5/ReadVariableOp_3¢ lstm_cell_5/split/ReadVariableOp¢"lstm_cell_5/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros/packed/1
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
zerosg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros_1/packed/1
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿ 2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/Constµ
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/ones_like{
lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout/Const°
lstm_cell_5/dropout/MulMullstm_cell_5/ones_like:output:0"lstm_cell_5/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout/Mul
lstm_cell_5/dropout/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout/Shapeø
0lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_5/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¶Ë¢22
0lstm_cell_5/dropout/random_uniform/RandomUniform
"lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2$
"lstm_cell_5/dropout/GreaterEqual/yï
 lstm_cell_5/dropout/GreaterEqualGreaterEqual9lstm_cell_5/dropout/random_uniform/RandomUniform:output:0+lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_cell_5/dropout/GreaterEqual¤
lstm_cell_5/dropout/CastCast$lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout/Cast«
lstm_cell_5/dropout/Mul_1Mullstm_cell_5/dropout/Mul:z:0lstm_cell_5/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout/Mul_1
lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_1/Const¶
lstm_cell_5/dropout_1/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_1/Mul
lstm_cell_5/dropout_1/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_1/Shapeþ
2lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Î÷24
2lstm_cell_5/dropout_1/random_uniform/RandomUniform
$lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_1/GreaterEqual/y÷
"lstm_cell_5/dropout_1/GreaterEqualGreaterEqual;lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_5/dropout_1/GreaterEqualª
lstm_cell_5/dropout_1/CastCast&lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_1/Cast³
lstm_cell_5/dropout_1/Mul_1Mullstm_cell_5/dropout_1/Mul:z:0lstm_cell_5/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_1/Mul_1
lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_2/Const¶
lstm_cell_5/dropout_2/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_2/Mul
lstm_cell_5/dropout_2/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_2/Shapeþ
2lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2³òú24
2lstm_cell_5/dropout_2/random_uniform/RandomUniform
$lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_2/GreaterEqual/y÷
"lstm_cell_5/dropout_2/GreaterEqualGreaterEqual;lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_5/dropout_2/GreaterEqualª
lstm_cell_5/dropout_2/CastCast&lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_2/Cast³
lstm_cell_5/dropout_2/Mul_1Mullstm_cell_5/dropout_2/Mul:z:0lstm_cell_5/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_2/Mul_1
lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_3/Const¶
lstm_cell_5/dropout_3/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_3/Mul
lstm_cell_5/dropout_3/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_3/Shapeý
2lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2øµ24
2lstm_cell_5/dropout_3/random_uniform/RandomUniform
$lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_3/GreaterEqual/y÷
"lstm_cell_5/dropout_3/GreaterEqualGreaterEqual;lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_5/dropout_3/GreaterEqualª
lstm_cell_5/dropout_3/CastCast&lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_3/Cast³
lstm_cell_5/dropout_3/Mul_1Mullstm_cell_5/dropout_3/Mul:z:0lstm_cell_5/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_3/Mul_1|
lstm_cell_5/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like_1/Shape
lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like_1/Const½
lstm_cell_5/ones_like_1Fill&lstm_cell_5/ones_like_1/Shape:output:0&lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/ones_like_1
lstm_cell_5/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_4/Const¸
lstm_cell_5/dropout_4/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_4/Mul
lstm_cell_5/dropout_4/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_4/Shapeþ
2lstm_cell_5/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2ûº24
2lstm_cell_5/dropout_4/random_uniform/RandomUniform
$lstm_cell_5/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_4/GreaterEqual/y÷
"lstm_cell_5/dropout_4/GreaterEqualGreaterEqual;lstm_cell_5/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_4/GreaterEqualª
lstm_cell_5/dropout_4/CastCast&lstm_cell_5/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_4/Cast³
lstm_cell_5/dropout_4/Mul_1Mullstm_cell_5/dropout_4/Mul:z:0lstm_cell_5/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_4/Mul_1
lstm_cell_5/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_5/Const¸
lstm_cell_5/dropout_5/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_5/Mul
lstm_cell_5/dropout_5/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_5/Shapeý
2lstm_cell_5/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2ñe24
2lstm_cell_5/dropout_5/random_uniform/RandomUniform
$lstm_cell_5/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_5/GreaterEqual/y÷
"lstm_cell_5/dropout_5/GreaterEqualGreaterEqual;lstm_cell_5/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_5/GreaterEqualª
lstm_cell_5/dropout_5/CastCast&lstm_cell_5/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_5/Cast³
lstm_cell_5/dropout_5/Mul_1Mullstm_cell_5/dropout_5/Mul:z:0lstm_cell_5/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_5/Mul_1
lstm_cell_5/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_6/Const¸
lstm_cell_5/dropout_6/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_6/Mul
lstm_cell_5/dropout_6/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_6/Shapeý
2lstm_cell_5/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2¡ÎY24
2lstm_cell_5/dropout_6/random_uniform/RandomUniform
$lstm_cell_5/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_6/GreaterEqual/y÷
"lstm_cell_5/dropout_6/GreaterEqualGreaterEqual;lstm_cell_5/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_6/GreaterEqualª
lstm_cell_5/dropout_6/CastCast&lstm_cell_5/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_6/Cast³
lstm_cell_5/dropout_6/Mul_1Mullstm_cell_5/dropout_6/Mul:z:0lstm_cell_5/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_6/Mul_1
lstm_cell_5/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_7/Const¸
lstm_cell_5/dropout_7/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_7/Mul
lstm_cell_5/dropout_7/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_7/Shapeþ
2lstm_cell_5/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2Àþ24
2lstm_cell_5/dropout_7/random_uniform/RandomUniform
$lstm_cell_5/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_7/GreaterEqual/y÷
"lstm_cell_5/dropout_7/GreaterEqualGreaterEqual;lstm_cell_5/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_7/GreaterEqualª
lstm_cell_5/dropout_7/CastCast&lstm_cell_5/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_7/Cast³
lstm_cell_5/dropout_7/Mul_1Mullstm_cell_5/dropout_7/Mul:z:0lstm_cell_5/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_7/Mul_1
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul
lstm_cell_5/mul_1Mulstrided_slice_2:output:0lstm_cell_5/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_1
lstm_cell_5/mul_2Mulstrided_slice_2:output:0lstm_cell_5/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_2
lstm_cell_5/mul_3Mulstrided_slice_2:output:0lstm_cell_5/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_3|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim°
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource* 
_output_shapes
:
 è*
dtype02"
 lstm_cell_5/split/ReadVariableOpß
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
lstm_cell_5/split
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul
lstm_cell_5/MatMul_1MatMullstm_cell_5/mul_1:z:0lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_1
lstm_cell_5/MatMul_2MatMullstm_cell_5/mul_2:z:0lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_2
lstm_cell_5/MatMul_3MatMullstm_cell_5/mul_3:z:0lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_3
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim±
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:è*
dtype02$
"lstm_cell_5/split_1/ReadVariableOpÓ
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
lstm_cell_5/split_1¤
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAddª
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_1ª
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_2ª
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_3
lstm_cell_5/mul_4Mulzeros:output:0lstm_cell_5/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_4
lstm_cell_5/mul_5Mulzeros:output:0lstm_cell_5/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_5
lstm_cell_5/mul_6Mulzeros:output:0lstm_cell_5/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_6
lstm_cell_5/mul_7Mulzeros:output:0lstm_cell_5/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_7
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice/stack_1
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2Æ
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice¤
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul_4:z:0"lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_4
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/addk
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Consto
lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_1
lstm_cell_5/Mul_8Mullstm_cell_5/add:z:0lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_8
lstm_cell_5/Add_1AddV2lstm_cell_5/Mul_8:z:0lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_1
#lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_5/clip_by_value/Minimum/yÉ
!lstm_cell_5/clip_by_value/MinimumMinimumlstm_cell_5/Add_1:z:0,lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_cell_5/clip_by_value/Minimum
lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value/yÁ
lstm_cell_5/clip_by_valueMaximum%lstm_cell_5/clip_by_value/Minimum:z:0$lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value¢
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_1
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice_1/stack
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2%
#lstm_cell_5/strided_slice_1/stack_1
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2Ò
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1¦
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_5:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_5¢
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_2o
lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_2o
lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_3
lstm_cell_5/Mul_9Mullstm_cell_5/add_2:z:0lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_9
lstm_cell_5/Add_3AddV2lstm_cell_5/Mul_9:z:0lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_3
%lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_1/Minimum/yÏ
#lstm_cell_5/clip_by_value_1/MinimumMinimumlstm_cell_5/Add_3:z:0.lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_1/Minimum
lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_1/yÉ
lstm_cell_5/clip_by_value_1Maximum'lstm_cell_5/clip_by_value_1/Minimum:z:0&lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_1
lstm_cell_5/mul_10Mullstm_cell_5/clip_by_value_1:z:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_10¢
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_2
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2#
!lstm_cell_5/strided_slice_2/stack
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2%
#lstm_cell_5/strided_slice_2/stack_1
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2Ò
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2¦
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_6:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_6¢
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_4v
lstm_cell_5/TanhTanhlstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh
lstm_cell_5/mul_11Mullstm_cell_5/clip_by_value:z:0lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_11
lstm_cell_5/add_5AddV2lstm_cell_5/mul_10:z:0lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_5¢
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_3
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2#
!lstm_cell_5/strided_slice_3/stack
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2Ò
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3¦
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_7:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_7¢
lstm_cell_5/add_6AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_6o
lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_4o
lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_5
lstm_cell_5/Mul_12Mullstm_cell_5/add_6:z:0lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_12
lstm_cell_5/Add_7AddV2lstm_cell_5/Mul_12:z:0lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_7
%lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_2/Minimum/yÏ
#lstm_cell_5/clip_by_value_2/MinimumMinimumlstm_cell_5/Add_7:z:0.lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_2/Minimum
lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_2/yÉ
lstm_cell_5/clip_by_value_2Maximum'lstm_cell_5/clip_by_value_2/Minimum:z:0&lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_2z
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh_1
lstm_cell_5/mul_13Mullstm_cell_5/clip_by_value_2:z:0lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_13
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_43671*
condR
while_cond_43670*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   22
0TensorArrayV2Stack/TensorListStack/element_shapeê
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿú*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm§
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ú2
transpose_1t
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity
NoOpNoOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ  : : : 28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¤¯
Þ
A__inference_lstm_4_layer_call_and_return_conditional_losses_43477

inputs=
)lstm_cell_5_split_readvariableop_resource:
 è:
+lstm_cell_5_split_1_readvariableop_resource:	è7
#lstm_cell_5_readvariableop_resource:
úè
identity¢lstm_cell_5/ReadVariableOp¢lstm_cell_5/ReadVariableOp_1¢lstm_cell_5/ReadVariableOp_2¢lstm_cell_5/ReadVariableOp_3¢ lstm_cell_5/split/ReadVariableOp¢"lstm_cell_5/split_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros/packed/1
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
zerosg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros_1/packed/1
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿ 2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/Constµ
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/ones_like|
lstm_cell_5/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like_1/Shape
lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like_1/Const½
lstm_cell_5/ones_like_1Fill&lstm_cell_5/ones_like_1/Shape:output:0&lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/ones_like_1
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul
lstm_cell_5/mul_1Mulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_1
lstm_cell_5/mul_2Mulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_2
lstm_cell_5/mul_3Mulstrided_slice_2:output:0lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_3|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim°
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource* 
_output_shapes
:
 è*
dtype02"
 lstm_cell_5/split/ReadVariableOpß
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
lstm_cell_5/split
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul
lstm_cell_5/MatMul_1MatMullstm_cell_5/mul_1:z:0lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_1
lstm_cell_5/MatMul_2MatMullstm_cell_5/mul_2:z:0lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_2
lstm_cell_5/MatMul_3MatMullstm_cell_5/mul_3:z:0lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_3
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim±
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:è*
dtype02$
"lstm_cell_5/split_1/ReadVariableOpÓ
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
lstm_cell_5/split_1¤
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAddª
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_1ª
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_2ª
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_3
lstm_cell_5/mul_4Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_4
lstm_cell_5/mul_5Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_5
lstm_cell_5/mul_6Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_6
lstm_cell_5/mul_7Mulzeros:output:0 lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_7
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice/stack_1
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2Æ
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice¤
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul_4:z:0"lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_4
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/addk
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Consto
lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_1
lstm_cell_5/Mul_8Mullstm_cell_5/add:z:0lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_8
lstm_cell_5/Add_1AddV2lstm_cell_5/Mul_8:z:0lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_1
#lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_5/clip_by_value/Minimum/yÉ
!lstm_cell_5/clip_by_value/MinimumMinimumlstm_cell_5/Add_1:z:0,lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_cell_5/clip_by_value/Minimum
lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value/yÁ
lstm_cell_5/clip_by_valueMaximum%lstm_cell_5/clip_by_value/Minimum:z:0$lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value¢
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_1
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice_1/stack
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2%
#lstm_cell_5/strided_slice_1/stack_1
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2Ò
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1¦
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_5:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_5¢
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_2o
lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_2o
lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_3
lstm_cell_5/Mul_9Mullstm_cell_5/add_2:z:0lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_9
lstm_cell_5/Add_3AddV2lstm_cell_5/Mul_9:z:0lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_3
%lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_1/Minimum/yÏ
#lstm_cell_5/clip_by_value_1/MinimumMinimumlstm_cell_5/Add_3:z:0.lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_1/Minimum
lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_1/yÉ
lstm_cell_5/clip_by_value_1Maximum'lstm_cell_5/clip_by_value_1/Minimum:z:0&lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_1
lstm_cell_5/mul_10Mullstm_cell_5/clip_by_value_1:z:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_10¢
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_2
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2#
!lstm_cell_5/strided_slice_2/stack
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2%
#lstm_cell_5/strided_slice_2/stack_1
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2Ò
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2¦
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_6:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_6¢
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_4v
lstm_cell_5/TanhTanhlstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh
lstm_cell_5/mul_11Mullstm_cell_5/clip_by_value:z:0lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_11
lstm_cell_5/add_5AddV2lstm_cell_5/mul_10:z:0lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_5¢
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_3
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2#
!lstm_cell_5/strided_slice_3/stack
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2Ò
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3¦
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_7:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_7¢
lstm_cell_5/add_6AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_6o
lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_4o
lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_5
lstm_cell_5/Mul_12Mullstm_cell_5/add_6:z:0lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_12
lstm_cell_5/Add_7AddV2lstm_cell_5/Mul_12:z:0lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_7
%lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_2/Minimum/yÏ
#lstm_cell_5/clip_by_value_2/MinimumMinimumlstm_cell_5/Add_7:z:0.lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_2/Minimum
lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_2/yÉ
lstm_cell_5/clip_by_value_2Maximum'lstm_cell_5/clip_by_value_2/Minimum:z:0&lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_2z
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh_1
lstm_cell_5/mul_13Mullstm_cell_5/clip_by_value_2:z:0lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_13
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_43323*
condR
while_cond_43322*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   22
0TensorArrayV2Stack/TensorListStack/element_shapeê
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿú*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm§
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ú2
transpose_1t
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity
NoOpNoOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ  : : : 28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
­	

,__inference_sequential_4_layer_call_fn_42389

inputs
unknown:
^ 
	unknown_0:
 è
	unknown_1:	è
	unknown_2:
úè
	unknown_3:	ú
	unknown_4:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_409962
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ô
¾
while_cond_41227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_41227___redundant_placeholder03
/while_while_cond_41227___redundant_placeholder13
/while_while_cond_41227___redundant_placeholder23
/while_while_cond_41227___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: ::::: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
:
Þ

+__inference_embedding_4_layer_call_fn_42423

inputs
unknown:
^ 
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_4_layer_call_and_return_conditional_losses_406772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
±¥
	
while_body_42627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_5_split_readvariableop_resource_0:
 èB
3while_lstm_cell_5_split_1_readvariableop_resource_0:	è?
+while_lstm_cell_5_readvariableop_resource_0:
úè
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_5_split_readvariableop_resource:
 è@
1while_lstm_cell_5_split_1_readvariableop_resource:	è=
)while_lstm_cell_5_readvariableop_resource:
úè¢ while/lstm_cell_5/ReadVariableOp¢"while/lstm_cell_5/ReadVariableOp_1¢"while/lstm_cell_5/ReadVariableOp_2¢"while/lstm_cell_5/ReadVariableOp_3¢&while/lstm_cell_5/split/ReadVariableOp¢(while/lstm_cell_5/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstÍ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/ones_like
#while/lstm_cell_5/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_5/ones_like_1/Shape
#while/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_5/ones_like_1/ConstÕ
while/lstm_cell_5/ones_like_1Fill,while/lstm_cell_5/ones_like_1/Shape:output:0,while/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/ones_like_1À
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mulÄ
while/lstm_cell_5/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_1Ä
while/lstm_cell_5/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_2Ä
while/lstm_cell_5/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_3
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dimÄ
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0* 
_output_shapes
:
 è*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp÷
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
while/lstm_cell_5/split®
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0 while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul´
while/lstm_cell_5/MatMul_1MatMulwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_1´
while/lstm_cell_5/MatMul_2MatMulwhile/lstm_cell_5/mul_2:z:0 while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_2´
while/lstm_cell_5/MatMul_3MatMulwhile/lstm_cell_5/mul_3:z:0 while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_3
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dimÅ
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:è*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOpë
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
while/lstm_cell_5/split_1¼
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAddÂ
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_1Â
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_2Â
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_3©
while/lstm_cell_5/mul_4Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_4©
while/lstm_cell_5/mul_5Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_5©
while/lstm_cell_5/mul_6Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_6©
while/lstm_cell_5/mul_7Mulwhile_placeholder_2&while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_7²
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02"
 while/lstm_cell_5/ReadVariableOp
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack£
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice/stack_1£
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2ê
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice¼
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul_4:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_4´
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/addw
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const{
while/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_1©
while/lstm_cell_5/Mul_8Mulwhile/lstm_cell_5/add:z:0 while/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_8¯
while/lstm_cell_5/Add_1AddV2while/lstm_cell_5/Mul_8:z:0"while/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_1
)while/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_5/clip_by_value/Minimum/yá
'while/lstm_cell_5/clip_by_value/MinimumMinimumwhile/lstm_cell_5/Add_1:z:02while/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2)
'while/lstm_cell_5/clip_by_value/Minimum
!while/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_5/clip_by_value/yÙ
while/lstm_cell_5/clip_by_valueMaximum+while/lstm_cell_5/clip_by_value/Minimum:z:0*while/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/clip_by_value¶
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1£
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice_1/stack§
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2+
)while/lstm_cell_5/strided_slice_1/stack_1§
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2ö
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1¾
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_5:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_5º
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_2{
while/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_2{
while/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_3­
while/lstm_cell_5/Mul_9Mulwhile/lstm_cell_5/add_2:z:0"while/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_9¯
while/lstm_cell_5/Add_3AddV2while/lstm_cell_5/Mul_9:z:0"while/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_3
+while/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_1/Minimum/yç
)while/lstm_cell_5/clip_by_value_1/MinimumMinimumwhile/lstm_cell_5/Add_3:z:04while/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_1/Minimum
#while/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_1/yá
!while/lstm_cell_5/clip_by_value_1Maximum-while/lstm_cell_5/clip_by_value_1/Minimum:z:0,while/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_1ª
while/lstm_cell_5/mul_10Mul%while/lstm_cell_5/clip_by_value_1:z:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_10¶
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2£
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2)
'while/lstm_cell_5/strided_slice_2/stack§
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2+
)while/lstm_cell_5/strided_slice_2/stack_1§
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2ö
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2¾
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_6:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_6º
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_4
while/lstm_cell_5/TanhTanhwhile/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh¯
while/lstm_cell_5/mul_11Mul#while/lstm_cell_5/clip_by_value:z:0while/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_11ª
while/lstm_cell_5/add_5AddV2while/lstm_cell_5/mul_10:z:0while/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_5¶
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3£
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2)
'while/lstm_cell_5/strided_slice_3/stack§
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1§
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2ö
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3¾
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_7:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_7º
while/lstm_cell_5/add_6AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_6{
while/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_4{
while/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_5¯
while/lstm_cell_5/Mul_12Mulwhile/lstm_cell_5/add_6:z:0"while/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_12°
while/lstm_cell_5/Add_7AddV2while/lstm_cell_5/Mul_12:z:0"while/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_7
+while/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_2/Minimum/yç
)while/lstm_cell_5/clip_by_value_2/MinimumMinimumwhile/lstm_cell_5/Add_7:z:04while/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_2/Minimum
#while/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_2/yá
!while/lstm_cell_5/clip_by_value_2Maximum-while/lstm_cell_5/clip_by_value_2/Minimum:z:0,while/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_2
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh_1³
while/lstm_cell_5/mul_13Mul%while/lstm_cell_5/clip_by_value_2:z:0while/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_13à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_13:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_13:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_5:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_5À

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
: 
Ô
¾
while_cond_43322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_43322___redundant_placeholder03
/while_while_cond_43322___redundant_placeholder13
/while_while_cond_43322___redundant_placeholder23
/while_while_cond_43322___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: ::::: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
:
êæ
×
$sequential_4_lstm_4_while_body_39623D
@sequential_4_lstm_4_while_sequential_4_lstm_4_while_loop_counterJ
Fsequential_4_lstm_4_while_sequential_4_lstm_4_while_maximum_iterations)
%sequential_4_lstm_4_while_placeholder+
'sequential_4_lstm_4_while_placeholder_1+
'sequential_4_lstm_4_while_placeholder_2+
'sequential_4_lstm_4_while_placeholder_3C
?sequential_4_lstm_4_while_sequential_4_lstm_4_strided_slice_1_0
{sequential_4_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_4_tensorarrayunstack_tensorlistfromtensor_0Y
Esequential_4_lstm_4_while_lstm_cell_5_split_readvariableop_resource_0:
 èV
Gsequential_4_lstm_4_while_lstm_cell_5_split_1_readvariableop_resource_0:	èS
?sequential_4_lstm_4_while_lstm_cell_5_readvariableop_resource_0:
úè&
"sequential_4_lstm_4_while_identity(
$sequential_4_lstm_4_while_identity_1(
$sequential_4_lstm_4_while_identity_2(
$sequential_4_lstm_4_while_identity_3(
$sequential_4_lstm_4_while_identity_4(
$sequential_4_lstm_4_while_identity_5A
=sequential_4_lstm_4_while_sequential_4_lstm_4_strided_slice_1}
ysequential_4_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_4_tensorarrayunstack_tensorlistfromtensorW
Csequential_4_lstm_4_while_lstm_cell_5_split_readvariableop_resource:
 èT
Esequential_4_lstm_4_while_lstm_cell_5_split_1_readvariableop_resource:	èQ
=sequential_4_lstm_4_while_lstm_cell_5_readvariableop_resource:
úè¢4sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp¢6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_1¢6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_2¢6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_3¢:sequential_4/lstm_4/while/lstm_cell_5/split/ReadVariableOp¢<sequential_4/lstm_4/while/lstm_cell_5/split_1/ReadVariableOpë
Ksequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2M
Ksequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeÌ
=sequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_4_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_4_tensorarrayunstack_tensorlistfromtensor_0%sequential_4_lstm_4_while_placeholderTsequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02?
=sequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItemâ
5sequential_4/lstm_4/while/lstm_cell_5/ones_like/ShapeShapeDsequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:27
5sequential_4/lstm_4/while/lstm_cell_5/ones_like/Shape³
5sequential_4/lstm_4/while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_4/lstm_4/while/lstm_cell_5/ones_like/Const
/sequential_4/lstm_4/while/lstm_cell_5/ones_likeFill>sequential_4/lstm_4/while/lstm_cell_5/ones_like/Shape:output:0>sequential_4/lstm_4/while/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_4/lstm_4/while/lstm_cell_5/ones_likeÉ
7sequential_4/lstm_4/while/lstm_cell_5/ones_like_1/ShapeShape'sequential_4_lstm_4_while_placeholder_2*
T0*
_output_shapes
:29
7sequential_4/lstm_4/while/lstm_cell_5/ones_like_1/Shape·
7sequential_4/lstm_4/while/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_4/lstm_4/while/lstm_cell_5/ones_like_1/Const¥
1sequential_4/lstm_4/while/lstm_cell_5/ones_like_1Fill@sequential_4/lstm_4/while/lstm_cell_5/ones_like_1/Shape:output:0@sequential_4/lstm_4/while/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú23
1sequential_4/lstm_4/while/lstm_cell_5/ones_like_1
)sequential_4/lstm_4/while/lstm_cell_5/mulMulDsequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_4/lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_4/lstm_4/while/lstm_cell_5/mul
+sequential_4/lstm_4/while/lstm_cell_5/mul_1MulDsequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_4/lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_4/lstm_4/while/lstm_cell_5/mul_1
+sequential_4/lstm_4/while/lstm_cell_5/mul_2MulDsequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_4/lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_4/lstm_4/while/lstm_cell_5/mul_2
+sequential_4/lstm_4/while/lstm_cell_5/mul_3MulDsequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_4/lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_4/lstm_4/while/lstm_cell_5/mul_3°
5sequential_4/lstm_4/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_4/lstm_4/while/lstm_cell_5/split/split_dim
:sequential_4/lstm_4/while/lstm_cell_5/split/ReadVariableOpReadVariableOpEsequential_4_lstm_4_while_lstm_cell_5_split_readvariableop_resource_0* 
_output_shapes
:
 è*
dtype02<
:sequential_4/lstm_4/while/lstm_cell_5/split/ReadVariableOpÇ
+sequential_4/lstm_4/while/lstm_cell_5/splitSplit>sequential_4/lstm_4/while/lstm_cell_5/split/split_dim:output:0Bsequential_4/lstm_4/while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2-
+sequential_4/lstm_4/while/lstm_cell_5/splitþ
,sequential_4/lstm_4/while/lstm_cell_5/MatMulMatMul-sequential_4/lstm_4/while/lstm_cell_5/mul:z:04sequential_4/lstm_4/while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2.
,sequential_4/lstm_4/while/lstm_cell_5/MatMul
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_1MatMul/sequential_4/lstm_4/while/lstm_cell_5/mul_1:z:04sequential_4/lstm_4/while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú20
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_1
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_2MatMul/sequential_4/lstm_4/while/lstm_cell_5/mul_2:z:04sequential_4/lstm_4/while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú20
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_2
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_3MatMul/sequential_4/lstm_4/while/lstm_cell_5/mul_3:z:04sequential_4/lstm_4/while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú20
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_3´
7sequential_4/lstm_4/while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_4/lstm_4/while/lstm_cell_5/split_1/split_dim
<sequential_4/lstm_4/while/lstm_cell_5/split_1/ReadVariableOpReadVariableOpGsequential_4_lstm_4_while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:è*
dtype02>
<sequential_4/lstm_4/while/lstm_cell_5/split_1/ReadVariableOp»
-sequential_4/lstm_4/while/lstm_cell_5/split_1Split@sequential_4/lstm_4/while/lstm_cell_5/split_1/split_dim:output:0Dsequential_4/lstm_4/while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2/
-sequential_4/lstm_4/while/lstm_cell_5/split_1
-sequential_4/lstm_4/while/lstm_cell_5/BiasAddBiasAdd6sequential_4/lstm_4/while/lstm_cell_5/MatMul:product:06sequential_4/lstm_4/while/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2/
-sequential_4/lstm_4/while/lstm_cell_5/BiasAdd
/sequential_4/lstm_4/while/lstm_cell_5/BiasAdd_1BiasAdd8sequential_4/lstm_4/while/lstm_cell_5/MatMul_1:product:06sequential_4/lstm_4/while/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú21
/sequential_4/lstm_4/while/lstm_cell_5/BiasAdd_1
/sequential_4/lstm_4/while/lstm_cell_5/BiasAdd_2BiasAdd8sequential_4/lstm_4/while/lstm_cell_5/MatMul_2:product:06sequential_4/lstm_4/while/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú21
/sequential_4/lstm_4/while/lstm_cell_5/BiasAdd_2
/sequential_4/lstm_4/while/lstm_cell_5/BiasAdd_3BiasAdd8sequential_4/lstm_4/while/lstm_cell_5/MatMul_3:product:06sequential_4/lstm_4/while/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú21
/sequential_4/lstm_4/while/lstm_cell_5/BiasAdd_3ù
+sequential_4/lstm_4/while/lstm_cell_5/mul_4Mul'sequential_4_lstm_4_while_placeholder_2:sequential_4/lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/mul_4ù
+sequential_4/lstm_4/while/lstm_cell_5/mul_5Mul'sequential_4_lstm_4_while_placeholder_2:sequential_4/lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/mul_5ù
+sequential_4/lstm_4/while/lstm_cell_5/mul_6Mul'sequential_4_lstm_4_while_placeholder_2:sequential_4/lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/mul_6ù
+sequential_4/lstm_4/while/lstm_cell_5/mul_7Mul'sequential_4_lstm_4_while_placeholder_2:sequential_4/lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/mul_7î
4sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOpReadVariableOp?sequential_4_lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype026
4sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOpÇ
9sequential_4/lstm_4/while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_4/lstm_4/while/lstm_cell_5/strided_slice/stackË
;sequential_4/lstm_4/while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2=
;sequential_4/lstm_4/while/lstm_cell_5/strided_slice/stack_1Ë
;sequential_4/lstm_4/while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_4/lstm_4/while/lstm_cell_5/strided_slice/stack_2â
3sequential_4/lstm_4/while/lstm_cell_5/strided_sliceStridedSlice<sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp:value:0Bsequential_4/lstm_4/while/lstm_cell_5/strided_slice/stack:output:0Dsequential_4/lstm_4/while/lstm_cell_5/strided_slice/stack_1:output:0Dsequential_4/lstm_4/while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask25
3sequential_4/lstm_4/while/lstm_cell_5/strided_slice
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_4MatMul/sequential_4/lstm_4/while/lstm_cell_5/mul_4:z:0<sequential_4/lstm_4/while/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú20
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_4
)sequential_4/lstm_4/while/lstm_cell_5/addAddV26sequential_4/lstm_4/while/lstm_cell_5/BiasAdd:output:08sequential_4/lstm_4/while/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)sequential_4/lstm_4/while/lstm_cell_5/add
+sequential_4/lstm_4/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+sequential_4/lstm_4/while/lstm_cell_5/Const£
-sequential_4/lstm_4/while/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_4/lstm_4/while/lstm_cell_5/Const_1ù
+sequential_4/lstm_4/while/lstm_cell_5/Mul_8Mul-sequential_4/lstm_4/while/lstm_cell_5/add:z:04sequential_4/lstm_4/while/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/Mul_8ÿ
+sequential_4/lstm_4/while/lstm_cell_5/Add_1AddV2/sequential_4/lstm_4/while/lstm_cell_5/Mul_8:z:06sequential_4/lstm_4/while/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/Add_1Ã
=sequential_4/lstm_4/while/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2?
=sequential_4/lstm_4/while/lstm_cell_5/clip_by_value/Minimum/y±
;sequential_4/lstm_4/while/lstm_cell_5/clip_by_value/MinimumMinimum/sequential_4/lstm_4/while/lstm_cell_5/Add_1:z:0Fsequential_4/lstm_4/while/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2=
;sequential_4/lstm_4/while/lstm_cell_5/clip_by_value/Minimum³
5sequential_4/lstm_4/while/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_4/lstm_4/while/lstm_cell_5/clip_by_value/y©
3sequential_4/lstm_4/while/lstm_cell_5/clip_by_valueMaximum?sequential_4/lstm_4/while/lstm_cell_5/clip_by_value/Minimum:z:0>sequential_4/lstm_4/while/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú25
3sequential_4/lstm_4/while/lstm_cell_5/clip_by_valueò
6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_1ReadVariableOp?sequential_4_lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype028
6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_1Ë
;sequential_4/lstm_4/while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2=
;sequential_4/lstm_4/while/lstm_cell_5/strided_slice_1/stackÏ
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2?
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_1/stack_1Ï
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_1/stack_2î
5sequential_4/lstm_4/while/lstm_cell_5/strided_slice_1StridedSlice>sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_1:value:0Dsequential_4/lstm_4/while/lstm_cell_5/strided_slice_1/stack:output:0Fsequential_4/lstm_4/while/lstm_cell_5/strided_slice_1/stack_1:output:0Fsequential_4/lstm_4/while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask27
5sequential_4/lstm_4/while/lstm_cell_5/strided_slice_1
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_5MatMul/sequential_4/lstm_4/while/lstm_cell_5/mul_5:z:0>sequential_4/lstm_4/while/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú20
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_5
+sequential_4/lstm_4/while/lstm_cell_5/add_2AddV28sequential_4/lstm_4/while/lstm_cell_5/BiasAdd_1:output:08sequential_4/lstm_4/while/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/add_2£
-sequential_4/lstm_4/while/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2/
-sequential_4/lstm_4/while/lstm_cell_5/Const_2£
-sequential_4/lstm_4/while/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_4/lstm_4/while/lstm_cell_5/Const_3ý
+sequential_4/lstm_4/while/lstm_cell_5/Mul_9Mul/sequential_4/lstm_4/while/lstm_cell_5/add_2:z:06sequential_4/lstm_4/while/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/Mul_9ÿ
+sequential_4/lstm_4/while/lstm_cell_5/Add_3AddV2/sequential_4/lstm_4/while/lstm_cell_5/Mul_9:z:06sequential_4/lstm_4/while/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/Add_3Ç
?sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2A
?sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum/y·
=sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1/MinimumMinimum/sequential_4/lstm_4/while/lstm_cell_5/Add_3:z:0Hsequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2?
=sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum·
7sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1/y±
5sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1MaximumAsequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum:z:0@sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú27
5sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1ú
,sequential_4/lstm_4/while/lstm_cell_5/mul_10Mul9sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_1:z:0'sequential_4_lstm_4_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2.
,sequential_4/lstm_4/while/lstm_cell_5/mul_10ò
6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_2ReadVariableOp?sequential_4_lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype028
6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_2Ë
;sequential_4/lstm_4/while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2=
;sequential_4/lstm_4/while/lstm_cell_5/strided_slice_2/stackÏ
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2?
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_2/stack_1Ï
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_2/stack_2î
5sequential_4/lstm_4/while/lstm_cell_5/strided_slice_2StridedSlice>sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_2:value:0Dsequential_4/lstm_4/while/lstm_cell_5/strided_slice_2/stack:output:0Fsequential_4/lstm_4/while/lstm_cell_5/strided_slice_2/stack_1:output:0Fsequential_4/lstm_4/while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask27
5sequential_4/lstm_4/while/lstm_cell_5/strided_slice_2
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_6MatMul/sequential_4/lstm_4/while/lstm_cell_5/mul_6:z:0>sequential_4/lstm_4/while/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú20
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_6
+sequential_4/lstm_4/while/lstm_cell_5/add_4AddV28sequential_4/lstm_4/while/lstm_cell_5/BiasAdd_2:output:08sequential_4/lstm_4/while/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/add_4Ä
*sequential_4/lstm_4/while/lstm_cell_5/TanhTanh/sequential_4/lstm_4/while/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2,
*sequential_4/lstm_4/while/lstm_cell_5/Tanhÿ
,sequential_4/lstm_4/while/lstm_cell_5/mul_11Mul7sequential_4/lstm_4/while/lstm_cell_5/clip_by_value:z:0.sequential_4/lstm_4/while/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2.
,sequential_4/lstm_4/while/lstm_cell_5/mul_11ú
+sequential_4/lstm_4/while/lstm_cell_5/add_5AddV20sequential_4/lstm_4/while/lstm_cell_5/mul_10:z:00sequential_4/lstm_4/while/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/add_5ò
6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_3ReadVariableOp?sequential_4_lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype028
6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_3Ë
;sequential_4/lstm_4/while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2=
;sequential_4/lstm_4/while/lstm_cell_5/strided_slice_3/stackÏ
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_3/stack_1Ï
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_4/lstm_4/while/lstm_cell_5/strided_slice_3/stack_2î
5sequential_4/lstm_4/while/lstm_cell_5/strided_slice_3StridedSlice>sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_3:value:0Dsequential_4/lstm_4/while/lstm_cell_5/strided_slice_3/stack:output:0Fsequential_4/lstm_4/while/lstm_cell_5/strided_slice_3/stack_1:output:0Fsequential_4/lstm_4/while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask27
5sequential_4/lstm_4/while/lstm_cell_5/strided_slice_3
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_7MatMul/sequential_4/lstm_4/while/lstm_cell_5/mul_7:z:0>sequential_4/lstm_4/while/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú20
.sequential_4/lstm_4/while/lstm_cell_5/MatMul_7
+sequential_4/lstm_4/while/lstm_cell_5/add_6AddV28sequential_4/lstm_4/while/lstm_cell_5/BiasAdd_3:output:08sequential_4/lstm_4/while/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/add_6£
-sequential_4/lstm_4/while/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2/
-sequential_4/lstm_4/while/lstm_cell_5/Const_4£
-sequential_4/lstm_4/while/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2/
-sequential_4/lstm_4/while/lstm_cell_5/Const_5ÿ
,sequential_4/lstm_4/while/lstm_cell_5/Mul_12Mul/sequential_4/lstm_4/while/lstm_cell_5/add_6:z:06sequential_4/lstm_4/while/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2.
,sequential_4/lstm_4/while/lstm_cell_5/Mul_12
+sequential_4/lstm_4/while/lstm_cell_5/Add_7AddV20sequential_4/lstm_4/while/lstm_cell_5/Mul_12:z:06sequential_4/lstm_4/while/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_4/lstm_4/while/lstm_cell_5/Add_7Ç
?sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2A
?sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum/y·
=sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2/MinimumMinimum/sequential_4/lstm_4/while/lstm_cell_5/Add_7:z:0Hsequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2?
=sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum·
7sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2/y±
5sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2MaximumAsequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum:z:0@sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú27
5sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2È
,sequential_4/lstm_4/while/lstm_cell_5/Tanh_1Tanh/sequential_4/lstm_4/while/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2.
,sequential_4/lstm_4/while/lstm_cell_5/Tanh_1
,sequential_4/lstm_4/while/lstm_cell_5/mul_13Mul9sequential_4/lstm_4/while/lstm_cell_5/clip_by_value_2:z:00sequential_4/lstm_4/while/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2.
,sequential_4/lstm_4/while/lstm_cell_5/mul_13Ä
>sequential_4/lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_4_lstm_4_while_placeholder_1%sequential_4_lstm_4_while_placeholder0sequential_4/lstm_4/while/lstm_cell_5/mul_13:z:0*
_output_shapes
: *
element_dtype02@
>sequential_4/lstm_4/while/TensorArrayV2Write/TensorListSetItem
sequential_4/lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_4/lstm_4/while/add/y¹
sequential_4/lstm_4/while/addAddV2%sequential_4_lstm_4_while_placeholder(sequential_4/lstm_4/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_4/lstm_4/while/add
!sequential_4/lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_4/lstm_4/while/add_1/yÚ
sequential_4/lstm_4/while/add_1AddV2@sequential_4_lstm_4_while_sequential_4_lstm_4_while_loop_counter*sequential_4/lstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_4/lstm_4/while/add_1»
"sequential_4/lstm_4/while/IdentityIdentity#sequential_4/lstm_4/while/add_1:z:0^sequential_4/lstm_4/while/NoOp*
T0*
_output_shapes
: 2$
"sequential_4/lstm_4/while/Identityâ
$sequential_4/lstm_4/while/Identity_1IdentityFsequential_4_lstm_4_while_sequential_4_lstm_4_while_maximum_iterations^sequential_4/lstm_4/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_4/while/Identity_1½
$sequential_4/lstm_4/while/Identity_2Identity!sequential_4/lstm_4/while/add:z:0^sequential_4/lstm_4/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_4/while/Identity_2ê
$sequential_4/lstm_4/while/Identity_3IdentityNsequential_4/lstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_4/lstm_4/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_4/while/Identity_3Þ
$sequential_4/lstm_4/while/Identity_4Identity0sequential_4/lstm_4/while/lstm_cell_5/mul_13:z:0^sequential_4/lstm_4/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2&
$sequential_4/lstm_4/while/Identity_4Ý
$sequential_4/lstm_4/while/Identity_5Identity/sequential_4/lstm_4/while/lstm_cell_5/add_5:z:0^sequential_4/lstm_4/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2&
$sequential_4/lstm_4/while/Identity_5à
sequential_4/lstm_4/while/NoOpNoOp5^sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp7^sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_17^sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_27^sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_3;^sequential_4/lstm_4/while/lstm_cell_5/split/ReadVariableOp=^sequential_4/lstm_4/while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2 
sequential_4/lstm_4/while/NoOp"Q
"sequential_4_lstm_4_while_identity+sequential_4/lstm_4/while/Identity:output:0"U
$sequential_4_lstm_4_while_identity_1-sequential_4/lstm_4/while/Identity_1:output:0"U
$sequential_4_lstm_4_while_identity_2-sequential_4/lstm_4/while/Identity_2:output:0"U
$sequential_4_lstm_4_while_identity_3-sequential_4/lstm_4/while/Identity_3:output:0"U
$sequential_4_lstm_4_while_identity_4-sequential_4/lstm_4/while/Identity_4:output:0"U
$sequential_4_lstm_4_while_identity_5-sequential_4/lstm_4/while/Identity_5:output:0"
=sequential_4_lstm_4_while_lstm_cell_5_readvariableop_resource?sequential_4_lstm_4_while_lstm_cell_5_readvariableop_resource_0"
Esequential_4_lstm_4_while_lstm_cell_5_split_1_readvariableop_resourceGsequential_4_lstm_4_while_lstm_cell_5_split_1_readvariableop_resource_0"
Csequential_4_lstm_4_while_lstm_cell_5_split_readvariableop_resourceEsequential_4_lstm_4_while_lstm_cell_5_split_readvariableop_resource_0"
=sequential_4_lstm_4_while_sequential_4_lstm_4_strided_slice_1?sequential_4_lstm_4_while_sequential_4_lstm_4_strided_slice_1_0"ø
ysequential_4_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_4_tensorarrayunstack_tensorlistfromtensor{sequential_4_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : 2l
4sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp4sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp2p
6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_16sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_12p
6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_26sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_22p
6sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_36sequential_4/lstm_4/while/lstm_cell_5/ReadVariableOp_32x
:sequential_4/lstm_4/while/lstm_cell_5/split/ReadVariableOp:sequential_4/lstm_4/while/lstm_cell_5/split/ReadVariableOp2|
<sequential_4/lstm_4/while/lstm_cell_5/split_1/ReadVariableOp<sequential_4/lstm_4/while/lstm_cell_5/split_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
: 

m
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42477

inputs
identityD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consty
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
dropout/Mul_1k
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
ê
à
A__inference_lstm_4_layer_call_and_return_conditional_losses_43193
inputs_0=
)lstm_cell_5_split_readvariableop_resource:
 è:
+lstm_cell_5_split_1_readvariableop_resource:	è7
#lstm_cell_5_readvariableop_resource:
úè
identity¢lstm_cell_5/ReadVariableOp¢lstm_cell_5/ReadVariableOp_1¢lstm_cell_5/ReadVariableOp_2¢lstm_cell_5/ReadVariableOp_3¢ lstm_cell_5/split/ReadVariableOp¢"lstm_cell_5/split_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros/packed/1
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
zerosg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros_1/packed/1
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
lstm_cell_5/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like/Shape
lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like/Constµ
lstm_cell_5/ones_likeFill$lstm_cell_5/ones_like/Shape:output:0$lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/ones_like{
lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout/Const°
lstm_cell_5/dropout/MulMullstm_cell_5/ones_like:output:0"lstm_cell_5/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout/Mul
lstm_cell_5/dropout/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout/Shape÷
0lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_5/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2©é-22
0lstm_cell_5/dropout/random_uniform/RandomUniform
"lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2$
"lstm_cell_5/dropout/GreaterEqual/yï
 lstm_cell_5/dropout/GreaterEqualGreaterEqual9lstm_cell_5/dropout/random_uniform/RandomUniform:output:0+lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_cell_5/dropout/GreaterEqual¤
lstm_cell_5/dropout/CastCast$lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout/Cast«
lstm_cell_5/dropout/Mul_1Mullstm_cell_5/dropout/Mul:z:0lstm_cell_5/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout/Mul_1
lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_1/Const¶
lstm_cell_5/dropout_1/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_1/Mul
lstm_cell_5/dropout_1/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_1/Shapeþ
2lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Á¤24
2lstm_cell_5/dropout_1/random_uniform/RandomUniform
$lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_1/GreaterEqual/y÷
"lstm_cell_5/dropout_1/GreaterEqualGreaterEqual;lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_5/dropout_1/GreaterEqualª
lstm_cell_5/dropout_1/CastCast&lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_1/Cast³
lstm_cell_5/dropout_1/Mul_1Mullstm_cell_5/dropout_1/Mul:z:0lstm_cell_5/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_1/Mul_1
lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_2/Const¶
lstm_cell_5/dropout_2/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_2/Mul
lstm_cell_5/dropout_2/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_2/Shapeý
2lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2³Ým24
2lstm_cell_5/dropout_2/random_uniform/RandomUniform
$lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_2/GreaterEqual/y÷
"lstm_cell_5/dropout_2/GreaterEqualGreaterEqual;lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_5/dropout_2/GreaterEqualª
lstm_cell_5/dropout_2/CastCast&lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_2/Cast³
lstm_cell_5/dropout_2/Mul_1Mullstm_cell_5/dropout_2/Mul:z:0lstm_cell_5/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_2/Mul_1
lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_3/Const¶
lstm_cell_5/dropout_3/MulMullstm_cell_5/ones_like:output:0$lstm_cell_5/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_3/Mul
lstm_cell_5/dropout_3/ShapeShapelstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_3/Shapeþ
2lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2ÈÌ³24
2lstm_cell_5/dropout_3/random_uniform/RandomUniform
$lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_3/GreaterEqual/y÷
"lstm_cell_5/dropout_3/GreaterEqualGreaterEqual;lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_cell_5/dropout_3/GreaterEqualª
lstm_cell_5/dropout_3/CastCast&lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_3/Cast³
lstm_cell_5/dropout_3/Mul_1Mullstm_cell_5/dropout_3/Mul:z:0lstm_cell_5/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/dropout_3/Mul_1|
lstm_cell_5/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_5/ones_like_1/Shape
lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_5/ones_like_1/Const½
lstm_cell_5/ones_like_1Fill&lstm_cell_5/ones_like_1/Shape:output:0&lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/ones_like_1
lstm_cell_5/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_4/Const¸
lstm_cell_5/dropout_4/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_4/Mul
lstm_cell_5/dropout_4/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_4/Shapeþ
2lstm_cell_5/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2Ø²Ù24
2lstm_cell_5/dropout_4/random_uniform/RandomUniform
$lstm_cell_5/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_4/GreaterEqual/y÷
"lstm_cell_5/dropout_4/GreaterEqualGreaterEqual;lstm_cell_5/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_4/GreaterEqualª
lstm_cell_5/dropout_4/CastCast&lstm_cell_5/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_4/Cast³
lstm_cell_5/dropout_4/Mul_1Mullstm_cell_5/dropout_4/Mul:z:0lstm_cell_5/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_4/Mul_1
lstm_cell_5/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_5/Const¸
lstm_cell_5/dropout_5/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_5/Mul
lstm_cell_5/dropout_5/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_5/Shapeþ
2lstm_cell_5/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2Í¬24
2lstm_cell_5/dropout_5/random_uniform/RandomUniform
$lstm_cell_5/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_5/GreaterEqual/y÷
"lstm_cell_5/dropout_5/GreaterEqualGreaterEqual;lstm_cell_5/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_5/GreaterEqualª
lstm_cell_5/dropout_5/CastCast&lstm_cell_5/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_5/Cast³
lstm_cell_5/dropout_5/Mul_1Mullstm_cell_5/dropout_5/Mul:z:0lstm_cell_5/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_5/Mul_1
lstm_cell_5/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_6/Const¸
lstm_cell_5/dropout_6/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_6/Mul
lstm_cell_5/dropout_6/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_6/Shapeþ
2lstm_cell_5/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2¶Ð24
2lstm_cell_5/dropout_6/random_uniform/RandomUniform
$lstm_cell_5/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_6/GreaterEqual/y÷
"lstm_cell_5/dropout_6/GreaterEqualGreaterEqual;lstm_cell_5/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_6/GreaterEqualª
lstm_cell_5/dropout_6/CastCast&lstm_cell_5/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_6/Cast³
lstm_cell_5/dropout_6/Mul_1Mullstm_cell_5/dropout_6/Mul:z:0lstm_cell_5/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_6/Mul_1
lstm_cell_5/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/dropout_7/Const¸
lstm_cell_5/dropout_7/MulMul lstm_cell_5/ones_like_1:output:0$lstm_cell_5/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_7/Mul
lstm_cell_5/dropout_7/ShapeShape lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_5/dropout_7/Shapeý
2lstm_cell_5/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_5/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2½v24
2lstm_cell_5/dropout_7/random_uniform/RandomUniform
$lstm_cell_5/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_5/dropout_7/GreaterEqual/y÷
"lstm_cell_5/dropout_7/GreaterEqualGreaterEqual;lstm_cell_5/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_5/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_cell_5/dropout_7/GreaterEqualª
lstm_cell_5/dropout_7/CastCast&lstm_cell_5/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_7/Cast³
lstm_cell_5/dropout_7/Mul_1Mullstm_cell_5/dropout_7/Mul:z:0lstm_cell_5/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/dropout_7/Mul_1
lstm_cell_5/mulMulstrided_slice_2:output:0lstm_cell_5/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul
lstm_cell_5/mul_1Mulstrided_slice_2:output:0lstm_cell_5/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_1
lstm_cell_5/mul_2Mulstrided_slice_2:output:0lstm_cell_5/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_2
lstm_cell_5/mul_3Mulstrided_slice_2:output:0lstm_cell_5/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_5/mul_3|
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_5/split/split_dim°
 lstm_cell_5/split/ReadVariableOpReadVariableOp)lstm_cell_5_split_readvariableop_resource* 
_output_shapes
:
 è*
dtype02"
 lstm_cell_5/split/ReadVariableOpß
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0(lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
lstm_cell_5/split
lstm_cell_5/MatMulMatMullstm_cell_5/mul:z:0lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul
lstm_cell_5/MatMul_1MatMullstm_cell_5/mul_1:z:0lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_1
lstm_cell_5/MatMul_2MatMullstm_cell_5/mul_2:z:0lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_2
lstm_cell_5/MatMul_3MatMullstm_cell_5/mul_3:z:0lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_3
lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_5/split_1/split_dim±
"lstm_cell_5/split_1/ReadVariableOpReadVariableOp+lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:è*
dtype02$
"lstm_cell_5/split_1/ReadVariableOpÓ
lstm_cell_5/split_1Split&lstm_cell_5/split_1/split_dim:output:0*lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
lstm_cell_5/split_1¤
lstm_cell_5/BiasAddBiasAddlstm_cell_5/MatMul:product:0lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAddª
lstm_cell_5/BiasAdd_1BiasAddlstm_cell_5/MatMul_1:product:0lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_1ª
lstm_cell_5/BiasAdd_2BiasAddlstm_cell_5/MatMul_2:product:0lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_2ª
lstm_cell_5/BiasAdd_3BiasAddlstm_cell_5/MatMul_3:product:0lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/BiasAdd_3
lstm_cell_5/mul_4Mulzeros:output:0lstm_cell_5/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_4
lstm_cell_5/mul_5Mulzeros:output:0lstm_cell_5/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_5
lstm_cell_5/mul_6Mulzeros:output:0lstm_cell_5/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_6
lstm_cell_5/mul_7Mulzeros:output:0lstm_cell_5/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_7
lstm_cell_5/ReadVariableOpReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp
lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_5/strided_slice/stack
!lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice/stack_1
!lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_5/strided_slice/stack_2Æ
lstm_cell_5/strided_sliceStridedSlice"lstm_cell_5/ReadVariableOp:value:0(lstm_cell_5/strided_slice/stack:output:0*lstm_cell_5/strided_slice/stack_1:output:0*lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice¤
lstm_cell_5/MatMul_4MatMullstm_cell_5/mul_4:z:0"lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_4
lstm_cell_5/addAddV2lstm_cell_5/BiasAdd:output:0lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/addk
lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Consto
lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_1
lstm_cell_5/Mul_8Mullstm_cell_5/add:z:0lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_8
lstm_cell_5/Add_1AddV2lstm_cell_5/Mul_8:z:0lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_1
#lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#lstm_cell_5/clip_by_value/Minimum/yÉ
!lstm_cell_5/clip_by_value/MinimumMinimumlstm_cell_5/Add_1:z:0,lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_cell_5/clip_by_value/Minimum
lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value/yÁ
lstm_cell_5/clip_by_valueMaximum%lstm_cell_5/clip_by_value/Minimum:z:0$lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value¢
lstm_cell_5/ReadVariableOp_1ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_1
!lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2#
!lstm_cell_5/strided_slice_1/stack
#lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2%
#lstm_cell_5/strided_slice_1/stack_1
#lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_1/stack_2Ò
lstm_cell_5/strided_slice_1StridedSlice$lstm_cell_5/ReadVariableOp_1:value:0*lstm_cell_5/strided_slice_1/stack:output:0,lstm_cell_5/strided_slice_1/stack_1:output:0,lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_1¦
lstm_cell_5/MatMul_5MatMullstm_cell_5/mul_5:z:0$lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_5¢
lstm_cell_5/add_2AddV2lstm_cell_5/BiasAdd_1:output:0lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_2o
lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_2o
lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_3
lstm_cell_5/Mul_9Mullstm_cell_5/add_2:z:0lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_9
lstm_cell_5/Add_3AddV2lstm_cell_5/Mul_9:z:0lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_3
%lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_1/Minimum/yÏ
#lstm_cell_5/clip_by_value_1/MinimumMinimumlstm_cell_5/Add_3:z:0.lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_1/Minimum
lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_1/yÉ
lstm_cell_5/clip_by_value_1Maximum'lstm_cell_5/clip_by_value_1/Minimum:z:0&lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_1
lstm_cell_5/mul_10Mullstm_cell_5/clip_by_value_1:z:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_10¢
lstm_cell_5/ReadVariableOp_2ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_2
!lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2#
!lstm_cell_5/strided_slice_2/stack
#lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2%
#lstm_cell_5/strided_slice_2/stack_1
#lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_2/stack_2Ò
lstm_cell_5/strided_slice_2StridedSlice$lstm_cell_5/ReadVariableOp_2:value:0*lstm_cell_5/strided_slice_2/stack:output:0,lstm_cell_5/strided_slice_2/stack_1:output:0,lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_2¦
lstm_cell_5/MatMul_6MatMullstm_cell_5/mul_6:z:0$lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_6¢
lstm_cell_5/add_4AddV2lstm_cell_5/BiasAdd_2:output:0lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_4v
lstm_cell_5/TanhTanhlstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh
lstm_cell_5/mul_11Mullstm_cell_5/clip_by_value:z:0lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_11
lstm_cell_5/add_5AddV2lstm_cell_5/mul_10:z:0lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_5¢
lstm_cell_5/ReadVariableOp_3ReadVariableOp#lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02
lstm_cell_5/ReadVariableOp_3
!lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2#
!lstm_cell_5/strided_slice_3/stack
#lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_5/strided_slice_3/stack_1
#lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_5/strided_slice_3/stack_2Ò
lstm_cell_5/strided_slice_3StridedSlice$lstm_cell_5/ReadVariableOp_3:value:0*lstm_cell_5/strided_slice_3/stack:output:0,lstm_cell_5/strided_slice_3/stack_1:output:0,lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2
lstm_cell_5/strided_slice_3¦
lstm_cell_5/MatMul_7MatMullstm_cell_5/mul_7:z:0$lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/MatMul_7¢
lstm_cell_5/add_6AddV2lstm_cell_5/BiasAdd_3:output:0lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/add_6o
lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_cell_5/Const_4o
lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_5/Const_5
lstm_cell_5/Mul_12Mullstm_cell_5/add_6:z:0lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Mul_12
lstm_cell_5/Add_7AddV2lstm_cell_5/Mul_12:z:0lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Add_7
%lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%lstm_cell_5/clip_by_value_2/Minimum/yÏ
#lstm_cell_5/clip_by_value_2/MinimumMinimumlstm_cell_5/Add_7:z:0.lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2%
#lstm_cell_5/clip_by_value_2/Minimum
lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell_5/clip_by_value_2/yÉ
lstm_cell_5/clip_by_value_2Maximum'lstm_cell_5/clip_by_value_2/Minimum:z:0&lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/clip_by_value_2z
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/Tanh_1
lstm_cell_5/mul_13Mullstm_cell_5/clip_by_value_2:z:0lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_cell_5/mul_13
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_5_split_readvariableop_resource+lstm_cell_5_split_1_readvariableop_resource#lstm_cell_5_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_42975*
condR
while_cond_42974*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿú*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿú2
transpose_1t
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity
NoOpNoOp^lstm_cell_5/ReadVariableOp^lstm_cell_5/ReadVariableOp_1^lstm_cell_5/ReadVariableOp_2^lstm_cell_5/ReadVariableOp_3!^lstm_cell_5/split/ReadVariableOp#^lstm_cell_5/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 28
lstm_cell_5/ReadVariableOplstm_cell_5/ReadVariableOp2<
lstm_cell_5/ReadVariableOp_1lstm_cell_5/ReadVariableOp_12<
lstm_cell_5/ReadVariableOp_2lstm_cell_5/ReadVariableOp_22<
lstm_cell_5/ReadVariableOp_3lstm_cell_5/ReadVariableOp_32D
 lstm_cell_5/split/ReadVariableOp lstm_cell_5/split/ReadVariableOp2H
"lstm_cell_5/split_1/ReadVariableOp"lstm_cell_5/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
ª¼

lstm_4_while_body_41768*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3)
%lstm_4_while_lstm_4_strided_slice_1_0e
alstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0L
8lstm_4_while_lstm_cell_5_split_readvariableop_resource_0:
 èI
:lstm_4_while_lstm_cell_5_split_1_readvariableop_resource_0:	èF
2lstm_4_while_lstm_cell_5_readvariableop_resource_0:
úè
lstm_4_while_identity
lstm_4_while_identity_1
lstm_4_while_identity_2
lstm_4_while_identity_3
lstm_4_while_identity_4
lstm_4_while_identity_5'
#lstm_4_while_lstm_4_strided_slice_1c
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensorJ
6lstm_4_while_lstm_cell_5_split_readvariableop_resource:
 èG
8lstm_4_while_lstm_cell_5_split_1_readvariableop_resource:	èD
0lstm_4_while_lstm_cell_5_readvariableop_resource:
úè¢'lstm_4/while/lstm_cell_5/ReadVariableOp¢)lstm_4/while/lstm_cell_5/ReadVariableOp_1¢)lstm_4/while/lstm_cell_5/ReadVariableOp_2¢)lstm_4/while/lstm_cell_5/ReadVariableOp_3¢-lstm_4/while/lstm_cell_5/split/ReadVariableOp¢/lstm_4/while/lstm_cell_5/split_1/ReadVariableOpÑ
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2@
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeþ
0lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0lstm_4_while_placeholderGlstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype022
0lstm_4/while/TensorArrayV2Read/TensorListGetItem»
(lstm_4/while/lstm_cell_5/ones_like/ShapeShape7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_4/while/lstm_cell_5/ones_like/Shape
(lstm_4/while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_4/while/lstm_cell_5/ones_like/Consté
"lstm_4/while/lstm_cell_5/ones_likeFill1lstm_4/while/lstm_cell_5/ones_like/Shape:output:01lstm_4/while/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_4/while/lstm_cell_5/ones_like¢
*lstm_4/while/lstm_cell_5/ones_like_1/ShapeShapelstm_4_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_4/while/lstm_cell_5/ones_like_1/Shape
*lstm_4/while/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_4/while/lstm_cell_5/ones_like_1/Constñ
$lstm_4/while/lstm_cell_5/ones_like_1Fill3lstm_4/while/lstm_cell_5/ones_like_1/Shape:output:03lstm_4/while/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2&
$lstm_4/while/lstm_cell_5/ones_like_1Ü
lstm_4/while/lstm_cell_5/mulMul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/while/lstm_cell_5/mulà
lstm_4/while/lstm_cell_5/mul_1Mul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_4/while/lstm_cell_5/mul_1à
lstm_4/while/lstm_cell_5/mul_2Mul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_4/while/lstm_cell_5/mul_2à
lstm_4/while/lstm_cell_5/mul_3Mul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_4/while/lstm_cell_5/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_4/while/lstm_cell_5/mul_3
(lstm_4/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_4/while/lstm_cell_5/split/split_dimÙ
-lstm_4/while/lstm_cell_5/split/ReadVariableOpReadVariableOp8lstm_4_while_lstm_cell_5_split_readvariableop_resource_0* 
_output_shapes
:
 è*
dtype02/
-lstm_4/while/lstm_cell_5/split/ReadVariableOp
lstm_4/while/lstm_cell_5/splitSplit1lstm_4/while/lstm_cell_5/split/split_dim:output:05lstm_4/while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2 
lstm_4/while/lstm_cell_5/splitÊ
lstm_4/while/lstm_cell_5/MatMulMatMul lstm_4/while/lstm_cell_5/mul:z:0'lstm_4/while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/MatMulÐ
!lstm_4/while/lstm_cell_5/MatMul_1MatMul"lstm_4/while/lstm_cell_5/mul_1:z:0'lstm_4/while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_1Ð
!lstm_4/while/lstm_cell_5/MatMul_2MatMul"lstm_4/while/lstm_cell_5/mul_2:z:0'lstm_4/while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_2Ð
!lstm_4/while/lstm_cell_5/MatMul_3MatMul"lstm_4/while/lstm_cell_5/mul_3:z:0'lstm_4/while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_3
*lstm_4/while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_4/while/lstm_cell_5/split_1/split_dimÚ
/lstm_4/while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp:lstm_4_while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:è*
dtype021
/lstm_4/while/lstm_cell_5/split_1/ReadVariableOp
 lstm_4/while/lstm_cell_5/split_1Split3lstm_4/while/lstm_cell_5/split_1/split_dim:output:07lstm_4/while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2"
 lstm_4/while/lstm_cell_5/split_1Ø
 lstm_4/while/lstm_cell_5/BiasAddBiasAdd)lstm_4/while/lstm_cell_5/MatMul:product:0)lstm_4/while/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 lstm_4/while/lstm_cell_5/BiasAddÞ
"lstm_4/while/lstm_cell_5/BiasAdd_1BiasAdd+lstm_4/while/lstm_cell_5/MatMul_1:product:0)lstm_4/while/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/while/lstm_cell_5/BiasAdd_1Þ
"lstm_4/while/lstm_cell_5/BiasAdd_2BiasAdd+lstm_4/while/lstm_cell_5/MatMul_2:product:0)lstm_4/while/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/while/lstm_cell_5/BiasAdd_2Þ
"lstm_4/while/lstm_cell_5/BiasAdd_3BiasAdd+lstm_4/while/lstm_cell_5/MatMul_3:product:0)lstm_4/while/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/while/lstm_cell_5/BiasAdd_3Å
lstm_4/while/lstm_cell_5/mul_4Mullstm_4_while_placeholder_2-lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/mul_4Å
lstm_4/while/lstm_cell_5/mul_5Mullstm_4_while_placeholder_2-lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/mul_5Å
lstm_4/while/lstm_cell_5/mul_6Mullstm_4_while_placeholder_2-lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/mul_6Å
lstm_4/while/lstm_cell_5/mul_7Mullstm_4_while_placeholder_2-lstm_4/while/lstm_cell_5/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/mul_7Ç
'lstm_4/while/lstm_cell_5/ReadVariableOpReadVariableOp2lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02)
'lstm_4/while/lstm_cell_5/ReadVariableOp­
,lstm_4/while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_4/while/lstm_cell_5/strided_slice/stack±
.lstm_4/while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   20
.lstm_4/while/lstm_cell_5/strided_slice/stack_1±
.lstm_4/while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_4/while/lstm_cell_5/strided_slice/stack_2
&lstm_4/while/lstm_cell_5/strided_sliceStridedSlice/lstm_4/while/lstm_cell_5/ReadVariableOp:value:05lstm_4/while/lstm_cell_5/strided_slice/stack:output:07lstm_4/while/lstm_cell_5/strided_slice/stack_1:output:07lstm_4/while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2(
&lstm_4/while/lstm_cell_5/strided_sliceØ
!lstm_4/while/lstm_cell_5/MatMul_4MatMul"lstm_4/while/lstm_cell_5/mul_4:z:0/lstm_4/while/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_4Ð
lstm_4/while/lstm_cell_5/addAddV2)lstm_4/while/lstm_cell_5/BiasAdd:output:0+lstm_4/while/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/while/lstm_cell_5/add
lstm_4/while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2 
lstm_4/while/lstm_cell_5/Const
 lstm_4/while/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_4/while/lstm_cell_5/Const_1Å
lstm_4/while/lstm_cell_5/Mul_8Mul lstm_4/while/lstm_cell_5/add:z:0'lstm_4/while/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/Mul_8Ë
lstm_4/while/lstm_cell_5/Add_1AddV2"lstm_4/while/lstm_cell_5/Mul_8:z:0)lstm_4/while/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/Add_1©
0lstm_4/while/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?22
0lstm_4/while/lstm_cell_5/clip_by_value/Minimum/yý
.lstm_4/while/lstm_cell_5/clip_by_value/MinimumMinimum"lstm_4/while/lstm_cell_5/Add_1:z:09lstm_4/while/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú20
.lstm_4/while/lstm_cell_5/clip_by_value/Minimum
(lstm_4/while/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(lstm_4/while/lstm_cell_5/clip_by_value/yõ
&lstm_4/while/lstm_cell_5/clip_by_valueMaximum2lstm_4/while/lstm_cell_5/clip_by_value/Minimum:z:01lstm_4/while/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&lstm_4/while/lstm_cell_5/clip_by_valueË
)lstm_4/while/lstm_cell_5/ReadVariableOp_1ReadVariableOp2lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02+
)lstm_4/while/lstm_cell_5/ReadVariableOp_1±
.lstm_4/while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   20
.lstm_4/while/lstm_cell_5/strided_slice_1/stackµ
0lstm_4/while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  22
0lstm_4/while/lstm_cell_5/strided_slice_1/stack_1µ
0lstm_4/while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_4/while/lstm_cell_5/strided_slice_1/stack_2 
(lstm_4/while/lstm_cell_5/strided_slice_1StridedSlice1lstm_4/while/lstm_cell_5/ReadVariableOp_1:value:07lstm_4/while/lstm_cell_5/strided_slice_1/stack:output:09lstm_4/while/lstm_cell_5/strided_slice_1/stack_1:output:09lstm_4/while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2*
(lstm_4/while/lstm_cell_5/strided_slice_1Ú
!lstm_4/while/lstm_cell_5/MatMul_5MatMul"lstm_4/while/lstm_cell_5/mul_5:z:01lstm_4/while/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_5Ö
lstm_4/while/lstm_cell_5/add_2AddV2+lstm_4/while/lstm_cell_5/BiasAdd_1:output:0+lstm_4/while/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/add_2
 lstm_4/while/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2"
 lstm_4/while/lstm_cell_5/Const_2
 lstm_4/while/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_4/while/lstm_cell_5/Const_3É
lstm_4/while/lstm_cell_5/Mul_9Mul"lstm_4/while/lstm_cell_5/add_2:z:0)lstm_4/while/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/Mul_9Ë
lstm_4/while/lstm_cell_5/Add_3AddV2"lstm_4/while/lstm_cell_5/Mul_9:z:0)lstm_4/while/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/Add_3­
2lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum/y
0lstm_4/while/lstm_cell_5/clip_by_value_1/MinimumMinimum"lstm_4/while/lstm_cell_5/Add_3:z:0;lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú22
0lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum
*lstm_4/while/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*lstm_4/while/lstm_cell_5/clip_by_value_1/yý
(lstm_4/while/lstm_cell_5/clip_by_value_1Maximum4lstm_4/while/lstm_cell_5/clip_by_value_1/Minimum:z:03lstm_4/while/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(lstm_4/while/lstm_cell_5/clip_by_value_1Æ
lstm_4/while/lstm_cell_5/mul_10Mul,lstm_4/while/lstm_cell_5/clip_by_value_1:z:0lstm_4_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/mul_10Ë
)lstm_4/while/lstm_cell_5/ReadVariableOp_2ReadVariableOp2lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02+
)lstm_4/while/lstm_cell_5/ReadVariableOp_2±
.lstm_4/while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  20
.lstm_4/while/lstm_cell_5/strided_slice_2/stackµ
0lstm_4/while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  22
0lstm_4/while/lstm_cell_5/strided_slice_2/stack_1µ
0lstm_4/while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_4/while/lstm_cell_5/strided_slice_2/stack_2 
(lstm_4/while/lstm_cell_5/strided_slice_2StridedSlice1lstm_4/while/lstm_cell_5/ReadVariableOp_2:value:07lstm_4/while/lstm_cell_5/strided_slice_2/stack:output:09lstm_4/while/lstm_cell_5/strided_slice_2/stack_1:output:09lstm_4/while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2*
(lstm_4/while/lstm_cell_5/strided_slice_2Ú
!lstm_4/while/lstm_cell_5/MatMul_6MatMul"lstm_4/while/lstm_cell_5/mul_6:z:01lstm_4/while/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_6Ö
lstm_4/while/lstm_cell_5/add_4AddV2+lstm_4/while/lstm_cell_5/BiasAdd_2:output:0+lstm_4/while/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/add_4
lstm_4/while/lstm_cell_5/TanhTanh"lstm_4/while/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/while/lstm_cell_5/TanhË
lstm_4/while/lstm_cell_5/mul_11Mul*lstm_4/while/lstm_cell_5/clip_by_value:z:0!lstm_4/while/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/mul_11Æ
lstm_4/while/lstm_cell_5/add_5AddV2#lstm_4/while/lstm_cell_5/mul_10:z:0#lstm_4/while/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/add_5Ë
)lstm_4/while/lstm_cell_5/ReadVariableOp_3ReadVariableOp2lstm_4_while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02+
)lstm_4/while/lstm_cell_5/ReadVariableOp_3±
.lstm_4/while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  20
.lstm_4/while/lstm_cell_5/strided_slice_3/stackµ
0lstm_4/while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_4/while/lstm_cell_5/strided_slice_3/stack_1µ
0lstm_4/while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_4/while/lstm_cell_5/strided_slice_3/stack_2 
(lstm_4/while/lstm_cell_5/strided_slice_3StridedSlice1lstm_4/while/lstm_cell_5/ReadVariableOp_3:value:07lstm_4/while/lstm_cell_5/strided_slice_3/stack:output:09lstm_4/while/lstm_cell_5/strided_slice_3/stack_1:output:09lstm_4/while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2*
(lstm_4/while/lstm_cell_5/strided_slice_3Ú
!lstm_4/while/lstm_cell_5/MatMul_7MatMul"lstm_4/while/lstm_cell_5/mul_7:z:01lstm_4/while/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/while/lstm_cell_5/MatMul_7Ö
lstm_4/while/lstm_cell_5/add_6AddV2+lstm_4/while/lstm_cell_5/BiasAdd_3:output:0+lstm_4/while/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/add_6
 lstm_4/while/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2"
 lstm_4/while/lstm_cell_5/Const_4
 lstm_4/while/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_4/while/lstm_cell_5/Const_5Ë
lstm_4/while/lstm_cell_5/Mul_12Mul"lstm_4/while/lstm_cell_5/add_6:z:0)lstm_4/while/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/Mul_12Ì
lstm_4/while/lstm_cell_5/Add_7AddV2#lstm_4/while/lstm_cell_5/Mul_12:z:0)lstm_4/while/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/while/lstm_cell_5/Add_7­
2lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?24
2lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum/y
0lstm_4/while/lstm_cell_5/clip_by_value_2/MinimumMinimum"lstm_4/while/lstm_cell_5/Add_7:z:0;lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú22
0lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum
*lstm_4/while/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*lstm_4/while/lstm_cell_5/clip_by_value_2/yý
(lstm_4/while/lstm_cell_5/clip_by_value_2Maximum4lstm_4/while/lstm_cell_5/clip_by_value_2/Minimum:z:03lstm_4/while/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(lstm_4/while/lstm_cell_5/clip_by_value_2¡
lstm_4/while/lstm_cell_5/Tanh_1Tanh"lstm_4/while/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/Tanh_1Ï
lstm_4/while/lstm_cell_5/mul_13Mul,lstm_4/while/lstm_cell_5/clip_by_value_2:z:0#lstm_4/while/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
lstm_4/while/lstm_cell_5/mul_13
1lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_4_while_placeholder_1lstm_4_while_placeholder#lstm_4/while/lstm_cell_5/mul_13:z:0*
_output_shapes
: *
element_dtype023
1lstm_4/while/TensorArrayV2Write/TensorListSetItemj
lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add/y
lstm_4/while/addAddV2lstm_4_while_placeholderlstm_4/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/addn
lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add_1/y
lstm_4/while/add_1AddV2&lstm_4_while_lstm_4_while_loop_counterlstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/add_1
lstm_4/while/IdentityIdentitylstm_4/while/add_1:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity¡
lstm_4/while/Identity_1Identity,lstm_4_while_lstm_4_while_maximum_iterations^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_1
lstm_4/while/Identity_2Identitylstm_4/while/add:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_2¶
lstm_4/while/Identity_3IdentityAlstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_3ª
lstm_4/while/Identity_4Identity#lstm_4/while/lstm_cell_5/mul_13:z:0^lstm_4/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/while/Identity_4©
lstm_4/while/Identity_5Identity"lstm_4/while/lstm_cell_5/add_5:z:0^lstm_4/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/while/Identity_5ø
lstm_4/while/NoOpNoOp(^lstm_4/while/lstm_cell_5/ReadVariableOp*^lstm_4/while/lstm_cell_5/ReadVariableOp_1*^lstm_4/while/lstm_cell_5/ReadVariableOp_2*^lstm_4/while/lstm_cell_5/ReadVariableOp_3.^lstm_4/while/lstm_cell_5/split/ReadVariableOp0^lstm_4/while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_4/while/NoOp"7
lstm_4_while_identitylstm_4/while/Identity:output:0";
lstm_4_while_identity_1 lstm_4/while/Identity_1:output:0";
lstm_4_while_identity_2 lstm_4/while/Identity_2:output:0";
lstm_4_while_identity_3 lstm_4/while/Identity_3:output:0";
lstm_4_while_identity_4 lstm_4/while/Identity_4:output:0";
lstm_4_while_identity_5 lstm_4/while/Identity_5:output:0"L
#lstm_4_while_lstm_4_strided_slice_1%lstm_4_while_lstm_4_strided_slice_1_0"f
0lstm_4_while_lstm_cell_5_readvariableop_resource2lstm_4_while_lstm_cell_5_readvariableop_resource_0"v
8lstm_4_while_lstm_cell_5_split_1_readvariableop_resource:lstm_4_while_lstm_cell_5_split_1_readvariableop_resource_0"r
6lstm_4_while_lstm_cell_5_split_readvariableop_resource8lstm_4_while_lstm_cell_5_split_readvariableop_resource_0"Ä
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensoralstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : 2R
'lstm_4/while/lstm_cell_5/ReadVariableOp'lstm_4/while/lstm_cell_5/ReadVariableOp2V
)lstm_4/while/lstm_cell_5/ReadVariableOp_1)lstm_4/while/lstm_cell_5/ReadVariableOp_12V
)lstm_4/while/lstm_cell_5/ReadVariableOp_2)lstm_4/while/lstm_cell_5/ReadVariableOp_22V
)lstm_4/while/lstm_cell_5/ReadVariableOp_3)lstm_4/while/lstm_cell_5/ReadVariableOp_32^
-lstm_4/while/lstm_cell_5/split/ReadVariableOp-lstm_4/while/lstm_cell_5/split/ReadVariableOp2b
/lstm_4/while/lstm_cell_5/split_1/ReadVariableOp/lstm_4/while/lstm_cell_5/split_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
: 
è>
þ
A__inference_lstm_4_layer_call_and_return_conditional_losses_40080

inputs%
lstm_cell_5_39999:
 è 
lstm_cell_5_40001:	è%
lstm_cell_5_40003:
úè
identity¢#lstm_cell_5/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros/packed/1
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
zerosg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
zeros_1/packed/1
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
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
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
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
strided_slice_2
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_39999lstm_cell_5_40001lstm_cell_5_40003*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_399982%
#lstm_cell_5/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_39999lstm_cell_5_40001lstm_cell_5_40003*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_40012*
condR
while_cond_40011*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿú*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿú2
transpose_1t
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity|
NoOpNoOp$^lstm_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ý
	
while_body_41228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_5_split_readvariableop_resource_0:
 èB
3while_lstm_cell_5_split_1_readvariableop_resource_0:	è?
+while_lstm_cell_5_readvariableop_resource_0:
úè
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_5_split_readvariableop_resource:
 è@
1while_lstm_cell_5_split_1_readvariableop_resource:	è=
)while_lstm_cell_5_readvariableop_resource:
úè¢ while/lstm_cell_5/ReadVariableOp¢"while/lstm_cell_5/ReadVariableOp_1¢"while/lstm_cell_5/ReadVariableOp_2¢"while/lstm_cell_5/ReadVariableOp_3¢&while/lstm_cell_5/split/ReadVariableOp¢(while/lstm_cell_5/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_5/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/ones_like/Shape
!while/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_5/ones_like/ConstÍ
while/lstm_cell_5/ones_likeFill*while/lstm_cell_5/ones_like/Shape:output:0*while/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/ones_like
while/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_5/dropout/ConstÈ
while/lstm_cell_5/dropout/MulMul$while/lstm_cell_5/ones_like:output:0(while/lstm_cell_5/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/dropout/Mul
while/lstm_cell_5/dropout/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_5/dropout/Shape
6while/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_5/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2âîà28
6while/lstm_cell_5/dropout/random_uniform/RandomUniform
(while/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2*
(while/lstm_cell_5/dropout/GreaterEqual/y
&while/lstm_cell_5/dropout/GreaterEqualGreaterEqual?while/lstm_cell_5/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&while/lstm_cell_5/dropout/GreaterEqual¶
while/lstm_cell_5/dropout/CastCast*while/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
while/lstm_cell_5/dropout/CastÃ
while/lstm_cell_5/dropout/Mul_1Mul!while/lstm_cell_5/dropout/Mul:z:0"while/lstm_cell_5/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout/Mul_1
!while/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_1/ConstÎ
while/lstm_cell_5/dropout_1/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout_1/Mul
!while/lstm_cell_5/dropout_1/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_1/Shape
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2µÊ2:
8while/lstm_cell_5/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_1/GreaterEqual/y
(while/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_5/dropout_1/GreaterEqual¼
 while/lstm_cell_5/dropout_1/CastCast,while/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_5/dropout_1/CastË
!while/lstm_cell_5/dropout_1/Mul_1Mul#while/lstm_cell_5/dropout_1/Mul:z:0$while/lstm_cell_5/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_5/dropout_1/Mul_1
!while/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_2/ConstÎ
while/lstm_cell_5/dropout_2/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout_2/Mul
!while/lstm_cell_5/dropout_2/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_2/Shape
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2»¦2:
8while/lstm_cell_5/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_2/GreaterEqual/y
(while/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_5/dropout_2/GreaterEqual¼
 while/lstm_cell_5/dropout_2/CastCast,while/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_5/dropout_2/CastË
!while/lstm_cell_5/dropout_2/Mul_1Mul#while/lstm_cell_5/dropout_2/Mul:z:0$while/lstm_cell_5/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_5/dropout_2/Mul_1
!while/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_3/ConstÎ
while/lstm_cell_5/dropout_3/MulMul$while/lstm_cell_5/ones_like:output:0*while/lstm_cell_5/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
while/lstm_cell_5/dropout_3/Mul
!while/lstm_cell_5/dropout_3/ShapeShape$while/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_3/Shape
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Ô°C2:
8while/lstm_cell_5/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_3/GreaterEqual/y
(while/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2*
(while/lstm_cell_5/dropout_3/GreaterEqual¼
 while/lstm_cell_5/dropout_3/CastCast,while/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 while/lstm_cell_5/dropout_3/CastË
!while/lstm_cell_5/dropout_3/Mul_1Mul#while/lstm_cell_5/dropout_3/Mul:z:0$while/lstm_cell_5/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!while/lstm_cell_5/dropout_3/Mul_1
#while/lstm_cell_5/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_5/ones_like_1/Shape
#while/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_5/ones_like_1/ConstÕ
while/lstm_cell_5/ones_like_1Fill,while/lstm_cell_5/ones_like_1/Shape:output:0,while/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/ones_like_1
!while/lstm_cell_5/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_4/ConstÐ
while/lstm_cell_5/dropout_4/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_4/Mul
!while/lstm_cell_5/dropout_4/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_4/Shape
8while/lstm_cell_5/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2á´2:
8while/lstm_cell_5/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_4/GreaterEqual/y
(while/lstm_cell_5/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_4/GreaterEqual¼
 while/lstm_cell_5/dropout_4/CastCast,while/lstm_cell_5/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_4/CastË
!while/lstm_cell_5/dropout_4/Mul_1Mul#while/lstm_cell_5/dropout_4/Mul:z:0$while/lstm_cell_5/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_4/Mul_1
!while/lstm_cell_5/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_5/ConstÐ
while/lstm_cell_5/dropout_5/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_5/Mul
!while/lstm_cell_5/dropout_5/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_5/Shape
8while/lstm_cell_5/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2Ëk2:
8while/lstm_cell_5/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_5/GreaterEqual/y
(while/lstm_cell_5/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_5/GreaterEqual¼
 while/lstm_cell_5/dropout_5/CastCast,while/lstm_cell_5/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_5/CastË
!while/lstm_cell_5/dropout_5/Mul_1Mul#while/lstm_cell_5/dropout_5/Mul:z:0$while/lstm_cell_5/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_5/Mul_1
!while/lstm_cell_5/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_6/ConstÐ
while/lstm_cell_5/dropout_6/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_6/Mul
!while/lstm_cell_5/dropout_6/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_6/Shape
8while/lstm_cell_5/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2Èìy2:
8while/lstm_cell_5/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_6/GreaterEqual/y
(while/lstm_cell_5/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_6/GreaterEqual¼
 while/lstm_cell_5/dropout_6/CastCast,while/lstm_cell_5/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_6/CastË
!while/lstm_cell_5/dropout_6/Mul_1Mul#while/lstm_cell_5/dropout_6/Mul:z:0$while/lstm_cell_5/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_6/Mul_1
!while/lstm_cell_5/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_5/dropout_7/ConstÐ
while/lstm_cell_5/dropout_7/MulMul&while/lstm_cell_5/ones_like_1:output:0*while/lstm_cell_5/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/dropout_7/Mul
!while/lstm_cell_5/dropout_7/ShapeShape&while/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_5/dropout_7/Shape
8while/lstm_cell_5/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_5/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2ÀÁ2:
8while/lstm_cell_5/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_5/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_5/dropout_7/GreaterEqual/y
(while/lstm_cell_5/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_5/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_5/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(while/lstm_cell_5/dropout_7/GreaterEqual¼
 while/lstm_cell_5/dropout_7/CastCast,while/lstm_cell_5/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 while/lstm_cell_5/dropout_7/CastË
!while/lstm_cell_5/dropout_7/Mul_1Mul#while/lstm_cell_5/dropout_7/Mul:z:0$while/lstm_cell_5/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/dropout_7/Mul_1¿
while/lstm_cell_5/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_5/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mulÅ
while/lstm_cell_5/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_5/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_1Å
while/lstm_cell_5/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_5/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_2Å
while/lstm_cell_5/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_5/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_5/mul_3
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_5/split/split_dimÄ
&while/lstm_cell_5/split/ReadVariableOpReadVariableOp1while_lstm_cell_5_split_readvariableop_resource_0* 
_output_shapes
:
 è*
dtype02(
&while/lstm_cell_5/split/ReadVariableOp÷
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0.while/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
while/lstm_cell_5/split®
while/lstm_cell_5/MatMulMatMulwhile/lstm_cell_5/mul:z:0 while/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul´
while/lstm_cell_5/MatMul_1MatMulwhile/lstm_cell_5/mul_1:z:0 while/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_1´
while/lstm_cell_5/MatMul_2MatMulwhile/lstm_cell_5/mul_2:z:0 while/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_2´
while/lstm_cell_5/MatMul_3MatMulwhile/lstm_cell_5/mul_3:z:0 while/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_3
#while/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_5/split_1/split_dimÅ
(while/lstm_cell_5/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_5_split_1_readvariableop_resource_0*
_output_shapes	
:è*
dtype02*
(while/lstm_cell_5/split_1/ReadVariableOpë
while/lstm_cell_5/split_1Split,while/lstm_cell_5/split_1/split_dim:output:00while/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
while/lstm_cell_5/split_1¼
while/lstm_cell_5/BiasAddBiasAdd"while/lstm_cell_5/MatMul:product:0"while/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAddÂ
while/lstm_cell_5/BiasAdd_1BiasAdd$while/lstm_cell_5/MatMul_1:product:0"while/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_1Â
while/lstm_cell_5/BiasAdd_2BiasAdd$while/lstm_cell_5/MatMul_2:product:0"while/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_2Â
while/lstm_cell_5/BiasAdd_3BiasAdd$while/lstm_cell_5/MatMul_3:product:0"while/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/BiasAdd_3¨
while/lstm_cell_5/mul_4Mulwhile_placeholder_2%while/lstm_cell_5/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_4¨
while/lstm_cell_5/mul_5Mulwhile_placeholder_2%while/lstm_cell_5/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_5¨
while/lstm_cell_5/mul_6Mulwhile_placeholder_2%while/lstm_cell_5/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_6¨
while/lstm_cell_5/mul_7Mulwhile_placeholder_2%while/lstm_cell_5/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_7²
 while/lstm_cell_5/ReadVariableOpReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02"
 while/lstm_cell_5/ReadVariableOp
%while/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_5/strided_slice/stack£
'while/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice/stack_1£
'while/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_5/strided_slice/stack_2ê
while/lstm_cell_5/strided_sliceStridedSlice(while/lstm_cell_5/ReadVariableOp:value:0.while/lstm_cell_5/strided_slice/stack:output:00while/lstm_cell_5/strided_slice/stack_1:output:00while/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2!
while/lstm_cell_5/strided_slice¼
while/lstm_cell_5/MatMul_4MatMulwhile/lstm_cell_5/mul_4:z:0(while/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_4´
while/lstm_cell_5/addAddV2"while/lstm_cell_5/BiasAdd:output:0$while/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/addw
while/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const{
while/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_1©
while/lstm_cell_5/Mul_8Mulwhile/lstm_cell_5/add:z:0 while/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_8¯
while/lstm_cell_5/Add_1AddV2while/lstm_cell_5/Mul_8:z:0"while/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_1
)while/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)while/lstm_cell_5/clip_by_value/Minimum/yá
'while/lstm_cell_5/clip_by_value/MinimumMinimumwhile/lstm_cell_5/Add_1:z:02while/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2)
'while/lstm_cell_5/clip_by_value/Minimum
!while/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell_5/clip_by_value/yÙ
while/lstm_cell_5/clip_by_valueMaximum+while/lstm_cell_5/clip_by_value/Minimum:z:0*while/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
while/lstm_cell_5/clip_by_value¶
"while/lstm_cell_5/ReadVariableOp_1ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_1£
'while/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2)
'while/lstm_cell_5/strided_slice_1/stack§
)while/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2+
)while/lstm_cell_5/strided_slice_1/stack_1§
)while/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_1/stack_2ö
!while/lstm_cell_5/strided_slice_1StridedSlice*while/lstm_cell_5/ReadVariableOp_1:value:00while/lstm_cell_5/strided_slice_1/stack:output:02while/lstm_cell_5/strided_slice_1/stack_1:output:02while/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_1¾
while/lstm_cell_5/MatMul_5MatMulwhile/lstm_cell_5/mul_5:z:0*while/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_5º
while/lstm_cell_5/add_2AddV2$while/lstm_cell_5/BiasAdd_1:output:0$while/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_2{
while/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_2{
while/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_3­
while/lstm_cell_5/Mul_9Mulwhile/lstm_cell_5/add_2:z:0"while/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_9¯
while/lstm_cell_5/Add_3AddV2while/lstm_cell_5/Mul_9:z:0"while/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_3
+while/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_1/Minimum/yç
)while/lstm_cell_5/clip_by_value_1/MinimumMinimumwhile/lstm_cell_5/Add_3:z:04while/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_1/Minimum
#while/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_1/yá
!while/lstm_cell_5/clip_by_value_1Maximum-while/lstm_cell_5/clip_by_value_1/Minimum:z:0,while/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_1ª
while/lstm_cell_5/mul_10Mul%while/lstm_cell_5/clip_by_value_1:z:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_10¶
"while/lstm_cell_5/ReadVariableOp_2ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_2£
'while/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2)
'while/lstm_cell_5/strided_slice_2/stack§
)while/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2+
)while/lstm_cell_5/strided_slice_2/stack_1§
)while/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_2/stack_2ö
!while/lstm_cell_5/strided_slice_2StridedSlice*while/lstm_cell_5/ReadVariableOp_2:value:00while/lstm_cell_5/strided_slice_2/stack:output:02while/lstm_cell_5/strided_slice_2/stack_1:output:02while/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_2¾
while/lstm_cell_5/MatMul_6MatMulwhile/lstm_cell_5/mul_6:z:0*while/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_6º
while/lstm_cell_5/add_4AddV2$while/lstm_cell_5/BiasAdd_2:output:0$while/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_4
while/lstm_cell_5/TanhTanhwhile/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh¯
while/lstm_cell_5/mul_11Mul#while/lstm_cell_5/clip_by_value:z:0while/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_11ª
while/lstm_cell_5/add_5AddV2while/lstm_cell_5/mul_10:z:0while/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_5¶
"while/lstm_cell_5/ReadVariableOp_3ReadVariableOp+while_lstm_cell_5_readvariableop_resource_0* 
_output_shapes
:
úè*
dtype02$
"while/lstm_cell_5/ReadVariableOp_3£
'while/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2)
'while/lstm_cell_5/strided_slice_3/stack§
)while/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_5/strided_slice_3/stack_1§
)while/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_5/strided_slice_3/stack_2ö
!while/lstm_cell_5/strided_slice_3StridedSlice*while/lstm_cell_5/ReadVariableOp_3:value:00while/lstm_cell_5/strided_slice_3/stack:output:02while/lstm_cell_5/strided_slice_3/stack_1:output:02while/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2#
!while/lstm_cell_5/strided_slice_3¾
while/lstm_cell_5/MatMul_7MatMulwhile/lstm_cell_5/mul_7:z:0*while/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/MatMul_7º
while/lstm_cell_5/add_6AddV2$while/lstm_cell_5/BiasAdd_3:output:0$while/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/add_6{
while/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
while/lstm_cell_5/Const_4{
while/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell_5/Const_5¯
while/lstm_cell_5/Mul_12Mulwhile/lstm_cell_5/add_6:z:0"while/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Mul_12°
while/lstm_cell_5/Add_7AddV2while/lstm_cell_5/Mul_12:z:0"while/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Add_7
+while/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+while/lstm_cell_5/clip_by_value_2/Minimum/yç
)while/lstm_cell_5/clip_by_value_2/MinimumMinimumwhile/lstm_cell_5/Add_7:z:04while/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)while/lstm_cell_5/clip_by_value_2/Minimum
#while/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#while/lstm_cell_5/clip_by_value_2/yá
!while/lstm_cell_5/clip_by_value_2Maximum-while/lstm_cell_5/clip_by_value_2/Minimum:z:0,while/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!while/lstm_cell_5/clip_by_value_2
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/Tanh_1³
while/lstm_cell_5/mul_13Mul%while/lstm_cell_5/clip_by_value_2:z:0while/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/lstm_cell_5/mul_13à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_13:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_5/mul_13:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_5/add_5:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_5À

while/NoOpNoOp!^while/lstm_cell_5/ReadVariableOp#^while/lstm_cell_5/ReadVariableOp_1#^while/lstm_cell_5/ReadVariableOp_2#^while/lstm_cell_5/ReadVariableOp_3'^while/lstm_cell_5/split/ReadVariableOp)^while/lstm_cell_5/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_5_readvariableop_resource+while_lstm_cell_5_readvariableop_resource_0"h
1while_lstm_cell_5_split_1_readvariableop_resource3while_lstm_cell_5_split_1_readvariableop_resource_0"d
/while_lstm_cell_5_split_readvariableop_resource1while_lstm_cell_5_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : 2D
 while/lstm_cell_5/ReadVariableOp while/lstm_cell_5/ReadVariableOp2H
"while/lstm_cell_5/ReadVariableOp_1"while/lstm_cell_5/ReadVariableOp_12H
"while/lstm_cell_5/ReadVariableOp_2"while/lstm_cell_5/ReadVariableOp_22H
"while/lstm_cell_5/ReadVariableOp_3"while/lstm_cell_5/ReadVariableOp_32P
&while/lstm_cell_5/split/ReadVariableOp&while/lstm_cell_5/split/ReadVariableOp2T
(while/lstm_cell_5/split_1/ReadVariableOp(while/lstm_cell_5/split_1/ReadVariableOp: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
: 
Ô
m
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_39825

inputs
identityD
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô
¾
while_cond_42974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_42974___redundant_placeholder03
/while_while_cond_42974___redundant_placeholder13
/while_while_cond_42974___redundant_placeholder23
/while_while_cond_42974___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: ::::: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
:
À
·
&__inference_lstm_4_layer_call_fn_43900
inputs_0
unknown:
 è
	unknown_0:	è
	unknown_1:
úè
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_4_layer_call_and_return_conditional_losses_400802
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0
¼%
Ù
while_body_40348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_5_40372_0:
 è(
while_lstm_cell_5_40374_0:	è-
while_lstm_cell_5_40376_0:
úè
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_5_40372:
 è&
while_lstm_cell_5_40374:	è+
while_lstm_cell_5_40376:
úè¢)while/lstm_cell_5/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÚ
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_40372_0while_lstm_cell_5_40374_0while_lstm_cell_5_40376_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_402782+
)while/lstm_cell_5/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¤
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_4¤
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
while/Identity_5

while/NoOpNoOp*^while/lstm_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_5_40372while_lstm_cell_5_40372_0"4
while_lstm_cell_5_40374while_lstm_cell_5_40374_0"4
while_lstm_cell_5_40376while_lstm_cell_5_40376_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : 2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
: 
Î	

,__inference_sequential_4_layer_call_fn_41566
embedding_4_input
unknown:
^ 
	unknown_0:
 è
	unknown_1:	è
	unknown_2:
úè
	unknown_3:	ú
	unknown_4:
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallembedding_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_415342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+
_user_specified_nameembedding_4_input
ª
µ
&__inference_lstm_4_layer_call_fn_43922

inputs
unknown:
 è
	unknown_0:	è
	unknown_1:
úè
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_lstm_4_layer_call_and_return_conditional_losses_409702
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
à?

__inference__traced_save_44361
file_prefix5
1savev2_embedding_4_embeddings_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_4_lstm_cell_5_kernel_read_readvariableopB
>savev2_lstm_4_lstm_cell_5_recurrent_kernel_read_readvariableop6
2savev2_lstm_4_lstm_cell_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_4_embeddings_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop?
;savev2_adam_lstm_4_lstm_cell_5_kernel_m_read_readvariableopI
Esavev2_adam_lstm_4_lstm_cell_5_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_4_lstm_cell_5_bias_m_read_readvariableop<
8savev2_adam_embedding_4_embeddings_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop?
;savev2_adam_lstm_4_lstm_cell_5_kernel_v_read_readvariableopI
Esavev2_adam_lstm_4_lstm_cell_5_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_4_lstm_cell_5_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¦
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÀ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_4_embeddings_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_4_lstm_cell_5_kernel_read_readvariableop>savev2_lstm_4_lstm_cell_5_recurrent_kernel_read_readvariableop2savev2_lstm_4_lstm_cell_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_4_embeddings_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop;savev2_adam_lstm_4_lstm_cell_5_kernel_m_read_readvariableopEsavev2_adam_lstm_4_lstm_cell_5_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_4_lstm_cell_5_bias_m_read_readvariableop8savev2_adam_embedding_4_embeddings_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop;savev2_adam_lstm_4_lstm_cell_5_kernel_v_read_readvariableopEsavev2_adam_lstm_4_lstm_cell_5_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_4_lstm_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*ß
_input_shapesÍ
Ê: :
^ :	ú:: : : : : :
 è:
úè:è: : : : :
^ :	ú::
 è:
úè:è:
^ :	ú::
 è:
úè:è: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
^ :%!

_output_shapes
:	ú: 

_output_shapes
::

_output_shapes
: :
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
: :&	"
 
_output_shapes
:
 è:&
"
 
_output_shapes
:
úè:!

_output_shapes	
:è:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
^ :%!

_output_shapes
:	ú: 

_output_shapes
::&"
 
_output_shapes
:
 è:&"
 
_output_shapes
:
úè:!

_output_shapes	
:è:&"
 
_output_shapes
:
^ :%!

_output_shapes
:	ú: 

_output_shapes
::&"
 
_output_shapes
:
 è:&"
 
_output_shapes
:
úè:!

_output_shapes	
:è:

_output_shapes
: 
©
O
3__inference_spatial_dropout1d_4_layer_call_fn_42482

inputs
identityâ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_397932
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
l
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42428

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­Þ
´
G__inference_sequential_4_layer_call_and_return_conditional_losses_42372

inputs6
"embedding_4_embedding_lookup_41933:
^ D
0lstm_4_lstm_cell_5_split_readvariableop_resource:
 èA
2lstm_4_lstm_cell_5_split_1_readvariableop_resource:	è>
*lstm_4_lstm_cell_5_readvariableop_resource:
úè9
&dense_4_matmul_readvariableop_resource:	ú5
'dense_4_biasadd_readvariableop_resource:
identity¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp¢embedding_4/embedding_lookup¢!lstm_4/lstm_cell_5/ReadVariableOp¢#lstm_4/lstm_cell_5/ReadVariableOp_1¢#lstm_4/lstm_cell_5/ReadVariableOp_2¢#lstm_4/lstm_cell_5/ReadVariableOp_3¢'lstm_4/lstm_cell_5/split/ReadVariableOp¢)lstm_4/lstm_cell_5/split_1/ReadVariableOp¢lstm_4/whilev
embedding_4/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
embedding_4/Cast¹
embedding_4/embedding_lookupResourceGather"embedding_4_embedding_lookup_41933embedding_4/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_4/embedding_lookup/41933*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
dtype02
embedding_4/embedding_lookup
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_4/embedding_lookup/41933*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2'
%embedding_4/embedding_lookup/IdentityÆ
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2)
'embedding_4/embedding_lookup/Identity_1
spatial_dropout1d_4/ShapeShape0embedding_4/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
spatial_dropout1d_4/Shape
'spatial_dropout1d_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'spatial_dropout1d_4/strided_slice/stack 
)spatial_dropout1d_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_4/strided_slice/stack_1 
)spatial_dropout1d_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_4/strided_slice/stack_2Ú
!spatial_dropout1d_4/strided_sliceStridedSlice"spatial_dropout1d_4/Shape:output:00spatial_dropout1d_4/strided_slice/stack:output:02spatial_dropout1d_4/strided_slice/stack_1:output:02spatial_dropout1d_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout1d_4/strided_slice 
)spatial_dropout1d_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_4/strided_slice_1/stack¤
+spatial_dropout1d_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_4/strided_slice_1/stack_1¤
+spatial_dropout1d_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_4/strided_slice_1/stack_2ä
#spatial_dropout1d_4/strided_slice_1StridedSlice"spatial_dropout1d_4/Shape:output:02spatial_dropout1d_4/strided_slice_1/stack:output:04spatial_dropout1d_4/strided_slice_1/stack_1:output:04spatial_dropout1d_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#spatial_dropout1d_4/strided_slice_1
!spatial_dropout1d_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!spatial_dropout1d_4/dropout/Constß
spatial_dropout1d_4/dropout/MulMul0embedding_4/embedding_lookup/Identity_1:output:0*spatial_dropout1d_4/dropout/Const:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2!
spatial_dropout1d_4/dropout/Mulª
2spatial_dropout1d_4/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout1d_4/dropout/random_uniform/shape/1±
0spatial_dropout1d_4/dropout/random_uniform/shapePack*spatial_dropout1d_4/strided_slice:output:0;spatial_dropout1d_4/dropout/random_uniform/shape/1:output:0,spatial_dropout1d_4/strided_slice_1:output:0*
N*
T0*
_output_shapes
:22
0spatial_dropout1d_4/dropout/random_uniform/shape
8spatial_dropout1d_4/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout1d_4/dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02:
8spatial_dropout1d_4/dropout/random_uniform/RandomUniform
*spatial_dropout1d_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*spatial_dropout1d_4/dropout/GreaterEqual/y
(spatial_dropout1d_4/dropout/GreaterEqualGreaterEqualAspatial_dropout1d_4/dropout/random_uniform/RandomUniform:output:03spatial_dropout1d_4/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
(spatial_dropout1d_4/dropout/GreaterEqualÈ
 spatial_dropout1d_4/dropout/CastCast,spatial_dropout1d_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 spatial_dropout1d_4/dropout/CastÐ
!spatial_dropout1d_4/dropout/Mul_1Mul#spatial_dropout1d_4/dropout/Mul:z:0$spatial_dropout1d_4/dropout/Cast:y:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2#
!spatial_dropout1d_4/dropout/Mul_1q
lstm_4/ShapeShape%spatial_dropout1d_4/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_4/Shape
lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice/stack
lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_1
lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_2
lstm_4/strided_sliceStridedSlicelstm_4/Shape:output:0#lstm_4/strided_slice/stack:output:0%lstm_4/strided_slice/stack_1:output:0%lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_sliceq
lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
lstm_4/zeros/packed/1
lstm_4/zeros/packedPacklstm_4/strided_slice:output:0lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros/packedm
lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros/Const
lstm_4/zerosFilllstm_4/zeros/packed:output:0lstm_4/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/zerosu
lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ú2
lstm_4/zeros_1/packed/1¥
lstm_4/zeros_1/packedPacklstm_4/strided_slice:output:0 lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros_1/packedq
lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros_1/Const
lstm_4/zeros_1Filllstm_4/zeros_1/packed:output:0lstm_4/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/zeros_1
lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose/perm°
lstm_4/transpose	Transpose%spatial_dropout1d_4/dropout/Mul_1:z:0lstm_4/transpose/perm:output:0*
T0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿ 2
lstm_4/transposed
lstm_4/Shape_1Shapelstm_4/transpose:y:0*
T0*
_output_shapes
:2
lstm_4/Shape_1
lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_1/stack
lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_1
lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_2
lstm_4/strided_slice_1StridedSlicelstm_4/Shape_1:output:0%lstm_4/strided_slice_1/stack:output:0'lstm_4/strided_slice_1/stack_1:output:0'lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_slice_1
"lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_4/TensorArrayV2/element_shapeÎ
lstm_4/TensorArrayV2TensorListReserve+lstm_4/TensorArrayV2/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2Í
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2>
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_4/transpose:y:0Elstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_4/TensorArrayUnstack/TensorListFromTensor
lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_2/stack
lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_1
lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_2§
lstm_4/strided_slice_2StridedSlicelstm_4/transpose:y:0%lstm_4/strided_slice_2/stack:output:0'lstm_4/strided_slice_2/stack_1:output:0'lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
shrink_axis_mask2
lstm_4/strided_slice_2
"lstm_4/lstm_cell_5/ones_like/ShapeShapelstm_4/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_4/lstm_cell_5/ones_like/Shape
"lstm_4/lstm_cell_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_4/lstm_cell_5/ones_like/ConstÑ
lstm_4/lstm_cell_5/ones_likeFill+lstm_4/lstm_cell_5/ones_like/Shape:output:0+lstm_4/lstm_cell_5/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/lstm_cell_5/ones_like
 lstm_4/lstm_cell_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_4/lstm_cell_5/dropout/ConstÌ
lstm_4/lstm_cell_5/dropout/MulMul%lstm_4/lstm_cell_5/ones_like:output:0)lstm_4/lstm_cell_5/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_4/lstm_cell_5/dropout/Mul
 lstm_4/lstm_cell_5/dropout/ShapeShape%lstm_4/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_4/lstm_cell_5/dropout/Shape
7lstm_4/lstm_cell_5/dropout/random_uniform/RandomUniformRandomUniform)lstm_4/lstm_cell_5/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2¡óÏ29
7lstm_4/lstm_cell_5/dropout/random_uniform/RandomUniform
)lstm_4/lstm_cell_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2+
)lstm_4/lstm_cell_5/dropout/GreaterEqual/y
'lstm_4/lstm_cell_5/dropout/GreaterEqualGreaterEqual@lstm_4/lstm_cell_5/dropout/random_uniform/RandomUniform:output:02lstm_4/lstm_cell_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'lstm_4/lstm_cell_5/dropout/GreaterEqual¹
lstm_4/lstm_cell_5/dropout/CastCast+lstm_4/lstm_cell_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_4/lstm_cell_5/dropout/CastÇ
 lstm_4/lstm_cell_5/dropout/Mul_1Mul"lstm_4/lstm_cell_5/dropout/Mul:z:0#lstm_4/lstm_cell_5/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_4/lstm_cell_5/dropout/Mul_1
"lstm_4/lstm_cell_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_4/lstm_cell_5/dropout_1/ConstÒ
 lstm_4/lstm_cell_5/dropout_1/MulMul%lstm_4/lstm_cell_5/ones_like:output:0+lstm_4/lstm_cell_5/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_4/lstm_cell_5/dropout_1/Mul
"lstm_4/lstm_cell_5/dropout_1/ShapeShape%lstm_4/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_4/lstm_cell_5/dropout_1/Shape
9lstm_4/lstm_cell_5/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_4/lstm_cell_5/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2üÙ2;
9lstm_4/lstm_cell_5/dropout_1/random_uniform/RandomUniform
+lstm_4/lstm_cell_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_4/lstm_cell_5/dropout_1/GreaterEqual/y
)lstm_4/lstm_cell_5/dropout_1/GreaterEqualGreaterEqualBlstm_4/lstm_cell_5/dropout_1/random_uniform/RandomUniform:output:04lstm_4/lstm_cell_5/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_4/lstm_cell_5/dropout_1/GreaterEqual¿
!lstm_4/lstm_cell_5/dropout_1/CastCast-lstm_4/lstm_cell_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_4/lstm_cell_5/dropout_1/CastÏ
"lstm_4/lstm_cell_5/dropout_1/Mul_1Mul$lstm_4/lstm_cell_5/dropout_1/Mul:z:0%lstm_4/lstm_cell_5/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_4/lstm_cell_5/dropout_1/Mul_1
"lstm_4/lstm_cell_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_4/lstm_cell_5/dropout_2/ConstÒ
 lstm_4/lstm_cell_5/dropout_2/MulMul%lstm_4/lstm_cell_5/ones_like:output:0+lstm_4/lstm_cell_5/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_4/lstm_cell_5/dropout_2/Mul
"lstm_4/lstm_cell_5/dropout_2/ShapeShape%lstm_4/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_4/lstm_cell_5/dropout_2/Shape
9lstm_4/lstm_cell_5/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_4/lstm_cell_5/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Û2;
9lstm_4/lstm_cell_5/dropout_2/random_uniform/RandomUniform
+lstm_4/lstm_cell_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_4/lstm_cell_5/dropout_2/GreaterEqual/y
)lstm_4/lstm_cell_5/dropout_2/GreaterEqualGreaterEqualBlstm_4/lstm_cell_5/dropout_2/random_uniform/RandomUniform:output:04lstm_4/lstm_cell_5/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_4/lstm_cell_5/dropout_2/GreaterEqual¿
!lstm_4/lstm_cell_5/dropout_2/CastCast-lstm_4/lstm_cell_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_4/lstm_cell_5/dropout_2/CastÏ
"lstm_4/lstm_cell_5/dropout_2/Mul_1Mul$lstm_4/lstm_cell_5/dropout_2/Mul:z:0%lstm_4/lstm_cell_5/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_4/lstm_cell_5/dropout_2/Mul_1
"lstm_4/lstm_cell_5/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_4/lstm_cell_5/dropout_3/ConstÒ
 lstm_4/lstm_cell_5/dropout_3/MulMul%lstm_4/lstm_cell_5/ones_like:output:0+lstm_4/lstm_cell_5/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_4/lstm_cell_5/dropout_3/Mul
"lstm_4/lstm_cell_5/dropout_3/ShapeShape%lstm_4/lstm_cell_5/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_4/lstm_cell_5/dropout_3/Shape
9lstm_4/lstm_cell_5/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_4/lstm_cell_5/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Ì¬02;
9lstm_4/lstm_cell_5/dropout_3/random_uniform/RandomUniform
+lstm_4/lstm_cell_5/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_4/lstm_cell_5/dropout_3/GreaterEqual/y
)lstm_4/lstm_cell_5/dropout_3/GreaterEqualGreaterEqualBlstm_4/lstm_cell_5/dropout_3/random_uniform/RandomUniform:output:04lstm_4/lstm_cell_5/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)lstm_4/lstm_cell_5/dropout_3/GreaterEqual¿
!lstm_4/lstm_cell_5/dropout_3/CastCast-lstm_4/lstm_cell_5/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_4/lstm_cell_5/dropout_3/CastÏ
"lstm_4/lstm_cell_5/dropout_3/Mul_1Mul$lstm_4/lstm_cell_5/dropout_3/Mul:z:0%lstm_4/lstm_cell_5/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_4/lstm_cell_5/dropout_3/Mul_1
$lstm_4/lstm_cell_5/ones_like_1/ShapeShapelstm_4/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_4/lstm_cell_5/ones_like_1/Shape
$lstm_4/lstm_cell_5/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_4/lstm_cell_5/ones_like_1/ConstÙ
lstm_4/lstm_cell_5/ones_like_1Fill-lstm_4/lstm_cell_5/ones_like_1/Shape:output:0-lstm_4/lstm_cell_5/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
lstm_4/lstm_cell_5/ones_like_1
"lstm_4/lstm_cell_5/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_4/lstm_cell_5/dropout_4/ConstÔ
 lstm_4/lstm_cell_5/dropout_4/MulMul'lstm_4/lstm_cell_5/ones_like_1:output:0+lstm_4/lstm_cell_5/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 lstm_4/lstm_cell_5/dropout_4/Mul
"lstm_4/lstm_cell_5/dropout_4/ShapeShape'lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_4/lstm_cell_5/dropout_4/Shape
9lstm_4/lstm_cell_5/dropout_4/random_uniform/RandomUniformRandomUniform+lstm_4/lstm_cell_5/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2ÝÑÄ2;
9lstm_4/lstm_cell_5/dropout_4/random_uniform/RandomUniform
+lstm_4/lstm_cell_5/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_4/lstm_cell_5/dropout_4/GreaterEqual/y
)lstm_4/lstm_cell_5/dropout_4/GreaterEqualGreaterEqualBlstm_4/lstm_cell_5/dropout_4/random_uniform/RandomUniform:output:04lstm_4/lstm_cell_5/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)lstm_4/lstm_cell_5/dropout_4/GreaterEqual¿
!lstm_4/lstm_cell_5/dropout_4/CastCast-lstm_4/lstm_cell_5/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/lstm_cell_5/dropout_4/CastÏ
"lstm_4/lstm_cell_5/dropout_4/Mul_1Mul$lstm_4/lstm_cell_5/dropout_4/Mul:z:0%lstm_4/lstm_cell_5/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/lstm_cell_5/dropout_4/Mul_1
"lstm_4/lstm_cell_5/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_4/lstm_cell_5/dropout_5/ConstÔ
 lstm_4/lstm_cell_5/dropout_5/MulMul'lstm_4/lstm_cell_5/ones_like_1:output:0+lstm_4/lstm_cell_5/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 lstm_4/lstm_cell_5/dropout_5/Mul
"lstm_4/lstm_cell_5/dropout_5/ShapeShape'lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_4/lstm_cell_5/dropout_5/Shape
9lstm_4/lstm_cell_5/dropout_5/random_uniform/RandomUniformRandomUniform+lstm_4/lstm_cell_5/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2ÁüÄ2;
9lstm_4/lstm_cell_5/dropout_5/random_uniform/RandomUniform
+lstm_4/lstm_cell_5/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_4/lstm_cell_5/dropout_5/GreaterEqual/y
)lstm_4/lstm_cell_5/dropout_5/GreaterEqualGreaterEqualBlstm_4/lstm_cell_5/dropout_5/random_uniform/RandomUniform:output:04lstm_4/lstm_cell_5/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)lstm_4/lstm_cell_5/dropout_5/GreaterEqual¿
!lstm_4/lstm_cell_5/dropout_5/CastCast-lstm_4/lstm_cell_5/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/lstm_cell_5/dropout_5/CastÏ
"lstm_4/lstm_cell_5/dropout_5/Mul_1Mul$lstm_4/lstm_cell_5/dropout_5/Mul:z:0%lstm_4/lstm_cell_5/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/lstm_cell_5/dropout_5/Mul_1
"lstm_4/lstm_cell_5/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_4/lstm_cell_5/dropout_6/ConstÔ
 lstm_4/lstm_cell_5/dropout_6/MulMul'lstm_4/lstm_cell_5/ones_like_1:output:0+lstm_4/lstm_cell_5/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 lstm_4/lstm_cell_5/dropout_6/Mul
"lstm_4/lstm_cell_5/dropout_6/ShapeShape'lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_4/lstm_cell_5/dropout_6/Shape
9lstm_4/lstm_cell_5/dropout_6/random_uniform/RandomUniformRandomUniform+lstm_4/lstm_cell_5/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2Þßü2;
9lstm_4/lstm_cell_5/dropout_6/random_uniform/RandomUniform
+lstm_4/lstm_cell_5/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_4/lstm_cell_5/dropout_6/GreaterEqual/y
)lstm_4/lstm_cell_5/dropout_6/GreaterEqualGreaterEqualBlstm_4/lstm_cell_5/dropout_6/random_uniform/RandomUniform:output:04lstm_4/lstm_cell_5/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)lstm_4/lstm_cell_5/dropout_6/GreaterEqual¿
!lstm_4/lstm_cell_5/dropout_6/CastCast-lstm_4/lstm_cell_5/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/lstm_cell_5/dropout_6/CastÏ
"lstm_4/lstm_cell_5/dropout_6/Mul_1Mul$lstm_4/lstm_cell_5/dropout_6/Mul:z:0%lstm_4/lstm_cell_5/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/lstm_cell_5/dropout_6/Mul_1
"lstm_4/lstm_cell_5/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_4/lstm_cell_5/dropout_7/ConstÔ
 lstm_4/lstm_cell_5/dropout_7/MulMul'lstm_4/lstm_cell_5/ones_like_1:output:0+lstm_4/lstm_cell_5/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 lstm_4/lstm_cell_5/dropout_7/Mul
"lstm_4/lstm_cell_5/dropout_7/ShapeShape'lstm_4/lstm_cell_5/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_4/lstm_cell_5/dropout_7/Shape
9lstm_4/lstm_cell_5/dropout_7/random_uniform/RandomUniformRandomUniform+lstm_4/lstm_cell_5/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype0*
seed±ÿå)*
seed2×ð§2;
9lstm_4/lstm_cell_5/dropout_7/random_uniform/RandomUniform
+lstm_4/lstm_cell_5/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_4/lstm_cell_5/dropout_7/GreaterEqual/y
)lstm_4/lstm_cell_5/dropout_7/GreaterEqualGreaterEqualBlstm_4/lstm_cell_5/dropout_7/random_uniform/RandomUniform:output:04lstm_4/lstm_cell_5/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)lstm_4/lstm_cell_5/dropout_7/GreaterEqual¿
!lstm_4/lstm_cell_5/dropout_7/CastCast-lstm_4/lstm_cell_5/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!lstm_4/lstm_cell_5/dropout_7/CastÏ
"lstm_4/lstm_cell_5/dropout_7/Mul_1Mul$lstm_4/lstm_cell_5/dropout_7/Mul:z:0%lstm_4/lstm_cell_5/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/lstm_cell_5/dropout_7/Mul_1±
lstm_4/lstm_cell_5/mulMullstm_4/strided_slice_2:output:0$lstm_4/lstm_cell_5/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/lstm_cell_5/mul·
lstm_4/lstm_cell_5/mul_1Mullstm_4/strided_slice_2:output:0&lstm_4/lstm_cell_5/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/lstm_cell_5/mul_1·
lstm_4/lstm_cell_5/mul_2Mullstm_4/strided_slice_2:output:0&lstm_4/lstm_cell_5/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/lstm_cell_5/mul_2·
lstm_4/lstm_cell_5/mul_3Mullstm_4/strided_slice_2:output:0&lstm_4/lstm_cell_5/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_4/lstm_cell_5/mul_3
"lstm_4/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_4/lstm_cell_5/split/split_dimÅ
'lstm_4/lstm_cell_5/split/ReadVariableOpReadVariableOp0lstm_4_lstm_cell_5_split_readvariableop_resource* 
_output_shapes
:
 è*
dtype02)
'lstm_4/lstm_cell_5/split/ReadVariableOpû
lstm_4/lstm_cell_5/splitSplit+lstm_4/lstm_cell_5/split/split_dim:output:0/lstm_4/lstm_cell_5/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
 ú:
 ú:
 ú:
 ú*
	num_split2
lstm_4/lstm_cell_5/split²
lstm_4/lstm_cell_5/MatMulMatMullstm_4/lstm_cell_5/mul:z:0!lstm_4/lstm_cell_5/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul¸
lstm_4/lstm_cell_5/MatMul_1MatMullstm_4/lstm_cell_5/mul_1:z:0!lstm_4/lstm_cell_5/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_1¸
lstm_4/lstm_cell_5/MatMul_2MatMullstm_4/lstm_cell_5/mul_2:z:0!lstm_4/lstm_cell_5/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_2¸
lstm_4/lstm_cell_5/MatMul_3MatMullstm_4/lstm_cell_5/mul_3:z:0!lstm_4/lstm_cell_5/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_3
$lstm_4/lstm_cell_5/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_4/lstm_cell_5/split_1/split_dimÆ
)lstm_4/lstm_cell_5/split_1/ReadVariableOpReadVariableOp2lstm_4_lstm_cell_5_split_1_readvariableop_resource*
_output_shapes	
:è*
dtype02+
)lstm_4/lstm_cell_5/split_1/ReadVariableOpï
lstm_4/lstm_cell_5/split_1Split-lstm_4/lstm_cell_5/split_1/split_dim:output:01lstm_4/lstm_cell_5/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ú:ú:ú:ú*
	num_split2
lstm_4/lstm_cell_5/split_1À
lstm_4/lstm_cell_5/BiasAddBiasAdd#lstm_4/lstm_cell_5/MatMul:product:0#lstm_4/lstm_cell_5/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/BiasAddÆ
lstm_4/lstm_cell_5/BiasAdd_1BiasAdd%lstm_4/lstm_cell_5/MatMul_1:product:0#lstm_4/lstm_cell_5/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/BiasAdd_1Æ
lstm_4/lstm_cell_5/BiasAdd_2BiasAdd%lstm_4/lstm_cell_5/MatMul_2:product:0#lstm_4/lstm_cell_5/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/BiasAdd_2Æ
lstm_4/lstm_cell_5/BiasAdd_3BiasAdd%lstm_4/lstm_cell_5/MatMul_3:product:0#lstm_4/lstm_cell_5/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/BiasAdd_3­
lstm_4/lstm_cell_5/mul_4Mullstm_4/zeros:output:0&lstm_4/lstm_cell_5/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_4­
lstm_4/lstm_cell_5/mul_5Mullstm_4/zeros:output:0&lstm_4/lstm_cell_5/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_5­
lstm_4/lstm_cell_5/mul_6Mullstm_4/zeros:output:0&lstm_4/lstm_cell_5/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_6­
lstm_4/lstm_cell_5/mul_7Mullstm_4/zeros:output:0&lstm_4/lstm_cell_5/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_7³
!lstm_4/lstm_cell_5/ReadVariableOpReadVariableOp*lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02#
!lstm_4/lstm_cell_5/ReadVariableOp¡
&lstm_4/lstm_cell_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_4/lstm_cell_5/strided_slice/stack¥
(lstm_4/lstm_cell_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ú   2*
(lstm_4/lstm_cell_5/strided_slice/stack_1¥
(lstm_4/lstm_cell_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_4/lstm_cell_5/strided_slice/stack_2ð
 lstm_4/lstm_cell_5/strided_sliceStridedSlice)lstm_4/lstm_cell_5/ReadVariableOp:value:0/lstm_4/lstm_cell_5/strided_slice/stack:output:01lstm_4/lstm_cell_5/strided_slice/stack_1:output:01lstm_4/lstm_cell_5/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2"
 lstm_4/lstm_cell_5/strided_sliceÀ
lstm_4/lstm_cell_5/MatMul_4MatMullstm_4/lstm_cell_5/mul_4:z:0)lstm_4/lstm_cell_5/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_4¸
lstm_4/lstm_cell_5/addAddV2#lstm_4/lstm_cell_5/BiasAdd:output:0%lstm_4/lstm_cell_5/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/addy
lstm_4/lstm_cell_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_4/lstm_cell_5/Const}
lstm_4/lstm_cell_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_4/lstm_cell_5/Const_1­
lstm_4/lstm_cell_5/Mul_8Mullstm_4/lstm_cell_5/add:z:0!lstm_4/lstm_cell_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Mul_8³
lstm_4/lstm_cell_5/Add_1AddV2lstm_4/lstm_cell_5/Mul_8:z:0#lstm_4/lstm_cell_5/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Add_1
*lstm_4/lstm_cell_5/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_4/lstm_cell_5/clip_by_value/Minimum/yå
(lstm_4/lstm_cell_5/clip_by_value/MinimumMinimumlstm_4/lstm_cell_5/Add_1:z:03lstm_4/lstm_cell_5/clip_by_value/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2*
(lstm_4/lstm_cell_5/clip_by_value/Minimum
"lstm_4/lstm_cell_5/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"lstm_4/lstm_cell_5/clip_by_value/yÝ
 lstm_4/lstm_cell_5/clip_by_valueMaximum,lstm_4/lstm_cell_5/clip_by_value/Minimum:z:0+lstm_4/lstm_cell_5/clip_by_value/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2"
 lstm_4/lstm_cell_5/clip_by_value·
#lstm_4/lstm_cell_5/ReadVariableOp_1ReadVariableOp*lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02%
#lstm_4/lstm_cell_5/ReadVariableOp_1¥
(lstm_4/lstm_cell_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ú   2*
(lstm_4/lstm_cell_5/strided_slice_1/stack©
*lstm_4/lstm_cell_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ô  2,
*lstm_4/lstm_cell_5/strided_slice_1/stack_1©
*lstm_4/lstm_cell_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_4/lstm_cell_5/strided_slice_1/stack_2ü
"lstm_4/lstm_cell_5/strided_slice_1StridedSlice+lstm_4/lstm_cell_5/ReadVariableOp_1:value:01lstm_4/lstm_cell_5/strided_slice_1/stack:output:03lstm_4/lstm_cell_5/strided_slice_1/stack_1:output:03lstm_4/lstm_cell_5/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2$
"lstm_4/lstm_cell_5/strided_slice_1Â
lstm_4/lstm_cell_5/MatMul_5MatMullstm_4/lstm_cell_5/mul_5:z:0+lstm_4/lstm_cell_5/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_5¾
lstm_4/lstm_cell_5/add_2AddV2%lstm_4/lstm_cell_5/BiasAdd_1:output:0%lstm_4/lstm_cell_5/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/add_2}
lstm_4/lstm_cell_5/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_4/lstm_cell_5/Const_2}
lstm_4/lstm_cell_5/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_4/lstm_cell_5/Const_3±
lstm_4/lstm_cell_5/Mul_9Mullstm_4/lstm_cell_5/add_2:z:0#lstm_4/lstm_cell_5/Const_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Mul_9³
lstm_4/lstm_cell_5/Add_3AddV2lstm_4/lstm_cell_5/Mul_9:z:0#lstm_4/lstm_cell_5/Const_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Add_3¡
,lstm_4/lstm_cell_5/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_4/lstm_cell_5/clip_by_value_1/Minimum/yë
*lstm_4/lstm_cell_5/clip_by_value_1/MinimumMinimumlstm_4/lstm_cell_5/Add_3:z:05lstm_4/lstm_cell_5/clip_by_value_1/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2,
*lstm_4/lstm_cell_5/clip_by_value_1/Minimum
$lstm_4/lstm_cell_5/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$lstm_4/lstm_cell_5/clip_by_value_1/yå
"lstm_4/lstm_cell_5/clip_by_value_1Maximum.lstm_4/lstm_cell_5/clip_by_value_1/Minimum:z:0-lstm_4/lstm_cell_5/clip_by_value_1/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/lstm_cell_5/clip_by_value_1±
lstm_4/lstm_cell_5/mul_10Mul&lstm_4/lstm_cell_5/clip_by_value_1:z:0lstm_4/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_10·
#lstm_4/lstm_cell_5/ReadVariableOp_2ReadVariableOp*lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02%
#lstm_4/lstm_cell_5/ReadVariableOp_2¥
(lstm_4/lstm_cell_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ô  2*
(lstm_4/lstm_cell_5/strided_slice_2/stack©
*lstm_4/lstm_cell_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    î  2,
*lstm_4/lstm_cell_5/strided_slice_2/stack_1©
*lstm_4/lstm_cell_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_4/lstm_cell_5/strided_slice_2/stack_2ü
"lstm_4/lstm_cell_5/strided_slice_2StridedSlice+lstm_4/lstm_cell_5/ReadVariableOp_2:value:01lstm_4/lstm_cell_5/strided_slice_2/stack:output:03lstm_4/lstm_cell_5/strided_slice_2/stack_1:output:03lstm_4/lstm_cell_5/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2$
"lstm_4/lstm_cell_5/strided_slice_2Â
lstm_4/lstm_cell_5/MatMul_6MatMullstm_4/lstm_cell_5/mul_6:z:0+lstm_4/lstm_cell_5/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_6¾
lstm_4/lstm_cell_5/add_4AddV2%lstm_4/lstm_cell_5/BiasAdd_2:output:0%lstm_4/lstm_cell_5/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/add_4
lstm_4/lstm_cell_5/TanhTanhlstm_4/lstm_cell_5/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Tanh³
lstm_4/lstm_cell_5/mul_11Mul$lstm_4/lstm_cell_5/clip_by_value:z:0lstm_4/lstm_cell_5/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_11®
lstm_4/lstm_cell_5/add_5AddV2lstm_4/lstm_cell_5/mul_10:z:0lstm_4/lstm_cell_5/mul_11:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/add_5·
#lstm_4/lstm_cell_5/ReadVariableOp_3ReadVariableOp*lstm_4_lstm_cell_5_readvariableop_resource* 
_output_shapes
:
úè*
dtype02%
#lstm_4/lstm_cell_5/ReadVariableOp_3¥
(lstm_4/lstm_cell_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    î  2*
(lstm_4/lstm_cell_5/strided_slice_3/stack©
*lstm_4/lstm_cell_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_4/lstm_cell_5/strided_slice_3/stack_1©
*lstm_4/lstm_cell_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_4/lstm_cell_5/strided_slice_3/stack_2ü
"lstm_4/lstm_cell_5/strided_slice_3StridedSlice+lstm_4/lstm_cell_5/ReadVariableOp_3:value:01lstm_4/lstm_cell_5/strided_slice_3/stack:output:03lstm_4/lstm_cell_5/strided_slice_3/stack_1:output:03lstm_4/lstm_cell_5/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
úú*

begin_mask*
end_mask2$
"lstm_4/lstm_cell_5/strided_slice_3Â
lstm_4/lstm_cell_5/MatMul_7MatMullstm_4/lstm_cell_5/mul_7:z:0+lstm_4/lstm_cell_5/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/MatMul_7¾
lstm_4/lstm_cell_5/add_6AddV2%lstm_4/lstm_cell_5/BiasAdd_3:output:0%lstm_4/lstm_cell_5/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/add_6}
lstm_4/lstm_cell_5/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
lstm_4/lstm_cell_5/Const_4}
lstm_4/lstm_cell_5/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_4/lstm_cell_5/Const_5³
lstm_4/lstm_cell_5/Mul_12Mullstm_4/lstm_cell_5/add_6:z:0#lstm_4/lstm_cell_5/Const_4:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Mul_12´
lstm_4/lstm_cell_5/Add_7AddV2lstm_4/lstm_cell_5/Mul_12:z:0#lstm_4/lstm_cell_5/Const_5:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Add_7¡
,lstm_4/lstm_cell_5/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,lstm_4/lstm_cell_5/clip_by_value_2/Minimum/yë
*lstm_4/lstm_cell_5/clip_by_value_2/MinimumMinimumlstm_4/lstm_cell_5/Add_7:z:05lstm_4/lstm_cell_5/clip_by_value_2/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2,
*lstm_4/lstm_cell_5/clip_by_value_2/Minimum
$lstm_4/lstm_cell_5/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$lstm_4/lstm_cell_5/clip_by_value_2/yå
"lstm_4/lstm_cell_5/clip_by_value_2Maximum.lstm_4/lstm_cell_5/clip_by_value_2/Minimum:z:0-lstm_4/lstm_cell_5/clip_by_value_2/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2$
"lstm_4/lstm_cell_5/clip_by_value_2
lstm_4/lstm_cell_5/Tanh_1Tanhlstm_4/lstm_cell_5/add_5:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/Tanh_1·
lstm_4/lstm_cell_5/mul_13Mul&lstm_4/lstm_cell_5/clip_by_value_2:z:0lstm_4/lstm_cell_5/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
lstm_4/lstm_cell_5/mul_13
$lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   2&
$lstm_4/TensorArrayV2_1/element_shapeÔ
lstm_4/TensorArrayV2_1TensorListReserve-lstm_4/TensorArrayV2_1/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2_1\
lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/time
lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_4/while/maximum_iterationsx
lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/while/loop_counteré
lstm_4/whileWhile"lstm_4/while/loop_counter:output:0(lstm_4/while/maximum_iterations:output:0lstm_4/time:output:0lstm_4/TensorArrayV2_1:handle:0lstm_4/zeros:output:0lstm_4/zeros_1:output:0lstm_4/strided_slice_1:output:0>lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_4_lstm_cell_5_split_readvariableop_resource2lstm_4_lstm_cell_5_split_1_readvariableop_resource*lstm_4_lstm_cell_5_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_4_while_body_42147*#
condR
lstm_4_while_cond_42146*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: : : : : *
parallel_iterations 2
lstm_4/whileÃ
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿú   29
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_4/TensorArrayV2Stack/TensorListStackTensorListStacklstm_4/while:output:3@lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
: ÿÿÿÿÿÿÿÿÿú*
element_dtype02+
)lstm_4/TensorArrayV2Stack/TensorListStack
lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_4/strided_slice_3/stack
lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_4/strided_slice_3/stack_1
lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_3/stack_2Å
lstm_4/strided_slice_3StridedSlice2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_4/strided_slice_3/stack:output:0'lstm_4/strided_slice_3/stack_1:output:0'lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
shrink_axis_mask2
lstm_4/strided_slice_3
lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose_1/permÃ
lstm_4/transpose_1	Transpose2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_4/transpose_1/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ú2
lstm_4/transpose_1¦
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	ú*
dtype02
dense_4/MatMul/ReadVariableOp¤
dense_4/MatMulMatMullstm_4/strided_slice_3:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_4/MatMul¤
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp¡
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_4/BiasAddy
dense_4/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_4/Softmaxt
IdentityIdentitydense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity©
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^embedding_4/embedding_lookup"^lstm_4/lstm_cell_5/ReadVariableOp$^lstm_4/lstm_cell_5/ReadVariableOp_1$^lstm_4/lstm_cell_5/ReadVariableOp_2$^lstm_4/lstm_cell_5/ReadVariableOp_3(^lstm_4/lstm_cell_5/split/ReadVariableOp*^lstm_4/lstm_cell_5/split_1/ReadVariableOp^lstm_4/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2F
!lstm_4/lstm_cell_5/ReadVariableOp!lstm_4/lstm_cell_5/ReadVariableOp2J
#lstm_4/lstm_cell_5/ReadVariableOp_1#lstm_4/lstm_cell_5/ReadVariableOp_12J
#lstm_4/lstm_cell_5/ReadVariableOp_2#lstm_4/lstm_cell_5/ReadVariableOp_22J
#lstm_4/lstm_cell_5/ReadVariableOp_3#lstm_4/lstm_cell_5/ReadVariableOp_32R
'lstm_4/lstm_cell_5/split/ReadVariableOp'lstm_4/lstm_cell_5/split/ReadVariableOp2V
)lstm_4/lstm_cell_5/split_1/ReadVariableOp)lstm_4/lstm_cell_5/split_1/ReadVariableOp2
lstm_4/whilelstm_4/while:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ô
¾
while_cond_43670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_43670___redundant_placeholder03
/while_while_cond_43670___redundant_placeholder13
/while_while_cond_43670___redundant_placeholder23
/while_while_cond_43670___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿú:ÿÿÿÿÿÿÿÿÿú: ::::: 
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
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú:

_output_shapes
: :

_output_shapes
:"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¿
serving_default«
P
embedding_4_input;
#serving_default_embedding_4_input:0ÿÿÿÿÿÿÿÿÿ ;
dense_40
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ú
è
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
*c&call_and_return_all_conditional_losses
d_default_save_signature
e__call__"
_tf_keras_sequential
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
*f&call_and_return_all_conditional_losses
g__call__"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
*h&call_and_return_all_conditional_losses
i__call__"
_tf_keras_layer
Ã
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
*j&call_and_return_all_conditional_losses
k__call__"
_tf_keras_rnn_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*l&call_and_return_all_conditional_losses
m__call__"
_tf_keras_layer
¿
 iter

!beta_1

"beta_2
	#decay
$learning_ratemWmXmY%mZ&m['m\v]v^v_%v`&va'vb"
	optimizer
J
0
%1
&2
'3
4
5"
trackable_list_wrapper
J
0
%1
&2
'3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
(layer_metrics
	variables
)layer_regularization_losses
*metrics

+layers
trainable_variables
,non_trainable_variables
regularization_losses
e__call__
d_default_save_signature
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
,
nserving_default"
signature_map
*:(
^ 2embedding_4/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
-layer_metrics
	variables
.layer_regularization_losses
/metrics

0layers
trainable_variables
1non_trainable_variables
regularization_losses
g__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
2layer_metrics
	variables
3layer_regularization_losses
4metrics

5layers
trainable_variables
6non_trainable_variables
regularization_losses
i__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
á
7
state_size

%kernel
&recurrent_kernel
'bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
*o&call_and_return_all_conditional_losses
p__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

<states
=layer_metrics
	variables
>layer_regularization_losses
?metrics

@layers
trainable_variables
Anon_trainable_variables
regularization_losses
k__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
!:	ú2dense_4/kernel
:2dense_4/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Blayer_metrics
	variables
Clayer_regularization_losses
Dmetrics

Elayers
trainable_variables
Fnon_trainable_variables
regularization_losses
m__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+
 è2lstm_4/lstm_cell_5/kernel
7:5
úè2#lstm_4/lstm_cell_5/recurrent_kernel
&:$è2lstm_4/lstm_cell_5/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
<
0
1
2
3"
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
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Ilayer_metrics
8	variables
Jlayer_regularization_losses
Kmetrics

Llayers
9trainable_variables
Mnon_trainable_variables
:regularization_losses
p__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	Ntotal
	Ocount
P	variables
Q	keras_api"
_tf_keras_metric
^
	Rtotal
	Scount
T
_fn_kwargs
U	variables
V	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
R0
S1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
/:-
^ 2Adam/embedding_4/embeddings/m
&:$	ú2Adam/dense_4/kernel/m
:2Adam/dense_4/bias/m
2:0
 è2 Adam/lstm_4/lstm_cell_5/kernel/m
<::
úè2*Adam/lstm_4/lstm_cell_5/recurrent_kernel/m
+:)è2Adam/lstm_4/lstm_cell_5/bias/m
/:-
^ 2Adam/embedding_4/embeddings/v
&:$	ú2Adam/dense_4/kernel/v
:2Adam/dense_4/bias/v
2:0
 è2 Adam/lstm_4/lstm_cell_5/kernel/v
<::
úè2*Adam/lstm_4/lstm_cell_5/recurrent_kernel/v
+:)è2Adam/lstm_4/lstm_cell_5/bias/v
ê2ç
G__inference_sequential_4_layer_call_and_return_conditional_losses_41929
G__inference_sequential_4_layer_call_and_return_conditional_losses_42372
G__inference_sequential_4_layer_call_and_return_conditional_losses_41586
G__inference_sequential_4_layer_call_and_return_conditional_losses_41606À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÕBÒ
 __inference__wrapped_model_39784embedding_4_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þ2û
,__inference_sequential_4_layer_call_fn_41011
,__inference_sequential_4_layer_call_fn_42389
,__inference_sequential_4_layer_call_fn_42406
,__inference_sequential_4_layer_call_fn_41566À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ð2í
F__inference_embedding_4_layer_call_and_return_conditional_losses_42416¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_embedding_4_layer_call_fn_42423¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ú2÷
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42428
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42450
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42455
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42477´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
3__inference_spatial_dropout1d_4_layer_call_fn_42482
3__inference_spatial_dropout1d_4_layer_call_fn_42487
3__inference_spatial_dropout1d_4_layer_call_fn_42492
3__inference_spatial_dropout1d_4_layer_call_fn_42497´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ç2ä
A__inference_lstm_4_layer_call_and_return_conditional_losses_42781
A__inference_lstm_4_layer_call_and_return_conditional_losses_43193
A__inference_lstm_4_layer_call_and_return_conditional_losses_43477
A__inference_lstm_4_layer_call_and_return_conditional_losses_43889Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
û2ø
&__inference_lstm_4_layer_call_fn_43900
&__inference_lstm_4_layer_call_fn_43911
&__inference_lstm_4_layer_call_fn_43922
&__inference_lstm_4_layer_call_fn_43933Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ì2é
B__inference_dense_4_layer_call_and_return_conditional_losses_43944¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_dense_4_layer_call_fn_43953¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÔBÑ
#__inference_signature_wrapper_41631embedding_4_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_44056
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_44223¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
+__inference_lstm_cell_5_layer_call_fn_44240
+__inference_lstm_cell_5_layer_call_fn_44257¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 __inference__wrapped_model_39784x%'&;¢8
1¢.
,)
embedding_4_inputÿÿÿÿÿÿÿÿÿ 
ª "1ª.
,
dense_4!
dense_4ÿÿÿÿÿÿÿÿÿ£
B__inference_dense_4_layer_call_and_return_conditional_losses_43944]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
'__inference_dense_4_layer_call_fn_43953P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "ÿÿÿÿÿÿÿÿÿ¬
F__inference_embedding_4_layer_call_and_return_conditional_losses_42416b0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ 
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ  
 
+__inference_embedding_4_layer_call_fn_42423U0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ  Ä
A__inference_lstm_4_layer_call_and_return_conditional_losses_42781%'&P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 Ä
A__inference_lstm_4_layer_call_and_return_conditional_losses_43193%'&P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 µ
A__inference_lstm_4_layer_call_and_return_conditional_losses_43477p%'&A¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿ  

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 µ
A__inference_lstm_4_layer_call_and_return_conditional_losses_43889p%'&A¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿ  

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 
&__inference_lstm_4_layer_call_fn_43900r%'&P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿú
&__inference_lstm_4_layer_call_fn_43911r%'&P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 

 
p

 
ª "ÿÿÿÿÿÿÿÿÿú
&__inference_lstm_4_layer_call_fn_43922c%'&A¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿ  

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿú
&__inference_lstm_4_layer_call_fn_43933c%'&A¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿ  

 
p

 
ª "ÿÿÿÿÿÿÿÿÿúÏ
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_44056%'&¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ 
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿú
# 
states/1ÿÿÿÿÿÿÿÿÿú
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿú
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿú
 
0/1/1ÿÿÿÿÿÿÿÿÿú
 Ï
F__inference_lstm_cell_5_layer_call_and_return_conditional_losses_44223%'&¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ 
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿú
# 
states/1ÿÿÿÿÿÿÿÿÿú
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿú
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿú
 
0/1/1ÿÿÿÿÿÿÿÿÿú
 ¤
+__inference_lstm_cell_5_layer_call_fn_44240ô%'&¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ 
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿú
# 
states/1ÿÿÿÿÿÿÿÿÿú
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿú
C@

1/0ÿÿÿÿÿÿÿÿÿú

1/1ÿÿÿÿÿÿÿÿÿú¤
+__inference_lstm_cell_5_layer_call_fn_44257ô%'&¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ 
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿú
# 
states/1ÿÿÿÿÿÿÿÿÿú
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿú
C@

1/0ÿÿÿÿÿÿÿÿÿú

1/1ÿÿÿÿÿÿÿÿÿú¿
G__inference_sequential_4_layer_call_and_return_conditional_losses_41586t%'&C¢@
9¢6
,)
embedding_4_inputÿÿÿÿÿÿÿÿÿ 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
G__inference_sequential_4_layer_call_and_return_conditional_losses_41606t%'&C¢@
9¢6
,)
embedding_4_inputÿÿÿÿÿÿÿÿÿ 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
G__inference_sequential_4_layer_call_and_return_conditional_losses_41929i%'&8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
G__inference_sequential_4_layer_call_and_return_conditional_losses_42372i%'&8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_sequential_4_layer_call_fn_41011g%'&C¢@
9¢6
,)
embedding_4_inputÿÿÿÿÿÿÿÿÿ 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_4_layer_call_fn_41566g%'&C¢@
9¢6
,)
embedding_4_inputÿÿÿÿÿÿÿÿÿ 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_4_layer_call_fn_42389\%'&8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_4_layer_call_fn_42406\%'&8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ 
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
#__inference_signature_wrapper_41631%'&P¢M
¢ 
FªC
A
embedding_4_input,)
embedding_4_inputÿÿÿÿÿÿÿÿÿ "1ª.
,
dense_4!
dense_4ÿÿÿÿÿÿÿÿÿÛ
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42428I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Û
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42450I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 º
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42455h9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ  
p 
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ  
 º
N__inference_spatial_dropout1d_4_layer_call_and_return_conditional_losses_42477h9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ  
p
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ  
 ²
3__inference_spatial_dropout1d_4_layer_call_fn_42482{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ²
3__inference_spatial_dropout1d_4_layer_call_fn_42487{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
3__inference_spatial_dropout1d_4_layer_call_fn_42492[9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ  
p 
ª "ÿÿÿÿÿÿÿÿÿ  
3__inference_spatial_dropout1d_4_layer_call_fn_42497[9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ  
p
ª "ÿÿÿÿÿÿÿÿÿ  