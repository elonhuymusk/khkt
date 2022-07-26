.class public final Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;
.super Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
.source "TensorBufferUint8.java"


# static fields
.field private static final DATA_TYPE:Lorg/tensorflow/lite/DataType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    sget-object v0, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    sput-object v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->DATA_TYPE:Lorg/tensorflow/lite/DataType;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;-><init>()V

    .line 38
    return-void
.end method

.method constructor <init>([I)V
    .registers 2
    .param p1, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;-><init>([I)V

    .line 34
    return-void
.end method


# virtual methods
.method public getDataType()Lorg/tensorflow/lite/DataType;
    .registers 2

    .line 42
    sget-object v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->DATA_TYPE:Lorg/tensorflow/lite/DataType;

    return-object v0
.end method

.method public getFloatArray()[F
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 49
    iget v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->flatSize:I

    new-array v0, v0, [B

    .line 50
    .local v0, "byteArr":[B
    iget-object v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 52
    iget v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->flatSize:I

    new-array v1, v1, [F

    .line 53
    .local v1, "floatArr":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    iget v3, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->flatSize:I

    if-ge v2, v3, :cond_21

    .line 54
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    aput v3, v1, v2

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 56
    .end local v2    # "i":I
    :cond_21
    return-object v1
.end method

.method public getFloatValue(I)F
    .registers 3
    .param p1, "index"    # I

    .line 61
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    return v0
.end method

.method public getIntArray()[I
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 68
    iget v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->flatSize:I

    new-array v0, v0, [B

    .line 69
    .local v0, "byteArr":[B
    iget-object v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 71
    iget v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->flatSize:I

    new-array v1, v1, [I

    .line 72
    .local v1, "intArr":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    iget v3, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->flatSize:I

    if-ge v2, v3, :cond_20

    .line 73
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 75
    .end local v2    # "i":I
    :cond_20
    return-object v1
.end method

.method public getIntValue(I)I
    .registers 3
    .param p1, "index"    # I

    .line 80
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getTypeSize()I
    .registers 2

    .line 85
    sget-object v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->DATA_TYPE:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v0}, Lorg/tensorflow/lite/DataType;->byteSize()I

    move-result v0

    return v0
.end method

.method public loadArray([F[I)V
    .registers 13
    .param p1, "src"    # [F
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 90
    const-string v0, "The array to be loaded cannot be null."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    array-length v0, p1

    .line 92
    invoke-static {p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->computeFlatSize([I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 91
    :goto_10
    const-string v1, "The size of the array to be loaded does not match the specified shape."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 94
    invoke-virtual {p0, p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->resize([I)V

    .line 95
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 97
    array-length v0, p1

    new-array v0, v0, [B

    .line 98
    .local v0, "byteArr":[B
    const/4 v1, 0x0

    .line 99
    .local v1, "cnt":I
    array-length v3, p1

    :goto_22
    if-ge v2, v3, :cond_40

    aget v4, p1, v2

    .line 100
    .local v4, "a":F
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "cnt":I
    .local v5, "cnt":I
    float-to-double v6, v4

    const-wide v8, 0x406fe00000000000L    # 255.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 99
    .end local v4    # "a":F
    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto :goto_22

    .line 102
    .end local v5    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_40
    iget-object v2, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 103
    return-void
.end method

.method public loadArray([I[I)V
    .registers 11
    .param p1, "src"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 107
    const-string v0, "The array to be loaded cannot be null."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    array-length v0, p1

    .line 109
    invoke-static {p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->computeFlatSize([I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 108
    :goto_10
    const-string v1, "The size of the array to be loaded does not match the specified shape."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 111
    invoke-virtual {p0, p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->resize([I)V

    .line 112
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 114
    array-length v0, p1

    new-array v0, v0, [B

    .line 115
    .local v0, "byteArr":[B
    const/4 v1, 0x0

    .line 116
    .local v1, "cnt":I
    array-length v3, p1

    :goto_22
    if-ge v2, v3, :cond_3c

    aget v4, p1, v2

    int-to-float v4, v4

    .line 117
    .local v4, "a":F
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "cnt":I
    .local v5, "cnt":I
    const/high16 v6, 0x437f0000    # 255.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 116
    .end local v4    # "a":F
    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto :goto_22

    .line 119
    .end local v5    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_3c
    iget-object v2, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    return-void
.end method
