.class Landroidx/versionedparcelable/VersionedParcelStream$1;
.super Ljava/io/FilterInputStream;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/versionedparcelable/VersionedParcelStream;


# direct methods
.method constructor <init>(Landroidx/versionedparcelable/VersionedParcelStream;Ljava/io/InputStream;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/versionedparcelable/VersionedParcelStream;
    .param p2, "x0"    # Ljava/io/InputStream;

    .line 85
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v1, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    if-ge v0, v1, :cond_12

    goto :goto_18

    .line 89
    :cond_12
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 91
    :cond_18
    :goto_18
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 92
    .local v0, "read":I
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v2, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    .line 93
    return v0
.end method

.method public read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v1, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    if-ge v0, v1, :cond_12

    goto :goto_18

    .line 99
    :cond_12
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 101
    :cond_18
    :goto_18
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 102
    .local v0, "read":I
    if-lez v0, :cond_25

    .line 103
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v2, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    add-int/2addr v2, v0

    iput v2, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    .line 105
    :cond_25
    return v0
.end method

.method public skip(J)J
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v0, v0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v1, v1, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    if-ge v0, v1, :cond_12

    goto :goto_18

    .line 111
    :cond_12
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 113
    :cond_18
    :goto_18
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 114
    .local v0, "skip":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2a

    .line 115
    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelStream$1;->this$0:Landroidx/versionedparcelable/VersionedParcelStream;

    iget v3, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    long-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, v2, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    .line 117
    :cond_2a
    return-wide v0
.end method
