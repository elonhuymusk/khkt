.class final Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
.super Ljava/lang/Object;
.source "ByteBufferChannel.java"

# interfaces
.implements Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "The ByteBuffer cannot be null."

    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 43
    return-void
.end method

.method public isOpen()Z
    .registers 2

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public position()J
    .registers 3

    .line 52
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public declared-synchronized position(J)Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
    .registers 6
    .param p1, "newPosition"    # J

    monitor-enter p0

    .line 66
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_10

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    :try_start_11
    const-string v1, "The new position should be non-negative and be less than Integer.MAX_VALUE."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1e

    .line 70
    monitor-exit p0

    return-object p0

    .line 65
    .end local p0    # "this":Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
    .end local p1    # "newPosition":J
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic position(J)Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->position(J)Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 82
    :try_start_1
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3e

    if-nez v0, :cond_c

    .line 83
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 86
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 87
    .local v0, "count":I
    if-lez v0, :cond_3c

    .line 88
    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 89
    .local v1, "tempBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 90
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 91
    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_3e

    .line 93
    .end local v1    # "tempBuffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
    :cond_3c
    monitor-exit p0

    return v0

    .line 81
    .end local v0    # "count":I
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()J
    .registers 3

    .line 98
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public declared-synchronized truncate(J)Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
    .registers 6
    .param p1, "size"    # J

    monitor-enter p0

    .line 103
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_10

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    :try_start_11
    const-string v1, "The new size should be non-negative and be less than Integer.MAX_VALUE."

    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_38

    .line 108
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 109
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_38

    .line 110
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_3a

    .line 113
    .end local p0    # "this":Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
    :cond_38
    monitor-exit p0

    return-object p0

    .line 102
    .end local p1    # "size":J
    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic truncate(J)Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->truncate(J)Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_31

    .line 122
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 123
    .local v0, "count":I
    if-lez v0, :cond_2f

    .line 124
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 125
    .local v1, "tempBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 126
    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_37

    .line 128
    .end local v1    # "tempBuffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
    :cond_2f
    monitor-exit p0

    return v0

    .line 119
    .end local v0    # "count":I
    :cond_31
    :try_start_31
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_37

    .line 117
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method
