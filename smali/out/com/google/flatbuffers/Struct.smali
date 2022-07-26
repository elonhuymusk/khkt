.class public Lcom/google/flatbuffers/Struct;
.super Ljava/lang/Object;
.source "Struct.java"


# instance fields
.field protected bb:Ljava/nio/ByteBuffer;

.field protected bb_pos:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __reset()V
    .registers 3

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Struct;->__reset(ILjava/nio/ByteBuffer;)V

    .line 58
    return-void
.end method

.method protected __reset(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 39
    iput-object p2, p0, Lcom/google/flatbuffers/Struct;->bb:Ljava/nio/ByteBuffer;

    .line 40
    if-eqz p2, :cond_7

    .line 41
    iput p1, p0, Lcom/google/flatbuffers/Struct;->bb_pos:I

    goto :goto_a

    .line 43
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/flatbuffers/Struct;->bb_pos:I

    .line 45
    :goto_a
    return-void
.end method
