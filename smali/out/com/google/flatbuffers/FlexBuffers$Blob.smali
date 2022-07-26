.class public Lcom/google/flatbuffers/FlexBuffers$Blob;
.super Lcom/google/flatbuffers/FlexBuffers$Sized;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blob"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final EMPTY:Lcom/google/flatbuffers/FlexBuffers$Blob;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 673
    const-class v0, Lcom/google/flatbuffers/FlexBuffers;

    .line 674
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Blob;

    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers;->access$000()Lcom/google/flatbuffers/ReadBuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/flatbuffers/FlexBuffers$Blob;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers$Blob;->EMPTY:Lcom/google/flatbuffers/FlexBuffers$Blob;

    return-void
.end method

.method constructor <init>(Lcom/google/flatbuffers/ReadBuf;II)V
    .registers 4
    .param p1, "buff"    # Lcom/google/flatbuffers/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I

    .line 677
    invoke-direct {p0, p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffers$Sized;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    .line 678
    return-void
.end method

.method public static empty()Lcom/google/flatbuffers/FlexBuffers$Blob;
    .registers 1

    .line 682
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Blob;->EMPTY:Lcom/google/flatbuffers/FlexBuffers$Blob;

    return-object v0
.end method


# virtual methods
.method public data()Ljava/nio/ByteBuffer;
    .registers 4

    .line 690
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->bb:Lcom/google/flatbuffers/ReadBuf;

    invoke-interface {v0}, Lcom/google/flatbuffers/ReadBuf;->data()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 691
    .local v0, "dup":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 692
    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Blob;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 693
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public get(I)B
    .registers 4
    .param p1, "pos"    # I

    .line 714
    if-ltz p1, :cond_12

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Blob;->size()I

    move-result v0

    if-gt p1, v0, :cond_12

    .line 715
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v0

    return v0

    .line 714
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getBytes()[B
    .registers 6

    .line 701
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Blob;->size()I

    move-result v0

    .line 702
    .local v0, "size":I
    new-array v1, v0, [B

    .line 703
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_17

    .line 704
    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v4, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    add-int/2addr v4, v2

    invoke-interface {v3, v4}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 703
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 706
    .end local v2    # "i":I
    :cond_17
    return-object v1
.end method

.method public bridge synthetic size()I
    .registers 2

    .line 673
    invoke-super {p0}, Lcom/google/flatbuffers/FlexBuffers$Sized;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 723
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Blob;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/flatbuffers/ReadBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 731
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Blob;->end:I

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Blob;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/google/flatbuffers/ReadBuf;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1
.end method
