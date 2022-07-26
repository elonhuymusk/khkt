.class final Lorg/tensorflow/lite/support/metadata/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/metadata/ZipFile$ZipConstants;,
        Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;,
        Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;
    }
.end annotation


# instance fields
.field private final archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;Ljava/util/Map;)V
    .registers 3
    .param p1, "channel"    # Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 110
    .local p2, "nameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lorg/tensorflow/lite/support/metadata/ZipFile;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    .line 112
    iput-object p2, p0, Lorg/tensorflow/lite/support/metadata/ZipFile;->nameMap:Ljava/util/Map;

    .line 113
    return-void
.end method

.method public static createFrom(Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;)Lorg/tensorflow/lite/support/metadata/ZipFile;
    .registers 4
    .param p0, "channel"    # Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;-><init>(Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;Lorg/tensorflow/lite/support/metadata/ZipFile$1;)V

    .line 66
    .local v0, "zipParser":Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;
    invoke-static {v0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->access$100(Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;)Ljava/util/Map;

    move-result-object v1

    .line 67
    .local v1, "nameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;>;>;"
    new-instance v2, Lorg/tensorflow/lite/support/metadata/ZipFile;

    invoke-direct {v2, p0, v1}, Lorg/tensorflow/lite/support/metadata/ZipFile;-><init>(Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->close()V

    .line 73
    return-void
.end method

.method public getFileNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRawInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 15
    .param p1, "name"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile;->nameMap:Ljava/util/Map;

    .line 91
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 92
    const-string v3, "The file, %s, does not exist in the zip file."

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lorg/tensorflow/lite/support/metadata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 95
    .local v0, "entriesWithTheSameName":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;

    .line 96
    .local v1, "entry":Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;
    invoke-virtual {v1}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;->getDataOffset()J

    move-result-wide v8

    .line 97
    .local v8, "start":J
    invoke-virtual {v1}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;->getSize()J

    move-result-wide v10

    .line 98
    .local v10, "remaining":J
    new-instance v12, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;

    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/ZipFile;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    move-object v2, v12

    move-wide v4, v8

    move-wide v6, v10

    invoke-direct/range {v2 .. v7}, Lorg/tensorflow/lite/support/metadata/BoundedInputStream;-><init>(Lorg/tensorflow/lite/support/metadata/SeekableByteChannelCompat;JJ)V

    return-object v12
.end method
