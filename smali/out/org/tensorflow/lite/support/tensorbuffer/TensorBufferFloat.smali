.class public final Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;
.super Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
.source "TensorBufferFloat.java"


# static fields
.field private static final DATA_TYPE:Lorg/tensorflow/lite/DataType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    sget-object v0, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    sput-object v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->DATA_TYPE:Lorg/tensorflow/lite/DataType;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;-><init>()V

    .line 39
    return-void
.end method

.method constructor <init>([I)V
    .registers 2
    .param p1, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;-><init>([I)V

    .line 35
    return-void
.end method


# virtual methods
.method public getDataType()Lorg/tensorflow/lite/DataType;
    .registers 2

    .line 43
    sget-object v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->DATA_TYPE:Lorg/tensorflow/lite/DataType;

    return-object v0
.end method

.method public getFloatArray()[F
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 50
    iget v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->flatSize:I

    new-array v0, v0, [F

    .line 52
    .local v0, "arr":[F
    iget-object v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 53
    .local v1, "floatBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 54
    return-object v0
.end method

.method public getFloatValue(I)F
    .registers 4
    .param p1, "absIndex"    # I

    .line 59
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->buffer:Ljava/nio/ByteBuffer;

    shl-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getIntArray()[I
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 66
    iget v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->flatSize:I

    new-array v0, v0, [F

    .line 67
    .local v0, "floatArr":[F
    iget-object v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 69
    iget v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->flatSize:I

    new-array v1, v1, [I

    .line 70
    .local v1, "intArr":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    iget v3, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->flatSize:I

    if-ge v2, v3, :cond_23

    .line 71
    aget v3, v0, v2

    float-to-int v3, v3

    aput v3, v1, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 73
    .end local v2    # "i":I
    :cond_23
    return-object v1
.end method

.method public getIntValue(I)I
    .registers 4
    .param p1, "absIndex"    # I

    .line 78
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->buffer:Ljava/nio/ByteBuffer;

    shl-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTypeSize()I
    .registers 2

    .line 83
    sget-object v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->DATA_TYPE:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v0}, Lorg/tensorflow/lite/DataType;->byteSize()I

    move-result v0

    return v0
.end method

.method public loadArray([F[I)V
    .registers 5
    .param p1, "src"    # [F
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 88
    const-string v0, "The array to be loaded cannot be null."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    array-length v0, p1

    .line 90
    invoke-static {p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->computeFlatSize([I)I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 89
    :goto_f
    const-string v1, "The size of the array to be loaded does not match the specified shape."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 92
    invoke-virtual {p0, p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->resize([I)V

    .line 93
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 95
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 96
    .local v0, "floatBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 97
    return-void
.end method

.method public loadArray([I[I)V
    .registers 10
    .param p1, "src"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 101
    const-string v0, "The array to be loaded cannot be null."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    array-length v0, p1

    .line 103
    invoke-static {p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->computeFlatSize([I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 102
    :goto_10
    const-string v1, "The size of the array to be loaded does not match the specified shape."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 105
    invoke-virtual {p0, p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->resize([I)V

    .line 106
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 108
    array-length v0, p1

    new-array v0, v0, [F

    .line 109
    .local v0, "floatArray":[F
    const/4 v1, 0x0

    .line 110
    .local v1, "cnt":I
    array-length v3, p1

    :goto_22
    if-ge v2, v3, :cond_2f

    aget v4, p1, v2

    .line 111
    .local v4, "a":I
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "cnt":I
    .local v5, "cnt":I
    int-to-float v6, v4

    aput v6, v0, v1

    .line 110
    .end local v4    # "a":I
    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto :goto_22

    .line 113
    .end local v5    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_2f
    iget-object v2, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 114
    return-void
.end method
