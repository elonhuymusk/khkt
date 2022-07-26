.class public abstract Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
.super Ljava/lang/Object;
.source "TensorBuffer.java"


# instance fields
.field protected buffer:Ljava/nio/ByteBuffer;

.field protected flatSize:I

.field protected final isDynamic:Z

.field protected shape:[I


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->flatSize:I

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->isDynamic:Z

    .line 346
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-direct {p0, v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->allocateMemory([I)V

    .line 347
    return-void
.end method

.method protected constructor <init>([I)V
    .registers 3
    .param p1, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->flatSize:I

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->isDynamic:Z

    .line 339
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->allocateMemory([I)V

    .line 340
    return-void
.end method

.method private allocateMemory([I)V
    .registers 5
    .param p1, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 381
    const-string v0, "TensorBuffer shape cannot be null."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-static {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->isShapeValid([I)Z

    move-result v0

    const-string v1, "Values in TensorBuffer shape should be non-negative."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 385
    invoke-static {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->computeFlatSize([I)I

    move-result v0

    .line 386
    .local v0, "newFlatSize":I
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    .line 387
    iget v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->flatSize:I

    if-ne v1, v0, :cond_1f

    .line 388
    return-void

    .line 392
    :cond_1f
    iput v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->flatSize:I

    .line 393
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getTypeSize()I

    move-result v1

    mul-int v1, v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 394
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 395
    return-void
.end method

.method private assertShapeIsCorect()V
    .registers 7

    .line 402
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    invoke-static {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->computeFlatSize([I)I

    move-result v0

    .line 403
    .local v0, "flatSize":I
    iget-object v1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 404
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getTypeSize()I

    move-result v2

    mul-int v2, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 408
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 405
    const-string v3, "The size of underlying ByteBuffer (%d) and the shape (%s) do not match. The ByteBuffer may have been changed."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v1, v2}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkState(ZLjava/lang/Object;)V

    .line 409
    return-void
.end method

.method protected static computeFlatSize([I)I
    .registers 5
    .param p0, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 351
    const-string v0, "Shape cannot be null."

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const/4 v0, 0x1

    .line 353
    .local v0, "prod":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 354
    .local v3, "s":I
    mul-int v0, v0, v3

    .line 353
    .end local v3    # "s":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 356
    :cond_11
    return v0
.end method

.method public static createDynamic(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .registers 4
    .param p0, "dataType"    # Lorg/tensorflow/lite/DataType;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 97
    sget-object v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    invoke-virtual {p0}, Lorg/tensorflow/lite/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 103
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TensorBuffer does not support data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 101
    :pswitch_22
    new-instance v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;-><init>()V

    return-object v0

    .line 99
    :pswitch_28
    new-instance v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;

    invoke-direct {v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;-><init>()V

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method public static createFixedSize([ILorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .registers 5
    .param p0, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p1, "dataType"    # Lorg/tensorflow/lite/DataType;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 76
    sget-object v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    invoke-virtual {p1}, Lorg/tensorflow/lite/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 82
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TensorBuffer does not support data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 80
    :pswitch_22
    new-instance v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;

    invoke-direct {v0, p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferUint8;-><init>([I)V

    return-object v0

    .line 78
    :pswitch_28
    new-instance v0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;

    invoke-direct {v0, p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBufferFloat;-><init>([I)V

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method public static createFrom(Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    .registers 5
    .param p0, "buffer"    # Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p1, "dataType"    # Lorg/tensorflow/lite/DataType;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 116
    const-string v0, "Cannot create a buffer from null"

    invoke-static {p0, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 119
    invoke-static {p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createDynamic(Lorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    .local v0, "result":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    goto :goto_16

    .line 121
    .end local v0    # "result":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    :cond_10
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    invoke-static {v0, p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->createFixedSize([ILorg/tensorflow/lite/DataType;)Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;

    move-result-object v0

    .line 126
    .restart local v0    # "result":Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;
    :goto_16
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getDataType()Lorg/tensorflow/lite/DataType;

    move-result-object v1

    sget-object v2, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    if-ne v1, v2, :cond_2c

    sget-object v1, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    if-ne p1, v1, :cond_2c

    .line 127
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getFloatArray()[F

    move-result-object v1

    .line 128
    .local v1, "data":[F
    iget-object v2, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([F[I)V

    .line 129
    .end local v1    # "data":[F
    goto :goto_35

    .line 130
    :cond_2c
    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getIntArray()[I

    move-result-object v1

    .line 131
    .local v1, "data":[I
    iget-object v2, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([I[I)V

    .line 133
    .end local v1    # "data":[I
    :goto_35
    return-object v0
.end method

.method private static isShapeValid([I)Z
    .registers 6
    .param p0, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 416
    array-length v0, p0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 418
    return v1

    .line 422
    :cond_5
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_12

    aget v4, p0, v3

    .line 424
    .local v4, "s":I
    if-gez v4, :cond_f

    .line 425
    return v2

    .line 422
    .end local v4    # "s":I
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 428
    :cond_12
    return v1
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public abstract getDataType()Lorg/tensorflow/lite/DataType;
.end method

.method public getFlatSize()I
    .registers 2

    .line 148
    invoke-direct {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->assertShapeIsCorect()V

    .line 149
    iget v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->flatSize:I

    return v0
.end method

.method public abstract getFloatArray()[F
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation
.end method

.method public abstract getFloatValue(I)F
.end method

.method public abstract getIntArray()[I
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation
.end method

.method public abstract getIntValue(I)I
.end method

.method public getShape()[I
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
    .end annotation

    .line 159
    invoke-direct {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->assertShapeIsCorect()V

    .line 160
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public abstract getTypeSize()I
.end method

.method public isDynamic()Z
    .registers 2

    .line 228
    iget-boolean v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->isDynamic:Z

    return v0
.end method

.method public loadArray([F)V
    .registers 3
    .param p1, "src"    # [F
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 292
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    invoke-virtual {p0, p1, v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([F[I)V

    .line 293
    return-void
.end method

.method public abstract loadArray([F[I)V
    .param p1    # [F
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
.end method

.method public loadArray([I)V
    .registers 3
    .param p1, "src"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 260
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    invoke-virtual {p0, p1, v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadArray([I[I)V

    .line 261
    return-void
.end method

.method public abstract loadArray([I[I)V
    .param p1    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
.end method

.method public loadBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 328
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    invoke-virtual {p0, p1, v0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->loadBuffer(Ljava/nio/ByteBuffer;[I)V

    .line 329
    return-void
.end method

.method public loadBuffer(Ljava/nio/ByteBuffer;[I)V
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .param p2, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 307
    const-string v0, "Byte buffer cannot be null."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->computeFlatSize([I)I

    move-result v0

    .line 309
    .local v0, "flatSize":I
    nop

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->getTypeSize()I

    move-result v2

    mul-int v2, v2, v0

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 309
    :goto_19
    const-string v2, "The size of byte buffer and the shape do not match."

    invoke-static {v1, v2}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 313
    invoke-virtual {p0, p2}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->resize([I)V

    .line 314
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 315
    iput-object p1, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 316
    return-void
.end method

.method protected resize([I)V
    .registers 3
    .param p1, "shape"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param

    .line 364
    iget-boolean v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->isDynamic:Z

    if-eqz v0, :cond_8

    .line 365
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->allocateMemory([I)V

    goto :goto_19

    .line 368
    :cond_8
    iget-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    invoke-static {v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkArgument(Z)V

    .line 369
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/tensorflow/lite/support/tensorbuffer/TensorBuffer;->shape:[I

    .line 371
    :goto_19
    return-void
.end method
