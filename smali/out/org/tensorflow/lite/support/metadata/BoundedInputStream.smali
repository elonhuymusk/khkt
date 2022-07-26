.class final Lorg/tensorflow/lite/support/metadata/BoundedInputStream;
.super Ljava/io/InputStream;
.source "BoundedInputStream.java"


# instance fields
.field private final channel:Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;

.field private final end:J

.field private position:J

.field private final singleByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;JJ)V
    .registers 11
    .param p1, "channel"    # Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;
    .param p2, "start"    # J
    .param p4, "remaining"    # J

    .line 51
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    .line 52
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    if-ltz v4, :cond_17

    cmp-long v4, p2, v2

    if-ltz v4, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 54
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Invalid length of stream at offset=%d, length=%d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v2, v0}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 56
    add-long v0, p2, p4

    iput-wide v0, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->end:J

    .line 57
    iput-object p1, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->channel:Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;

    .line 58
    iput-wide p2, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->position:J

    .line 59
    return-void
.end method

.method private read(JLjava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "position"    # J
    .param p3, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->channel:Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->channel:Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;

    invoke-interface {v1, p1, p2}, Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;->position(J)Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;

    .line 111
    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->channel:Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;

    invoke-interface {v1, p3}, Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 112
    .local v1, "count":I
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 113
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 114
    return v1

    .line 112
    .end local v1    # "count":I
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-wide v0, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->end:J

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->channel:Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;

    invoke-interface {v2}, Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;->size()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->position:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-wide v0, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->position:J

    iget-wide v2, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->end:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_a

    .line 69
    const/4 v0, -0x1

    return v0

    .line 72
    :cond_a
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 73
    iget-wide v0, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->position:J

    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v2}, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->read(JLjava/nio/ByteBuffer;)I

    move-result v0

    .line 74
    .local v0, "count":I
    if-gez v0, :cond_1a

    .line 75
    return v0

    .line 78
    :cond_1a
    iget-wide v1, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->position:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->position:J

    .line 79
    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([BII)I
    .registers 13
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    array-length v0, p1

    const-string v1, "The start offset"

    invoke-static {p2, v0, v1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkElementIndex(IILjava/lang/String;)I

    .line 86
    array-length v0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    const-string v1, "The maximumn number of bytes to read"

    invoke-static {p3, v0, v1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkElementIndex(IILjava/lang/String;)I

    .line 88
    if-nez p3, :cond_16

    .line 89
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_16
    int-to-long v0, p3

    iget-wide v2, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->end:J

    iget-wide v4, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->position:J

    sub-long v6, v2, v4

    cmp-long v8, v0, v6

    if-lez v8, :cond_29

    .line 93
    cmp-long v0, v4, v2

    if-ltz v0, :cond_27

    .line 94
    const/4 v0, -0x1

    return v0

    .line 96
    :cond_27
    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 99
    :cond_29
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-wide v1, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->position:J

    invoke-direct {p0, v1, v2, v0}, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->read(JLjava/nio/ByteBuffer;)I

    move-result v1

    .line 101
    .local v1, "count":I
    if-lez v1, :cond_3b

    .line 102
    iget-wide v2, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->position:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;->position:J

    .line 104
    :cond_3b
    return v1
.end method
