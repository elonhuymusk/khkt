.class public Lcom/google/flatbuffers/FlexBuffers$KeyVector;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyVector"
.end annotation


# instance fields
.field private final vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;


# direct methods
.method constructor <init>(Lcom/google/flatbuffers/FlexBuffers$TypedVector;)V
    .registers 2
    .param p1, "vec"    # Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iput-object p1, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    .line 1041
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/flatbuffers/FlexBuffers$Key;
    .registers 8
    .param p1, "pos"    # I

    .line 1050
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->size()I

    move-result v0

    .line 1051
    .local v0, "len":I
    if-lt p1, v0, :cond_b

    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Key;->access$700()Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v1

    return-object v1

    .line 1052
    :cond_b
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget v1, v1, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->end:I

    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget v2, v2, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->byteWidth:I

    mul-int v2, v2, p1

    add-int/2addr v1, v2

    .line 1053
    .local v1, "childPos":I
    new-instance v2, Lcom/google/flatbuffers/FlexBuffers$Key;

    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v3, v3, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget-object v4, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v4, v4, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget-object v5, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget v5, v5, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->byteWidth:I

    invoke-static {v4, v1, v5}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/google/flatbuffers/FlexBuffers$Key;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-object v2
.end method

.method public size()I
    .registers 2

    .line 1062
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1070
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1071
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    invoke-virtual {v2}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 1072
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    invoke-virtual {v2, v1}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1073
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->vec:Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    invoke-virtual {v2}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2b

    .line 1074
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1077
    .end local v1    # "i":I
    :cond_2e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
