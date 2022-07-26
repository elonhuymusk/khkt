.class public final Lcom/google/flatbuffers/ShortVector;
.super Lcom/google/flatbuffers/BaseVector;
.source "ShortVector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/google/flatbuffers/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/ShortVector;
    .registers 4
    .param p1, "_vector"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 37
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/flatbuffers/ShortVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)S
    .registers 4
    .param p1, "j"    # I

    .line 47
    iget-object v0, p0, Lcom/google/flatbuffers/ShortVector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/ShortVector;->__element(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getAsUnsigned(I)I
    .registers 4
    .param p1, "j"    # I

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/ShortVector;->get(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
