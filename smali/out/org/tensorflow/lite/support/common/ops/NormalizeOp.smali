.class public Lorg/tensorflow/lite/support/common/ops/NormalizeOp;
.super Ljava/lang/Object;
.source "NormalizeOp.java"

# interfaces
.implements Lorg/tensorflow/lite/support/common/TensorOperator;


# instance fields
.field private final isIdentityOp:Z

.field private final mean:[F

.field private final numChannels:I

.field private final stddev:[F


# direct methods
.method public constructor <init>(FF)V
    .registers 8
    .param p1, "mean"    # F
    .param p2, "stddev"    # F

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_14

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_12

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 70
    :cond_12
    const/high16 p2, 0x3f800000    # 1.0f

    .line 73
    :cond_14
    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v3, p2, v0

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    const-string v4, "Stddev cannot be zero."

    invoke-static {v3, v4}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, "meansIsZeroAndDevsIs1":Z
    cmpl-float v0, p1, v0

    if-nez v0, :cond_2e

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2e

    .line 76
    const/4 v3, 0x1

    .line 79
    :cond_2e
    iput-boolean v3, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->isIdentityOp:Z

    .line 80
    new-array v0, v2, [F

    aput p1, v0, v1

    iput-object v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->mean:[F

    .line 81
    new-array v0, v2, [F

    aput p2, v0, v1

    iput-object v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->stddev:[F

    .line 82
    iput v2, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->numChannels:I

    .line 83
    return-void
.end method

.method public constructor <init>([F[F)V
    .registers 10
    .param p1, "mean"    # [F
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "stddev"    # [F
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v0, "Mean cannot be null"

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "Stddev cannot be null"

    invoke-static {p2, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const-string v1, "Per channel normalization requires same number of means and stddevs"

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 112
    array-length v0, p1

    if-lez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const-string v1, "Means and stddevs are empty."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 113
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->mean:[F

    .line 114
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->stddev:[F

    .line 115
    const/4 v0, 0x1

    .line 116
    .local v0, "allMeansAreZeroAndAllDevsAre1":Z
    array-length v1, p1

    iput v1, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->numChannels:I

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3b
    iget v4, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->numChannels:I

    if-ge v1, v4, :cond_66

    .line 118
    iget-object v4, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->stddev:[F

    aget v4, v4, v1

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4a

    const/4 v4, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v4, 0x0

    :goto_4b
    const-string v6, "Stddev cannot be zero."

    invoke-static {v4, v6}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 119
    iget-object v4, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->stddev:[F

    aget v4, v4, v1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-nez v4, :cond_62

    iget-object v4, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->mean:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_63

    .line 120
    :cond_62
    const/4 v0, 0x0

    .line 117
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 123
    .end local v1    # "i":I
    :cond_66
    iput-boolean v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->isIdentityOp:Z

    .line 124
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 28
    check-cast p1, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->apply(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .registers 8
    .param p1, "input"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 137
    iget-boolean v0, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->isIdentityOp:Z

    if-eqz v0, :cond_5

    .line 138
    return-object p1

    .line 140
    :cond_5
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getShape()[I

    move-result-object v0

    .line 141
    .local v0, "shape":[I
    iget v1, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->numChannels:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_19

    array-length v3, v0

    if-eqz v3, :cond_18

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v3, v0, v3

    if-ne v3, v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :cond_19
    :goto_19
    const-string v1, "Number of means (stddevs) is not same with number of channels (size of last axis)."

    invoke-static {v2, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 145
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getFloatArray()[F

    move-result-object v1

    .line 146
    .local v1, "values":[F
    const/4 v2, 0x0

    .line 147
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    array-length v4, v1

    if-ge v3, v4, :cond_3e

    .line 148
    aget v4, v1, v3

    iget-object v5, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->mean:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->stddev:[F

    aget v5, v5, v2

    div-float/2addr v4, v5

    aput v4, v1, v3

    .line 149
    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lorg/tensorflow/lite/support/common/ops/NormalizeOp;->numChannels:I

    rem-int v2, v4, v5

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 152
    .end local v3    # "i":I
    :cond_3e
    invoke-virtual {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->isDynamic()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 153
    sget-object v3, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    invoke-static {v3}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->createDynamic(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v3

    .local v3, "output":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    goto :goto_51

    .line 155
    .end local v3    # "output":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    :cond_4b
    sget-object v3, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    invoke-static {v0, v3}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->createFixedSize([ILorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v3

    .line 157
    .restart local v3    # "output":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    :goto_51
    invoke-virtual {v3, v1, v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([F[I)V

    .line 158
    return-object v3
.end method
