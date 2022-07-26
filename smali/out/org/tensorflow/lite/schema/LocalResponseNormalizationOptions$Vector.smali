.class public final Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions$Vector;
.super Lcom/google/flatbuffers/BaseVector;
.source "LocalResponseNormalizationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/google/flatbuffers/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions$Vector;
    .registers 4
    .param p1, "_vector"    # I
    .param p2, "_element_size"    # I
    .param p3, "_bb"    # Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions$Vector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;
    .registers 3
    .param p1, "j"    # I

    .line 49
    new-instance v0, Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;

    invoke-direct {v0}, Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions$Vector;->get(Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;I)Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;I)Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;
    .registers 5
    .param p1, "obj"    # Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;
    .param p2, "j"    # I

    .line 50
    invoke-virtual {p0, p2}, Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions$Vector;->__element(I)I

    move-result v0

    iget-object v1, p0, Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;->access$000(ILjava/nio/ByteBuffer;)I

    move-result v0

    iget-object v1, p0, Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;->__assign(ILjava/nio/ByteBuffer;)Lorg/tensorflow/lite/schema/LocalResponseNormalizationOptions;

    move-result-object v0

    return-object v0
.end method
