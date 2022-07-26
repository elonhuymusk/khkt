.class Lcom/google/flatbuffers/FlexBuffersBuilder$1;
.super Ljava/lang/Object;
.source "FlexBuffersBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffersBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/flatbuffers/FlexBuffersBuilder$Value;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/flatbuffers/FlexBuffersBuilder;


# direct methods
.method constructor <init>(Lcom/google/flatbuffers/FlexBuffersBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/flatbuffers/FlexBuffersBuilder;

    .line 94
    iput-object p1, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$1;->this$0:Lcom/google/flatbuffers/FlexBuffersBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;Lcom/google/flatbuffers/FlexBuffersBuilder$Value;)I
    .registers 8
    .param p1, "o1"    # Lcom/google/flatbuffers/FlexBuffersBuilder$Value;
    .param p2, "o2"    # Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    .line 97
    iget v0, p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->key:I

    .line 98
    .local v0, "ia":I
    iget v1, p2, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;->key:I

    .line 101
    .local v1, "io":I
    :goto_4
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$1;->this$0:Lcom/google/flatbuffers/FlexBuffersBuilder;

    invoke-static {v2}, Lcom/google/flatbuffers/FlexBuffersBuilder;->access$000(Lcom/google/flatbuffers/FlexBuffersBuilder;)Lcom/google/flatbuffers/ReadWriteBuf;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/flatbuffers/ReadWriteBuf;->get(I)B

    move-result v2

    .line 102
    .local v2, "c1":B
    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffersBuilder$1;->this$0:Lcom/google/flatbuffers/FlexBuffersBuilder;

    invoke-static {v3}, Lcom/google/flatbuffers/FlexBuffersBuilder;->access$000(Lcom/google/flatbuffers/FlexBuffersBuilder;)Lcom/google/flatbuffers/ReadWriteBuf;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/google/flatbuffers/ReadWriteBuf;->get(I)B

    move-result v3

    .line 103
    .local v3, "c2":B
    if-nez v2, :cond_1d

    .line 104
    sub-int v4, v2, v3

    return v4

    .line 105
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 108
    if-eq v2, v3, :cond_26

    .line 109
    sub-int v4, v2, v3

    return v4

    .line 108
    :cond_26
    goto :goto_4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 94
    check-cast p1, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    check-cast p2, Lcom/google/flatbuffers/FlexBuffersBuilder$Value;

    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/FlexBuffersBuilder$1;->compare(Lcom/google/flatbuffers/FlexBuffersBuilder$Value;Lcom/google/flatbuffers/FlexBuffersBuilder$Value;)I

    move-result p1

    return p1
.end method
