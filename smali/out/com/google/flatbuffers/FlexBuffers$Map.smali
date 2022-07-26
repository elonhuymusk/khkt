.class public Lcom/google/flatbuffers/FlexBuffers$Map;
.super Lcom/google/flatbuffers/FlexBuffers$Vector;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Map"
.end annotation


# static fields
.field private static final EMPTY_MAP:Lcom/google/flatbuffers/FlexBuffers$Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 820
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Map;

    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers;->access$000()Lcom/google/flatbuffers/ReadBuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/flatbuffers/FlexBuffers$Map;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers$Map;->EMPTY_MAP:Lcom/google/flatbuffers/FlexBuffers$Map;

    return-void
.end method

.method constructor <init>(Lcom/google/flatbuffers/ReadBuf;II)V
    .registers 4
    .param p1, "bb"    # Lcom/google/flatbuffers/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I

    .line 823
    invoke-direct {p0, p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffers$Vector;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    .line 824
    return-void
.end method

.method private binarySearch(Lcom/google/flatbuffers/FlexBuffers$KeyVector;[B)I
    .registers 8
    .param p1, "keys"    # Lcom/google/flatbuffers/FlexBuffers$KeyVector;
    .param p2, "searchedKey"    # [B

    .line 902
    const/4 v0, 0x0

    .line 903
    .local v0, "low":I
    invoke-virtual {p1}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 905
    .local v1, "high":I
    :goto_7
    if-gt v0, v1, :cond_20

    .line 906
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 907
    .local v2, "mid":I
    invoke-virtual {p1, v2}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v3

    .line 908
    .local v3, "k":Lcom/google/flatbuffers/FlexBuffers$Key;
    invoke-virtual {v3, p2}, Lcom/google/flatbuffers/FlexBuffers$Key;->compareTo([B)I

    move-result v4

    .line 909
    .local v4, "cmp":I
    if-gez v4, :cond_1a

    .line 910
    add-int/lit8 v0, v2, 0x1

    goto :goto_1e

    .line 911
    :cond_1a
    if-lez v4, :cond_1f

    .line 912
    add-int/lit8 v1, v2, -0x1

    .line 915
    .end local v2    # "mid":I
    .end local v3    # "k":Lcom/google/flatbuffers/FlexBuffers$Key;
    .end local v4    # "cmp":I
    :goto_1e
    goto :goto_7

    .line 914
    .restart local v2    # "mid":I
    .restart local v3    # "k":Lcom/google/flatbuffers/FlexBuffers$Key;
    .restart local v4    # "cmp":I
    :cond_1f
    return v2

    .line 916
    .end local v2    # "mid":I
    .end local v3    # "k":Lcom/google/flatbuffers/FlexBuffers$Key;
    .end local v4    # "cmp":I
    :cond_20
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method public static empty()Lcom/google/flatbuffers/FlexBuffers$Map;
    .registers 1

    .line 831
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Map;->EMPTY_MAP:Lcom/google/flatbuffers/FlexBuffers$Map;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 839
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlexBuffers$Map;->get([B)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object v0

    return-object v0
.end method

.method public get([B)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .registers 6
    .param p1, "key"    # [B

    .line 847
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->keys()Lcom/google/flatbuffers/FlexBuffers$KeyVector;

    move-result-object v0

    .line 848
    .local v0, "keys":Lcom/google/flatbuffers/FlexBuffers$KeyVector;
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->size()I

    move-result v1

    .line 849
    .local v1, "size":I
    invoke-direct {p0, v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Map;->binarySearch(Lcom/google/flatbuffers/FlexBuffers$KeyVector;[B)I

    move-result v2

    .line 850
    .local v2, "index":I
    if-ltz v2, :cond_15

    if-ge v2, v1, :cond_15

    .line 851
    invoke-virtual {p0, v2}, Lcom/google/flatbuffers/FlexBuffers$Map;->get(I)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object v3

    return-object v3

    .line 853
    :cond_15
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Reference;->access$600()Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object v3

    return-object v3
.end method

.method public keys()Lcom/google/flatbuffers/FlexBuffers$KeyVector;
    .registers 10

    .line 862
    const/4 v0, 0x3

    .line 863
    .local v0, "num_prefixed_fields":I
    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    .line 864
    .local v1, "keysOffset":I
    new-instance v2, Lcom/google/flatbuffers/FlexBuffers$KeyVector;

    new-instance v3, Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v4, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget-object v5, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v6, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    .line 865
    invoke-static {v5, v1, v6}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v5

    iget-object v6, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v7, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    .line 866
    invoke-static {v6, v7, v8}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v6

    const/4 v7, 0x4

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;-><init>(Lcom/google/flatbuffers/ReadBuf;III)V

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;-><init>(Lcom/google/flatbuffers/FlexBuffers$TypedVector;)V

    .line 864
    return-object v2
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 7
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 884
    const-string v0, "{ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->keys()Lcom/google/flatbuffers/FlexBuffers$KeyVector;

    move-result-object v0

    .line 886
    .local v0, "keys":Lcom/google/flatbuffers/FlexBuffers$KeyVector;
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->size()I

    move-result v1

    .line 887
    .local v1, "size":I
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->values()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v2

    .line 888
    .local v2, "vals":Lcom/google/flatbuffers/FlexBuffers$Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_40

    .line 889
    const/16 v4, 0x22

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/flatbuffers/FlexBuffers$Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    const-string v4, "\" : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Vector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/flatbuffers/FlexBuffers$Reference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_3d

    .line 894
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 896
    .end local v3    # "i":I
    :cond_40
    const-string v3, " }"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    return-object p1
.end method

.method public values()Lcom/google/flatbuffers/FlexBuffers$Vector;
    .registers 5

    .line 874
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Vector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Vector;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-object v0
.end method
