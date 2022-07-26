.class public Lorg/tensorflow/lite/support/label/TensorLabel;
.super Ljava/lang/Object;
.source "TensorLabel.java"


# instance fields
.field private final axisLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final shape:[I

.field private final tensorBuffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "tensorBuffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;",
            ")V"
        }
    .end annotation

    .line 105
    .local p1, "axisLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/tensorflow/lite/support/label/TensorLabel;->getFirstAxisWithSizeGreaterThanOne(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)I

    move-result v0

    invoke-static {v0, p1}, Lorg/tensorflow/lite/support/label/TensorLabel;->makeMap(ILjava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/tensorflow/lite/support/label/TensorLabel;-><init>(Ljava/util/Map;Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)V
    .registers 11
    .param p1    # Ljava/util/Map;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "tensorBuffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;",
            ")V"
        }
    .end annotation

    .line 76
    .local p1, "axisLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "Axis labels cannot be null."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "Tensor Buffer cannot be null."

    invoke-static {p2, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->axisLabels:Ljava/util/Map;

    .line 80
    iput-object p2, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->tensorBuffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    .line 81
    invoke-virtual {p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->shape:[I

    .line 82
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 84
    .local v2, "axis":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_40

    iget-object v5, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->shape:[I

    array-length v5, v5

    if-ge v2, v5, :cond_40

    const/4 v5, 0x1

    goto :goto_41

    :cond_40
    const/4 v5, 0x0

    :goto_41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid axis id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Label list is null on axis "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v5, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->shape:[I

    aget v5, v5, v2

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_7e

    goto :goto_7f

    :cond_7e
    const/4 v3, 0x0

    :goto_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Label number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mismatch the shape on axis "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v3, v4}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 90
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "axis":I
    goto/16 :goto_1f

    .line 91
    :cond_a7
    return-void
.end method

.method private static getFirstAxisWithSizeGreaterThanOne(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)I
    .registers 5
    .param p0, "tensorBuffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 208
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v0

    .line 209
    .local v0, "shape":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_11

    .line 210
    aget v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    .line 211
    return v1

    .line 209
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 214
    .end local v1    # "i":I
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot find an axis to label. A valid axis to label should have size larger than 1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static makeMap(ILjava/util/List;)Ljava/util/Map;
    .registers 4
    .param p0, "axis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 220
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 221
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-object v0
.end method


# virtual methods
.method public getCategoryList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/label/Category;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->tensorBuffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-static {v0}, Lorg/tensorflow/lite/support/label/TensorLabel;->getFirstAxisWithSizeGreaterThanOne(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)I

    move-result v0

    .line 192
    .local v0, "labeledAxis":I
    iget-object v1, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->shape:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    const-string v4, "get a Category list is only valid when the only labeled axis is the last one."

    invoke-static {v1, v4}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkState(ZLjava/lang/Object;)V

    .line 195
    iget-object v1, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->axisLabels:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 196
    .local v1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->tensorBuffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v4}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getFloatArray()[F

    move-result-object v4

    .line 197
    .local v4, "data":[F
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, v4

    if-ne v5, v6, :cond_30

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    invoke-static {v2}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkState(Z)V

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/lite/support/label/Category;>;"
    const/4 v3, 0x0

    .line 200
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 201
    .local v6, "label":Ljava/lang/String;
    new-instance v7, Lorg/tensorflow/lite/support/label/Category;

    aget v8, v4, v3

    invoke-direct {v7, v6, v8}, Lorg/tensorflow/lite/support/label/Category;-><init>(Ljava/lang/String;F)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    nop

    .end local v6    # "label":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 203
    goto :goto_3e

    .line 204
    :cond_58
    return-object v2
.end method

.method public getMapWithFloatValue()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->tensorBuffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-static {v0}, Lorg/tensorflow/lite/support/label/TensorLabel;->getFirstAxisWithSizeGreaterThanOne(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)I

    move-result v0

    .line 161
    .local v0, "labeledAxis":I
    iget-object v1, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->shape:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    const-string v4, "get a <String, Scalar> map is only valid when the only labeled axis is the last one."

    invoke-static {v1, v4}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkState(ZLjava/lang/Object;)V

    .line 164
    iget-object v1, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->axisLabels:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 165
    .local v1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/tensorflow/lite/support/label/TensorLabel;->tensorBuffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v4}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getFloatArray()[F

    move-result-object v4

    .line 166
    .local v4, "data":[F
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, v4

    if-ne v5, v6, :cond_30

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    invoke-static {v2}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkState(Z)V

    .line 167
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 168
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    const/4 v3, 0x0

    .line 169
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 170
    .local v6, "label":Ljava/lang/String;
    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    nop

    .end local v6    # "label":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 172
    goto :goto_3e

    .line 173
    :cond_57
    return-object v2
.end method

.method public getMapWithTensorBuffer()Ljava/util/Map;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/tensorflow/lite/support/label/TensorLabel;->tensorBuffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-static {v1}, Lorg/tensorflow/lite/support/label/TensorLabel;->getFirstAxisWithSizeGreaterThanOne(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)I

    move-result v1

    .line 116
    .local v1, "labeledAxis":I
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 117
    .local v2, "labelToTensorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;>;"
    iget-object v3, v0, Lorg/tensorflow/lite/support/label/TensorLabel;->axisLabels:Ljava/util/Map;

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 117
    const-string v4, "get a <String, TensorBuffer> map requires the labels are set on the first non-1 axis."

    invoke-static {v3, v4}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 120
    iget-object v3, v0, Lorg/tensorflow/lite/support/label/TensorLabel;->axisLabels:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 122
    .local v3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, v0, Lorg/tensorflow/lite/support/label/TensorLabel;->tensorBuffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v4}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v4

    .line 123
    .local v4, "dataType":Lorg/tensorflow/lite/DataType;
    iget-object v5, v0, Lorg/tensorflow/lite/support/label/TensorLabel;->tensorBuffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v5}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getTypeSize()I

    move-result v5

    .line 124
    .local v5, "typeSize":I
    iget-object v6, v0, Lorg/tensorflow/lite/support/label/TensorLabel;->tensorBuffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v6}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getFlatSize()I

    move-result v6

    .line 127
    .local v6, "flatSize":I
    iget-object v7, v0, Lorg/tensorflow/lite/support/label/TensorLabel;->tensorBuffer:Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {v7}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 128
    .local v7, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 132
    iget-object v8, v0, Lorg/tensorflow/lite/support/label/TensorLabel;->shape:[I

    aget v8, v8, v1

    div-int v8, v6, v8

    mul-int v8, v8, v5

    .line 133
    .local v8, "subArrayLength":I
    const/4 v9, 0x0

    .line 134
    .local v9, "i":I
    const-string v10, "Label list should never be null"

    invoke-static {v3, v10}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_55
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 137
    .local v11, "label":Ljava/lang/String;
    mul-int v12, v9, v8

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 140
    .local v12, "subBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 141
    invoke-static {v4}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createDynamic(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v13

    .line 142
    .local v13, "labelBuffer":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    iget-object v14, v0, Lorg/tensorflow/lite/support/label/TensorLabel;->shape:[I

    add-int/lit8 v15, v1, 0x1

    array-length v0, v14

    invoke-static {v14, v15, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    invoke-virtual {v13, v12, v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadBuffer(Ljava/nio/ByteBuffer;[I)V

    .line 143
    invoke-interface {v2, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    nop

    .end local v11    # "label":Ljava/lang/String;
    .end local v12    # "subBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "labelBuffer":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    add-int/lit8 v9, v9, 0x1

    .line 145
    move-object/from16 v0, p0

    goto :goto_55

    .line 146
    :cond_8e
    return-object v2
.end method
