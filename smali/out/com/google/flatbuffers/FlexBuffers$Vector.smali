.class public Lcom/google/flatbuffers/FlexBuffers$Vector;
.super Lcom/google/flatbuffers/FlexBuffers$Sized;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector"
.end annotation


# static fields
.field private static final EMPTY_VECTOR:Lcom/google/flatbuffers/FlexBuffers$Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 925
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Vector;

    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers;->access$000()Lcom/google/flatbuffers/ReadBuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/flatbuffers/FlexBuffers$Vector;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers$Vector;->EMPTY_VECTOR:Lcom/google/flatbuffers/FlexBuffers$Vector;

    return-void
.end method

.method constructor <init>(Lcom/google/flatbuffers/ReadBuf;II)V
    .registers 4
    .param p1, "bb"    # Lcom/google/flatbuffers/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I

    .line 928
    invoke-direct {p0, p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffers$Sized;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    .line 929
    return-void
.end method

.method public static empty()Lcom/google/flatbuffers/FlexBuffers$Vector;
    .registers 1

    .line 936
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Vector;->EMPTY_VECTOR:Lcom/google/flatbuffers/FlexBuffers$Vector;

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .registers 9
    .param p1, "index"    # I

    .line 971
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    .line 972
    .local v0, "len":J
    int-to-long v2, p1

    cmp-long v4, v2, v0

    if-ltz v4, :cond_f

    .line 973
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Reference;->access$600()Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object v2

    return-object v2

    .line 975
    :cond_f
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$Vector;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Vector;->end:I

    int-to-long v3, v3

    iget v5, p0, Lcom/google/flatbuffers/FlexBuffers$Vector;->byteWidth:I

    int-to-long v5, v5

    mul-long v5, v5, v0

    add-long/2addr v3, v5

    int-to-long v5, p1

    add-long/2addr v3, v5

    long-to-int v4, v3

    invoke-interface {v2, v4}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/flatbuffers/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result v2

    .line 976
    .local v2, "packedType":I
    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Vector;->end:I

    iget v4, p0, Lcom/google/flatbuffers/FlexBuffers$Vector;->byteWidth:I

    mul-int v4, v4, p1

    add-int/2addr v3, v4

    .line 977
    .local v3, "obj_end":I
    new-instance v4, Lcom/google/flatbuffers/FlexBuffers$Reference;

    iget-object v5, p0, Lcom/google/flatbuffers/FlexBuffers$Vector;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v6, p0, Lcom/google/flatbuffers/FlexBuffers$Vector;->byteWidth:I

    invoke-direct {v4, v5, v3, v6, v2}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Lcom/google/flatbuffers/ReadBuf;III)V

    return-object v4
.end method

.method public isEmpty()Z
    .registers 2

    .line 944
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Vector;->EMPTY_VECTOR:Lcom/google/flatbuffers/FlexBuffers$Vector;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic size()I
    .registers 2

    .line 923
    invoke-super {p0}, Lcom/google/flatbuffers/FlexBuffers$Sized;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 923
    invoke-super {p0}, Lcom/google/flatbuffers/FlexBuffers$Sized;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 952
    const-string v0, "[ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    .line 954
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1f

    .line 955
    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlexBuffers$Vector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/flatbuffers/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 956
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_1c

    .line 957
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 960
    .end local v1    # "i":I
    :cond_1f
    const-string v1, " ]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    return-object p1
.end method
