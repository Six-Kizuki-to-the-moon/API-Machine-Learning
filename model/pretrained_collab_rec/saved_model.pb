��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
p
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2	"
adj_xbool( "
adj_ybool( 
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
$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
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
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758Ϟ
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
�
Adam/v/embedding_9/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*.
shared_nameAdam/v/embedding_9/embeddings
�
1Adam/v/embedding_9/embeddings/Read/ReadVariableOpReadVariableOpAdam/v/embedding_9/embeddings*
_output_shapes
:	�2*
dtype0
�
Adam/m/embedding_9/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*.
shared_nameAdam/m/embedding_9/embeddings
�
1Adam/m/embedding_9/embeddings/Read/ReadVariableOpReadVariableOpAdam/m/embedding_9/embeddings*
_output_shapes
:	�2*
dtype0
�
Adam/v/embedding_8/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*.
shared_nameAdam/v/embedding_8/embeddings
�
1Adam/v/embedding_8/embeddings/Read/ReadVariableOpReadVariableOpAdam/v/embedding_8/embeddings*
_output_shapes
:	�2*
dtype0
�
Adam/m/embedding_8/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*.
shared_nameAdam/m/embedding_8/embeddings
�
1Adam/m/embedding_8/embeddings/Read/ReadVariableOpReadVariableOpAdam/m/embedding_8/embeddings*
_output_shapes
:	�2*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
embedding_9/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*'
shared_nameembedding_9/embeddings
�
*embedding_9/embeddings/Read/ReadVariableOpReadVariableOpembedding_9/embeddings*
_output_shapes
:	�2*
dtype0
�
embedding_8/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*'
shared_nameembedding_8/embeddings
�
*embedding_8/embeddings/Read/ReadVariableOpReadVariableOpembedding_8/embeddings*
_output_shapes
:	�2*
dtype0
{
serving_default_input_10Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
z
serving_default_input_9Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_10serving_default_input_9embedding_9/embeddingsembedding_8/embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_572187

NoOpNoOp
�0
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�/
value�/B�/ B�/
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*

_init_input_shape* 

_init_input_shape* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"
embeddings*
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_random_generator* 
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator* 
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses* 
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses* 

0
"1*

0
"1*
* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
* 
�
P
_variables
Q_iterations
R_learning_rate
S_index_dict
T
_momentums
U_velocities
V_update_step_xla*

Wserving_default* 
* 
* 

0*

0*
* 
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
jd
VARIABLE_VALUEembedding_8/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

"0*

"0*
* 
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

dtrace_0* 

etrace_0* 
jd
VARIABLE_VALUEembedding_9/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

ktrace_0
ltrace_1* 

mtrace_0
ntrace_1* 
* 
* 
* 
* 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

ttrace_0
utrace_1* 

vtrace_0
wtrace_1* 
* 
* 
* 
* 
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

}trace_0* 

~trace_0* 
* 
* 
* 
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
C
0
1
2
3
4
5
6
7
	8*

�0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
+
Q0
�1
�2
�3
�4*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
hb
VARIABLE_VALUEAdam/m/embedding_8/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/embedding_8/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/embedding_9/embeddings1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/embedding_9/embeddings1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameembedding_8/embeddingsembedding_9/embeddings	iterationlearning_rateAdam/m/embedding_8/embeddingsAdam/v/embedding_8/embeddingsAdam/m/embedding_9/embeddingsAdam/v/embedding_9/embeddingstotalcountConst*
Tin
2*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_572493
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_8/embeddingsembedding_9/embeddings	iterationlearning_rateAdam/m/embedding_8/embeddingsAdam/v/embedding_8/embeddingsAdam/m/embedding_9/embeddingsAdam/v/embedding_9/embeddingstotalcount*
Tin
2*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_572533��
�T
�	
__inference__traced_save_572493
file_prefix@
-read_disablecopyonread_embedding_8_embeddings:	�2B
/read_1_disablecopyonread_embedding_9_embeddings:	�2,
"read_2_disablecopyonread_iteration:	 0
&read_3_disablecopyonread_learning_rate: I
6read_4_disablecopyonread_adam_m_embedding_8_embeddings:	�2I
6read_5_disablecopyonread_adam_v_embedding_8_embeddings:	�2I
6read_6_disablecopyonread_adam_m_embedding_9_embeddings:	�2I
6read_7_disablecopyonread_adam_v_embedding_9_embeddings:	�2(
read_8_disablecopyonread_total: (
read_9_disablecopyonread_count: 
savev2_const
identity_21��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
Read/DisableCopyOnReadDisableCopyOnRead-read_disablecopyonread_embedding_8_embeddings"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp-read_disablecopyonread_embedding_8_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_1/DisableCopyOnReadDisableCopyOnRead/read_1_disablecopyonread_embedding_9_embeddings"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp/read_1_disablecopyonread_embedding_9_embeddings^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0n

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2d

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2v
Read_2/DisableCopyOnReadDisableCopyOnRead"read_2_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp"read_2_disablecopyonread_iteration^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_learning_rate^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0e

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: [

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_4/DisableCopyOnReadDisableCopyOnRead6read_4_disablecopyonread_adam_m_embedding_8_embeddings"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp6read_4_disablecopyonread_adam_m_embedding_8_embeddings^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2d

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_5/DisableCopyOnReadDisableCopyOnRead6read_5_disablecopyonread_adam_v_embedding_8_embeddings"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp6read_5_disablecopyonread_adam_v_embedding_8_embeddings^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_6/DisableCopyOnReadDisableCopyOnRead6read_6_disablecopyonread_adam_m_embedding_9_embeddings"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp6read_6_disablecopyonread_adam_m_embedding_9_embeddings^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_7/DisableCopyOnReadDisableCopyOnRead6read_7_disablecopyonread_adam_v_embedding_9_embeddings"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp6read_7_disablecopyonread_adam_v_embedding_9_embeddings^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2r
Read_8/DisableCopyOnReadDisableCopyOnReadread_8_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOpread_8_disablecopyonread_total^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: r
Read_9/DisableCopyOnReadDisableCopyOnReadread_9_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOpread_9_disablecopyonread_count^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_20Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_21IdentityIdentity_20:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_21Identity_21:output:0*+
_input_shapes
: : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
�

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_571970

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:���������2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
c
*__inference_dropout_9_layer_call_fn_572347

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_571970s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
C__inference_model_4_layer_call_and_return_conditional_losses_572043
input_9
input_10%
embedding_9_572021:	�2%
embedding_8_572024:	�2
identity��#embedding_8/StatefulPartitionedCall�#embedding_9/StatefulPartitionedCall�
#embedding_9/StatefulPartitionedCallStatefulPartitionedCallinput_10embedding_9_572021*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_9_layer_call_and_return_conditional_losses_571940�
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallinput_9embedding_8_572024*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_571954�
dropout_9/PartitionedCallPartitionedCall,embedding_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_572031�
dropout_8/PartitionedCallPartitionedCall,embedding_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_572037�
flatten_8/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_571992�
flatten_9/PartitionedCallPartitionedCall"dropout_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_572000�
dot_4/PartitionedCallPartitionedCall"flatten_8/PartitionedCall:output:0"flatten_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dot_4_layer_call_and_return_conditional_losses_572014m
IdentityIdentitydot_4/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_8/StatefulPartitionedCall$^embedding_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_9:QM
'
_output_shapes
:���������
"
_user_specified_name
input_10
�	
�
G__inference_embedding_8_layer_call_and_return_conditional_losses_571954

inputs*
embedding_lookup_571948:	�2
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_571948Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/571948*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/571948*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_model_4_layer_call_and_return_conditional_losses_572089

inputs
inputs_1%
embedding_9_572077:	�2%
embedding_8_572080:	�2
identity��#embedding_8/StatefulPartitionedCall�#embedding_9/StatefulPartitionedCall�
#embedding_9/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_9_572077*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_9_layer_call_and_return_conditional_losses_571940�
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_8_572080*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_571954�
dropout_9/PartitionedCallPartitionedCall,embedding_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_572031�
dropout_8/PartitionedCallPartitionedCall,embedding_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_572037�
flatten_8/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_571992�
flatten_9/PartitionedCallPartitionedCall"dropout_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_572000�
dot_4/PartitionedCallPartitionedCall"flatten_8/PartitionedCall:output:0"flatten_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dot_4_layer_call_and_return_conditional_losses_572014m
IdentityIdentitydot_4/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^embedding_8/StatefulPartitionedCall$^embedding_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_embedding_8_layer_call_fn_572288

inputs
unknown:	�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_571954s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
m
A__inference_dot_4_layer_call_and_return_conditional_losses_572409
inputs_0
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :q

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������2R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������2y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:���������R
ShapeShapeMatMul:output:0*
T0*
_output_shapes
::��l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������2:���������2:Q M
'
_output_shapes
:���������2
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������2
"
_user_specified_name
inputs_1
�	
k
A__inference_dot_4_layer_call_and_return_conditional_losses_572014

inputs
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:���������2R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������2y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:���������R
ShapeShapeMatMul:output:0*
T0*
_output_shapes
::��l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������2:���������2:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_571984

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:���������2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
(__inference_model_4_layer_call_fn_572207
inputs_0
inputs_1
unknown:	�2
	unknown_0:	�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_572089o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
F
*__inference_dropout_8_layer_call_fn_572325

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
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_572037d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_572364

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:���������2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�	
�
G__inference_embedding_9_layer_call_and_return_conditional_losses_571940

inputs*
embedding_lookup_571934:	�2
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_571934Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/571934*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/571934*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_572337

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:���������2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_571992

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
C__inference_model_4_layer_call_and_return_conditional_losses_572063

inputs
inputs_1%
embedding_9_572051:	�2%
embedding_8_572054:	�2
identity��!dropout_8/StatefulPartitionedCall�!dropout_9/StatefulPartitionedCall�#embedding_8/StatefulPartitionedCall�#embedding_9/StatefulPartitionedCall�
#embedding_9/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_9_572051*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_9_layer_call_and_return_conditional_losses_571940�
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_8_572054*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_571954�
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall,embedding_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_571970�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall,embedding_8/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_571984�
flatten_8/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_571992�
flatten_9/PartitionedCallPartitionedCall*dropout_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_572000�
dot_4/PartitionedCallPartitionedCall"flatten_8/PartitionedCall:output:0"flatten_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dot_4_layer_call_and_return_conditional_losses_572014m
IdentityIdentitydot_4/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall$^embedding_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_model_4_layer_call_and_return_conditional_losses_572281
inputs_0
inputs_16
#embedding_9_embedding_lookup_572256:	�26
#embedding_8_embedding_lookup_572262:	�2
identity��embedding_8/embedding_lookup�embedding_9/embedding_lookupc
embedding_9/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_9/embedding_lookupResourceGather#embedding_9_embedding_lookup_572256embedding_9/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_9/embedding_lookup/572256*+
_output_shapes
:���������2*
dtype0�
%embedding_9/embedding_lookup/IdentityIdentity%embedding_9/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_9/embedding_lookup/572256*+
_output_shapes
:���������2�
'embedding_9/embedding_lookup/Identity_1Identity.embedding_9/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2c
embedding_8/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_8/embedding_lookupResourceGather#embedding_8_embedding_lookup_572262embedding_8/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_8/embedding_lookup/572262*+
_output_shapes
:���������2*
dtype0�
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_8/embedding_lookup/572262*+
_output_shapes
:���������2�
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
dropout_9/IdentityIdentity0embedding_9/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:���������2�
dropout_8/IdentityIdentity0embedding_8/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:���������2`
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_8/ReshapeReshapedropout_8/Identity:output:0flatten_8/Const:output:0*
T0*'
_output_shapes
:���������2`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_9/ReshapeReshapedropout_9/Identity:output:0flatten_9/Const:output:0*
T0*'
_output_shapes
:���������2V
dot_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
dot_4/ExpandDims
ExpandDimsflatten_8/Reshape:output:0dot_4/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������2X
dot_4/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
dot_4/ExpandDims_1
ExpandDimsflatten_9/Reshape:output:0dot_4/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������2�
dot_4/MatMulBatchMatMulV2dot_4/ExpandDims:output:0dot_4/ExpandDims_1:output:0*
T0*+
_output_shapes
:���������^
dot_4/ShapeShapedot_4/MatMul:output:0*
T0*
_output_shapes
::��x
dot_4/SqueezeSqueezedot_4/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
e
IdentityIdentitydot_4/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_8/embedding_lookup^embedding_9/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2<
embedding_9/embedding_lookupembedding_9/embedding_lookup:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
�
(__inference_model_4_layer_call_fn_572197
inputs_0
inputs_1
unknown:	�2
	unknown_0:	�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_572063o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�	
�
G__inference_embedding_9_layer_call_and_return_conditional_losses_572315

inputs*
embedding_lookup_572309:	�2
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_572309Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/572309*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/572309*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_model_4_layer_call_fn_572096
input_9
input_10
unknown:	�2
	unknown_0:	�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_9input_10unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_572089o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_9:QM
'
_output_shapes
:���������
"
_user_specified_name
input_10
�
�
C__inference_model_4_layer_call_and_return_conditional_losses_572017
input_9
input_10%
embedding_9_571941:	�2%
embedding_8_571955:	�2
identity��!dropout_8/StatefulPartitionedCall�!dropout_9/StatefulPartitionedCall�#embedding_8/StatefulPartitionedCall�#embedding_9/StatefulPartitionedCall�
#embedding_9/StatefulPartitionedCallStatefulPartitionedCallinput_10embedding_9_571941*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_9_layer_call_and_return_conditional_losses_571940�
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallinput_9embedding_8_571955*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_571954�
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall,embedding_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_571970�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall,embedding_8/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_571984�
flatten_8/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_571992�
flatten_9/PartitionedCallPartitionedCall*dropout_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_572000�
dot_4/PartitionedCallPartitionedCall"flatten_8/PartitionedCall:output:0"flatten_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dot_4_layer_call_and_return_conditional_losses_572014m
IdentityIdentitydot_4/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall$^embedding_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2J
#embedding_9/StatefulPartitionedCall#embedding_9/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_9:QM
'
_output_shapes
:���������
"
_user_specified_name
input_10
�/
�
"__inference__traced_restore_572533
file_prefix:
'assignvariableop_embedding_8_embeddings:	�2<
)assignvariableop_1_embedding_9_embeddings:	�2&
assignvariableop_2_iteration:	 *
 assignvariableop_3_learning_rate: C
0assignvariableop_4_adam_m_embedding_8_embeddings:	�2C
0assignvariableop_5_adam_v_embedding_8_embeddings:	�2C
0assignvariableop_6_adam_m_embedding_9_embeddings:	�2C
0assignvariableop_7_adam_v_embedding_9_embeddings:	�2"
assignvariableop_8_total: "
assignvariableop_9_count: 
identity_11��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp'assignvariableop_embedding_8_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp)assignvariableop_1_embedding_9_embeddingsIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_iterationIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_learning_rateIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp0assignvariableop_4_adam_m_embedding_8_embeddingsIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp0assignvariableop_5_adam_v_embedding_8_embeddingsIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp0assignvariableop_6_adam_m_embedding_9_embeddingsIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp0assignvariableop_7_adam_v_embedding_9_embeddingsIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
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
�	
�
G__inference_embedding_8_layer_call_and_return_conditional_losses_572298

inputs*
embedding_lookup_572292:	�2
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_lookupResourceGatherembedding_lookup_572292Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/572292*+
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/572292*+
_output_shapes
:���������2�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������2Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
F
*__inference_flatten_8_layer_call_fn_572374

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_571992`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_572000

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_572391

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
c
*__inference_dropout_8_layer_call_fn_572320

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_571984s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
F
*__inference_dropout_9_layer_call_fn_572352

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
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_572031d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_572369

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_572380

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
,__inference_embedding_9_layer_call_fn_572305

inputs
unknown:	�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_9_layer_call_and_return_conditional_losses_571940s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
F
*__inference_flatten_9_layer_call_fn_572385

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_572000`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_572187
input_10
input_9
unknown:	�2
	unknown_0:	�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_9input_10unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_571925o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
input_10:PL
'
_output_shapes
:���������
!
_user_specified_name	input_9
�
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_572037

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�!
�
!__inference__wrapped_model_571925
input_9
input_10>
+model_4_embedding_9_embedding_lookup_571900:	�2>
+model_4_embedding_8_embedding_lookup_571906:	�2
identity��$model_4/embedding_8/embedding_lookup�$model_4/embedding_9/embedding_lookupk
model_4/embedding_9/CastCastinput_10*

DstT0*

SrcT0*'
_output_shapes
:����������
$model_4/embedding_9/embedding_lookupResourceGather+model_4_embedding_9_embedding_lookup_571900model_4/embedding_9/Cast:y:0*
Tindices0*>
_class4
20loc:@model_4/embedding_9/embedding_lookup/571900*+
_output_shapes
:���������2*
dtype0�
-model_4/embedding_9/embedding_lookup/IdentityIdentity-model_4/embedding_9/embedding_lookup:output:0*
T0*>
_class4
20loc:@model_4/embedding_9/embedding_lookup/571900*+
_output_shapes
:���������2�
/model_4/embedding_9/embedding_lookup/Identity_1Identity6model_4/embedding_9/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2j
model_4/embedding_8/CastCastinput_9*

DstT0*

SrcT0*'
_output_shapes
:����������
$model_4/embedding_8/embedding_lookupResourceGather+model_4_embedding_8_embedding_lookup_571906model_4/embedding_8/Cast:y:0*
Tindices0*>
_class4
20loc:@model_4/embedding_8/embedding_lookup/571906*+
_output_shapes
:���������2*
dtype0�
-model_4/embedding_8/embedding_lookup/IdentityIdentity-model_4/embedding_8/embedding_lookup:output:0*
T0*>
_class4
20loc:@model_4/embedding_8/embedding_lookup/571906*+
_output_shapes
:���������2�
/model_4/embedding_8/embedding_lookup/Identity_1Identity6model_4/embedding_8/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2�
model_4/dropout_9/IdentityIdentity8model_4/embedding_9/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:���������2�
model_4/dropout_8/IdentityIdentity8model_4/embedding_8/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:���������2h
model_4/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
model_4/flatten_8/ReshapeReshape#model_4/dropout_8/Identity:output:0 model_4/flatten_8/Const:output:0*
T0*'
_output_shapes
:���������2h
model_4/flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
model_4/flatten_9/ReshapeReshape#model_4/dropout_9/Identity:output:0 model_4/flatten_9/Const:output:0*
T0*'
_output_shapes
:���������2^
model_4/dot_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
model_4/dot_4/ExpandDims
ExpandDims"model_4/flatten_8/Reshape:output:0%model_4/dot_4/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������2`
model_4/dot_4/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
model_4/dot_4/ExpandDims_1
ExpandDims"model_4/flatten_9/Reshape:output:0'model_4/dot_4/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������2�
model_4/dot_4/MatMulBatchMatMulV2!model_4/dot_4/ExpandDims:output:0#model_4/dot_4/ExpandDims_1:output:0*
T0*+
_output_shapes
:���������n
model_4/dot_4/ShapeShapemodel_4/dot_4/MatMul:output:0*
T0*
_output_shapes
::���
model_4/dot_4/SqueezeSqueezemodel_4/dot_4/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
m
IdentityIdentitymodel_4/dot_4/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^model_4/embedding_8/embedding_lookup%^model_4/embedding_9/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 2L
$model_4/embedding_8/embedding_lookup$model_4/embedding_8/embedding_lookup2L
$model_4/embedding_9/embedding_lookup$model_4/embedding_9/embedding_lookup:P L
'
_output_shapes
:���������
!
_user_specified_name	input_9:QM
'
_output_shapes
:���������
"
_user_specified_name
input_10
�
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_572342

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
(__inference_model_4_layer_call_fn_572070
input_9
input_10
unknown:	�2
	unknown_0:	�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_9input_10unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_572063o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_9:QM
'
_output_shapes
:���������
"
_user_specified_name
input_10
�
R
&__inference_dot_4_layer_call_fn_572397
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dot_4_layer_call_and_return_conditional_losses_572014`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������2:���������2:Q M
'
_output_shapes
:���������2
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������2
"
_user_specified_name
inputs_1
�
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_572031

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�.
�
C__inference_model_4_layer_call_and_return_conditional_losses_572251
inputs_0
inputs_16
#embedding_9_embedding_lookup_572212:	�26
#embedding_8_embedding_lookup_572218:	�2
identity��embedding_8/embedding_lookup�embedding_9/embedding_lookupc
embedding_9/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_9/embedding_lookupResourceGather#embedding_9_embedding_lookup_572212embedding_9/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_9/embedding_lookup/572212*+
_output_shapes
:���������2*
dtype0�
%embedding_9/embedding_lookup/IdentityIdentity%embedding_9/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_9/embedding_lookup/572212*+
_output_shapes
:���������2�
'embedding_9/embedding_lookup/Identity_1Identity.embedding_9/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2c
embedding_8/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding_8/embedding_lookupResourceGather#embedding_8_embedding_lookup_572218embedding_8/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_8/embedding_lookup/572218*+
_output_shapes
:���������2*
dtype0�
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_8/embedding_lookup/572218*+
_output_shapes
:���������2�
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������2\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_9/dropout/MulMul0embedding_9/embedding_lookup/Identity_1:output:0 dropout_9/dropout/Const:output:0*
T0*+
_output_shapes
:���������2�
dropout_9/dropout/ShapeShape0embedding_9/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::���
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2^
dropout_9/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_9/dropout/SelectV2SelectV2"dropout_9/dropout/GreaterEqual:z:0dropout_9/dropout/Mul:z:0"dropout_9/dropout/Const_1:output:0*
T0*+
_output_shapes
:���������2\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_8/dropout/MulMul0embedding_8/embedding_lookup/Identity_1:output:0 dropout_8/dropout/Const:output:0*
T0*+
_output_shapes
:���������2�
dropout_8/dropout/ShapeShape0embedding_8/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::���
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2^
dropout_8/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_8/dropout/SelectV2SelectV2"dropout_8/dropout/GreaterEqual:z:0dropout_8/dropout/Mul:z:0"dropout_8/dropout/Const_1:output:0*
T0*+
_output_shapes
:���������2`
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_8/ReshapeReshape#dropout_8/dropout/SelectV2:output:0flatten_8/Const:output:0*
T0*'
_output_shapes
:���������2`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"����2   �
flatten_9/ReshapeReshape#dropout_9/dropout/SelectV2:output:0flatten_9/Const:output:0*
T0*'
_output_shapes
:���������2V
dot_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
dot_4/ExpandDims
ExpandDimsflatten_8/Reshape:output:0dot_4/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������2X
dot_4/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :�
dot_4/ExpandDims_1
ExpandDimsflatten_9/Reshape:output:0dot_4/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������2�
dot_4/MatMulBatchMatMulV2dot_4/ExpandDims:output:0dot_4/ExpandDims_1:output:0*
T0*+
_output_shapes
:���������^
dot_4/ShapeShapedot_4/MatMul:output:0*
T0*
_output_shapes
::��x
dot_4/SqueezeSqueezedot_4/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims
e
IdentityIdentitydot_4/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_8/embedding_lookup^embedding_9/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2<
embedding_9/embedding_lookupembedding_9/embedding_lookup:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
=
input_101
serving_default_input_10:0���������
;
input_90
serving_default_input_9:0���������9
dot_40
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
6
_init_input_shape"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"
embeddings"
_tf_keras_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_random_generator"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
.
0
"1"
trackable_list_wrapper
.
0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32�
(__inference_model_4_layer_call_fn_572070
(__inference_model_4_layer_call_fn_572096
(__inference_model_4_layer_call_fn_572197
(__inference_model_4_layer_call_fn_572207�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
�
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32�
C__inference_model_4_layer_call_and_return_conditional_losses_572017
C__inference_model_4_layer_call_and_return_conditional_losses_572043
C__inference_model_4_layer_call_and_return_conditional_losses_572251
C__inference_model_4_layer_call_and_return_conditional_losses_572281�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
�B�
!__inference__wrapped_model_571925input_9input_10"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
P
_variables
Q_iterations
R_learning_rate
S_index_dict
T
_momentums
U_velocities
V_update_step_xla"
experimentalOptimizer
,
Wserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
]trace_02�
,__inference_embedding_8_layer_call_fn_572288�
���
FullArgSpec
args�

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
annotations� *
 z]trace_0
�
^trace_02�
G__inference_embedding_8_layer_call_and_return_conditional_losses_572298�
���
FullArgSpec
args�

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
annotations� *
 z^trace_0
):'	�22embedding_8/embeddings
'
"0"
trackable_list_wrapper
'
"0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
dtrace_02�
,__inference_embedding_9_layer_call_fn_572305�
���
FullArgSpec
args�

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
annotations� *
 zdtrace_0
�
etrace_02�
G__inference_embedding_9_layer_call_and_return_conditional_losses_572315�
���
FullArgSpec
args�

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
annotations� *
 zetrace_0
):'	�22embedding_9/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
ktrace_0
ltrace_12�
*__inference_dropout_8_layer_call_fn_572320
*__inference_dropout_8_layer_call_fn_572325�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zktrace_0zltrace_1
�
mtrace_0
ntrace_12�
E__inference_dropout_8_layer_call_and_return_conditional_losses_572337
E__inference_dropout_8_layer_call_and_return_conditional_losses_572342�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zmtrace_0zntrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
ttrace_0
utrace_12�
*__inference_dropout_9_layer_call_fn_572347
*__inference_dropout_9_layer_call_fn_572352�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zttrace_0zutrace_1
�
vtrace_0
wtrace_12�
E__inference_dropout_9_layer_call_and_return_conditional_losses_572364
E__inference_dropout_9_layer_call_and_return_conditional_losses_572369�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zvtrace_0zwtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
}trace_02�
*__inference_flatten_8_layer_call_fn_572374�
���
FullArgSpec
args�

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
annotations� *
 z}trace_0
�
~trace_02�
E__inference_flatten_8_layer_call_and_return_conditional_losses_572380�
���
FullArgSpec
args�

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
annotations� *
 z~trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_9_layer_call_fn_572385�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
E__inference_flatten_9_layer_call_and_return_conditional_losses_572391�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_dot_4_layer_call_fn_572397�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
A__inference_dot_4_layer_call_and_return_conditional_losses_572409�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_model_4_layer_call_fn_572070input_9input_10"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_model_4_layer_call_fn_572096input_9input_10"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_model_4_layer_call_fn_572197inputs_0inputs_1"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_model_4_layer_call_fn_572207inputs_0inputs_1"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_4_layer_call_and_return_conditional_losses_572017input_9input_10"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_4_layer_call_and_return_conditional_losses_572043input_9input_10"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_4_layer_call_and_return_conditional_losses_572251inputs_0inputs_1"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_model_4_layer_call_and_return_conditional_losses_572281inputs_0inputs_1"�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
G
Q0
�1
�2
�3
�4"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_572187input_10input_9"�
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
�B�
,__inference_embedding_8_layer_call_fn_572288inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_embedding_8_layer_call_and_return_conditional_losses_572298inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
,__inference_embedding_9_layer_call_fn_572305inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
G__inference_embedding_9_layer_call_and_return_conditional_losses_572315inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
*__inference_dropout_8_layer_call_fn_572320inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_dropout_8_layer_call_fn_572325inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_8_layer_call_and_return_conditional_losses_572337inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_8_layer_call_and_return_conditional_losses_572342inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_dropout_9_layer_call_fn_572347inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_dropout_9_layer_call_fn_572352inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_9_layer_call_and_return_conditional_losses_572364inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_9_layer_call_and_return_conditional_losses_572369inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_flatten_8_layer_call_fn_572374inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
E__inference_flatten_8_layer_call_and_return_conditional_losses_572380inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
*__inference_flatten_9_layer_call_fn_572385inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
E__inference_flatten_9_layer_call_and_return_conditional_losses_572391inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
&__inference_dot_4_layer_call_fn_572397inputs_0inputs_1"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
A__inference_dot_4_layer_call_and_return_conditional_losses_572409inputs_0inputs_1"�
���
FullArgSpec
args�

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
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
.:,	�22Adam/m/embedding_8/embeddings
.:,	�22Adam/v/embedding_8/embeddings
.:,	�22Adam/m/embedding_9/embeddings
.:,	�22Adam/v/embedding_9/embeddings
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count�
!__inference__wrapped_model_571925�"Y�V
O�L
J�G
!�
input_9���������
"�
input_10���������
� "-�*
(
dot_4�
dot_4����������
A__inference_dot_4_layer_call_and_return_conditional_losses_572409�Z�W
P�M
K�H
"�
inputs_0���������2
"�
inputs_1���������2
� ",�)
"�
tensor_0���������
� �
&__inference_dot_4_layer_call_fn_572397Z�W
P�M
K�H
"�
inputs_0���������2
"�
inputs_1���������2
� "!�
unknown����������
E__inference_dropout_8_layer_call_and_return_conditional_losses_572337k7�4
-�*
$�!
inputs���������2
p
� "0�-
&�#
tensor_0���������2
� �
E__inference_dropout_8_layer_call_and_return_conditional_losses_572342k7�4
-�*
$�!
inputs���������2
p 
� "0�-
&�#
tensor_0���������2
� �
*__inference_dropout_8_layer_call_fn_572320`7�4
-�*
$�!
inputs���������2
p
� "%�"
unknown���������2�
*__inference_dropout_8_layer_call_fn_572325`7�4
-�*
$�!
inputs���������2
p 
� "%�"
unknown���������2�
E__inference_dropout_9_layer_call_and_return_conditional_losses_572364k7�4
-�*
$�!
inputs���������2
p
� "0�-
&�#
tensor_0���������2
� �
E__inference_dropout_9_layer_call_and_return_conditional_losses_572369k7�4
-�*
$�!
inputs���������2
p 
� "0�-
&�#
tensor_0���������2
� �
*__inference_dropout_9_layer_call_fn_572347`7�4
-�*
$�!
inputs���������2
p
� "%�"
unknown���������2�
*__inference_dropout_9_layer_call_fn_572352`7�4
-�*
$�!
inputs���������2
p 
� "%�"
unknown���������2�
G__inference_embedding_8_layer_call_and_return_conditional_losses_572298f/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������2
� �
,__inference_embedding_8_layer_call_fn_572288[/�,
%�"
 �
inputs���������
� "%�"
unknown���������2�
G__inference_embedding_9_layer_call_and_return_conditional_losses_572315f"/�,
%�"
 �
inputs���������
� "0�-
&�#
tensor_0���������2
� �
,__inference_embedding_9_layer_call_fn_572305["/�,
%�"
 �
inputs���������
� "%�"
unknown���������2�
E__inference_flatten_8_layer_call_and_return_conditional_losses_572380c3�0
)�&
$�!
inputs���������2
� ",�)
"�
tensor_0���������2
� �
*__inference_flatten_8_layer_call_fn_572374X3�0
)�&
$�!
inputs���������2
� "!�
unknown���������2�
E__inference_flatten_9_layer_call_and_return_conditional_losses_572391c3�0
)�&
$�!
inputs���������2
� ",�)
"�
tensor_0���������2
� �
*__inference_flatten_9_layer_call_fn_572385X3�0
)�&
$�!
inputs���������2
� "!�
unknown���������2�
C__inference_model_4_layer_call_and_return_conditional_losses_572017�"a�^
W�T
J�G
!�
input_9���������
"�
input_10���������
p

 
� ",�)
"�
tensor_0���������
� �
C__inference_model_4_layer_call_and_return_conditional_losses_572043�"a�^
W�T
J�G
!�
input_9���������
"�
input_10���������
p 

 
� ",�)
"�
tensor_0���������
� �
C__inference_model_4_layer_call_and_return_conditional_losses_572251�"b�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p

 
� ",�)
"�
tensor_0���������
� �
C__inference_model_4_layer_call_and_return_conditional_losses_572281�"b�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p 

 
� ",�)
"�
tensor_0���������
� �
(__inference_model_4_layer_call_fn_572070�"a�^
W�T
J�G
!�
input_9���������
"�
input_10���������
p

 
� "!�
unknown����������
(__inference_model_4_layer_call_fn_572096�"a�^
W�T
J�G
!�
input_9���������
"�
input_10���������
p 

 
� "!�
unknown����������
(__inference_model_4_layer_call_fn_572197�"b�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p

 
� "!�
unknown����������
(__inference_model_4_layer_call_fn_572207�"b�_
X�U
K�H
"�
inputs_0���������
"�
inputs_1���������
p 

 
� "!�
unknown����������
$__inference_signature_wrapper_572187�"k�h
� 
a�^
.
input_10"�
input_10���������
,
input_9!�
input_9���������"-�*
(
dot_4�
dot_4���������